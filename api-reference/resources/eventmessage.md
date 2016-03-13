# eventMessage resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get eventMessage](../api/eventmessage_get.md) | [eventMessage](eventmessage.md) |Read properties and relationships of eventMessage object.|
|[Create attachment](../api/eventmessage_post_attachments.md) |[attachment](attachment.md)| Create a new attachment by posting to the attachments collection.|
|[List attachments](../api/eventmessage_list_attachments.md) |[attachment](attachment.md) collection| Get a attachment object collection.|
|[Create extension](../api/eventmessage_post_extensions.md) |[extension](extension.md)| Create a new extension by posting to the extensions collection.|
|[List extensions](../api/eventmessage_list_extensions.md) |[extension](extension.md) collection| Get a extension object collection.|
|[Create multiValueLegacyExtendedProperty](../api/eventmessage_post_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md)| Create a new multiValueLegacyExtendedProperty by posting to the multiValueExtendedProperties collection.|
|[List multiValueExtendedProperties](../api/eventmessage_list_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Get a multiValueLegacyExtendedProperty object collection.|
|[Create singleValueLegacyExtendedProperty](../api/eventmessage_post_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md)| Create a new singleValueLegacyExtendedProperty by posting to the singleValueExtendedProperties collection.|
|[List singleValueExtendedProperties](../api/eventmessage_list_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Get a singleValueLegacyExtendedProperty object collection.|
|[Update](../api/eventmessage_update.md) | [eventMessage](eventmessage.md)	|Update eventMessage object. |
|[Delete](../api/eventmessage_delete.md) | None |Delete eventMessage object. |
|[Copy](../api/eventmessage_copy.md)|[message](message.md)||
|[Createforward](../api/eventmessage_createforward.md)|[message](message.md)||
|[Createreply](../api/eventmessage_createreply.md)|[message](message.md)||
|[Createreplyall](../api/eventmessage_createreplyall.md)|[message](message.md)||
|[Forward](../api/eventmessage_forward.md)|None||
|[Move](../api/eventmessage_move.md)|[message](message.md)||
|[Reply](../api/eventmessage_reply.md)|None||
|[Replyall](../api/eventmessage_replyall.md)|None||
|[Send](../api/eventmessage_send.md)|None||
|[Unsubscribe](../api/eventmessage_unsubscribe.md)|None||

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
|endDateTime|[dateTimeTimeZone](datetimetimezone.md)||
|flag|[followupFlag](followupflag.md)||
|from|[recipient](recipient.md)||
|hasAttachments|boolean||
|id|string| Read-only.|
|importance|string| Possible values are: `low`, `normal`, `high`.|
|inferenceClassification|string| Possible values are: `focused`, `other`.|
|internetMessageId|string||
|isDeliveryReceiptRequested|boolean||
|isDraft|boolean||
|isOutOfDate|boolean||
|isRead|boolean||
|isReadReceiptRequested|boolean||
|lastModifiedDateTime|[dateTimeOffset](datetimeoffset.md)||
|location|[location](location.md)||
|meetingMessageType|string| Possible values are: `none`, `meetingRequest`, `meetingCancelled`, `meetingAccepted`, `meetingTentativelyAccepted`, `meetingDeclined`.|
|parentFolderId|string||
|receivedDateTime|[dateTimeOffset](datetimeoffset.md)||
|recurrence|[patternedRecurrence](patternedrecurrence.md)||
|replyTo|[recipient](recipient.md) collection||
|sender|[recipient](recipient.md)||
|sentDateTime|[dateTimeOffset](datetimeoffset.md)||
|startDateTime|[dateTimeTimeZone](datetimetimezone.md)||
|subject|string||
|toRecipients|[recipient](recipient.md) collection||
|type|string| Possible values are: `singleInstance`, `occurrence`, `exception`, `seriesMaster`.|
|uniqueBody|[itemBody](itembody.md)||
|unsubscribeData|string collection||
|unsubscribeEnabled|boolean||
|webLink|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[attachment](attachment.md) collection| Read-only. Nullable.|
|event|[event](event.md)| Read-only. Nullable.|
|extensions|[extension](extension.md) collection| Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.eventmessage"
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
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "flag": {"@odata.type": "microsoft.graph.followupFlag"},
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "string (identifier)",
  "importance": "string",
  "inferenceClassification": "string",
  "internetMessageId": "string",
  "isDeliveryReceiptRequested": true,
  "isDraft": true,
  "isOutOfDate": true,
  "isRead": true,
  "isReadReceiptRequested": true,
  "lastModifiedDateTime": "String (timestamp)",
  "location": {"@odata.type": "microsoft.graph.location"},
  "meetingMessageType": "string",
  "parentFolderId": "string",
  "receivedDateTime": "String (timestamp)",
  "recurrence": {"@odata.type": "microsoft.graph.patternedRecurrence"},
  "replyTo": [{"@odata.type": "microsoft.graph.recipient"}],
  "sender": {"@odata.type": "microsoft.graph.recipient"},
  "sentDateTime": "String (timestamp)",
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "subject": "string",
  "toRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "type": "string",
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
  "description": "eventMessage resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->