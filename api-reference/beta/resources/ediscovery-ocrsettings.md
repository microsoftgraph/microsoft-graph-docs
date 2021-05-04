---
title: "ocrSettings resource type"
description: "OCR settings for an eDiscovery case"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ocrSettings resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The OCR (Optical Character Recognition) settings for the eDiscovery case.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether or not OCR is enabled for the case.|
|maxImageSize|Int32|Maximum image size that will be processed in KB).|
|timeout|Duration|The timeout duration for the OCR engine. A longer timeout may increase success of OCR, but may add to the total processing time.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ediscovery.ocrSettings"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.ocrSettings",
  "isEnabled": "Boolean",
  "maxImageSize": "Integer",
  "timeout": "String (duration)"
}
```
