---
title: "settings resource type (eDiscovery)"
description: "Settings for an eDiscovery case"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# settings resource type (eDiscovery)

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings for an eDiscovery case. For details, see [Configure search and analytics settings in Advanced eDiscovery](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get settings](../api/ediscovery-settings-get.md)|[microsoft.graph.ediscovery.settings](../resources/ediscovery-settings.md)|Read the properties and relationships of a [microsoft.graph.ediscovery.settings](../resources/ediscovery-settings.md) object.|
|[Update settings](../api/ediscovery-settings-update.md)|[microsoft.graph.ediscovery.settings](../resources/ediscovery-settings.md)|Update the properties of a [microsoft.graph.ediscovery.settings](../resources/ediscovery-settings.md) object.|
|[resetToDefault](../api/ediscovery-settings-resettodefault.md)|None|Reset all settings to the default values.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|Id|String|The ID of the eDiscovery case. Inherited from [entity](../resources/entity.md).|
|ocr|[microsoft.graph.ediscovery.ocrSettings](../resources/ediscovery-ocrsettings.md)|The OCR (Optical Character Recognition) settings for the case.|
|redundancyDetection|[microsoft.graph.ediscovery.redundancyDetectionSettings](../resources/ediscovery-redundancydetectionsettings.md)|The redundancy (near duplicate and email threading) detection settings for the case.|
|topicModeling|[microsoft.graph.ediscovery.topicModelingSettings](../resources/ediscovery-topicmodelingsettings.md)|The Topic Modeling (Themes) settings for the case.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.settings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.settings",
  "id": "String (identifier)",
  "redundancyDetection": {
    "@odata.type": "microsoft.graph.ediscovery.redundancyDetectionSettings"
  },
  "topicModeling": {
    "@odata.type": "microsoft.graph.ediscovery.topicModelingSettings"
  },
  "ocr": {
    "@odata.type": "microsoft.graph.ediscovery.ocrSettings"
  }
}
```
