# eventMessage resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A message that represents a meeting request, cancellation, or response (which can be one of the following: acceptance, tentative acceptance, or decline). 

The **eventMessage** entity is derived from [message](message.md), and, 
[eventMessageRequest](eventmessagerequest.md) is derived from **eventMessage** and represents a meeting request. The **meetingMessageType** property identifies the type of the event message.

When an organizer or app sends a meeting request, the meeting request arrives in an attendee's Inbox as an **eventMessage** instance with the **meetingMessageType** of **meetingRequest**. In addition, Outlook automatically creates an **event** instance in the attendee's calendar, with the **showAs** property as **tentative**. 

To get the properties of the associated event in the attendee's mailbox, the app can use the **event** navigation property of the **eventMessage**, as shown in 
this [get event message example](../api/eventmessage_get.md#request-2). The app can also respond to the event on behalf of the attendee programmatically, by [accepting](../api/event_accept.md), [tentatively accepting](../api/event_tentativelyaccept.md), or [declining](../api/event_decline.md) the event.

Aside from a meeting request, an **eventMessage** instance can be found in an attendee's Inbox folder as the result of an event organizer cancelling a meeting, or in the organizer's Inbox as a result of an attendee responding to the meeting request. An app can act on event messages in the same way as on messages with minor differences.

## JSON representation

Here is a JSON representation of the resource  

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "attachments",
    "event",
    "extensions",
    "multiValueExtendedProperties",
    "singleValueExtendedProperties"
  ],
  "@odata.type": "microsoft.graph.eventMessage"
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
  "createdDateTime": "DateTimeOffset",
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "flag": {"@odata.type": "microsoft.graph.followupFlag"},
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "string (identifier)",
  "importance": "String",
  "inferenceClassification": "String",
  "internetMessageHeaders": [{"@odata.type": "microsoft.graph.internetMessageHeader"}],
  "internetMessageId": "String",
  "isAllDay": "Boolean",
  "isDeliveryReceiptRequested": true,
  "isDraft": true,
  "isOutOfDate": "Boolean",
  "isRead": true,
  "isReadReceiptRequested": true,
  "lastModifiedDateTime": "DateTimeOffset",
  "location": {"@odata.type": "microsoft.graph.location"},
  "meetingMessageType": {"@odata.type": "microsoft.graph.meetingMessageType"},
  "parentFolderId": "string",
  "receivedDateTime": "DateTimeOffset",
  "recurrence": {"@odata.type": "microsoft.graph.patternedrecurrence"},
  "replyTo": [{"@odata.type": "microsoft.graph.recipient"}],
  "sender": {"@odata.type": "microsoft.graph.recipient"},
  "sentDateTime": "DateTimeOffset",
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "subject": "string",
  "toRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "type": "string",
  "uniqueBody": {"@odata.type": "microsoft.graph.itemBody"},
  "UnsubscribeData": "string",
  "UnsubscribeEnabled": true,
  "webLink": "string"
}

```

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bccRecipients|[recipient](recipient.md) collection|The Bcc: recipients for the message.|
|body|[itemBody](itembody.md)|The body of the message. It can be in HTML or text format.|
|bodyPreview|String|The first 255 characters of the message body. It is in text format. |
|categories|String collection|The categories associated with the message.|
|ccRecipients|[recipient](recipient.md) collection|The Cc: recipients for the message.|
|changeKey|String|The version of the message.|
|conversationId|String|The ID of the conversation the email belongs to.|
|conversationIndex|Binary|The Index of the conversation the email belongs to.|
|createdDateTime|DateTimeOffset|The date and time the message was created.|
|endDateTime|[dateTimeTimeZone](datetimetimezone.md)|The end time of the requested meeting.|
|flag|[followUpFlag](followupflag.md)|The flag value that indicates the status, start date, due date, or completion date for the message.|
|from|[recipient](recipient.md)|The mailbox owner and sender of the message.|
|hasAttachments|Boolean|Indicates whether the message has attachments.|
|id|String||
|importance|String| The importance of the message: `low`, `normal`, `high`.|
|inferenceClassification|String| Possible values are: `focused`, `other`.|
|internetMessageHeaders | [internetMessageHeader](internetmessageheader.md) collection | The collection of message headers, defined by [RFC5322](https://www.ietf.org/rfc/rfc5322.txt), that provide details of the network path taken by a message from the sender to the recipient. Read-only.|
|internetMessageId |String |The message ID in the format specified by [RFC5322](https://www.ietf.org/rfc/rfc5322.txt). |
|isAllDay |Boolean|Indicates whether the event lasts the entire day. Adjusting this property requires adjusting the **startDateTime** and **endDateTime** properties of the event as well.|
|isDeliveryReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|isDraft|Boolean|Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.|
|isOutOfDate|Boolean|Indicates whether this meeting request has been made out-of-date by a more recent request.|
|isRead|Boolean|Indicates whether the message has been read.|
|isReadReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|lastModifiedDateTime|DateTimeOffset|The date and time the message was last changed.|
|location|[location](location.md)|The location of the requested meeting.|
|meetingMessageType|String| The type of event message: `none`, `meetingRequest`, `meetingCancelled`, `meetingAccepted`, `meetingTenativelyAccepted`, `meetingDeclined`.|
|parentFolderId|String|The unique identifier for the message's parent mailFolder.|
|receivedDateTime|DateTimeOffset|The date and time the message was received.|
|recurrence|[patternedRecurrence](patternedrecurrence.md)|The recurrence pattern of the requested meeting.|
|replyTo|[recipient](recipient.md) collection|The email addresses to use when replying.|
|sender|[recipient](recipient.md)|The account that is actually used to generate the message.|
|sentDateTime|DateTimeOffset|The date and time the message was sent.|
|startDateTime|[dateTimeTimeZone](datetimetimezone.md)|The start time of the requested meeting.|
|subject|String|The subject of the message.|
|toRecipients|[recipient](recipient.md) collection|The To: recipients for the message.|
|type|String|The type of requested meeting: `singleInstance`, `occurence`, `exception`, `seriesMaster`.|
|uniqueBody|[itemBody](itembody.md)|The part of the body of the message that is unique to the current message.|
|UnsubscribeData|String|The valid entries parsed from the List-Unsubscribe header.  This is the data for the mail command in the List-Unsubscribe header if UnsubscribeEnabled property is true.|
|UnsubscribeEnabled|Boolean|Indicates whether the message is enabled for unsubscribe.  Its valueTrue if the list-Unsubscribe header conforms to rfc-2369.|
|webLink|String|The URL to open the message in Outlook Web App.<br><br>You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout is not present or if it is set to 1, then the message is shown in a popout window. If ispopout is set to 0, then the browser will show the message in the Outlook Web App review pane.<br><br>The message will open in the browser if you are logged in to your mailbox via Outlook Web App. You will be prompted to login if you are not already logged in with the browser.<br><br>This URL can be accessed from within an iFrame.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[attachment](attachment.md) collection|The collection of [fileAttachment](fileattachment.md), [itemAttachment](itemattachment.md), and [referenceAttachment](referenceAttachment.md) attachments for the message. Read-only. Nullable.|
|event|[event](event.md)| The event associated with the event message. The assumption for attendees or room resources is that the Calendar Attendant is set to automatically update the calendar with an event when meeting request event messages arrive. Navigation property.  Read-only.|
|extensions|[extension](extension.md) collection| The collection of open extensions defined for the eventMessage. Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the eventMessage. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the eventMessage. Read-only. Nullable.|

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get eventMessage](../api/eventmessage_get.md) | [eventMessage](eventmessage.md) |Read properties and relationships of eventMessage object.|
|[Update](../api/eventmessage_update.md) | [eventMessage](eventmessage.md)  |Update eventMessage object.|
|[Delete](../api/eventmessage_delete.md) | None |Delete eventMessage object.|
|[copy](../api/message_copy.md)|[message](message.md)|Copy a message to a folder.|
|[createForward](../api/message_createforward.md)|[message](message.md)|Create a draft of the Forward message. You can then [update](../api/message_update.md) or [send](../api/message_send.md) the draft.|
|[createReply](../api/message_createreply.md)|[message](message.md)|Create a draft of the Reply message. You can then [update](../api/message_update.md) or [send](../api/message_send.md) the draft.|
|[createReplyAll](../api/message_createreplyall.md)|[message](message.md)|Create a draft of the Reply All message. You can then [update](../api/message_update.md) or [send](../api/message_send.md) the draft.|
|[forward](../api/message_forward.md)|None|Forward a message. The message is then saved in the Sent Items folder.|
|[move](../api/message_move.md)|[message](message.md)|Move a message to a folder. This creates a new copy of the message in the destination folder.|
|[reply](../api/message_reply.md)|None|Reply to the sender of a message. The message is then saved in the Sent Items folder.|
|[replyAll](../api/message_replyall.md)|None|Reply to all recipients of a message. The message is then saved in the Sent Items folder.|
|[send](../api/message_send.md)|None|Sends a previously created message draft. The message is then saved in the Sent Items folder.|
|[unsubscribe](../api/message_unsubscribe.md)|None|Send a message using the data and address specified in the first mailto command in the List-Unsubscribe header.|
|**Attachments**| | |
|[List attachments](../api/eventmessage_list_attachments.md) |[attachment](attachment.md) collection| Get all attachments on an eventMessage.|
|[Add attachment](../api/eventmessage_post_attachments.md) |[attachment](attachment.md)| Add a new attachment to an eventMessage by posting to the attachments collection.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension_post_opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties in a new or existing instance of a resource.|
|[Get open extension](../api/opentypeextension_get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by name.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty_post_singlevalueextendedproperties.md) |[eventMessage](eventMessage.md)  |Create one or more single-value extended properties in a new or existing eventMessage.   |
|[Get eventMessage with single-value extended property](../api/singlevaluelegacyextendedproperty_get.md)  | [eventMessage](eventMessage.md) | Get eventMessages that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty_post_multivalueextendedproperties.md) | [eventMessage](eventMessage.md) | Create one or more multi-value extended properties in a new or existing eventMessage.  |
|[Get eventMessage with multi-value extended property](../api/multivaluelegacyextendedproperty_get.md)  | [eventMessage](eventMessage.md) | Get an eventMessage that contains a multi-value extended property by using `$expand`. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "eventMessage resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
