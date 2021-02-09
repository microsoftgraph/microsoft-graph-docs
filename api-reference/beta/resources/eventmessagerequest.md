---
title: "eventMessageRequest resource type"
description: "A message that represents a meeting request."
author: "harini84"
localization_priority: Normal
ms.prod: "outlook"
doc_type: resourcePageType
---

# eventMessageRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A message that represents a meeting request in an invitee's mailbox.

The **eventMessageRequest** entity is derived from [eventMessage](eventmessage.md).

To respond to the meeting request, first, use the **event** navigation property to access the corresponding event, as shown in this [example](../api/eventmessage-get.md#example-2). Then [accept](../api/event-accept.md), [tentativelyAccept](../api/event-tentativelyaccept.md), or [decline](../api/event-decline.md) that event associated with the **eventMessageRequest**.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.eventMessage",
  "optionalProperties": [
    "attachments",
    "event",
    "extensions",
    "mentions",
    "previousLocation",
    "previousStartDateTime",
    "previousEndDateTime"
  ],
  "@odata.type": "microsoft.graph.eventMessageRequest"
}-->

```json
{
  "allowNewTimeProposals": "Boolean",
  "bccRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "bodyPreview": "string",
  "categories": ["string"],
  "ccRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "changeKey": "string",
  "conversationId": "string",
  "conversationIndex": "String (binary)",
  "createdDateTime": "String (timestamp)",
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "string (identifier)",
  "importance": "String",
  "inferenceClassification": "String",
  "isDelegated": true,
  "isDeliveryReceiptRequested": true,
  "isDraft": true,
  "isOutOfDate": "Boolean",
  "isRead": true,
  "isReadReceiptRequested": true,
  "lastModifiedDateTime": "String (timestamp)",
  "location": {"@odata.type": "microsoft.graph.location"},
  "meetingMessageType": "microsoft.graph.meetingMessageType",
  "mentionsPreview": {"@odata.type": "microsoft.graph.mentionsPreview"},
  "parentFolderId": "string",
  "previousEndDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "previousLocation": {"@odata.type": "microsoft.graph.location"},
  "previousStartDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "receivedDateTime": "String (timestamp)",
  "recurrence": {"@odata.type": "microsoft.graph.patternedRecurrence"},
  "replyTo": [{"@odata.type": "microsoft.graph.recipient"}],
  "responseRequested": "Boolean",
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
|allowNewTimeProposals| Boolean | `True` if the meeting organizer allows invitees to propose a new time when responding, `false` otherwise. Optional. Default is `true`. |
|bccRecipients|[recipient](recipient.md) collection|The Bcc: recipients for the message.|
|body|[itemBody](itembody.md)|The body of the message.|
|bodyPreview|String|The first 255 characters of the message body.|
|categories|String collection|The categories associated with the message.|
|ccRecipients|[recipient](recipient.md) collection|The Cc: recipients for the message.|
|changeKey|String|The version of the message.|
|conversationId|String|The ID of the conversation the email belongs to.|
|conversationIndex|Edm.Binary|The index of the conversation the email belongs to.|
|createdDateTime|DateTimeOffset|The date and time the message was created.|
|endDateTime|[DateTimeTimeZone](datetimetimezone.md)|The end time of the requested meeting.|
|from|[recipient](recipient.md)|The owner of the mailbox from which the message is sent. In most cases, this value is the same as the **sender** property, except for sharing or delegation scenarios. The value must correspond to the actual mailbox used. Find out more about [setting the from and sender properties](/graph/outlook-create-send-messages#setting-the-from-and-sender-properties) of a message.|
|hasAttachments|Boolean|Indicates whether the message has attachments.|
|id|String|Read-only.|
|importance|String| The importance of the message: `Low`, `Normal`, `High`.|
|inferenceClassification|String| Possible values are: `Focused`, `Other`.|
|isDelegated|Boolean|True if this meeting request response is accessible to a delegate, false otherwise. Default is false.|
|isDeliveryReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|isDraft|Boolean|Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.|
|isOutOfDate|Boolean|Indicates whether this meeting request has been made out-of-date by a more recent request.|
|isRead|Boolean|Indicates whether the message has been read.|
|isReadReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|lastModifiedDateTime|DateTimeOffset|The date and time the message was last changed.|
|location|[Location](location.md)|The location of the requested meeting.|
|meetingMessageType|String| The type of event message: `none`, `meetingRequest`, `meetingCancelled`, `meetingAccepted`, `meetingTentativelyAccepted`, `meetingDeclined`.|
|mentionsPreview|[mentionsPreview](mentionspreview.md)|Information about mentions in the message. When processing a `GET` /messages request, the server sets this property and includes it in the response by default. The server returns null if there are no mentions in the message. Optional. |
|parentFolderId|String|The unique identifier for the message's parent mailFolder.|
|previousEndDateTime|[DateTimeTimeZone](datetimetimezone.md)| If the meeting update changes the meeting end time, this property specifies the previous meeting end time.|
|previousLocation|[Location](location.md)| If the meeting update changes the meeting location, this property specifies the previous meeting location.|
|previousStartDateTime|[DateTimeTimeZone](datetimetimezone.md)| If the meeting update changes the meeting start time, this property specifies the previous meeting start time.|
|receivedDateTime|DateTimeOffset|The date and time the message was received.|
|recurrence|[PatternedRecurrence](patternedrecurrence.md)|The recurrence pattern of the requested meeting.|
|replyTo|[recipient](recipient.md) collection|The email addresses to use when replying.|
|responseRequested|Boolean|Set to true if the sender would like the invitee to send a response to the requested meeting.|
|sender|[recipient](recipient.md)|The account that is actually used to generate the message. In most cases, this value is the same as the **from** property. You can set this property to a different value when sending a message from a [shared mailbox](/exchange/collaboration/shared-mailboxes/shared-mailboxes), [for a shared calendar, or as a delegate](/graph/outlook-share-delegate-calendar.md). In any case, the value must correspond to the actual mailbox used. Find out more about [setting the from and sender properties](/graph/outlook-create-send-messages#setting-the-from-and-sender-properties) of a message.|
|sentDateTime|DateTimeOffset|The date and time the message was sent.|
|startDateTime|[DateTimeTimeZone](datetimetimezone.md)|The start time of the requested meeting.|
|subject|String|The subject of the message.|
|toRecipients|[recipient](recipient.md) collection|The To: recipients for the message.|
|type|String|The type of requested meeting: `singleInstance`, `occurence`, `exception`, `seriesMaster`.|
|uniqueBody|[itemBody](itembody.md)|The part of the body of the message that is unique to the current message.|
|webLink|String|The URL to open the message in Outlook on the web.<br><br>You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout is not present or if it is set to 1, then the message is shown in a popout window. If ispopout is set to 0, then the browser will show the message in the Outlook on the web review pane.<br><br>The message will open in the browser if you are logged in to your mailbox via Outlook on the web. You will be prompted to login if you are not already logged in with the browser.<br><br>This URL cannot be accessed from within an iFrame.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[attachment](attachment.md) collection|The collection of [fileAttachment](fileattachment.md), [itemAttachment](itemattachment.md), and [referenceAttachment](referenceattachment.md) attachments for the message. Read-only. Nullable.|
|event|[event](event.md)| The event associated with the event message. The assumption for attendees or room resources is that the Calendar Attendant is set to automatically update the calendar with an event when meeting request event messages arrive. Navigation property.  Read-only.|
|extensions|[extension](extension.md) collection| The collection of open extensions defined for the eventMessage. Read-only. Nullable.|
|mentions|[mention](mention.md) collection | A collection of mentions in the message, ordered by the **createdDateTime** from the newest to the oldest. By default, a `GET` /messages does not return this property unless you apply `$expand` on the property.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the eventMessage. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the eventMessage. Read-only. Nullable.|


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get eventMessage](../api/eventmessage-get.md) | [eventMessage](eventmessage.md) |Read properties and relationships of eventMessage object.|
|[Update](../api/eventmessage-update.md) | [eventMessage](eventmessage.md)  |Update eventMessage object.|
|[Delete](../api/eventmessage-delete.md) | None |Delete eventMessage object.|
|[copy](../api/message-copy.md)|[message](message.md)|Copy a message to a folder.|
|[createForward](../api/message-createforward.md)|[message](message.md)|Create a draft of the Forward message. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[createReply](../api/message-createreply.md)|[message](message.md)|Create a draft of the Reply message. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[createReplyAll](../api/message-createreplyall.md)|[message](message.md)|Create a draft of the Reply All message. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[forward](../api/message-forward.md)|None|Forward a message. The message is then saved in the Sent Items folder.|
|[move](../api/message-move.md)|[message](message.md)|Move a message to a folder. This creates a new copy of the message in the destination folder.|
|[reply](../api/message-reply.md)|None|Reply to the sender of a message. The message is then saved in the Sent Items folder.|
|[replyAll](../api/message-replyall.md)|None|Reply to all recipients of a message. The message is then saved in the Sent Items folder.|
|[send](../api/message-send.md)|None|Sends a previously created message draft. The message is then saved in the Sent Items folder.|
|[unsubscribe](../api/message-unsubscribe.md)|None|Send a message using the data and address specified in the first mailto command in the List-Unsubscribe header.|
|**Attachments**| | |
|[List attachments](../api/eventmessage-list-attachments.md) |[attachment](attachment.md) collection| Get all attachments on an eventMessage.|
|[Add attachment](../api/eventmessage-post-attachments.md) |[attachment](attachment.md)| Add a new attachment to an eventMessage by posting to the attachments collection.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties in a new or existing instance of a resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by name.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[eventMessage](eventmessage.md)  |Create one or more single-value extended properties in a new or existing eventMessage.   |
|[Get eventMessage with single-value extended property](../api/singlevaluelegacyextendedproperty-get.md)  | [eventMessage](eventmessage.md) | Get eventMessages that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [eventMessage](eventmessage.md) | Create one or more multi-value extended properties in a new or existing eventMessage.  |
|[Get eventMessage with multi-value extended property](../api/multivaluelegacyextendedproperty-get.md)  | [eventMessage](eventmessage.md) | Get an eventMessage that contains a multi-value extended property by using `$expand`. |


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "eventMessageRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


