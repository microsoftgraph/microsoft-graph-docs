---
title: "message resource type"
description: "A message in a mailbox folder."
author: "svpsiva"
localization_priority: Priority
ms.prod: "outlook"
doc_type: resourcePageType
---

# message resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A message in a mailbox folder.

The maximum total number of recipients included in the **toRecipients**, **ccRecipients**, and **bccRecipients** properties for a single email message sent from an Exchange Online mailbox is 500. For more information, see [sending limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits).

This resource supports:

- Adding your own data as custom Internet message headers. Add custom headers only when creating a message, and name them starting with "x-". Once the message has been sent, you cannot modify the headers. To get the headers of a message, apply the `$select` query parameter in a [get message](../api/message-get.md) operation.
- Adding your own data as custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates,
by providing a [delta](../api/message-delta.md) function.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [
    "attachments",
    "extensions",
    "singleValueExtendedProperties",
    "multiValueExtendedProperties",
    "mentions",

    "internetMessageHeaders"
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
  "conversationIndex": "String (binary)",
  "createdDateTime": "String (timestamp)",
  "flag": {"@odata.type": "microsoft.graph.followupFlag"},
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "string (identifier)",
  "importance": "String",
  "inferenceClassification": "String",
  "internetMessageHeaders": [{"@odata.type": "microsoft.graph.internetMessageHeader"}],
  "internetMessageId": "String",
  "isDeliveryReceiptRequested": true,
  "isDraft": true,
  "isRead": true,
  "isReadReceiptRequested": true,
  "lastModifiedDateTime": "String (timestamp)",
  "mentionsPreview": {"@odata.type": "microsoft.graph.mentionsPreview"},
  "parentFolderId": "string",
  "receivedDateTime": "String (timestamp)",
  "replyTo": [{"@odata.type": "microsoft.graph.recipient"}],
  "sender": {"@odata.type": "microsoft.graph.recipient"},
  "sentDateTime": "String (timestamp)",
  "subject": "string",
  "toRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "uniqueBody": {"@odata.type": "microsoft.graph.itemBody"},
  "unsubscribeData": "string",
  "unsubscribeEnabled": true,
  "webLink": "string",

  "attachments": [{"@odata.type": "microsoft.graph.attachment"}],
  "extensions": [{"@odata.type": "microsoft.graph.extension"}],
  "mentions": [{"@odata.type": "microsoft.graph.mention"}],
  "multiValueExtendedProperties": [{"@odata.type": "microsoft.graph.multiValueLegacyExtendedProperty"}],
  "singleValueExtendedProperties": [{"@odata.type": "microsoft.graph.singleValueLegacyExtendedProperty"}]
}

```

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
|bccRecipients|[recipient](recipient.md) collection|The Bcc: recipients for the message.|
|body|[itemBody](itembody.md)|The body of the message. It can be in HTML or text format. Find out about [safe HTML in a message body](/graph/outlook-create-send-messages#reading-messages-with-control-over-the-body-format-returned).|
|bodyPreview|String|The first 255 characters of the message body. It is in text format. If the message contains instances of [mention](mention.md), this property would contain a concatenation of these mentions as well. |
|categories|String collection|The categories associated with the message. Each category corresponds to the **displayName** property of an [outlookCategory](outlookcategory.md) defined for the user. |
|ccRecipients|[recipient](recipient.md) collection|The Cc: recipients for the message.|
|changeKey|String|The version of the message.|
|conversationId|String|The ID of the conversation the email belongs to.|
|conversationIndex|Edm.Binary|Indicates the position of the message within the conversation.|
|createdDateTime|DateTimeOffset|The date and time the message was created. <br><br> The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|flag|[followupFlag](followupflag.md)|The flag value that indicates the status, start date, due date, or completion date for the message.|
|from|[recipient](recipient.md)|The owner of the mailbox from which the message is sent. In most cases, this value is the same as the **sender** property, except for sharing or delegation scenarios. The value must correspond to the actual mailbox used. Find out more about [setting the from and sender properties](/graph/outlook-create-send-messages#setting-the-from-and-sender-properties) of a message.|
|hasAttachments|Boolean|Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the **body** property to look for a `src` attribute, such as `<IMG src="cid:image001.jpg@01D26CD8.6C05F070">`. |
|id|String| Unique identifier for the message. [!INCLUDE [outlook-beta-id](../../includes/outlook-beta-id.md)] Read-only. |
|importance|String| The importance of the message: `Low`, `Normal`, `High`.|
|inferenceClassification|String| The classification of the message for the user, based on inferred relevance or importance, or on an explicit override. Possible values are: `focused`, `other`.|
|internetMessageHeaders | [internetMessageHeader](internetmessageheader.md) collection | A collection of message headers defined by [RFC5322](https://www.ietf.org/rfc/rfc5322.txt). The set includes message headers indicating the network path taken by a message from the sender to the recipient. It can also contain custom message headers that hold app data for the message. <br><br> Returned only on applying a `$select` query option. Read-only.|
|internetMessageId | String | The message ID in the format specified by [RFC5322](https://www.ietf.org/rfc/rfc5322.txt). Updatable only if **isDraft** is true.|
|isDeliveryReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|isDraft|Boolean|Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.|
|isRead|Boolean|Indicates whether the message has been read.|
|isReadReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|lastModifiedDateTime|DateTimeOffset|The date and time the message was last changed. <br><br> The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|mentionsPreview|[mentionsPreview](mentionspreview.md)|Information about mentions in the message. When processing a `GET` /messages request, the server sets this property and includes it in the response by default. The server returns null if there are no mentions in the message. Optional. |
|parentFolderId|String|The unique identifier for the message's parent mailFolder.|
|receivedDateTime|DateTimeOffset|The date and time the message was received. <br><br> The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|replyTo|[recipient](recipient.md) collection|The email addresses to use when replying.|
|sender|[recipient](recipient.md)|The account that is actually used to generate the message. In most cases, this value is the same as the **from** property. You can set this property to a different value when sending a message from a [shared mailbox](/exchange/collaboration/shared-mailboxes/shared-mailboxes), [for a shared calendar, or as a delegate](/graph/outlook-share-delegate-calendar.md). In any case, the value must correspond to the actual mailbox used. Find out more about [setting the from and sender properties](/graph/outlook-create-send-messages#setting-the-from-and-sender-properties) of a message.|
|sentDateTime|DateTimeOffset|The date and time the message was sent. <br><br> The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|subject|String|The subject of the message.|
|toRecipients|[recipient](recipient.md) collection|The To: recipients for the message.|
|uniqueBody|[itemBody](itembody.md)|The part of the body of the message that is unique to the current message. **uniqueBody** is not returned by default but can be retrieved for a given message by use of the `?$select=uniqueBody` query. It can be in HTML or text format.|
|unsubscribeData|String|The valid entries parsed from the List-Unsubscribe header.  This is the data for the mail command in the List-Unsubscribe header if UnsubscribeEnabled property is true.|
|unsubscribeEnabled|Boolean|Indicates whether the message is enabled for unsubscribe.  Its valueTrue if the list-Unsubscribe header conforms to rfc-2369.|
|webLink|String|The URL to open the message in Outlook on the web.<br><br>You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout is not present or if it is set to 1, then the message is shown in a popout window. If ispopout is set to 0, then the browser will show the message in the Outlook on the web review pane.<br><br>The message will open in the browser if you are logged in to your mailbox via Outlook on the web. You will be prompted to login if you are not already logged in with the browser.<br><br>This URL cannot be accessed from within an iFrame.|

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|attachments|[Attachment](attachment.md) collection|The [fileAttachment](fileattachment.md) and [itemAttachment](itemattachment.md) attachments for the message.|
|extensions|[Extension](extension.md) collection| The collection of open extensions defined for the message. Nullable.|
|mentions|[mention](mention.md) collection | A collection of mentions in the message, ordered by the **createdDateTime** from the newest to the oldest. By default, a `GET` /messages does not return this property unless you apply `$expand` on the property.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the message. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the message. Nullable.|

## Methods

| Method | Return Type |Description|
|:-------|:------------|:----------|
|[List messages](../api/user-list-messages.md) |[message](message.md) collection | Get all the messages in the signed-in user's mailbox (including the Deleted Items and Clutter folders). |
|[Create message](../api/user-post-messages.md) | [message](message.md) | Create a draft of a new message. |
|[Get message](../api/message-get.md) | [message](message.md) |Read properties and relationships of message object.|
|[Update](../api/message-update.md) | [message](message.md) |Update message object. |
|[Delete](../api/message-delete.md) | None |Delete message object. |
|[copy](../api/message-copy.md)|[Message](message.md)|Copy a message to a folder.|
|[createForward](../api/message-createforward.md)|[Message](message.md)|Create a draft forward message to include a comment or update any message properties all in one **createForward** call. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[createReply](../api/message-createreply.md)|[Message](message.md)|Create a draft of a reply message to include a comment or update any message properties all in one **createReply** call. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[createReplyAll](../api/message-createreplyall.md)|[Message](message.md)|Create a draft of a reply-all message to include a comment or update any message properties, all in one **createReplyAll** call. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[delta](../api/message-delta.md)|[message](message.md) collection| Get a set of messages that have been added, deleted, or updated in a specified folder.|
|[forward](../api/message-forward.md)|None|Forward a message, add a comment or modify any updateable properties all in one **forward** call. The message is then saved in the Sent Items folder.|
|[move](../api/message-move.md)|[Message](message.md)|Move the message to a folder. This creates a new copy of the message in the destination folder.|
|[reply](../api/message-reply.md)|None|Reply to the sender of a message, add a comment or modify any updateable properties all in one **reply** call. The message is then saved in the Sent Items folder.|
|[replyAll](../api/message-replyall.md)|None|Reply to all the recipients of a message by specifying a comment and modifying any updateable properties for the reply, all by using the **replyAll** method. The message is then saved in the Sent Items folder.|
|[send](../api/message-send.md)|None|Sends a previously created message draft. The message is then saved in the Sent Items folder.|
|[unsubscribe](../api/message-unsubscribe.md)|None|Send a message using the data and address specified in the first mailto command in the List-Unsubscribe header.|
|**Attachments**| | |
|[List attachments](../api/message-list-attachments.md) |[Attachment](attachment.md) collection| Get all attachments on a message.|
|[Add attachment](../api/message-post-attachments.md) |[Attachment](attachment.md)| Add a new attachment to a message by posting to the attachments collection.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](/graph/extensibility-schema-groups) || Create a schema extension definition and then use it to add custom typed data to a resource.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[message](message.md)  |Create one or more single-value extended properties in a new or existing message.   |
|[Get message with single-value extended property](../api/singlevaluelegacyextendedproperty-get.md)  | [message](message.md) | Get messages that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [message](message.md) | Create one or more multi-value extended properties in a new or existing message.  |
|[Get message with multi-value extended property](../api/multivaluelegacyextendedproperty-get.md)  | [message](message.md) | Get a message that contains a multi-value extended property by using `$expand`. |

## See also

- [Get mailbox settings](../api/user-get-mailboxsettings.md)
- [Update mailbox settings](../api/user-update-mailboxsettings.md)
- [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview)
- [Get incremental changes to messages in a folder](/graph/delta-query-messages)
- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "message resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}



