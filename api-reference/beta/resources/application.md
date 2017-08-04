# application resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an application. Any application that outsources authentication to Azure Active Directory (Azure AD) must be registered in a directory. Application registration involves telling Azure AD about your application, including the URL where it's located, the URL to send replies after authentication, the URI to identify your application, and more.  For more information, see [Basics of Registering an Application in Azure AD](https://azure.microsoft.com/en-us/documentation/articles/active-directory-authentication-scenarios/#basics-of-registering-an-application-in-azure-ad). Inherits from [directoryObject](directoryObject.md). 

> **Note:** Changes to application resource type is currently in development for preview. Please see [known issues with Microsoft Graph](../../../concepts/known_issues.md#application-and-serviceprincipal-api-changes) for more information.

## JSON representation
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
  "allowPublicClient": true,
  "api": {"@odata.type": "microsoft.graph.api"},
  "applicationAliases": ["String"],
  "createdDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "info": {"@odata.type": "microsoft.graph.informationalUrl"},
  "installedClients": {"@odata.type": "microsoft.graph.installedClient"},
  "keyCredentials": [{"@odata.type": "microsoft.graph.keyCredential"}],
  "logo": "Stream",
  "orgRestrictions": ["Guid"],
  "passwordCredentials": [{"@odata.type": "microsoft.graph.passwordCredential"}],
  "preAuthorizedApplications": [{"@odata.type": "microsoft.graph.preAuthorizedApplication"}],
  "requiredResourceAccess": [{"@odata.type": "microsoft.graph.requiredResourceAccess"}],
  "tags": ["String"],
  "web": {"@odata.type": "microsoft.graph.web"}
}
```

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|allowPublicClient|Boolean| Specifies if the application can act as a public client. For example,  an installed application running on a mobile device. Default value is *false*. |
|api|[api](api.md)| Specifies settings for an API application. |
|appRoles|[appRole](approle.md) collection|The collection of application roles that an application may declare. These roles can be assigned to users, groups, or service principals. Not nullable.|
|applicationAliases|String collection| The URIs that identify the application. For more information see, [Application Objects and Service Principal Objects](https://azure.microsoft.com/documentation/articles/active-directory-application-objects/). The *any* operator is required for filter expressions on multi-valued properties. Not nullable. |
|createdDateTime|DateTimeOffset| The date and time the application was registered. |
|deletedDateTime|DateTimeOffset| The date and time the application was deleted. |
|displayName|String|The display name for the application. |
|id|String|The unique identifier for the application. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only. |
|info|[informationalUrl](informationalurl.md)| Basic profile information of the application. |
|installedClients|[installedClient](installedclient.md)| Specifies settings for installed clients such as desktop or mobile devices. |
|keyCredentials|[keyCredential](keycredential.md) collection|The collection of key credentials associated with the application Not nullable. |
|logo|Stream|The main logo for the application. Not nullable. |
|orgRestrictions|String collection| The organizational tenantIds to which the application is restricted.  If the collection is empty, the application is multi-tenant (not restricted). If the collection contains tenantIds, the application is restricted to the organizational tenantIds in the collection. Specifying other tenants but not the tenantId where the application is registered implies that the application's own tenantId is indirectly included. |
|passwordCredentials|[passwordCredential](passwordcredential.md) collection|The collection of password credentials associated with the application. Not nullable.|
|preAuthorizedApplications|[preAuthorizedApplication](preauthorizedapplication.md) collection| Lists applications and requested permissions for implicit consent. Requires an admin to have provided consent to the application. preAuthorizedApplications do not require the user to consent to the requested permissions. Permissions listed in preAuthorizedApplications do not require user consent. However, any additional requested permissions not listed in preAuthorizedApplications require user consent. |
|requiredResourceAccess|[requiredResourceAccess](requiredresourceaccess.md) collection|Specifies resources that this application requires access to and the set of OAuth permission scopes and application roles that it needs under each of those resources. This pre-configuration of required resource access drives the consent experience. Not nullable.|
|tags|String collection| Custom strings that can be used to categorize and identify the application. |
|web|[web](web.md)| Specifies settings for a web application. |

## Relationships

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|connectorGroup|[connectorGroup](connectorgroup.md)| The connectorGroup the application is using with Azure AD Application Proxy. Nullable.|
|createdOnBehalfOf|[directoryObject](directoryobject.md)| Read-only.|
|extensionProperties|[extensionProperty](extensionproperty.md) collection|The extension properties associated with the application. Read-only. Nullable.|
|owners|[directoryObject](directoryobject.md) collection|Directory objects that are owners of the application. The owners are a set of non-admin users who are allowed to modify this object. Requires version 2013-11-08 or newer.  Read-only. Nullable.|
|policy|[policy](policy.md) collection|The policies assigned to this application.|

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[Get application](../api/application_get.md) | application |Read properties and relationships of application object.|
|[Create application](../api/application_post_applications.md) | application | Creates (registers) a new application.|
|[List applications](../api/application_list.md) | application | Retrieve the list of applications in the organization. |
|[Update application](../api/application_update.md) | application |Update application object. |
|[Delete application](../api/application_delete.md) | None |Delete application object. |
|[List extensionProperties](../api/application_list_extensionproperties.md) |[extensionProperty](extensionproperty.md) collection| Get a extensionProperty object collection.|
|[List assigned policies](../api/policy_list_assigned.md)| [policy](policy.md) collection| Get all policies assigned to this object.|
|[Create owner](../api/application_post_owners.md) |[directoryObject](directoryobject.md)| Create a new owner by posting to the owners collection.|
|[List owners](../api/application_list_owners.md) |[directoryObject](directoryobject.md) collection| Get an owner object collection.|


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "application resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
