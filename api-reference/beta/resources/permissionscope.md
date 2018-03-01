# permissionScope resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an OAuth 2.0 delegated permission scope. The specified OAuth 2.0 delegated permission scopes may be requested by client applications (through the **requiredResourceAccess** collection on the [Application](application.md) object) when calling a resource application. The **oauth2Permissions** property of the [ServicePrincipal](serviceprincipal.md) entity and of the [Application](application.md) entity is a collection of **OAuth2Permission**.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|adminConsentDescription|String| Permission help text that appears in the admin consent and app assignment experiences. |
|adminConsentDisplayName|String| Display name for the permission that appears in the admin consent and app assignment experiences. |
|id|Guid| Unique scope permission identifier inside the oauth2Permissions collection. |
|isEnabled|Boolean| When creating or updating a permission, this property must be set to **true** (which is the default). To delete a permission, this property must first be set to **false**. At that point, in a subsequent call, the permission may be removed. |
|origin|String| For internal use. |
|type|String| Specifies whether this scope permission can be consented to by an end user, or whether it is a tenant-wide permission that must be consented to by a company administrator. Possible values are *User* or *Admin*. |
|userConsentDescription|String| Permission help text that appears in the end-user consent experience. |
|userConsentDisplayName|String| Display name for the permission that appears in the end-user consent experience. |
|value|String| The value of the scope claim that the resource application should expect in the OAuth 2.0 access token. |

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.permissionScope"
}-->

```json
{
  "adminConsentDescription": "String",
  "adminConsentDisplayName": "String",
  "id": "Guid",
  "isEnabled": true,
  "origin": "String",
  "type": "String",
  "userConsentDescription": "String",
  "userConsentDisplayName": "String",
  "value": "String"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "permissionScope resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->