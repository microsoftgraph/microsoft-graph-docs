# servicePrincipal resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an instance of an application in a directory. Inherits from [directoryObject](directoryobject.md).

## JSON representation
Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "appRoleAssignedTo",
    "appRoleAssignments",
    "createdObjects",
    "createdOnBehalfOf",
    "memberOf",
    "oauth2PermissionGrants",
    "ownedObjects",
    "owners"
  ],
  "@odata.type": "microsoft.graph.serviceprincipal"
}-->

```json
{
  "accountEnabled": true,
  "addIns": [{"@odata.type": "microsoft.graph.addIn"}],
  "appDisplayName": "string",
  "appId": "string",
  "appOwnerOrganizationId": "guid",
  "appRoleAssignmentRequired": true,
  "displayName": "string",
  "errorUrl": "string",
  "homepage": "string",
  "id": "string (identifier)",
  "keyCredentials": [{"@odata.type": "microsoft.graph.keyCredential"}],
  "logoutUrl": "string",
  "oauth2Permissions": [{"@odata.type": "microsoft.graph.oAuth2Permission"}],
  "passwordCredentials": [{"@odata.type": "microsoft.graph.passwordCredential"}],
  "preferredTokenSigningKeyThumbprint": "string",
  "publisherName": "string",
  "replyUrls": ["string"],
  "samlMetadataUrl": "string",
  "servicePrincipalNames": ["string"],
  "tags": ["string"]
}

```
## Properties
| Property     | Type |Description|
|:---------------|:--------|:----------|
|accountEnabled|Boolean| **true** if the service principal account is enabled; otherwise, **false**.            |
|appDisplayName|String|The display name exposed by the associated application.|
|appId|String|The unique identifier for the associated application (its **appId** property).|
|appRoleAssignmentRequired|Boolean|Specifies whether an **appRoleAssignment** to a user or group is required before Azure AD will issue a user or access token to the application. Not nullable. |
|appRoles|[appRole](approle.md) collection|The application roles exposed by the associated application. For more information see the **appRoles** property definition on the [application](application.md) entity. Not nullable. |
|displayName|String|The display name for the service principal.|
|errorUrl|String|            |
|homepage|String|The URL to the homepage of the associated   application.|
|keyCredentials|[keyCredential](keycredential.md) collection|The collection of key credentials associated with the service principal. Not nullable.            |
|logoutUrl|String| Specifies the URL that will be used by Microsoft's authorization service to logout an user using [front-channel](https://openid.net/specs/openid-connect-frontchannel-1_0.html), [back-channel](https://openid.net/specs/openid-connect-backchannel-1_0.html) or SAML logout protocols.  |
|oauth2Permissions|[oAuth2Permission](oauth2permission.md) collection|The OAuth 2.0 permissions exposed by the associated application. For more information see the **oauth2Permissions** property definition on the [application](application.md) entity. Not nullable.            |
|id|String|The unique identifier for the service principal. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.|
|passwordCredentials|[passwordCredential](passwordcredential.md) collection|The collection of password credentials associated with the service principal. Not nullable. |
|preferredTokenSigningKeyThumbprint|String|Reserved for internal use only. Do not write or otherwise rely on this property. May be removed in future versions. |
|publisherName|String|The display name of the tenant in which the associated application is specified.|
|replyUrls|String collection|The URLs that user tokens are sent to for sign in with the associated application, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to for the associated application. Not nullable. |
|samlMetadataUrl|String| |
|servicePrincipalNames|String collection|The URIs that identify the associated application. For more information see, [Application Objects and Service Principal Objects](https://msdn.microsoft.com/en-us/library/azure/dn132633.aspx).The **any** operator is required for filter expressions on multi-valued properties.  Not nullable. |
|tags|String collection| Not nullable. |

## Relationships
| Relationship | Type |Description|
|:---------------|:--------|:----------|
|appRoleAssignedTo|[appRoleAssignment](approleassignment.md)|Principals (users, groups, and service principals) that are assigned to this service principal. Read-only.|
|appRoleAssignments|[appRoleAssignment](approleassignment.md) collection|Applications that the service principal is assigned to. Read-only. Nullable.|
|createdObjects|[directoryObject](directoryobject.md) collection|Directory objects created by this service principal. Read-only. Nullable.|
|memberOf|[directoryObject](directoryobject.md) collection|Roles that this service principal is a member of. HTTP Methods: GET Read-only. Nullable.|
|oauth2PermissionGrants|[oAuth2PermissionGrant](oauth2permissiongrant.md) collection|User impersonation grants associated with this service principal. Read-only. Nullable.|
|ownedObjects|[directoryObject](directoryobject.md) collection|Directory objects that are owned by this service principal. Read-only. Nullable.|
|owners|[directoryObject](directoryobject.md) collection|Directory objects that are owners of this service principal. The owners are a set of non-admin users who are allowed to modify this object. Read-only. Nullable.|
|policy|[policy](policy.md) collection|The policies assigned to this service principal.|

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get servicePrincipal](../api/serviceprincipal_get.md) | [servicePrincipal](serviceprincipal.md) |Read properties and relationships of servicePrincipal object.|
|[List servicePrincipals](../api/serviceprincipal_list.md) | [servicePrincipal](serviceprincipal.md) collection | Retrieve a list of servicePrincipal objects. |
|[Create appRoleAssignment](../api/serviceprincipal_post_approleassignments.md) |[appRoleAssignment](approleassignment.md)| Create a new appRoleAssignment by posting to the appRoleAssignments collection.|
|[List appRoleAssignments](../api/serviceprincipal_list_approleassignments.md) |[appRoleAssignment](approleassignment.md) collection| Get a appRoleAssignment object collection.|
|[List createdObjects](../api/serviceprincipal_list_createdobjects.md) |[directoryObject](directoryobject.md) collection| Get a createdObject object collection.|
|[List memberOf](../api/serviceprincipal_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get a memberOf object collection.|
|[List assigned policies](../api/policy_list_assigned.md)| [policy](policy.md) collection| Get all policies assigned to this object.|
|[List oauth2PermissionGrants](../api/serviceprincipal_list_oauth2permissiongrants.md) |[oAuth2PermissionGrant](oauth2permissiongrant.md) collection| Get a oAuth2PermissionGrant object collection.|
|[List ownedObjects](../api/serviceprincipal_list_ownedobjects.md) |[directoryObject](directoryobject.md) collection| Get a ownedObject object collection.|
|[Add owner](../api/serviceprincipal_post_owners.md) |[directoryObject](directoryobject.md)| Create a new owner by posting to the owners collection.|
|[List owners](../api/serviceprincipal_list_owners.md) |[directoryObject](directoryobject.md) collection| Get a owner object collection.|
|[Update](../api/serviceprincipal_update.md) | [servicePrincipal](serviceprincipal.md)  |Update servicePrincipal object. |
|[Delete](../api/serviceprincipal_delete.md) | None |Delete servicePrincipal object. |
|[checkMemberGroups](../api/serviceprincipal_checkmembergroups.md)|String collection||
|[getMemberGroups](../api/serviceprincipal_getmembergroups.md)|String collection||
|[getMemberObjects](../api/serviceprincipal_getmemberobjects.md)|String collection||

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "servicePrincipal resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
