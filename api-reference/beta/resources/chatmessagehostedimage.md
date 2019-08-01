---
title: "chatMessageHostedImage resource type"
description: "Represents a hosted image inside a chatMessage."
localization_priority: Normal
author: "clearab"
doc_type: resourcePageType
ms.prod: ""
---

# chatMessageHostedImage resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a hosted image inside a [chatMessage](../resources/chatmessage.md).

Hosted images are the images that appear in the message's **body.content** in an \<img> tag with a src attribute that starts with `https://graph.microsoft.com`.

Not all images in a message are hosted images, Microsoft Teams also supports public images (where the img src attribute points to a public website).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List chatMessageHostedImages in a chatMessage](../api/chatmessagehostedimage-list-hostedimages.md) | [chatMessageHostedImage](chatmessagehostedimage.md) collection | List of all hosted images in a **chatMessage**.|
|[Get chatMessageHostedImage](../api/chatmessagehostedimage-get.md) | [chatMessageHostedImage](chatmessagehostedimage.md) | Get a single hosted image.|
|[chatMessageHostedImage: getBytes](../api/chatmessagehostedimage-getbytes.md) | Content-type: image/jpeg | Get the raw bytes of the hosted image.|

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique ID of the message.|
|URL| string | The url to retrieve the image contents from.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.chatMessageHostedImage"
}-->

```json
{
  "id": "string (identifier)",
  "url": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chat message resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/chatmessage.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
