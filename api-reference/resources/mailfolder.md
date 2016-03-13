# mailFolder resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get mailFolder](../api/mailfolder_get.md) | [mailFolder](mailfolder.md) |Read properties and relationships of mailFolder object.|
|[Create mailFolder](../api/mailfolder_post_childfolders.md) |[mailFolder](mailfolder.md)| Create a new mailFolder by posting to the childFolders collection.|
|[List childFolders](../api/mailfolder_list_childfolders.md) |[mailFolder](mailfolder.md) collection| Get a mailFolder object collection.|
|[Create message](../api/mailfolder_post_messages.md) |[message](message.md)| Create a new message by posting to the messages collection.|
|[List messages](../api/mailfolder_list_messages.md) |[message](message.md) collection| Get a message object collection.|
|[Create multiValueLegacyExtendedProperty](../api/mailfolder_post_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md)| Create a new multiValueLegacyExtendedProperty by posting to the multiValueExtendedProperties collection.|
|[List multiValueExtendedProperties](../api/mailfolder_list_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Get a multiValueLegacyExtendedProperty object collection.|
|[Create singleValueLegacyExtendedProperty](../api/mailfolder_post_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md)| Create a new singleValueLegacyExtendedProperty by posting to the singleValueExtendedProperties collection.|
|[List singleValueExtendedProperties](../api/mailfolder_list_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Get a singleValueLegacyExtendedProperty object collection.|
|[Create userConfiguration](../api/mailfolder_post_userconfigurations.md) |[userConfiguration](userconfiguration.md)| Create a new userConfiguration by posting to the userConfigurations collection.|
|[List userConfigurations](../api/mailfolder_list_userconfigurations.md) |[userConfiguration](userconfiguration.md) collection| Get a userConfiguration object collection.|
|[Update](../api/mailfolder_update.md) | [mailFolder](mailfolder.md)	|Update mailFolder object. |
|[Delete](../api/mailfolder_delete.md) | None |Delete mailFolder object. |
|[Copy](../api/mailfolder_copy.md)|[mailFolder](mailfolder.md)||
|[Move](../api/mailfolder_move.md)|[mailFolder](mailfolder.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|childFolderCount|int32||
|displayName|string||
|id|string| Read-only.|
|parentFolderId|string||
|totalItemCount|int32||
|unreadItemCount|int32||
|wellKnownName|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|childFolders|[mailFolder](mailfolder.md) collection| Read-only. Nullable.|
|messages|[message](message.md) collection| Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Read-only. Nullable.|
|userConfigurations|[userConfiguration](userconfiguration.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mailfolder"
}-->

```json
{
  "childFolderCount": 1024,
  "displayName": "string",
  "id": "string (identifier)",
  "parentFolderId": "string",
  "totalItemCount": 1024,
  "unreadItemCount": 1024,
  "wellKnownName": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mailFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->