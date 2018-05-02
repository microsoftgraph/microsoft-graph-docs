# eventMessageRequest resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A message that represents a meeting request.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "attachments",
    "event",
    "extensions",
    "previousLocation",
    "previousStartDateTime",
    "previousEndDateTime"
  ],
  "@odata.type": "microsoft.graph.eventMessageRequest"
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
  "createdDateTime": "String (timestamp)",
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "string (identifier)",
  "importance": "String",
  "inferenceClassification": "String",
  "isDeliveryReceiptRequested": true,
  "isDraft": true,
  "isOutOfDate": "Boolean",
  "isRead": true,
  "isReadReceiptRequested": true,
  "lastModifiedDateTime": "String (timestamp)",
  "location": {"@odata.type": "microsoft.graph.location"},
  "meetingMessageType": "microsoft.graph.meetingMessageType",
  "parentFolderId": "string",
  "previousEndDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "previousLocation": {"@odata.type": "microsoft.graph.location"},
  "previousStartDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
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
  "webLink": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bccRecipients|[recipient](recipient.md) collection|The Bcc: recipients for the message.|
|body|[itemBody](itembody.md)|The body of the message.|
|bodyPreview|String|The first 255 characters of the message body.|
|categories|String collection|The categories associated with the message.|
|ccRecipients|[recipient](recipient.md) collection|The Cc: recipients for the message.|
|changeKey|String|The version of the message.|
|conversationId|String|The ID of the conversation the email belongs to.|
|createdDateTime|DateTimeOffset|The date and time the message was created.|
|endDateTime|[DateTimeTimeZone](datetimetimezone.md)|The end time of the requested meeting.|
|from|[recipient](recipient.md)|The mailbox owner and sender of the message.|
|hasAttachments|Boolean|Indicates whether the message has attachments.|
|id|String|Read-only.|
|importance|String| The importance of the message: `Low`, `Normal`, `High`.|
|inferenceClassification|String| Possible values are: `Focused`, `Other`.|
|isDeliveryReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|isDraft|Boolean|Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.|
|isOutOfDate|Boolean|Indicates whether this meeting request has been made out-of-date by a more recent request.|
|isRead|Boolean|Indicates whether the message has been read.|
|isReadReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|lastModifiedDateTime|DateTimeOffset|The date and time the message was last changed.|
|location|[Location](location.md)|The location of the requested meeting.|
|meetingMessageType|String| The type of event message: `None`, `MeetingRequest`, `MeetingCancelled`, `MeetingAccepted`, `MeetingTenativelyAccepted`, `MeetingDeclined`.|
|parentFolderId|String|The unique identifier for the message's parent mailFolder.|
|previousEndDateTime|[DateTimeTimeZone](datetimetimezone.md)|The previous end time of the requested meeting.|
|previousLocation|[Location](location.md)|The previous location of the requested meeting.|
|previousStartDateTime|[DateTimeTimeZone](datetimetimezone.md)|The previous start time of the requested meeting.|
|receivedDateTime|DateTimeOffset|The date and time the message was received.|
|recurrence|[PatternedRecurrence](patternedrecurrence.md)|The recurrence pattern of the requested meeting.|
|replyTo|[recipient](recipient.md) collection|The email addresses to use when replying.|
|sender|[recipient](recipient.md)|The account that is actually used to generate the message.|
|sentDateTime|DateTimeOffset|The date and time the message was sent.|
|startDateTime|[DateTimeTimeZone](datetimetimezone.md)|The start time of the requested meeting.|
|subject|String|The subject of the message.|
|toRecipients|[recipient](recipient.md) collection|The To: recipients for the message.|
|type|String|The type of requested meeting: `singleInstance`, `occurence`, `exception`, `seriesMaster`.|
|uniqueBody|[itemBody](itembody.md)|The part of the body of the message that is unique to the current message.|
|webLink|String|The URL to open the message in Outlook Web App.<br><br>You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout is not present or if it is set to 1, then the message is shown in a popout window. If ispopout is set to 0, then the browser will show the message in the Outlook Web App review pane.<br><br>The message will open in the browser if you are logged in to your mailbox via Outlook Web App. You will be prompted to login if you are not already logged in with the browser.<br><br>This URL can be accessed from within an iFrame.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[Attachment](attachment.md) collection| Read-only. Nullable.|
|event|[Event](event.md)| The event associated with the event message. The assumption for attendees or room resources is that the Calendar Attendant is set to automatically update the calendar with an event when meeting request event messages arrive. Navigation property.  Read-only.|
|extensions|[Extension](extension.md) collection| Read-only. Nullable.|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get eventMessage](../api/eventmessage_get.md) | [eventMessage](eventmessage.md) |Read properties and relationships of eventMessage object.|
|[Create Attachment](../api/eventmessage_post_attachments.md) |[Attachment](attachment.md)| Create a new Attachment by posting to the attachments collection.|
|[List attachments](../api/eventmessage_list_attachments.md) |[Attachment](attachment.md) collection| Get a Attachment object collection.|
|[Update](../api/eventmessage_update.md) | [eventMessage](eventmessage.md)	|Update eventMessage object. |
|[Delete](../api/eventmessage_delete.md) | None |Delete eventMessage object. |
|[copy](../api/message_copy.md)|[Message](message.md)||
|[createForward](../api/message_createforward.md)|[Message](message.md)||
|[createReply](../api/message_createreply.md)|[Message](message.md)||
|[createReplyAll](../api/message_createreplyall.md)|[Message](message.md)||
|[forward](../api/message_forward.md)|None|Forwards a message. The message is then saved in the Sent Items folder.|
|[move](../api/message_move.md)|[Message](message.md)|Move the message to a mailFolder.|
|[reply](../api/message_reply.md)|None|Replys to the sender of a message. The message is then saved in the Sent Items folder.|
|[replyAll](../api/message_replyall.md)|None|Reply to all recipients of a message. The message is then saved in the Sent Items folder.|
|[send](../api/message_send.md)|None|Sends a previously created message draft. The message is then saved in the Sent Items folder.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "eventMessageRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
