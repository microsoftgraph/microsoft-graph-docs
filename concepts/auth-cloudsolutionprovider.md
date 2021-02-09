---
title: "Call Microsoft Graph from a Cloud Solution Provider application"
description: "This topic describes how to enable application access to partner-managed customer data via Microsoft Graph using either the authorization code grant flow or the service to service client credentials flow."
author: "jackson-woods"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
ms.custom: graphiamtop20
---

# Call Microsoft Graph from a Cloud Solution Provider application

> **Note:** This topic applies **only** to Microsoft Cloud Solution Provider (CSP) application developers. The [Microsoft Cloud Solution Provider (CSP)](https://partner.microsoft.com/cloud-solution-provider) program enables Microsoft’s partners to resell and manage Microsoft Online services to customers.

This topic describes how to enable application access to partner-managed customer data via Microsoft Graph using either the [authorization code grant flow](/azure/active-directory/develop/active-directory-protocols-oauth-code) or the [service to service client credentials flow](/azure/active-directory/develop/active-directory-protocols-oauth-service-to-service).

**Important:** Calling Microsoft Graph from a CSP application is only supported for directory resources (such as **user**, **group**,**device**, **organization**) and [Intune](/graph/api/resources/intune-graph-overview?view=graph-rest-beta) resources.

## What is a partner-managed application

The CSP program enables Microsoft’s partners to resell and manage Microsoft Online Services (such as Microsoft 365, Microsoft Azure, and CRM Online) to customers. Management of customer services is done through Delegated Admin Privileges, which enables designated partner users (known as agents) to access and configure their customers’ environments.

Additionally, as a partner developer, you can build a **partner-managed app** to manage your customers' Microsoft services. Partner-managed apps are often called *pre-consented* apps because all your customers are automatically pre-consented for your partner-managed apps. This means when a user from one of your customer tenants uses one of your partner-managed apps, the user can use it without being prompted to give consent. Partner-managed apps also inherit Delegated Admin Privileges, so your partner agents can also get privileged access to your customers through your partner-managed application.

## How to set-up a partner-managed application

An application is viewed as *partner-managed* when it is granted elevated permissions to access your customers' data.

> **Note:** Partner-managed apps can *only* be configured on Partner tenants, and in order to manage customer tenant resources, partner-managed apps **must** be configured as **multi-tenant applications**.

### Register and configure a multi-tenant app

The initial steps required here follow most of the same steps used to register and configure a multi-tenant application:

1. [Register your application](/azure/active-directory/active-directory-app-registration) in your Partner tenant using the [Azure Portal](https://portal.azure.com). To function as a partner-managed app, an application must be configured as a [multi-tenant app](/azure/active-directory/develop/active-directory-devhowto-multi-tenant-overview#update-registration-to-be-multi-tenant). Additionally, if your app is deployed and sold in multiple geographic regions you will need to register your app in each of those regions as described <a href="#region">here</a>.
2. Configure your multi-tenant app, again through the Azure Portal, with the *required permissions* it needs using a least privileged approach.

### Pre-consent your app for all your customers

Finally grant your partner-managed app those configured permissions for all your customers. You can do this by adding the **servicePrincipal** that represents the app to the *Adminagents* group in your Partner tenant, using Azure AD powershell V2. You can download and install Azure AD PowerShell V2 from [here](https://www.powershellgallery.com/packages/AzureAD).  Follow these steps to find the *Adminagents* group, the **servicePrincipal** and add it to the group.

1. Open a PowerShell session and connect to your partner tenant by entering your admin credentials into the sign-in window.

    ```PowerShell
    Connect-AzureAd
    ```

2. Find the group that represents the *Adminagents*.

    ```PowerShell
    $group = Get-AzureADGroup -Filter "displayName eq 'Adminagents'"
    ```

3. Find the service principal that has the same *appId* as your app.

    ```PowerShell
    $sp = Get-AzureADServicePrincipal -Filter "appId eq '{yourAppsAppId}'"
    ```

4. Finally, add the service principal to the *Adminagents* group.

    ```PowerShell
    Add-AzureADGroupMember -ObjectId $group.ObjectId -RefObjectId $sp.ObjectId
    ```

## Token acquisition flows

Token acquisition flows for partner-managed apps - [authorization code grant flow](/azure/active-directory/develop/active-directory-protocols-oauth-code) and [service-to-service client credentials flow](/azure/active-directory/develop/active-directory-protocols-oauth-service-to-service) - are the same as regular multi-tenant apps.

Apart from pre-consented access to all your customer tenants, partner-managed apps have one additional capability. It allows for your agents to use your app to access your customers' tenant data (using delegated admin privileges). Conceptually it works like this:

1. Your agent signs in to your app with their user credentials issued from your partner tenant.
2. Your app requests an access token for the intended partner-managed customer tenant.
3. Your app uses the access token to call Microsoft Graph.

This is a standard [authorization code grant flow](/azure/active-directory/develop/active-directory-protocols-oauth-code), except that your agents must sign-in using their partner accounts. To see how this would look, imagine your partner tenant is *partner.com* (which is the home tenant for your agents) and one of your customers is *customer.com*:

1. [Acquire an authorization code:](/azure/active-directory/develop/active-directory-protocols-oauth-code#request-an-authorization-code) Your app makes a request to the ```/authorize``` endpoint and must use a **customer tenant**, in our example ```customer.com```, for the target tenant. Your agents would still sign-in with their ```username@partner.com``` account.

    ```http
    GET https://login.microsoftonline.com/customer.com/oauth2/authorize
    ```

2. [Acquire an access token using the authorization code:](/azure/active-directory/develop/active-directory-protocols-oauth-code#use-the-authorization-code-to-request-an-access-token) Your app must use a **customer tenant** as the target tenant, in our example ```customer.com```, when making the request to the ```token``` endpoint:

    ```http
    POST https://login.microsoftonline.com/customer.com/oauth2/token
    ```

3. Now you have an access token, call Microsoft Graph, putting the access token in the HTTP authorization header:

    ```http
    GET https://graph.microsoft.com/beta/users
    Authorization: Bearer <token>
    ```

## Register your app in the regions you support
<a name="region"></a>

CSP customer engagement is currently limited to a single region. Partner-managed applications carry the same limitation. This means you must have a separate tenant for each region you sell in. For example, if your partner-managed app is registered in a tenant in the US but your customer is in the EU – the partner-managed app will not work.  Each of your regional partner tenants must maintain their own set of partner-managed apps to manage customers within the same region. This might require additional logic in your app (prior to sign-in) to get your customers' sign-in username to decide which region-specific partner-managed app identity to use, to serve the user.

## Calling Microsoft Graph immediately after customer creation

When you create a new customer using the [Partner Center API](https://partnercenter.microsoft.com/partner/developer), a new customer tenant gets created. Additionally, a partner relationship also gets created, which makes you the partner of record for this new customer tenant. This partner relationship can take up to 3 minutes to propagate to the new customer tenant. If your app calls Microsoft Graph straight after creation, your app will likely receive an access denied error. A similar delay may be experienced when an existing customer accepts your invitation. This is because pre-consent relies on the partner relationship being present in the customer tenant.

To avoid this problem, we recommend that your partner app should wait **three minutes** after customer creation before calling Azure AD to acquire a token (to call Microsoft Graph). This should cover most cases. 
However, if after waiting three minutes you still receive an authorization error, please wait an additional 60 seconds and try again.

> **Note:** On the retry, you must acquire a new access token from Azure AD, before calling Microsoft Graph.  Calling Microsoft Graph with the access token you already have will not work, because the access token is good for an hour and won’t contain the pre-consented permission claims.