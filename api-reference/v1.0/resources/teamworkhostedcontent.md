---
title: "teamworkHostedContent resource type"
description: "Represents rich content hosted by Microsoft Teams."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkHostedContent resource type

Namespace: microsoft.graph

Represents rich content like images and code snippets in Microsoft Teams. For rich content in [channel and chat messages](chatMessage.md), see [chatMessageHostedContent](chatMessageHostedContent.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentBytes|Binary|Write only. Bytes for the hosted content (such as images).|
|contentType|String|Write only. Content type. sicj as image/png, image/jpg.|
|id|String|ID of the hosted content.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkHostedContent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkHostedContent",
  "id": "String (identifier)",
  "contentBytes": "Binary",
  "contentType": "String"
}
```
