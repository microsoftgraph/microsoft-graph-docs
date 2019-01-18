---
title: "application resource type"
description: "Represents an application. Any application that outsources authentication to Azure Active Directory (Azure AD) must be registered in a directory. Application registration involves telling Azure AD about your application, including the URL where it's located, the URL to send replies after authentication, the URI to identify your application, and more. For more information, see Basics of Registering an Application in Azure AD. Inherits from directoryObject. "
localization_priority: Priority
author: "lleonard-msft"
ms.prod: "microsoft-identity-platform"
---

# application resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an application. Any application that outsources authentication to Azure Active Directory (Azure AD) must be registered in a directory. Application registration involves telling Azure AD about your application, including the URL where it's located, the URL to send replies after authentication, the URI to identify your application, and more. For more information, see [Basics of Registering an Application in Azure AD](https://azure.microsoft.com/documentation/articles/active-directory-authentication-scenarios/#basics-of-registering-an-application-in-azure-ad). Inherits from [directoryObject](directoryobject.md). 

> **Note:** Changes to the application resource type are currently in development. For more information, see [known issues with Microsoft Graph](/graph/known-issues#application-and-serviceprincipal-api-changes).

This resource supports:

- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/application-delta.md) function.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[Get application](../api/application-get.md) | application |Read properties and relationships of application object.|
|[Create application](../api/application-post-applications.md) | application | Creates (registers) a new application.|
|[List applications](../api/application-list.md) | application | Retrieve the list of applications in the organization. |
|[Update application](../api/application-update.md) | application |Update application object. |
|[Delete application](../api/application-delete.md) | None |Delete application object. |
|[List assigned policies](../api/policy-list-assigned.md)| [policy](policy.md) collection| Get all policies assigned to this object.|
|[Create owner](../api/application-post-owners.md) |[directoryObject](directoryobject.md)| Create a new owner by posting to the owners collection.|
|[List owners](../api/application-list-owners.md) |[directoryObject](directoryobject.md) collection| Get an owner object collection.|
|[delta](../api/application-delta.md)|application collection| Get incremental changes for applications. |
|[Create call](../api/application-post-calls.md)|[call](call.md)|Create a new call by posting to the calls collection.|
|[Create online meeting](../api/application-post-onlinemeetings.md)|[onlineMeeting](onlinemeeting.md)|Create a new online meeting by posting to the onlineMeetings collection.|

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|api|[api](api.md)| Specifies settings for an API application. |
|appId| String | The unique identifier for the application that is assigned to an application by Azure AD. Not nullable. Read-only. |
|appRoles|[appRole](approle.md) collection|The collection of application roles that an application may declare. These roles can be assigned to users, groups, or service principals. Not nullable.|
|createdDateTime|DateTimeOffset| The date and time the application was registered. |
|deletedDateTime|DateTimeOffset| The date and time the application was deleted. |
|displayName|String|The display name for the application. |
|id|String|The unique identifier for the application. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only. |
|identifierUris|String collection| The URIs that identify the application. For more information see, [Application Objects and Service Principal Objects](https://azure.microsoft.com/documentation/articles/active-directory-application-objects/). The *any* operator is required for filter expressions on multi-valued properties. Not nullable. |
|info|[informationalUrl](informationalurl.md)| Basic profile information of the application. |
|isFallbackPublicClient|Boolean| Specifies the fallback app type as public client, such as an installed app running on a mobile device. The default value is *false* which means the fallback app type is confidential client such as web app. There are certain scenarios where Azure AD cannot determine the client app type (e.g. [ROPC](https://tools.ietf.org/html/rfc6749#section-4.3) flow where it is configured without specifying a redirect URI). In those cases Azure AD will interpret the app type based on the value of this property.|
|keyCredentials|[keyCredential](keycredential.md) collection|The collection of key credentials associated with the application Not nullable. |
|logo|Stream|The main logo for the application. Not nullable. |
|optionalClaims|optionalClaims| Reserved for future use. |
|orgRestrictions|String collection| Reserved for future use. |
|parentalControlSettings|[parentalControlSettings](parentalcontrolsettings.md) |Specifies parental control settings for an application.|
|passwordCredentials|[passwordCredential](passwordcredential.md) collection|The collection of password credentials associated with the application. Not nullable.|
|publicClient|[publicClient](publicclient.md)| Specifies settings for installed clients such as desktop or mobile devices. |
|publisherDomain| String | The verified publisher domain for the application. Read-only.|
|requiredResourceAccess|[requiredResourceAccess](requiredresourceaccess.md) collection|Specifies resources that this application requires access to and the set of OAuth permission scopes and application roles that it needs under each of those resources. This pre-configuration of required resource access drives the consent experience. Not nullable.|
|signInAudience | String | Specifies what Microsoft accounts are supported for the current application. Supported values are:<ul><li>**AzureADMyOrg**: Users with a Microsoft work or school account in my organization’s Azure AD tenant (i.e. single tenant)</li><li>**AzureADMultipleOrgs**: Users with a Microsoft work or school account in any organization’s Azure AD tenant (i.e. multi-tenant)</li> <li>**AzureADandPersonalMicrosoftAccount**: Users with a personal Microsoft account, or a work or school account in any organization’s Azure AD tenant</li></ul> | `AzureADandPersonalMicrosoftAccount` |
|tags|String collection| Custom strings that can be used to categorize and identify the application. |
|web|[web](web.md)| Specifies settings for a web application. |

## Relationships

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|calls           |[call](call.md) collection                  |Read-only. Nullable.|
|connectorGroup|[connectorGroup](connectorgroup.md)| The connectorGroup the application is using with Azure AD Application Proxy. Nullable.|
|createdOnBehalfOf|[directoryObject](directoryobject.md)| Read-only.|
|onlineMeetings  |[onlineMeeting](onlinemeeting.md) collection|Read-only. Nullable.|
|owners|[directoryObject](directoryobject.md) collection|Directory objects that are owners of the application. The owners are a set of non-admin users who are allowed to modify this object. Requires version 2013-11-08 or newer. Read-only. Nullable.|
|policy|[policy](policy.md) collection|The policies assigned to this application.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "createdOnBehalfOf",
    "owners"
  ],
  "@odata.type": "microsoft.graph.application"
}-->

```json
{
  "api": {"@odata.type": "microsoft.graph.apiApplication"},
  "appId": "String",
  "appRoles": [{"@odata.type": "microsoft.graph.appRole"}],
  "createdDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "identifierUris": ["String"],
  "info": {"@odata.type": "microsoft.graph.informationalUrl"},
  "isFallbackPublicClient": true,
  "keyCredentials": [{"@odata.type": "microsoft.graph.keyCredential"}],
  "logo": "Stream",
  "optionalClaims": [{"@odata.type": "microsoft.graph.optionalClaims"}],
  "orgRestrictions": ["Guid"],
  "parentalControlSettings": [{"@odata.type": "microsoft.graph.parentalControlSettings"}],
  "passwordCredentials": [{"@odata.type": "microsoft.graph.passwordCredential"}],
  "preAuthorizedApplications": [{"@odata.type": "microsoft.graph.preAuthorizedApplication"}],
  "publicClient": {"@odata.type": "microsoft.graph.publicClientApplication"},
  "publisherDomain": "String",
  "requiredResourceAccess": [{"@odata.type": "microsoft.graph.requiredResourceAccess"}],
  "signInAudience": "String",
  "tags": ["String"],
  "web": {"@odata.type": "microsoft.graph.webApplication"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "application resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
