# application resource type

Represents an application. Any application that outsources authentication to Azure AD must be registered in a directory. This involves telling Azure AD about your application, including the URL where it's located, the URL to send replies after authentication, the URI to identify your application, and more.  For more information, see [Basics of Registering an Application in Azure AD](https://azure.microsoft.com/en-us/documentation/articles/active-directory-authentication-scenarios/#basics-of-registering-an-application-in-azure-ad). Inherits from [directoryObject](directoryObject).


### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "createdOnBehalfOf",
    "extensionProperties",
    "owners"
  ],
  "@odata.type": "microsoft.graph.application"
}-->

```json
{
  "addIns": [{"@odata.type": "microsoft.graph.addIn"}],
  "appId": "string",
  "appRoles": [{"@odata.type": "microsoft.graph.approle"}],
  "availableToOtherOrganizations": true,
  "displayName": "string",
  "errorUrl": "string",
  "groupMembershipClaims": "string",
  "homepage": "string",
  "id": "string (identifier)",
  "identifierUris": ["string"],
  "keyCredentials": [{"@odata.type": "microsoft.graph.keyCredential"}],
  "knownClientApplications": ["guid"],
  "logoutUrl": "string",
  "mainLogo": "stream",
  "oauth2AllowImplicitFlow": true,
  "oauth2AllowUrlPathMatching": true,
  "oauth2Permissions": [{"@odata.type": "microsoft.graph.oAuth2Permission"}],
  "oauth2RequirePostResponse": true,
  "passwordCredentials": [{"@odata.type": "microsoft.graph.passwordCredential"}],
  "publicClient": true,
  "recordConsentConditions": "string",
  "replyUrls": ["string"],
  "requiredResourceAccess": [{"@odata.type": "microsoft.graph.requiredResourceAccess"}],
  "samlMetadataUrl": "string"
}

```
### Properties
| Property     | Type |Description|
|:---------------|:--------|:----------|
|appId|String|The unique identifier for the application.|
|appRoles|[appRole](approle.md) collection|The collection of application roles that an application may declare. These roles can be assigned to users, groups or service principals. Not nullable.|
|availableToOtherOrganizations|Boolean| **true** if the application is shared with other tenants; otherwise, **false**.|
|displayName|String|The display name for the application.|
|errorUrl|String|                              |
|groupMembershipClaims|String|A bitmask that configures the "groups" claim issued in a user or OAuth 2.0 access token that the application expects. The bitmask values are: 0: None, 1: Security groups and Azure AD roles, 2: Reserved, and 4: Reserved. Setting the bitmask to 7 will get all of the security groups, distribution groups, and Azure AD directory roles that the signed-in user is a member of. |
|homepage|String|The URL to the application's homepage.|
|identifierUris|String collection|The URIs that identify the application. For more information see, [Application Objects and Service Principal Objects](https://azure.microsoft.com/en-us/documentation/articles/active-directory-application-objects/). The **any** operator is required for filter expressions on multi-valued properties. Not nullable. |
|keyCredentials|[keyCredential](keycredential.md) collection|The collection of key credentials associated with the application Not nullable.|
|knownClientApplications|Guid collection|Client applications that are tied to this resource application. Consent to any of the known client applications will result in implicit consent to the resource application through a combined consent dialog (showing the OAuth permission scopes required by the client and the resource). Not nullable.|
|logoutUrl|String|                              |
|mainLogo|Stream|The main logo for the application. Not nullable|
|oauth2AllowImplicitFlow|Boolean|Specifies whether this web application can request OAuth2.0 implicit flow tokens. The default is **false**. Not nullable.|
|oauth2AllowUrlPathMatching|Boolean|Specifies whether, as part of OAuth 2.0 token requests, Azure AD will allow path matching of the redirect URI against the application's **replyUrls**. The default is **false**. Not nullable.|
|oauth2Permissions|[oAuth2Permission](oauth2permission.md) collection|The collection of OAuth 2.0 permission scopes that the web API (resource) application exposes to client applications. These permission scopes may be granted to client applications during consent. Not nullable.|
|oauth2RequirePostResponse|Boolean||
|id|String|The unique identifier for the application. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.|
|passwordCredentials|[passwordCredential](passwordcredential.md) collection|The collection of password credentials associated with the application. Not nullable.|
|publicClient|Boolean|Specifies whether this application is a public client (such as an installed application running on a mobile device).  Default is **false**.|
|replyUrls|String collection|Specifies the URLs that user tokens are sent to for sign in, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to. Not nullable.|
|requiredResourceAccess|[requiredResourceAccess](requiredresourceaccess.md) collection|Specifies resources that this application requires access to and the set of OAuth permission scopes and application roles that it needs under each of those resources. This pre-configuration of required resource access drives the consent experience. Not nullable.|
|samlMetadataUrl|String|The URL to the SAML metadata for the application.|

### Relationships
| Relationship | Type |Description|
|:---------------|:--------|:----------|
|createdOnBehalfOf|[directoryObject](directoryobject.md)| Read-only.|
|extensionProperties|[extensionProperty](extensionproperty.md) collection|The extension properties associated with the application. Read-only. Nullable.|
|owners|[directoryObject](directoryobject.md) collection|Directory objects that are owners of the application. The owners are a set of non-admin users who are allowed to modify this object. Requires version 2013-11-08 or newer.  Read-only. Nullable.|

### Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get application](../api/application_get.md) | [application](application.md) |Read properties and relationships of application object.|
|[Create extensionProperty](../api/application_post_extensionproperties.md) |[extensionProperty](extensionproperty.md)| Create a new extensionProperty by posting to the extensionProperties collection.|
|[List extensionProperties](../api/application_list_extensionproperties.md) |[extensionProperty](extensionproperty.md) collection| Get a extensionProperty object collection.|
|[Create owner](../api/application_post_owners.md) |[directoryObject](directoryobject.md)| Create a new owner by posting to the owners collection.|
|[List owners](../api/application_list_owners.md) |[directoryObject](directoryobject.md) collection| Get a owner object collection.|
|[Update](../api/application_update.md) | [application](application.md) |Update application object. |
|[Delete](../api/application_delete.md) | None |Delete application object. |
|[restore](../api/application_restore.md)|[application](application.md)||

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "application resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->