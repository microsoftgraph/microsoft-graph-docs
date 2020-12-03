---
title: "chatMessageAttachment resource type"
description: "Represents an attachment to a chat message entity."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "clearab"
---

# chatMessageAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attachment to a chat message entity.

An entity of type `chatMessageAttachment` is returned as part of the [Get channel messages](../api/channel-list-messages.md) API, as a part of [chatMessage](chatmessage.md) entity.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string| Read-only. Unique id of the attachment.|
|contentType| string | The media type of the content attachment. It can have the following values: <br><ul><li>`reference`: Attachment is a link to another file. Populate the contentURL with the link to the object.</li><li>Any contentTypes supported by the Bot Framework's [Attachment object](/azure/bot-service/rest-api/bot-framework-rest-connector-api-reference?view=azure-bot-service-4.0#attachment-object)</li><li>`application/vnd.microsoft.card.codesnippet`: A code snippet. </li><li>`application/vnd.microsoft.card.announcement`: An announcement header. </li>|
|contentUrl|string|URL for the content of the attachment. Supported protocols: http, https, file and data.|
|content|string|The content of the attachment. If the attachment is a [rich card](/microsoftteams/platform/task-modules-and-cards/cards/cards-reference), set the property to the rich card object. This property and contentUrl are mutually exclusive.|
|name|string|Name of the attachment.|
|thumbnailUrl| string |URL to a thumbnail image that the channel can use if it supports using an alternative, smaller form of content or contentUrl. For example, if you set contentType to application/word and set contentUrl to the location of the Word document, you might include a thumbnail image that represents the document. The channel could display the thumbnail image instead of the document. When the user clicks the image, the channel would open the document.|

## JSON representation
 The following is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "thumbnailUrl",
    "content",
    "contentUrl"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.chatMessageAttachment"
}-->

```json
{
  "id": "string (identifier)",
  "contentType": "string",
  "contentUrl": "string",
  "content": "string",
  "name": "string",
  "thumbnailUrl": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chat attachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


