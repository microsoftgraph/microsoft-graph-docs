---
title: "chatMessageAttachment resource type"
description: "Represents an attachment to a chat message entity."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-teams"
author: "nkramer"
---

# chatMessageAttachment resource type

Namespace: microsoft.graph

Represents an attachment to a [chatMessage](./chatmessage.md) entity.

## Properties
| Property  | Type | Description|
|:---------------|:--------|:----------|
|id|string| Read-only. Unique id of the attachment.|
|contentType| string | The media type of the content attachment. It can have the following values: <br><ul><li>reference: Attachment is a link to another file. Populate the contentURL with the link to the object.<br></li><li>file: Raw file attachment. Populate the contenturl field with the base64 encoding of the file in data: format.<br></li><li>image/: Image type with the type of the image specified ex: image/png, image/jpeg, image/gif. Populate the contentUrl field with the base64 encoding of the file in data: format.<br></li><li>video/: Video type with the format specified. Ex: video/mp4. Populate the contentUrl field with the base64 encoding of the file in data: format.<br></li><li>audio/: Audio type with the format specified. Ex: audio/wmw. Populate the contentUrl field with the base64 encoding of the file in data: format.<br></li><li>application/card type: Rich card attachment type with the card type specifying the exact card format to use. Set content with the json format of the card. Supported values for card type include:<br><ul><li>application/vnd.microsoft.card.adaptive: A rich card that can contain any combination of text, speech, images,,buttons, and input fields. Set the content property to,an AdaptiveCard object.</li><li>application/vnd.microsoft.card.animation: A rich card that plays animation. Set the content property,to an AnimationCardobject.</li><li>application/vnd.microsoft.card.audio: A rich card that plays audio files. Set the content property,to an AudioCard object.</li><li>application/vnd.microsoft.card.video: A rich card that plays videos. Set the content property,to a VideoCard object.</li><li>application/vnd.microsoft.card.hero: A Hero card. Set the content property to a HeroCard object.</li><li>application/vnd.microsoft.card.thumbnail: A Thumbnail card. Set the content property to a ThumbnailCard object.</li><li>application/vnd.microsoft.com.card.receipt: A Receipt card. Set the content property to a ReceiptCard object.</li><li>application/vnd.microsoft.com.card.signin: A user Sign In card. Set the content property to a SignInCard object.</ul></ul>|
|contentUrl|string|URL for the content of the attachment. Supported protocols: http, https, file and data.|
|content|string|The content of the attachment. If the attachment is a rich card, set the property to the rich card object. This property and contentUrl are mutually exclusive.|
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

