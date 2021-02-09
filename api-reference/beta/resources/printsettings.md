---
title: printSettings resource type
description: Represents tenant-wide settings for the Universal Print service.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-wide settings for the Universal Print service.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|documentConversionEnabled|Boolean|Specifies whether document conversion is enabled for the tenant. If document conversion is enabled, Universal Print service will automatically convert documents into a format compatible with the printer (xps to pdf) when needed.|

## JSON representation

The following is a JSON representation of printSettings.
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printSettings"
}-->

```json
{
  "documentConversionEnabled": true
}
```


