# message resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A message in a mailbox folder.

This resource supports:

- Adding your own data to custom properties using [extensions](../../../concepts/extensibility_overview.md).
- Using [delta query](../../../concepts/delta_query_overview.md) to track incremental additions, deletions, and updates, 
by providing a [delta](../api/message_delta.md) function.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "attachments",
    "extensions",
    "singleValueExtendedProperties",
    "multiValueExtendedProperties",
    "mentions"
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
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bccRecipients|[recipient](recipient.md) collection|The Bcc: recipients for the message.|
|body|[itemBody](itembody.md)|The body of the message. It can be in HTML or text format.|
|bodyPreview|String|The first 255 characters of the message body. It is in text format.|
|categories|String collection|The categories associated with the message. Each category corresponds to the **displayName** property of an [outlookCategory](outlookcategory.md) defined for the user. |
|ccRecipients|[recipient](recipient.md) collection|The Cc: recipients for the message.|
|changeKey|String|The version of the message.|
|conversationId|String|The ID of the conversation the email belongs to.|
|conversationIndex|Binary|The Index of the conversation the email belongs to.|
|createdDateTime|DateTimeOffset|The date and time the message was created.|
|flag|[followUpFlag](followupflag.md)|The flag value that indicates the status, start date, due date, or completion date for the message.|
|from|[recipient](recipient.md)|The mailbox owner and sender of the message.|
|hasAttachments|Boolean|Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the **body** property to look for a `src` attribute, such as `<IMG src="cid:image001.jpg@01D26CD8.6C05F070">`. |
|id|String|Unique identifier for the message (note that this value may change if a message is moved or altered)|
|importance|String| The importance of the message: `Low`, `Normal`, `High`.|
|inferenceClassification|String| The classification of the message for the user, based on inferred relevance or importance, or on an explicit override. Possible values are: `focused`, `other`.|
|internetMessageHeaders | [internetMessageHeader](internetmessageheader.md) collection | The collection of message headers, defined by [RFC5322](https://www.ietf.org/rfc/rfc5322.txt), that provide details of the network path taken by a message from the sender to the recipient. Read-only.|
|internetMessageId | String | The message ID in the format specified by [RFC5322](https://www.ietf.org/rfc/rfc5322.txt). Updatable only if **isDraft** is true.|
|isDeliveryReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|isDraft|Boolean|Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.|
|isRead|Boolean|Indicates whether the message has been read.|
|isReadReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|lastModifiedDateTime|DateTimeOffset|The date and time the message was last changed.|
|mentionsPreview|[mentionsPreview](mentionspreview.md)|Information about mentions in the message. When processing a `GET` /messages request, the server sets this property and includes it in the response by default. The server returns null if there are no mentions in the message. Optional. |
|parentFolderId|String|The unique identifier for the message's parent mailFolder.|
|receivedDateTime|DateTimeOffset|The date and time the message was received.|
|replyTo|[recipient](recipient.md) collection|The email addresses to use when replying.|
|sender|[recipient](recipient.md)|The account that is actually used to generate the message.|
|sentDateTime|DateTimeOffset|The date and time the message was sent.|
|subject|String|The subject of the message.|
|toRecipients|[recipient](recipient.md) collection|The To: recipients for the message.|
|uniqueBody|[itemBody](itembody.md)|The part of the body of the message that is unique to the current message. **uniqueBody** is not returned by default but can be retrieved for a given message by use of the `?$select=uniqueBody` query. It can be in HTML or text format.|
|unsubscribeData|String|The valid entries parsed from the List-Unsubscribe header.  This is the data for the mail command in the List-Unsubscribe header if UnsubscribeEnabled property is true.|
|unsubscribeEnabled|Boolean|Indicates whether the message is enabled for unsubscribe.  Its valueTrue if the list-Unsubscribe header conforms to rfc-2369.|
|webLink|String|The URL to open the message in Outlook Web App.<br><br>You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout is not present or if it is set to 1, then the message is shown in a popout window. If ispopout is set to 0, then the browser will show the message in the Outlook Web App review pane.<br><br>The message will open in the browser if you are logged in to your mailbox via Outlook Web App. You will be prompted to login if you are not already logged in with the browser.<br><br>This URL can be accessed from within an iFrame.|

**Removing script from the body property**

The message body can be either HTML or text. If the body is HTML, by default, any potentially unsafe HTML (for example, JavaScript) embedded in the **body** property would be removed before the body content is returned in a REST response.
To get the entire, original HTML content, include the following HTTP request header:
```
Prefer: outlook.allow-unsafe-html
```

**Setting the from and sender properties**

When a message is being composed, in most cases, the From and Sender properties represent the same signed-in user, unless either is updated as described in the following scenarios:

- The **from** property can be changed if the Exchange administrator has assigned **sendAs** rights of the mailbox to some other users. The administrator can do this by selecting **Mailbox Permissions** of the mailbox owner in the Azure portal, or by using the Exchange Admin Center or a Windows PowerShell Add-ADPermission cmdlet. Then, you can programmatically set the **from** property to one of these users who have **sendAs** rights for that mailbox.
- The **sender** property can be changed if the mailbox owner has delegated one or more users to be able to send messages from that mailbox. The mailbox owner can delegate in Outlook. When a delegate sends a message on behalf of the mailbox owner, the **sender** property is set to the delegate’s account, and the **from** property remains as the mailbox owner. Programmatically, you can set the **sender** property to a user who has got delegate right for that mailbox.

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[Attachment](attachment.md) collection|The [fileAttachment](fileattachment.md) and [itemAttachment](itemattachment.md) attachments for the message.|
|extensions|[Extension](extension.md) collection| The collection of open extensions defined for the message. Nullable.|
|mentions|[mention](mention.md) collection | A collection of mentions in the message, ordered by the **createdDateTime** from the newest to the oldest. By default, a `GET` /messages does not return this property unless you apply `$expand` on the property.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the message. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the message. Read-only. Nullable.|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List messages](../api/user_list_messages.md) |[message](message.md) collection | Get all the messages in the signed-in user's mailbox (including the Deleted Items and Clutter folders). |
|[Create message](../api/user_post_messages.md) | [message](message.md) | Create a draft of a new message. |
|[Get message](../api/message_get.md) | [message](message.md) |Read properties and relationships of message object.|
|[Update](../api/message_update.md) | [message](message.md)	|Update message object. |
|[Delete](../api/message_delete.md) | None |Delete message object. |
|[copy](../api/message_copy.md)|[Message](message.md)|Copy a message to a folder.|
|[createForward](../api/message_createforward.md)|[Message](message.md)|Create a draft forward message to include a comment or update any message properties all in one **createForward** call. You can then [update](../api/message_update.md) or [send](../api/message_send.md) the draft.|
|[createReply](../api/message_createreply.md)|[Message](message.md)|Create a draft of a reply message to include a comment or update any message properties all in one **createReply** call. You can then [update](../api/message_update.md) or [send](../api/message_send.md) the draft.|
|[createReplyAll](../api/message_createreplyall.md)|[Message](message.md)|Create a draft of a reply-all message to include a comment or update any message properties, all in one **createReplyAll** call. You can then [update](../api/message_update.md) or [send](../api/message_send.md) the draft.|
|[delta](../api/message_delta.md)|[message](message.md) collection| Get a set of messages that have been added, deleted, or updated in a specified folder.|
|[forward](../api/message_forward.md)|None|Forward a message, add a comment or modify any updateable properties all in one **forward** call. The message is then saved in the Sent Items folder.|
|[move](../api/message_move.md)|[Message](message.md)|Move the message to a folder. This creates a new copy of the message in the destination folder.|
|[reply](../api/message_reply.md)|None|Reply to the sender of a message, add a comment or modify any updateable properties all in one **reply** call. The message is then saved in the Sent Items folder.|
|[replyAll](../api/message_replyall.md)|None|Reply to all the recipients of a message by specifying a comment and modifying any updateable properties for the reply, all by using the **replyAll** method. The message is then saved in the Sent Items folder.|
|[send](../api/message_send.md)|None|Sends a previously created message draft. The message is then saved in the Sent Items folder.|
|[unsubscribe](../api/message_unsubscribe.md)|None|Send a message using the data and address specified in the first mailto command in the List-Unsubscribe header.|
|**Attachments**| | |
|[List attachments](../api/message_list_attachments.md) |[Attachment](attachment.md) collection| Get all attachments on a message.|
|[Add attachment](../api/message_post_attachments.md) |[Attachment](attachment.md)| Add a new attachment to a message by posting to the attachments collection.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension_post_opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension_get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](../../../concepts/extensibility_schema_groups.md) || Create a schema extension definition and then use it to add custom typed data to a resource.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty_post_singlevalueextendedproperties.md) |[message](message.md)  |Create one or more single-value extended properties in a new or existing message.   |
|[Get message with single-value extended property](../api/singlevaluelegacyextendedproperty_get.md)  | [message](message.md) | Get messages that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty_post_multivalueextendedproperties.md) | [message](message.md) | Create one or more multi-value extended properties in a new or existing message.  |
|[Get message with multi-value extended property](../api/multivaluelegacyextendedproperty_get.md)  | [message](message.md) | Get a message that contains a multi-value extended property by using `$expand`. |

## See also

- [Get mailbox settings](../api/user_get_mailboxsettings.md) 
- [Update mailbox settings](../api/user_update_mailboxsettings.md)
- [Use delta query to track changes in Microsoft Graph data](../../../concepts/delta_query_overview.md)
- [Get incremental changes to messages in a folder](../../../concepts/delta_query_messages.md)
- [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md)
- [Add custom data to users using open extensions](../../../concepts/extensibility_open_users.md)
- [Add custom data to groups using schema extensions](../../../concepts/extensibility_schema_groups.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->