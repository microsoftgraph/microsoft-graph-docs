---
title: "eventMessageResponse resource type"
description: "A message that represents a response to a meeting request in the meeting organizer's mailbox."
localization_priority: Normal
author: "harini84"
ms.prod: "outlook"
doc_type: "resourcePageType"
---

# eventMessageResponse resource type

Namespace: microsoft.graph

A message that represents a response to a meeting request in the meeting organizer's mailbox.

Derived from [eventMessage](eventmessage.md). 

An organizer who receives an **eventMessageResponse** with the **responseType** set to `tentativelyAccepted` or `declined`, and that includes a **proposedNewTime** property, can choose to accept the proposal. To do so, first, use the **event** navigation property of the **eventMessageResponse** to access the corresponding event, as shown in this [example](../api/eventmessage-get.md#example-2). Then [update](../api/event-update.md) the associated event to the proposed time.

For more information on how to propose a time, and how to receive and accept a new time proposal, see [Propose new meeting times](/graph/outlook-calendar-meeting-proposals).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
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


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|bccRecipients|[recipient](recipient.md) collection|The Bcc: recipients for the message.|
|body|[itemBody](itembody.md)|The body of the message. It can be in HTML or text format.|
|bodyPreview|String|The first 255 characters of the message body. It is in text format. |
|categories|String collection|The categories associated with the message.|
|ccRecipients|[recipient](recipient.md) collection|The Cc: recipients for the message.|
|changeKey|String|The version of the message.|
|conversationId|String|The ID of the conversation the email belongs to.|
|conversationIndex|Edm.Binary|The Index of the conversation the email belongs to.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|endDateTime|[dateTimeTimeZone](datetimetimezone.md)|The end time of the requested meeting.|
|flag|[followupFlag](followupflag.md)|The flag value that indicates the status, start date, due date, or completion date for the message.|
|from|[recipient](recipient.md)|The owner of the mailbox from which the message is sent. In most cases, this value is the same as the **sender** property, except for sharing or delegation scenarios. The value must correspond to the actual mailbox used. Find out more about [setting the from and sender properties](/graph/outlook-create-send-messages#setting-the-from-and-sender-properties) of a message.|
|hasAttachments|Boolean|Indicates whether the message has attachments.|
|id|String| Unique identifier for the message. [!INCLUDE [outlook-beta-id](../../includes/outlook-beta-id.md)] Read-only. |
|importance|String| The importance of the message: `low`, `normal`, `high`.|
|inferenceClassification|String| Possible values are: `focused`, `other`.|
|internetMessageHeaders | [internetMessageHeader](internetmessageheader.md) collection | The collection of message headers, defined by [RFC5322](https://www.ietf.org/rfc/rfc5322.txt), that provide details of the network path taken by a message from the sender to the recipient. Read-only.|
|internetMessageId |String |The message ID in the format specified by [RFC5322](https://www.ietf.org/rfc/rfc5322.txt). |
|isAllDay |Boolean|Indicates whether the event lasts the entire day. Adjusting this property requires adjusting the **startDateTime** and **endDateTime** properties of the event as well.|
|isDelegated|Boolean|True if this meeting request response is accessible to a delegate, false otherwise. Default is false.|
|isDeliveryReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|isDraft|Boolean|Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.|
|isOutOfDate|Boolean|Indicates whether this meeting request has been made out-of-date by a more recent request.|
|isRead|Boolean|Indicates whether the message has been read.|
|isReadReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|location|[location](location.md)|The location of the requested meeting.|
|meetingMessageType|String| The type of event message: `none`, `meetingRequest`, `meetingCancelled`, `meetingAccepted`, `meetingTentativelyAccepted`, `meetingDeclined`.|
|parentFolderId|String|The unique identifier for the message's parent mailFolder.|
|proposedNewTime|[timeSlot](timeslot.md)|An alternate date/time proposed by an invitee for a meeting request to start and end. Read-only. Not filterable.|
|receivedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|recurrence|[patternedRecurrence](patternedrecurrence.md)|The recurrence pattern of the requested meeting.|
|replyTo|[recipient](recipient.md) collection|The email addresses to use when replying.|
|responseType|string| Specifies the type of response to a meeting request. Possible values are: `tentativelyAccepted`, `accepted`, `declined`. For the eventMessageResponse type, `none`, `organizer`, and `notResponded` are not supported. Read-only. Not filterable.|
|sender|[recipient](recipient.md)|The account that is actually used to generate the message. In most cases, this value is the same as the **from** property. You can set this property to a different value when sending a message from a [shared mailbox](/exchange/collaboration/shared-mailboxes/shared-mailboxes), [for a shared calendar, or as a delegate](/graph/outlook-share-delegate-calendar.md). In any case, the value must correspond to the actual mailbox used. Find out more about [setting the from and sender properties](/graph/outlook-create-send-messages#setting-the-from-and-sender-properties) of a message.|
|sentDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|startDateTime|[dateTimeTimeZone](datetimetimezone.md)|The start time of the requested meeting.|
|subject|String|The subject of the message.|
|toRecipients|[recipient](recipient.md) collection|The To: recipients for the message.|
|type|String|The type of requested meeting: `singleInstance`, `occurence`, `exception`, `seriesMaster`.|
|uniqueBody|[itemBody](itembody.md)|The part of the body of the message that is unique to the current message.|
|webLink|String|The URL to open the message in Outlook on the web.<br><br>You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout is not present or if it is set to 1, then the message is shown in a popout window. If ispopout is set to 0, then the browser will show the message in the Outlook on the web review pane.<br><br>The message will open in the browser if you are logged in to your mailbox via Outlook on the web. You will be prompted to login if you are not already logged in with the browser.<br><br>This URL cannot be accessed from within an iFrame.|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|attachments|[attachment](attachment.md) collection|The collection of [fileAttachment](fileattachment.md), [itemAttachment](itemattachment.md), and [referenceAttachment](referenceattachment.md) attachments for the message. Read-only. Nullable.|
|event|[event](event.md)| The event associated with the event message. The assumption for attendees or room resources is that the Calendar Attendant is set to automatically update the calendar with an event when meeting request event messages arrive. Navigation property.  Read-only.|
|extensions|[extension](extension.md) collection| The collection of open extensions defined for the eventMessage. Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the eventMessage. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the eventMessage. Read-only. Nullable.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.eventMessageResponse",
  "baseType": "microsoft.graph.eventMessage",
  "keyProperty": "id"
}-->

```json
{
  "bccRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "bodyPreview": "String",
  "categories": ["String"],
  "ccRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "changeKey": "String",
  "conversationId": "String",
  "conversationIndex": "String (binary)",
  "createdDateTime": "String (timestamp)",
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "flag": {"@odata.type": "microsoft.graph.followupFlag"},
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "String (identifier)",
  "importance": "string",
  "inferenceClassification": "string",
  "internetMessageHeaders": [{"@odata.type": "microsoft.graph.internetMessageHeader"}],
  "internetMessageId": "String",
  "isAllDay": true,
  "isDelegated": true,
  "isDeliveryReceiptRequested": true,
  "isDraft": true,
  "isOutOfDate": true,
  "isRead": true,
  "isReadReceiptRequested": true,
  "lastModifiedDateTime": "String (timestamp)",
  "location": {"@odata.type": "microsoft.graph.location"},
  "meetingMessageType": "string",
  "parentFolderId": "String",
  "proposedNewTime": {"@odata.type": "microsoft.graph.timeSlot"},
  "receivedDateTime": "String (timestamp)",
  "recurrence": {"@odata.type": "microsoft.graph.patternedRecurrence"},
  "replyTo": [{"@odata.type": "microsoft.graph.recipient"}],
  "responseType": "string",
  "sender": {"@odata.type": "microsoft.graph.recipient"},
  "sentDateTime": "String (timestamp)",
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "subject": "String",
  "toRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "type": "string",
  "uniqueBody": {"@odata.type": "microsoft.graph.itemBody"},
  "webLink": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "eventMessageResponse resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
