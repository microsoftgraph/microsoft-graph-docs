---
title: "teamworkActivityTopic resource type"
description: Represents the topic of an activity feed notification.
author: RamjotSingh
localization_priority: Normal
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# teamworkActivityTopic resource type

Namespace: microsoft.graph

Represents the topic of an activity feed notification.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|source|teamworkActivityTopicSource|Type of source. Possible values are: `entityUrl`, `text`. For supported Microsoft Graph URLs, use `entityUrl`. For custom text, use `text`.|
|value|String|The topic value. If the value of the **source** property is `entityUrl`, this must be a Microsoft Graph URL. If the vaule is `text`, this must be a plain text value.|
|webUrl|String|The link the user clicks when they select the notification. Optional when **source** is `entityUrl`; required when **source** is `text`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkActivityTopic"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.teamworkActivityTopic",
  "source": "String",
  "value": "String",
  "webUrl": "String"
}
```

