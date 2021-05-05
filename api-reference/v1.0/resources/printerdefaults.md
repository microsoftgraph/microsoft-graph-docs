---
title: printerDefaults resource type
description: Represents the printer's default settings. Check the printer's capabilities to see all the values that it supports.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printerDefaults resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Represents the printer's default settings. Check the printer's [capabilities](printercapabilities.md) to see all the values that it supports.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|copiesPerJob|Int32|The default number of copies printed per job.|
|contentType|String|The default content (MIME) type to use when processing documents.|
|finishings|[printFinishing](enums.md#printfinishing-values) collection|The default set of finishings to apply to print jobs. Valid values are described in the following table.|
|mediaColor|String|The default media (such as paper) color to print the document on.|
|mediaType|String|The default media (such as paper) type to print the document on.|
|mediaSize|String|The default media size to use. Supports standard size names for ISO and ANSI media sizes. Valid values are listed in the [printerCapabilities](printercapabilities.md#mediasizes-values) topic.|
|pagesPerSheet|Int32|The default number of document pages to print on each sheet.
|orientation|[printOrientation](enums.md#printorientation-values)|The default orientation to use when printing the document. Valid values are described in the following table.|
|outputBin|String|The default output bin to place completed prints into. See the printer's [capabilities](printercapabilities.md) for a list of supported output bins.|
|fitPdfToPage|Boolean|The default fitPdfToPage setting. True to fit each page of a PDF document to a physical sheet of media; false to let the printer decide how to lay out impressions.|
|multipageLayout|[printMultipageLayout](enums.md#printmultipagelayout-values)|The default direction to lay out pages when multiple pages are being printed per sheet. Valid values are described in the following table.|
|colorMode|[printColorMode](enums.md#printcolormode-values)|The default color mode to use when printing the document. Valid values are described in the following table.|
|quality|[printQuality](enums.md#printquality-values)|The default quality to use when printing the document. Valid values are described in the following table.|
|duplexMode|[printDuplexMode](enums.md#printduplexmode-values)|The default duplex (double-sided) configuration to use when printing a document. Valid values are described in the following table.|
|dpi|Int32|The default resolution in DPI to use when printing the job.|
|scaling|[printScaling](enums.md#printscaling-values)|Specifies how the printer scales the document data to fit the requested media. Valid values are described in the following table.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printerDefaults"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerDefaults",
  "copiesPerJob": "Integer",
  "contentType": "String",
  "finishings": [
    "String"
  ],
  "mediaColor": "String",
  "mediaType": "String",
  "mediaSize": "String",
  "pagesPerSheet": "Integer",
  "orientation": "String",
  "outputBin": "String",
  "inputBin": "String",
  "fitPdfToPage": "Boolean",
  "multipageLayout": "String",
  "colorMode": "String",
  "quality": "String",
  "duplexMode": "String",
  "dpi": "Integer",
  "scaling": "String"
}
```

