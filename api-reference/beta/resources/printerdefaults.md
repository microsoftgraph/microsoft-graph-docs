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

Represents the printer's default settings. Check the printer's [capabilities](../api/printer-getcapabilities.md) to see all the values that it supports.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|copiesPerJob|Int32|The default number of copies printed per job.|
|documentMimeType|String|The default MIME type to use when processing documents.|
|finishings|printFinishing collection|The default set of finishings to apply to print jobs. Valid values are described in the following table.|
|mediaColor|String|The default media (such as paper) color to print the document on.
|mediaType|printMediaType|The default media (such as paper) type to print the document on. Valid values are described in the following table.|
|mediaSize|String|The default media size to use. Supports standard size names for ISO and ANSI media sizes, along with any custom sizes supported by the associated printer.
|pagesPerSheet|Int32|The default number of document pages to print on each sheet.
|orientation|printOrientation|The default orientation to use when printing the document. Valid values are described in the following table.|
|outputBin|String|The default output bin to place completed prints into. See the printer's [capabilities](../api/printer-getcapabilities.md) for a list of supported output bins.|
|pdfFitToPage|Boolean|The default pdfFitToPage setting. True to fit each page of a PDF document to a physical sheet of media; false to let the printer decide how to lay out impressions.|
|presentationDirection|printPresentationDirection|The default direction to lay out pages when multiple pages are being printed per sheet. Valid values are described in the following table.|
|printColorConfiguration|printColorConfiguration|The default color mode to use when printing the document. Valid values are described in the following table.|
|printQuality|printQuality|The default quality to use when printing the document. Valid values are described in the following table.|
|duplexConfiguration|printDuplexConfiguration|The default duplex (double-sided) configuration to use when printing a document. Valid values are described in the following table.|

### printPresentationDirection values

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

### printDuplexConfiguration values

|Member|Value|Description|
|:---|:---|:---|
|twoSidedLongEdge|0|The printer will print double-sided, and will flip documents along the long edge.|
|twoSidedShortEdge|1|The printer will print double-sided, and will flip documents along the short edge.|
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
|edgeStitch|9|Edge-stitch the document using the printer's default stitching configuration.|
|stapleTopLeft|20|Staple the document in the top-left corner.|
|stapleBottomLeft|21|Staple the document in the bottom-left corner.|
|stapleTopRight|22|Staple the document in the top-right corner.|
|stapleBottomRight|23|Staple the document in the bottom-right corner.|
|edgeStitchLeft|24|Edge-stitch the document along the left edge.|
|edgeStitchTop|25|Edge-stitch the document along the top edge.|
|edgeStitchRight|26|Edge-stitch the document along the right edge.|
|edgeStitchBottom|27|Edge-stitch the document along the bottom edge.|
|stapleDualLeft|28|Staple the document twice along the left edge.|
|stapleDualTop|29|Staple the document twice along the top edge.|
|stapleDualRight|30|Staple the document twice along the right edge.|
|stapleDualBottom|31|Staple the document twice along the bottom edge.|

## printOrientation values

|Member|Value|Description|
|:---|:---|:---|
|portrait|3|The printer will print impressions in the "portrait" orientation.|
|landscape|4|The printer will print impressions in the "landscape" orientation.|
|reverseLandscape|5|The printer will print impressions in the "reverse landscape" orientation.|
|reversePortrait|6|The printer will print impressions in the "reverse portrait" orientation.|

### printMediaType values

|Member|Value|Description|
|:---|:---|:---|
|stationery|0|Standard sheets of paper.|
|transparency|1|Transparency film used with overhead projectors.|
|envelope|2|An envelope.|
|envelopePlain|3|A plain envelope.|
|continuous|4|A continuous roll of paper.|
|screen|5|A digital screen.|
|screenPaged|6|A digital screen with support for paging.|
|continuousLong|7|A long continuous roll of paper.|
|continuousShort|8|A short continuous roll of paper.|
|envelopeWindow|9|An envelope with a transparent window cut-out.|
|multiPartForm|10|A multi-part perforated form.|
|multiLayer|11|A multi-layer medium.|
|labels|12|A sheet with label cut-outs.|

### printQuality values

|Member|Description|
|:---|:---|
|low|The printer will print the job using low (commonly known as "draft") quality.|
|medium|The printer will print the job using medim (commonly known as "normal") quality.|
|high|The printer will print the job using high (commonly known as "best" or "fine") quality.|

### printColorConfiguration values

|Member|Value|Description|
|:---|:---|:---|
|blackAndWhite|0|Black and white (use black marker material only.)|
|grayscale|1|Grayscale (may use some color marker material.)|
|color|2|Color (use any combination of marker materials to create a color impression).|
|auto|3|Let the printer decide which color mode to use.|

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
  "documentMimeType": "String",
  "finishings": ["String"],
  "mediaColor": "String",
  "mediaSize": "String",
  "pagesPerSheet": 123456,
  "orientation": "String",
  "outputBin": "String",
  "pdfFitToPage": true,
  "presentationDirection": "String",
  "printColorConfiguration": "String",
  "printQuality": "String",
  "duplexConfiguration": "String"
}

```

## See also

* [resetDefaults](../api/printer-resetdefaults.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerDefaults resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->