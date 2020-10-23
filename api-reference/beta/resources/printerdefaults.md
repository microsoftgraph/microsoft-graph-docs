---
title: printerDefaults resource type
description: Represents the printer's default settings. Check the printer's capabilities to see all the values that it supports.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printerDefaults resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the printer's default settings. Check the printer's [capabilities](printercapabilities.md) to see all the values that it supports.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|copiesPerJob|Int32|The default number of copies printed per job.|
|contentType|String|The default content (MIME) type to use when processing documents.|
|finishings|printFinishing collection|The default set of finishings to apply to print jobs. Valid values are described in the following table.|
|mediaColor|String|The default media (such as paper) color to print the document on.
|mediaType|String|The default media (such as paper) type to print the document on. Valid values are described in the following table.|
|mediaSize|String|The default media size to use. Supports standard size names for ISO and ANSI media sizes, along with any custom sizes supported by the associated printer.
|pagesPerSheet|Int32|The default number of document pages to print on each sheet.
|orientation|printOrientation|The default orientation to use when printing the document. Valid values are described in the following table.|
|outputBin|String|The default output bin to place completed prints into. See the printer's [capabilities](printercapabilities.md) for a list of supported output bins.|
|fitPdfToPage|Boolean|The default fitPdfToPage setting. True to fit each page of a PDF document to a physical sheet of media; false to let the printer decide how to lay out impressions.|
|multipageLayout|printMultipageLayout|The default direction to lay out pages when multiple pages are being printed per sheet. Valid values are described in the following table.|
|colorMode|printColorMode|The default color mode to use when printing the document. Valid values are described in the following table.|
|quality|printQuality|The default quality to use when printing the document. Valid values are described in the following table.|
|duplexMode|printDuplexMode|The default duplex (double-sided) configuration to use when printing a document. Valid values are described in the following table.|
|dpi|Int32|The default resolution in DPI to use when printing the job.|
|scaling|printScaling|Specifies how the printer scales the document data to fit the requested media. Valid values are described in the following table.|

### printMultipageLayout values

|Member|Value|Description|
|:---|:---|:---|
|clockwiseFromTopLeft|0|Arrange the pages in a clockwise grid starting in the top left.|
|counterClockwiseFromTopLeft|1|Arrange the pages in a counterclockwise grid starting in the top left.|
|counterClockwiseFromTopRight|2|Arrange the pages in a counterclockwise grid starting in the top right.|
|clockwiseFromTopRight|3|Arrange the pages in a clockwise grid starting in the top right.|
|counterClockwiseFromBottomLeft|4|Arrange the pages in a counterclockwise grid starting in the bottom left.|
|clockwiseFromBottomLeft|5|Arrange the pages in a clockwise grid starting in the bottom left.|
|counterClockwiseFromBottomRight|6|Arrange the pages in a counterclockwise grid starting in the bottom right.|
|clockwiseFromBottomRight|7|Arrange the pages in a clockwise grid starting in the bottom right.|

### printDuplexMode values

|Member|Value|Description|
|:---|:---|:---|
|flipOnLongEdge|0|The printer will print double-sided, and will flip documents along the long edge.|
|flipOnShortEdge|1|The printer will print double-sided, and will flip documents along the short edge.|
|oneSided|2|The printer will print single-sided.|

### printFinishing values

|Member|Value|Description|
|:---|:---|:---|
|none|3|No finishings. Including this value is equivalent to providing an empty collection of finishings.|
|staple|4|Staple the document using the printer's default stapling configuration.|
|punch|5|Hole punch the document using the printer's default hole punch configuration.|
|cover|6|Apply a cover to the document.|
|bind|7|Bind the document using the printer's default binding configuration.|
|saddleStitch|8|Saddle-stich the document using the printer's default stitching configuration.|
|stitchEdge|9|Edge-stitch the document using the printer's default stitching configuration.|
|stapleTopLeft|20|Staple the document in the top-left corner.|
|stapleBottomLeft|21|Staple the document in the bottom-left corner.|
|stapleTopRight|22|Staple the document in the top-right corner.|
|stapleBottomRight|23|Staple the document in the bottom-right corner.|
|stitchLeftEdge|24|Edge-stitch the document along the left edge.|
|stitchTopEdge|25|Edge-stitch the document along the top edge.|
|stitchRightEdge|26|Edge-stitch the document along the right edge.|
|stitchBottomEdge|27|Edge-stitch the document along the bottom edge.|
|stapleDualLeft|28|Staple the document twice along the left edge.|
|stapleDualTop|29|Staple the document twice along the top edge.|
|stapleDualRight|30|Staple the document twice along the right edge.|
|stapleDualBottom|31|Staple the document twice along the bottom edge.|
|unknownFutureValue|32|Evolvable enumeration sentinel value. Do not use.|

## printOrientation values

|Member|Value|Description|
|:---|:---|:---|
|portrait|3|The printer will print impressions in the "portrait" orientation.|
|landscape|4|The printer will print impressions in the "landscape" orientation.|
|reverseLandscape|5|The printer will print impressions in the "reverse landscape" orientation.|
|reversePortrait|6|The printer will print impressions in the "reverse portrait" orientation.|

### printQuality values

|Member|Value|Description|
|:---|:---|
|low|0|The printer will print the job using low (commonly known as "draft") quality.|
|medium|1|The printer will print the job using medim (commonly known as "normal") quality.|
|high|2|The printer will print the job using high (commonly known as "best" or "fine") quality.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|

### printColorMode values

|Member|Value|Description|
|:---|:---|:---|
|blackAndWhite|0|Black and white (use black marker material only.)|
|grayscale|1|Grayscale (may use some color marker material.)|
|color|2|Color (use any combination of marker materials to create a color impression).|
|auto|3|Let the printer decide which color mode to use.|

### printScaling values

|Member|Value|Description|
|:---|:---|:---|
|auto|0|If the document is larger than the requested media and the margins are non-zero, the printer scales the document like the **fit** printScaling. Otherwise, the printer scales the document using the **fill** printScaling. If the document is smaller than the requested media, 'none' printScaling is used.|
|shrinkToFit|1|If the document is larger than the requested media, the printer scales the document like the **fit** printScaling. Otherwise, the printer scales the document like the **none** printScaling.|
|fill|2|The printer scales the document to fill the requested media size, preserving its aspect ratio but potentially cropping portions of the document.|
|fit|3|The printer scales the document to fit the printable area of the requested media size, preserving the aspect ratio of the document data without cropping the document.|
|none|4|The printer does not scale the document to fit the requested media size. If the document is larger than the requested media, the printer centers and clips the resulting output. If the document is smaller than the requested media, printer centers the resulting output.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerDefaults"
}-->

```json
{
  "copiesPerJob": 123456,
  "contentType": "String",
  "finishings": ["String"],
  "mediaColor": "String",
  "mediaSize": "String",
  "pagesPerSheet": 123456,
  "orientation": "String",
  "outputBin": "String",
  "fitPdfToPage": true,
  "multipageLayout": "String",
  "colorMode": "String",
  "quality": "String",
  "duplexMode": "String"
}

```

## See also

* [restoreFactoryDefaults](../api/printer-restorefactorydefaults.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerDefaults resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

