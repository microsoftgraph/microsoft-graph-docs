# servicePrincipal resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get servicePrincipal](../api/serviceprincipal_get.md) | [servicePrincipal](serviceprincipal.md) |Read properties and relationships of servicePrincipal object.|
|[Create appRoleAssignment](../api/serviceprincipal_post_approleassignedto.md) |[appRoleAssignment](approleassignment.md)| Create a new appRoleAssignment by posting to the appRoleAssignedTo collection.|
|[List appRoleAssignedTo](../api/serviceprincipal_list_approleassignedto.md) |[appRoleAssignment](approleassignment.md) collection| Get a appRoleAssignment object collection.|
|[Create appRoleAssignment](../api/serviceprincipal_post_approleassignments.md) |[appRoleAssignment](approleassignment.md)| Create a new appRoleAssignment by posting to the appRoleAssignments collection.|
|[List appRoleAssignments](../api/serviceprincipal_list_approleassignments.md) |[appRoleAssignment](approleassignment.md) collection| Get a appRoleAssignment object collection.|
|[Create createdObject](../api/serviceprincipal_post_createdobjects.md) |[directoryObject](directoryobject.md)| Create a new createdObject by posting to the createdObjects collection.|
|[List createdObjects](../api/serviceprincipal_list_createdobjects.md) |[directoryObject](directoryobject.md) collection| Get a createdObject object collection.|
|[Create memberOf](../api/serviceprincipal_post_memberof.md) |[directoryObject](directoryobject.md)| Create a new memberOf by posting to the memberOf collection.|
|[List memberOf](../api/serviceprincipal_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get a memberOf object collection.|
|[Create oAuth2PermissionGrant](../api/serviceprincipal_post_oauth2permissiongrants.md) |[oAuth2PermissionGrant](oauth2permissiongrant.md)| Create a new oAuth2PermissionGrant by posting to the oauth2PermissionGrants collection.|
|[List oauth2PermissionGrants](../api/serviceprincipal_list_oauth2permissiongrants.md) |[oAuth2PermissionGrant](oauth2permissiongrant.md) collection| Get a oAuth2PermissionGrant object collection.|
|[Create ownedObject](../api/serviceprincipal_post_ownedobjects.md) |[directoryObject](directoryobject.md)| Create a new ownedObject by posting to the ownedObjects collection.|
|[List ownedObjects](../api/serviceprincipal_list_ownedobjects.md) |[directoryObject](directoryobject.md) collection| Get a ownedObject object collection.|
|[Create owner](../api/serviceprincipal_post_owners.md) |[directoryObject](directoryobject.md)| Create a new owner by posting to the owners collection.|
|[List owners](../api/serviceprincipal_list_owners.md) |[directoryObject](directoryobject.md) collection| Get a owner object collection.|
|[Update](../api/serviceprincipal_update.md) | [servicePrincipal](serviceprincipal.md)	|Update servicePrincipal object. |
|[Delete](../api/serviceprincipal_delete.md) | None |Delete servicePrincipal object. |
|[Checkmembergroups](../api/serviceprincipal_checkmembergroups.md)|string collection||
|[Getmembergroups](../api/serviceprincipal_getmembergroups.md)|string collection||
|[Getmemberobjects](../api/serviceprincipal_getmemberobjects.md)|string collection||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accountEnabled|boolean||
|addIns|[addIn](addin.md) collection||
|appDisplayName|string||
|appId|string||
|appOwnerOrganizationId|guid||
|appRoleAssignmentRequired|boolean||
|appRoles|[appRole](approle.md) collection||
|displayName|string||
|errorUrl|string||
|homepage|string||
|id|string| Read-only.|
|keyCredentials|[keyCredential](keycredential.md) collection||
|logoutUrl|string||
|oauth2Permissions|[oAuth2Permission](oauth2permission.md) collection||
|passwordCredentials|[passwordCredential](passwordcredential.md) collection||
|preferredTokenSigningKeyThumbprint|string||
|publisherName|string||
|replyUrls|string collection||
|samlMetadataUrl|string||
|servicePrincipalNames|string collection||
|tags|string collection||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|appRoleAssignedTo|[appRoleAssignment](approleassignment.md) collection| Read-only. Nullable.|
|appRoleAssignments|[appRoleAssignment](approleassignment.md) collection| Read-only. Nullable.|
|createdObjects|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|memberOf|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|oauth2PermissionGrants|[oAuth2PermissionGrant](oauth2permissiongrant.md) collection| Read-only. Nullable.|
|ownedObjects|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|owners|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

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
  "appRoles": [{"@odata.type": "microsoft.graph.appRole"}],
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "servicePrincipal resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->