---
title: Configure Application Proxy using Microsoft Graph APIs
description: Automatically configure Application Proxy using the Microsoft Graph APIs to provide remote access and single sign-on to on-premises applications.
author: davidmu1
ms.topic: conceptual
localization_priority: Normal
ms.prod: microsoft-identity-platform
---

# Automate the configuration of Application Proxy using the Microsoft Graph API

In this article, you'll learn how to create and configure Azure Active Directory (Azure AD) [Application Proxy](https://aka.ms/whyappproxy) for an application. Application Proxy provides secure remote access and single sign-on to on-premises web applications. After configuring Application Proxy for an application, users can access their on-premises applications through an external URL, the My Apps portal, or other internal application portals.

This article assumes you have already installed a connector and completed the [prerequisites](https://docs.microsoft.com/azure/active-directory/manage-apps/application-proxy-add-on-premises-application#before-you-begin) for Application Proxy so that connectors can communicate with Azure AD services.

Make sure you have the corresponding permissions to call the following APIs.

|Resource type |Method |
|---------|---------|
| [applicationTemplate](https://docs.microsoft.com/graph/api/resources/applicationtemplate?view=graph-rest-beta)| [Instantiate applicationTemplate](https://docs.microsoft.com/graph/api/resources/applicationtemplate?view=graph-rest-beta) |
|[applications](https://docs.microsoft.com/graph/api/resources/application?view=graph-rest-1.0)<br> [onPremisesPublishing](https://docs.microsoft.com/graph/api/resources/onpremisespublishing?view=graph-rest-beta)|[Update application](https://docs.microsoft.com/graph/api/application-update?view=graph-rest-beta)<br> [Add application to connectorGroup](https://docs.microsoft.com/graph/api/connectorgroup-post-applications?view=graph-rest-beta)|
|[connector](https://docs.microsoft.com/graph/api/resources/connector?view=graph-rest-beta)| [Get connectors](https://docs.microsoft.com/graph/api/connector-get?view=graph-rest-beta)
|[connectorGroup](https://docs.microsoft.com/graph/api/resources/connectorGroup?view=graph-rest-beta)| [Create connectorGroup](https://docs.microsoft.com/graph/api/resources/connectorgroup?view=graph-rest-beta) <br> [Add connector to connectorGroup](https://docs.microsoft.com/graph/api/connector-post-memberof?view=graph-rest-beta) <br> |
|[servicePrincipals](https://docs.microsoft.com/graph/api/resources/serviceprincipal?view=graph-rest-1.0)|[Update servicePrincipal](https://docs.microsoft.com/graph/api/serviceprincipal-update?view=graph-rest-1.0&tabs=http) <br> [Create appRoleAssignments](https://docs.microsoft.com/graph/api/serviceprincipal-post-approleassignments?view=graph-rest-beta)|

>[!NOTE]
> The requests shown in this article uses sample values. You will need update these. The response objects shown may also be shortened for readability. All the properties will be returned from an actual call.

## Step 1: Create a custom application

### Sign in to Microsoft Graph Explorer (recommended), Postman, or any other API client you use

1. Start [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
2. Select **Sign-In with Microsoft** and sign in using an Azure AD global administrator or App Admin credentials.
3. Upon successful sign-in, you'll see the user account details in the left pane.

### Create a custom application

To configure Application Proxy for an app using the API, you must first create a custom application, then update the application's **onPremisesPublishing** property for the app to configure the App Proxy settings.
Use [instantiate applicationTemplate](https://docs.microsoft.com/graph/api/resources/applicationtemplate?view=graph-rest-beta) to create an instance of a custom application and service principal in your tenant for management. The template ID for a custom application is: `8adf8e6e-67b2-4cf2-a259-e3dc5476c621`.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_applicationTemplate"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/applicationTemplates/8adf8e6e-67b2-4cf2-a259-e3dc5476c621/instantiate
Content-type: application/json

{
  "displayName": "Contoso IWA App"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-applicationtemplate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-applicationtemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-applicationtemplate-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application",
  "isCollection": true
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.applicationServicePrincipal",
    "application": {
        "objectId": "bf21f7e9-9d25-4da2-82ab-7fdd85049f83",
        "appId": "d7fbfe28-c60e-46d2-8335-841923950d3b",
        "applicationTemplateId": "8adf8e6e-67b2-4cf2-a259-e3dc5476c621",
        "displayName": "Contoso IWA App",
        "homepage": "https://account.activedirectory.windowsazure.com:444/applications/default.aspx?metadata=customappsso|ISV9.1|primary|z",
        "identifierUris": [],
        "publicClient": null,
        "replyUrls": [],
        "logoutUrl": null,
        "samlMetadataUrl": null,
        "errorUrl": null,
        "groupMembershipClaims": null,
        "availableToOtherTenants": false
    },
    "servicePrincipal": {
        "objectId": "b00c693f-9658-4c06-bd1b-c402c4653dea",
        "deletionTimestamp": null,
        "accountEnabled": true,
        "appId": "d7fbfe28-c60e-46d2-8335-841923950d3b",
        "appDisplayName": "Contoso API",
        "applicationTemplateId": "8adf8e6e-67b2-4cf2-a259-e3dc5476c621",
        "appRoleAssignmentRequired": true,
        "displayName": "Contoso API",
        "errorUrl": null,
        "logoutUrl": null,
        "homepage": "https://account.activedirectory.windowsazure.com:444/applications/default.aspx?metadata=customappsso|ISV9.1|primary|z",
        "samlMetadataUrl": null,
        "microsoftFirstParty": null,
        "publisherName": "f/128 Photography",
        "preferredTokenSigningKeyThumbprint": null,
        "replyUrls": [],
        "servicePrincipalNames": [
            "d7fbfe28-c60e-46d2-8335-841923950d3b"
        ],
        "tags": [
            "WindowsAzureActiveDirectoryIntegratedApp",
            "WindowsAzureActiveDirectoryCustomSingleSignOnApplication"
        ],
        "notificationEmailAddresses": [],
        "keyCredentials": [],
        "passwordCredentials": []
    }
}
```


### Retrieve app object ID and service principal object ID
Use the response from the previous call to retrieve and save the application object ID and service principal object ID.
```
"application": {
	"objectId": "bf21f7e9-9d25-4da2-82ab-7fdd85049f83"
    }
"servicePrincipal": {
	"objectId": "b00c693f-9658-4c06-bd1b-c402c4653dea"
    }
```

## Step 2: Configure Application Proxy properties

### Set the onPremisesPublishing configuration

Use the applicationId from the previous step to configure Application Proxy for the app and update the **onPremisesPublishing** property to the desired configuration. In this example, you're using an app with the internal url: `https://contosoiwaapp.com` and using the default domain for the external url: `https://contosoiwaapp-contoso.msappproxy.net`. 

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_application"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83
Content-type: appplication/json

{
    "onPremisesPublishing": {
        "externalAuthenticationType": "aadPreAuthentication",
        "internalUrl": "https://contosoiwaapp.com",
        "externalUrl": "https://contosoiwaapp-contoso.msappproxy.net"
    }
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-application-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
} -->

```http
HTTP/1.1 204 No content
```
### Set the redirectUri, identifierUri, and homepageUrl properties
Update the application's **redirectUri**, **identifierUri**, and **homepageUrl** propertes to the external URL.

#### Request

<!-- {
  "blockType": "request",
  "name": "update_application"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83
Content-type: appplication/json

{   
   "identifierUris": ["https://contosoiwaapp-contoso.msappproxy.net"],
   "web": {
      "redirectUris": ["https://contosoiwaapp-contoso.msappproxy.net"],
      "homePageUrl": "https://contosoiwaapp-contoso.msappproxy.net"
   }
}
```
#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
} -->

```http
HTTP/1.1 204 No content
```

## Step 3: Assign the connector group to the application

### Get connectors

List the connectors and use the response to retrieve and save the connector object ID. The connector object ID will be used to assign the connector to a connector group.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "connector"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors

```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/connector-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/connector-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/connector-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.connectors",
  "isCollection": true
} -->

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
        },
        {
            "id": "8555cc3c-5c8b-48a8-a8b2-5e97c32ef907",
            "machineName": "connectorC.contoso.com",
            "externalIp": "40.78.66.161",
            "status": "active"
        }
    ]
}
```

### Create a connectorGroup
For this example, a new connectorGroup is created named "IWA Demo Connector Group" that is used for the application. You can also skip this step if your connector is already assigned to the appropriate connectorGroup. Retrieve and save the connectorGroup object ID to use in the next step.

#### Request

<!-- {
  "blockType": "request",
  "name": "connectorGroup"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups

Content-type: application/json
{
   "name": "IWA Demo Connector Group"
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
} -->

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

<!-- {
  "blockType": "request",
  "name": "connectorGroup"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors/8555cc3c-5c8b-48a8-a8b2-5e97c32ef907/memberOf/$ref

Content-type: application/json
{
  "@odata.id":"https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/3e6f4c35-a04b-4d03-b98a-66fff89b72e6"
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
} -->

```http
HTTP/1.1 204 No content
```

### Assign the application to the connectorGroup

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "connectorGroup"
}-->

```msgraph-interactive
PUT https://graph.microsoft.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83/connectorGroup/$ref
Content-type: application/json

{
"@odata.id":"https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/3e6f4c35-a04b-4d03-b98a-66fff89b72e6"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/connectorgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/connectorgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/connectorgroup-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
} -->

```http
HTTP/1.1 204 No content
```

## Step 4: Configure single sign-on
This application uses Integrated Windows Authentication (IWA). To configure IWA, set the single sign-on properties in the [singleSignOnSettings](https://docs.microsoft.com/graph/api/resources/onpremisespublishingsinglesignon?view=graph-rest-beta) resource type.


#### Request

<!-- {
  "blockType": "request",
  "name": "update_application"
}-->

```msgraph-interactive
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

<!-- {
  "blockType": "response",
  "truncated": true,
} -->

```http
HTTP/1.1 204 No content
```

## Step 5: Assign users
### Retrieve appRole for the applicaiton

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "servicePrincipals"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/servicePrincipals/b00c693f-9658-4c06-bd1b-c402c4653dea/appRoles
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/serviceprincipals-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceprincipals-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/serviceprincipals-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
} -->
```http
HTTP/1.1 200
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals('b00c693f-9658-4c06-bd1b-c402c4653dea')/appRoles",
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
        {
            "allowedMemberTypes": [
                "User"
            ],
            "description": "msiam_access",
            "displayName": "msiam_access",
            "id": "b9632174-c057-4f7e-951b-be3adc52bfe6",
            "isEnabled": true,
            "origin": "Application",
            "value": null
        }
    ]
}
```

Use the response from the previous call to retrieve and save the appRole ID to use for the next step.
```
      {
            "description": "User",
            "displayName": "User",
            "id": "18d14569-c3bd-439b-9a66-3a2aee01d14f"
        }
```

### Assign users and groups to the application

Use the following properties to assign a user to the application.

| Property  | Description |ID  |
|---------|---------|---------|
| principalId | User ID of the user that will be assigned to the app | 2fe96d23-5dc6-4f35-8222-0426a8c115c8 |
| principalType | Type of user | User |
| appRoleId |  The App role ID of the default app role of the app | 18d14569-c3bd-439b-9a66-3a2aee01d14f |
| resourceId | The servicePrincipal ID of the app | b00c693f-9658-4c06-bd1b-c402c4653dea |

#### Request


<!-- {
  "blockType": "ignored",
  "name": "servicePrincipals"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/servicePrincipals/b00c693f-9658-4c06-bd1b-c402c4653dea/appRoleAssignments

Content-type: appRoleAssignments/json

{
  "principalId": "2fe96d23-5dc6-4f35-8222-0426a8c115c8",
  "principalType": "User",
  "appRoleId":"18d14569-c3bd-439b-9a66-3a2aee01d14f",
  "resourceId":"b00c693f-9658-4c06-bd1b-c402c4653dea"
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
} -->
```http
HTTP/1.1 200
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#appRoleAssignments/$entity",
    "id": "I23pL8ZdNU-CIgQmqMEVyLJ0E6fx0ixEo92az8MnhtU",
    "creationTimestamp": "2020-06-09T00:06:07.5129268Z",
    "appRoleId": "18d14569-c3bd-439b-9a66-3a2aee01d14f",
    "principalDisplayName": "Jean Green",
    "principalId": "2fe96d23-5dc6-4f35-8222-0426a8c115c8",
    "principalType": "User",
    "resourceDisplayName": "Contoso IWA App",
    "resourceId": "b00c693f-9658-4c06-bd1b-c402c4653dea"
}
```

For more information, see [appRoleAssignment](https://docs.microsoft.com/graph/api/resources/approleassignment?view=graph-rest-beta) resource type.



## Additional steps
- [Automate configuration using PowerShell samples for Application Proxy](https://docs.microsoft.com/azure/active-directory/manage-apps/application-proxy-powershell-samples.md)
- [Automate SAML-based SSO app configuration with Microsoft Graph API](https://docs.microsoft.com/azure/active-directory/manage-apps/application-saml-sso-configure-api.md)
