---
title: Configure Application Proxy using Microsoft Graph APIs
description: Configure Application Proxy using the Microsoft Graph APIs to provide remote access and single sign-on to on-premises applications.
author: davidmu1
ms.topic: conceptual
localization_priority: Normal
ms.prod: applications
---

# Configure Application Proxy using the Microsoft Graph API

In this article, you'll learn how to configure Azure Active Directory (Azure AD) Application Proxy for an application. Application Proxy provides secure remote access and single sign-on to on-premises web applications. After configuring Application Proxy for an application, users can access their on-premises applications through an external URL, the My Apps portal, or other internal application portals.

## Prerequisites

- This tutorial assumes you have already installed a connector and completed the [prerequisites](/azure/active-directory/manage-apps/application-proxy-add-on-premises-application#before-you-begin) for Application Proxy so that connectors can communicate with Azure AD services.
- This tutorial assumes that you are using Microsoft Graph Explorer, but you can use Postman, or create your own client app to call Microsoft Graph. To call the Microsoft Graph APIs in this tutorial, you need to use an account with the global administrator role and the appropriate permissions. Complete the following steps to set permissions in Microsoft Graph Explorer:
    1. Start [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
    2. Select **Sign-In with Microsoft** and sign in using an Azure AD global administrator account. After you successfully sign in, you can see the user account details in the left-hand pane.
    3. Select the settings icon to the right of the user account details, and then select **Select permissions**.

        ![Set permissions](./images/application-proxy-configure-api/set-permissions.png)
        
    4. Scroll through the list of permissions to **Directory (3)**, expand and then select `Directory.ReadWrite.All`.

        ![Search for permissions](./images/application-proxy-configure-api/select-permissions.png)
    
    5. Select **Consent**, and then select **Accept** to accept the consent of the permissions. You do not need to consent on behalf of your organization for these permissions.

        ![Accept permissions](./images/application-proxy-configure-api/accept-permissions.png)

> [!NOTE]
> The response objects shown might be shortened for readability. 

## Step 1: Create a custom application

To configure Application Proxy for an app using the API, you first create a custom application, and then update the application's **onPremisesPublishing** property to configure the App Proxy settings. In this tutorial, you use an application template to create an instance of a custom application and service principal in your tenant for management. The template ID for a custom application is `8adf8e6e-67b2-4cf2-a259-e3dc5476c621`.

Record the **id**, **appId**, **servicePrincipalId** of the application to use later in the tutorial.

#### Request

```http
POST https://graph.microsoft.com/v1.0/applicationTemplates/8adf8e6e-67b2-4cf2-a259-e3dc5476c621/instantiate
Content-type: application/json

{
  "displayName": "Contoso IWA App"
}
```

#### Response

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications/$entity",
  "id": "bf21f7e9-9d25-4da2-82ab-7fdd85049f83",
  "deletedDateTime": null,
  "addIns": [],
  "appId": "d7fbfe28-c60e-46d2-8335-841923950d3b",
  "applicationTemplateId": null,
  "identifierUris": [],
  "createdDateTime": "2020-08-11T21:07:47.5919755Z",
  "description": null,
  "displayName": "Contoso IWA App",
  "isAuthorizationServiceEnabled": false,
  "isDeviceOnlyAuthSupported": null,
  "isFallbackPublicClient": null,
  "groupMembershipClaims": null,
  "notes": null,
  "optionalClaims": null,
  "orgRestrictions": [],
  "publisherDomain": "f128.info",
  "signInAudience": "AzureADandPersonalMicrosoftAccount",
  "tags": [],
  "tokenEncryptionKeyId": null,
  "uniqueName": null,
  "verifiedPublisher": {
      "displayName": null,
      "verifiedPublisherId": null,
      "addedDateTime": null
  },
}
```

## Step 2: Configure Application Proxy

Use the **id** that you recorded for the application to start the configuration of Application Proxy. Update the following properties:

- **onPremisesPublishing** - In this example, you're using an app with the internal URL: `https://contosoiwaapp.com`. You also use the default domain for the external URL: `https://contosoiwaapp-contoso.msappproxy.net`. 
- **redirectUri**, **identifierUri**, and **homepageUrl** - Set to the same external URL configured in the **onPremisesPublishing** property.
- **implicitGrantSettings** - Set to `true` for **enabledTokenIssuance** and `false` for **enabledAccessTokenIssuance**.

#### Request

```http
PATCH https://graph.microsoft.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83
Content-type: application/json

{
  "onPremisesPublishing": {
    "externalAuthenticationType": "aadPreAuthentication",
    "internalUrl": "https://contosoiwaapp.com",
    "externalUrl": "https://contosoiwaapp-contoso.msappproxy.net"
  }
  "identifierUris": ["https://contosoiwaapp-contoso.msappproxy.net"],
  "web": {
    "redirectUris": ["https://contosoiwaapp-contoso.msappproxy.net"],
    "homePageUrl": "https://contosoiwaapp-contoso.msappproxy.net",
    "implicitGrantSettings": {
      "enableIdTokenIssuance": true,
      "enableAccessTokenIssuance": false
    }
  }
}
```

#### Response

```http
HTTP/1.1 204 No content
```

## Step 3: Assign a connector group to the application

### Get connectors

List the connectors that are available. Record the **id** of the connector that you want to assign to a connector group.

#### Request

```http
GET https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#connectors",
  "value": [
    {
      "id": "d2b1e8e8-8511-49d6-a4ba-323cb083fbb0",
      "machineName": "connectorA.redmond.contoso.com"",
      "externalIp": "131.137.147.164",
      "status": "active"
    },
    {
      "id": "f2cab422-a1c8-4d70-a47e-2cb297a2e051",
      "machineName": "connectorB.contoso.com"",
      "externalIp": "68.0.191.210",
      "status": "active"
    }
  ]
}
```

### Create a connectorGroup

For this example, a new connectorGroup is created named `IWA Demo Connector Group` that is used for the application. Record the **id** that is returned to use in the next step.

#### Request

```http
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups

Content-type: application/json
{
  "name": "IWA Demo Connector Group"
}
```

#### Response

```http
HTTP/1.1 201
Content-type: connectorGroup/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#connectorGroups/$entity",
  "id": "3e6f4c35-a04b-4d03-b98a-66fff89b72e6",
  "name": "IWA Demo Connector Group",
  "connectorGroupType": "applicationProxy",
  "isDefault": false
}
```

### Assign a connector to the connectorGroup

#### Request

```http
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors/f2cab422-a1c8-4d70-a47e-2cb297a2e051/memberOf/$ref
Content-type: application/json

{
  "@odata.id":"https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/3e6f4c35-a04b-4d03-b98a-66fff89b72e6"
}
```

#### Response

```http
HTTP/1.1 204 No content
```

### Assign the application to the connectorGroup

#### Request

```http
PUT https://graph.microsoft.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83/connectorGroup/$ref
Content-type: application/json

{
"@odata.id":"https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/3e6f4c35-a04b-4d03-b98a-66fff89b72e6"
}
```

#### Response

```http
HTTP/1.1 204 No content
```

## Step 4: Configure single sign-on

This application uses Integrated Windows Authentication (IWA). To configure IWA, set the single sign-on properties for **onPremisesPublishing**.

#### Request

```http
PATCH https://graph.microsoft.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83
Content-type: appplication/json

{
  "onPremisesPublishing": {
    "singleSignOnSettings": {
      "kerberosSignOnSettings": {
        "kerberosServicePrincipalName": "HTTP/iwademo.contoso.com",
   	    "kerberosSignOnMappingAttributeType": "userPrincipalName"
      },
      "singleSignOnMode": "onPremisesKerberos"
    }
  } 
}
```

#### Response

```http
HTTP/1.1 204 No content
```

## Step 5: Assign a user

### Retrieve the appRole for the application

Get the app roles for the application using the **id** of the service principal. Record the **id** of the **User** app role to be used in the next step.

#### Request

```http
GET https://graph.microsoft.com/beta/servicePrincipals/a8cac399-cde5-4516-a674-819503c61313/appRoles
```

#### Response

```http
HTTP/1.1 200
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals('a8cac399-cde5-4516-a674-819503c61313')/appRoles",
  "value": [
    {
      "allowedMemberTypes": [
        "User"
      ],
      "description": "User",
      "displayName": "User",
      "id": "18d14569-c3bd-439b-9a66-3a2aee01d14f",
      "isEnabled": true,
      "origin": "Application",
      "value": null
    },
  ]
}
```

### Create a user account

For this tutorial, you create a user account that is assigned to the app role. In the request body, change `contoso.com` to the domain name of your tenant. You can find tenant information on the Azure Active Directory overview page. Record the **id** of the user account to be used in the next step.

#### Request

```http
POST https://graph.microsoft.com/v1.0/users
Content-type: application/json

{
  "accountEnabled":true,
  "displayName":"MyTestUser1",
  "mailNickname":"MyTestUser1",
  "userPrincipalName":"MyTestUser1@contoso.com",
  "passwordProfile": {
    "forceChangePasswordNextSignIn":true,
    "password":"Contoso1234"
  }
}
```

#### Response

```http
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
  "id": "4628e7df-dff3-407c-a08f-75f08c0806dc",
  "businessPhones": [],
  "displayName": "MyTestUser1",
  "givenName": null,
  "jobTitle": null,
  "mail": null,
  "mobilePhone": null,
  "officeLocation": null,
  "preferredLanguage": null,
  "surname": null,
  "userPrincipalName": "MyTestUser1@contoso.com"
}
```

### Assign the user to the application

In the following example, replace the values of these properties:

- **principalId** with the **id** of the user
- **appRoleId** with the **id** of the app role
- **resourceId** with the **id** of the service principal

#### Request

```http
POST https://graph.microsoft.com/beta/servicePrincipals/b00c693f-9658-4c06-bd1b-c402c4653dea/appRoleAssignments
Content-type: appRoleAssignments/json

{
  "principalId": "4628e7df-dff3-407c-a08f-75f08c0806dc",
  "principalType": "User",
  "appRoleId":"18d14569-c3bd-439b-9a66-3a2aee01d14f",
  "resourceId":"a8cac399-cde5-4516-a674-819503c61313"
}
```

#### Response

```http
HTTP/1.1 200
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#appRoleAssignments/$entity",
  "id": "I23pL8ZdNU-CIgQmqMEVyLJ0E6fx0ixEo92az8MnhtU",
  "creationTimestamp": "2020-06-09T00:06:07.5129268Z",
  "appRoleId": "18d14569-c3bd-439b-9a66-3a2aee01d14f",
  "principalDisplayName": "MyTestUser1",
  "principalId": "2fe96d23-5dc6-4f35-8222-0426a8c115c8",
  "principalType": "User",
  "resourceDisplayName": "Contoso IWA App",
  "resourceId": "a8cac399-cde5-4516-a674-819503c61313"
}
```
## Step 6: Test access to the application

Test the application by visiting the **External URL** configured for the app on your browser and then sign in with your test user. You should be able to log into the app and access the application.

## Step 7: Clean up resources

The resources that you created in this tutorial are not intended to be used in a production environment. In this step, you remove the resources that you created.

### Delete the user account

Delete the MyTestUser1 user account.

#### Request

```http
DELETE https://graph.microsoft.com/v1.0/users/4628e7df-dff3-407c-a08f-75f08c0806dc
```

#### Response

```http
No Content - 204
```

### Delete the application

#### Request

```http
DELETE https://graph.microsoft.com/v1.0/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83
```

#### Response

```http
No Content - 204
```

### Delete the connector group

#### Request

```http
DELETE https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/3e6f4c35-a04b-4d03-b98a-66fff89b72e6
```

#### Response

```http
No Content - 204
```

## See also

- [Application Proxy](/azure/active-directory/manage-apps/what-is-application-proxy)
- [application](/graph/api/resources/application?view=graph-rest-1.0)
- [applicationTemplate: instantiate](/graph/api/applicationtemplate-instantiate?view=graph-rest-1.0)
- [appRoleAssignment](/graph/api/resources/approleassignment?view=graph-rest-beta)
- [connector](/graph/api/resources/connector?view=graph-rest-beta)
- [connectorGroup](/graph/api/resources/connectorGroup?view=graph-rest-beta)
- [implicitGrantSettings](/graph/api/resources/implicitgrantsettings?view=graph-rest-1.0)
- [on-premises publishing profiles](/graph/api/resources/onpremisespublishingprofile-root?view=graph-rest-beta)
- [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-1.0)
- [singleSignOnSettings](/graph/api/resources/onpremisespublishingsinglesignon?view=graph-rest-beta)
- [user](/graph/api/resources/user?view=graph-rest-1.0)
