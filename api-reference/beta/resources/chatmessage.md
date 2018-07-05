# chatMessage resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an individual chat message within a [channel](channel.md) or chat entity. The message can be an root message or part of a thread which is defined by the replyToId property in the message.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List Channel messages](../api/channel_message_get.md) | [chatmessage](chatmessage.md) collection | Get the root messages in a channel.|
|[List replies to a message](../api/channel_message_replies_get.md) | [chatmessage](chatmessage.md) collection| Get the replies of a message in channel.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique id of the message.|
|replyToId| string | Id of the parent message/root message of the thread |
|from|IdentitySet| Details of the sender of the message|
|etag| string | Version number of the message |
|messageType|String|The type of message, current supported values are: message, chatEvent, Typing|
|createDateTime|dateTimeOffset|Read only. Timestamp of when the message was created|
|lastModifiedDateTime|dateTimeOffset|Read only. Timestamp of when the message was edited/updated|
|isDeleted|boolean|Represents if a message has been soft deleted|
|deletedDateTime|dateTimeOffset|Read only. Timestamp at which the message was deleted |
|subject|string|Message subject line. Optional|
|body|itemBody|Plaintext/HTML representation of the content of the message. Returns plain text by default, application can choose HTML as part of a query param|
|summary|string|Summary text of the message that could be used for push notifications and summary views or fall back views|
|attachment|chatAttachment collection| Array of attachments that are part of the message|
|mentions|chatMention collection| List of entities mentioned in the message. Currently supports user, bot, team, channel|
|importance| string | The importance of the message: Normal, High|
|reactions| chatReactions collection | Reactions for this message (ex: Like)|
|locale|string|Locale of the message set by the client|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "attachments",
    "extensions",
    "inReplyTo",
    "multiValueExtendedProperties",
    "singleValueExtendedProperties"
  ],
  "@odata.type": "microsoft.graph.post"
}-->

```json
{
  "id": "string (identifier)",
  "replyToId": "string (identifier)",
  "from" : {"@odata.type": "microsoft.graph.IdentitySet"},
  "etag": "string",
  "messageType": "string",
  "createdDateTime": "string (timestamp)",
  "lastModifiedDateTime": "string (timestamp)",
  "isDeleted": "boolean",
  "deletedDateTime": "string (timestamp)",
  "subject": "string",
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "summary": "string",
  "attachments": [{"@odata.type": "microsoft.graph.chatAttachement"}],
  "mentions": [{"@odata.type": "microsoft.graph.chatMention"}],
  "importance": "string",
  "reactions": [{"@odata.type": "microsoft.graph.chatReaction"}],
  "locale": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "post resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->