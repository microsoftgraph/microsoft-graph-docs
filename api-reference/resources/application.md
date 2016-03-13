# application resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get application](../api/application_get.md) | [application](application.md) |Read properties and relationships of application object.|
|[Create extensionProperty](../api/application_post_extensionproperties.md) |[extensionProperty](extensionproperty.md)| Create a new extensionProperty by posting to the extensionProperties collection.|
|[List extensionProperties](../api/application_list_extensionproperties.md) |[extensionProperty](extensionproperty.md) collection| Get a extensionProperty object collection.|
|[Create owner](../api/application_post_owners.md) |[directoryObject](directoryobject.md)| Create a new owner by posting to the owners collection.|
|[List owners](../api/application_list_owners.md) |[directoryObject](directoryobject.md) collection| Get a owner object collection.|
|[Update](../api/application_update.md) | [application](application.md)	|Update application object. |
|[Delete](../api/application_delete.md) | None |Delete application object. |
|[Checkmembergroups](../api/application_checkmembergroups.md)|string collection||
|[Getmembergroups](../api/application_getmembergroups.md)|string collection||
|[Getmemberobjects](../api/application_getmemberobjects.md)|string collection||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|addIns|[addIn](addin.md) collection||
|appId|string||
|appRoles|[appRole](approle.md) collection||
|availableToOtherOrganizations|boolean||
|displayName|string||
|errorUrl|string||
|groupMembershipClaims|string||
|homepage|string||
|id|string| Read-only.|
|identifierUris|string collection||
|keyCredentials|[keyCredential](keycredential.md) collection||
|knownClientApplications|guid collection||
|logoutUrl|string||
|mainLogo|stream||
|oauth2AllowImplicitFlow|boolean||
|oauth2AllowUrlPathMatching|boolean||
|oauth2Permissions|[oAuth2Permission](oauth2permission.md) collection||
|oauth2RequirePostResponse|boolean||
|passwordCredentials|[passwordCredential](passwordcredential.md) collection||
|publicClient|boolean||
|recordConsentConditions|string||
|replyUrls|string collection||
|requiredResourceAccess|[requiredResourceAccess](requiredresourceaccess.md) collection||
|samlMetadataUrl|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|createdOnBehalfOf|[directoryObject](directoryobject.md)| Read-only. Nullable.|
|extensionProperties|[extensionProperty](extensionproperty.md) collection| Read-only. Nullable.|
|owners|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.application"
}-->

```json
{
  "addIns": [{"@odata.type": "microsoft.graph.addIn"}],
  "appId": "string",
  "appRoles": [{"@odata.type": "microsoft.graph.appRole"}],
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "application resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->