---
title: "topicModelingSettings resource type"
description: "Topic modeling settings for an eDiscovery case"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# topicModelingSettings resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Topic modeling (Themes) settings for an eDiscovery case. To learn more, see [Configure search and analytics settings in Advanced eDiscovery](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|dynamicallyAdjustTopicCount|Boolean|To learn more, see [Adjust maximum number of themes dynamically](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#themes).|
|ignoreNumbers|Boolean|To learn more, see [Include numbers in themes](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#themes).|
|isEnabled|Boolean|Indicates whether themes is enabled for the case.|
|topicCount|Int32|To learn more, see [Maximum number of themes](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#themes).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ediscovery.topicModelingSettings"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.topicModelingSettings",
  "isEnabled": "Boolean",
  "ignoreNumbers": "Boolean",
  "topicCount": "Integer",
  "dynamicallyAdjustTopicCount": "Boolean"
}
```
