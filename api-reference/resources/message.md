# message resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get message](../api/message_get.md) | [message](message.md) |Read properties and relationships of message object.|
|[Create attachment](../api/message_post_attachments.md) |[attachment](attachment.md)| Create a new attachment by posting to the attachments collection.|
|[List attachments](../api/message_list_attachments.md) |[attachment](attachment.md) collection| Get a attachment object collection.|
|[Create extension](../api/message_post_extensions.md) |[extension](extension.md)| Create a new extension by posting to the extensions collection.|
|[List extensions](../api/message_list_extensions.md) |[extension](extension.md) collection| Get a extension object collection.|
|[Create multiValueLegacyExtendedProperty](../api/message_post_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md)| Create a new multiValueLegacyExtendedProperty by posting to the multiValueExtendedProperties collection.|
|[List multiValueExtendedProperties](../api/message_list_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Get a multiValueLegacyExtendedProperty object collection.|
|[Create singleValueLegacyExtendedProperty](../api/message_post_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md)| Create a new singleValueLegacyExtendedProperty by posting to the singleValueExtendedProperties collection.|
|[List singleValueExtendedProperties](../api/message_list_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Get a singleValueLegacyExtendedProperty object collection.|
|[Update](../api/message_update.md) | [message](message.md)	|Update message object. |
|[Delete](../api/message_delete.md) | None |Delete message object. |
|[Copy](../api/message_copy.md)|[message](message.md)||
|[Createforward](../api/message_createforward.md)|[message](message.md)||
|[Createreply](../api/message_createreply.md)|[message](message.md)||
|[Createreplyall](../api/message_createreplyall.md)|[message](message.md)||
|[Forward](../api/message_forward.md)|None||
|[Move](../api/message_move.md)|[message](message.md)||
|[Reply](../api/message_reply.md)|None||
|[Replyall](../api/message_replyall.md)|None||
|[Send](../api/message_send.md)|None||
|[Unsubscribe](../api/message_unsubscribe.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bccRecipients|[recipient](recipient.md) collection||
|body|[itemBody](itembody.md)||
|bodyPreview|string||
|categories|string collection||
|ccRecipients|[recipient](recipient.md) collection||
|changeKey|string||
|conversationId|string||
|conversationIndex|binary||
|createdDateTime|[dateTimeOffset](datetimeoffset.md)||
|flag|[followupFlag](followupflag.md)||
|from|[recipient](recipient.md)||
|hasAttachments|boolean||
|id|string| Read-only.|
|importance|string| Possible values are: `low`, `normal`, `high`.|
|inferenceClassification|string| Possible values are: `focused`, `other`.|
|internetMessageId|string||
|isDeliveryReceiptRequested|boolean||
|isDraft|boolean||
|isRead|boolean||
|isReadReceiptRequested|boolean||
|lastModifiedDateTime|[dateTimeOffset](datetimeoffset.md)||
|parentFolderId|string||
|receivedDateTime|[dateTimeOffset](datetimeoffset.md)||
|replyTo|[recipient](recipient.md) collection||
|sender|[recipient](recipient.md)||
|sentDateTime|[dateTimeOffset](datetimeoffset.md)||
|subject|string||
|toRecipients|[recipient](recipient.md) collection||
|uniqueBody|[itemBody](itembody.md)||
|unsubscribeData|string collection||
|unsubscribeEnabled|boolean||
|webLink|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[attachment](attachment.md) collection| Read-only. Nullable.|
|extensions|[extension](extension.md) collection| Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.message"
}-->

```json
{
  "bccRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "bodyPreview": "string",
  "categories": ["string"],
  "ccRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "changeKey": "string",
  "conversationId": "string",
  "conversationIndex": "binary",
  "createdDateTime": "String (timestamp)",
  "flag": {"@odata.type": "microsoft.graph.followupFlag"},
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "string (identifier)",
  "importance": "string",
  "inferenceClassification": "string",
  "internetMessageId": "string",
  "isDeliveryReceiptRequested": true,
  "isDraft": true,
  "isRead": true,
  "isReadReceiptRequested": true,
  "lastModifiedDateTime": "String (timestamp)",
  "parentFolderId": "string",
  "receivedDateTime": "String (timestamp)",
  "replyTo": [{"@odata.type": "microsoft.graph.recipient"}],
  "sender": {"@odata.type": "microsoft.graph.recipient"},
  "sentDateTime": "String (timestamp)",
  "subject": "string",
  "toRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "uniqueBody": {"@odata.type": "microsoft.graph.itemBody"},
  "unsubscribeData": ["string"],
  "unsubscribeEnabled": true,
  "webLink": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->