# message resource type

A message in a mailFolder.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List messages](../api/user_list_messages.md) |[message](message.md) collection | Get all the messages in the signed-in user's mailbox (including the Deleted Items and Clutter folders). |
|[Create message](../api/user_post_messages.md) | [message](message.md) | [Create](../api/user_post_messages.md#request-1) a draft of a new message. |
|[Get message](../api/message_get.md) | [message](message.md) |Read properties and relationships of message object.|
|[Update](../api/message_update.md) | [message](message.md) |Update message object.|
|[Delete](../api/message_delete.md) | None |Delete message object. |
|[copy](../api/message_copy.md)|[Message](message.md)|Copy a message to a folder.|
|[createForward](../api/message_createforward.md)|[Message](message.md)|Create a draft of the Forward message. You can then [update](../api/message_update.md) or [send](../api/message_send.md) the draft.|
|[createReply](../api/message_createreply.md)|[Message](message.md)|Create a draft of the Reply message. You can then [update](../api/message_update.md) or [send](../api/message_send.md) the draft.|
|[createReplyAll](../api/message_createreplyall.md)|[Message](message.md)|Create a draft of the Reply All message. You can then [update](../api/message_update.md) or [send](../api/message_send.md) the draft.|
|[forward](../api/message_forward.md)|None|Forward a message. The message is then saved in the Sent Items folder.|
|[move](../api/message_move.md)|[Message](message.md)|Move the message to a folder. This creates a new copy of the message in the destination folder.|
|[reply](../api/message_reply.md)|None|Reply to the sender of a message. The message is then saved in the Sent Items folder.|
|[replyAll](../api/message_replyall.md)|None|Reply to all recipients of a message. The message is then saved in the Sent Items folder.|
|[send](../api/message_send.md)|None|Sends a previously created message draft. The message is then saved in the Sent Items folder.|
|**Attachments**| | |
|[List attachments](../api/message_list_attachments.md) |[Attachment](attachment.md) collection| Gets all attachments on a message.|
|[Add attachment](../api/message_post_attachments.md) |[Attachment](attachment.md)| Add a new attachment to a message by posting to the attachments collection.|
|**Data extensions**| | |
|[Create data extension](../api/opentypeextension_post_opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open type data extension and add custom properties in a new or existing instance of a resource.|
|[Get data extension](../api/opentypeextension_get.md) |[openTypeExtension](opentypeextension.md) collection| Get an **openTypeExtension** object or objects identified by name or fully qualified name.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty_post_singlevalueextendedproperties.md) |[message](message.md)  |Create one or more single-value extended properties in a new or existing message.   |
|[Get message with single-value extended property](../api/singlevaluelegacyextendedproperty_get.md)  | [message](message.md) | Get messages that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty_post_multivalueextendedproperties.md) | [message](message.md) | Create one or more multi-value extended properties in a new or existing message.  |
|[Get message with multi-value extended property](../api/multivaluelegacyextendedproperty_get.md)  | [message](message.md) | Get a message that contains a multi-value extended property by using `$expand`. |


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
|from|[recipient](recipient.md)|The mailbox owner and sender of the message.|
|hasAttachments|Boolean|Indicates whether the message has attachments.|
|id|String|Unique identifier for the message (note that this value may change if a message is moved or altered)|
|importance|String| The importance of the message: `Low`, `Normal`, `High`.|
|inferenceClassification | String | The classification of the message for the user, based on inferred relevance or importance, or on an explicit override. Possible values are: `focused` or `other`. |
|internetMessageId |String |The message ID in the format specified by [RFC2822](http://www.ietf.org/rfc/rfc2822.txt). |
|isDeliveryReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|isDraft|Boolean|Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.|
|isRead|Boolean|Indicates whether the message has been read.|
|isReadReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|lastModifiedDateTime|DateTimeOffset|The date and time the message was last changed.|
|parentFolderId|String|The unique identifier for the message's parent mailFolder.|
|receivedDateTime|DateTimeOffset|The date and time the message was received.|
|replyTo|[recipient](recipient.md) collection|The email addresses to use when replying.|
|sender|[recipient](recipient.md)|The account that is actually used to generate the message.|
|sentDateTime|DateTimeOffset|The date and time the message was sent.|
|subject|String|The subject of the message.|
|toRecipients|[recipient](recipient.md) collection|The To: recipients for the message.|
|uniqueBody|[itemBody](itembody.md)|The part of the body of the message that is unique to the current message. uniqueBody is not provided by default but can be retrieved for a given message by use of the ?$select=uniqueBody query.|
|webLink|String|The URL to open the message in Outlook Web App.<br><br>You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout is not present or if it is set to 1, then the message is shown in a popout window. If ispopout is set to 0, then the browser will show the message in the Outlook Web App review pane.<br><br>The message will open in the browser if you are logged in to your mailbox via Outlook Web App. You will be prompted to login if you are not already logged in with the browser.<br><br>This URL can be accessed from within an iFrame.|

**Removing script from the Body property**

The message body can be either HTML or text. If the body is HTML, by default, any potentially unsafe HTML (for example, JavaScript) embedded in the Body property would be removed before the body content is returned in a REST response.
To get the entire, original HTML content, include the following HTTP request header:
```
Prefer: outlook.allow-unsafe-html
```

**Setting the From and Sender properties**

When a message is being composed, in most cases, the From and Sender properties represent the same signed-in user, unless either is updated as described in the following scenarios:

- The **From** property can be changed if the Exchange administrator has assigned **SendAs** rights of the mailbox to some other users. The administrator can do this by selecting **Mailbox Permissions** of the mailbox owner in the Azure Management Portal, or by using the Exchange Admin Center or a Windows PowerShell Add-ADPermission cmdlet. Then, you can programmatically set the **From** property to one of these users who have **SendAs** rights for that mailbox.
- The **Sender** property can be changed if the mailbox owner has delegated one or more users to be able to send messages from that mailbox. The mailbox owner can delegate in Outlook. When a delegate sends a message on behalf of the mailbox owner, the **Sender** property is set to the delegate’s account, and the **From** property remains as the mailbox owner. Programmatically, you can set the **Sender** property to a user who has got delegate right for that mailbox.

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[Attachment](attachment.md) collection|The [fileAttachment](fileattachment.md) and [itemAttachment](itemattachment.md) attachments for the message.|
|extensions|[Extension](extension.md) collection|The collection of open type data extensions defined for the contact. Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the message. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the message. Read-only. Nullable.|


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "attachments",
    "extensions",
    "singleValueExtendedProperties",
    "multiValueExtendedProperties"
  ],
  "keyProperty": "id",
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
  "createdDateTime": "String (timestamp)",
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "string (identifier)",
  "importance": "String",
  "inferenceClassification": "String",
  "internetMessageId": "String",
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
  "webLink": "string"
}

```

## See also

- [Get mailbox settings](../api/user_get_mailboxsettings.md) 
- [Update mailbox settings](../api/user_update_mailboxsettings.md)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
