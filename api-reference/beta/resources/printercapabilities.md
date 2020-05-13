---
title: printerCapabilities complex type
description: Represents the capabilities reported by a printer.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printerCapabilities complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the capabilities reported by a printer.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|isColorPrintingSupported|Boolean|True if color printing is supported by the printer; false otherwise. Read-only.|
|supportsFitPdfToPage|Boolean|True if the printer supports scaling PDF pages to match the print media size; false otherwise.|
|supportedCopiesPerJob|[integerRange](integerrange.md)|The range of copies per job supported by the printer.|
|supportedDocumentMimeTypes|String collection|The document mime types that are supported by the printer.|
|supportedFinishings|printFinishing collection|The finishings that are supported by the printer.|
|supportedMediaColors|String collection|The media (i.e., paper) colors supported by the printer.|
|supportedMediaTypes|printMediaType collection|The media types supported by the printer. Valid values are described in the following table.|
|supportedDuplexConfigurations|printDuplexConfiguration collection|The duplex configurations supported by the printer. Valid values are described in the following table.|
|supportedMediaSizes|String collection|The media sizes supported by the printer. Supports standard size names for ISO and ANSI media sizes, along with any custom sizes supported by the associated printer.|
|supportedPagesPerSheet|[integerRange](integerrange.md)|The pagesPerSheet values supported by the printer.|
|supportedOrientations|printOrientation collection|The print orientations supported by the printer. Valid values are described in the following table.|
|supportedOutputBins|String collection|The printer's supported output bins (trays).|
|supportedPresentationDirections|printPresentationDirection collection|The presentation directions supported by the printer. Supported values are described in the following table.|
|supportedColorConfigurations|printColorConfiguration collection|The color modes supported by the printer. Valid values are described in the following table.|
|supportedPrintQualities|printQuality collection|The print qualities supported by the printer.|

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

### printDuplexConfiguration values

|Member|Value|Description|
|:---|:---|:---|
|twoSidedLongEdge|0|The printer will print double-sided, and will flip documents along the long edge.|
|twoSidedShortEdge|1|The printer will print double-sided, and will flip documents along the short edge.|
|oneSided|2|The printer will print single-sided.|

## printOrientation values

|Member|Value|Description|
|:---|:---|:---|
|portrait|3|The printer will print impressions in the "portrait" orientation.|
|landscape|4|The printer will print impressions in the "landscape" orientation.|
|reverseLandscape|5|The printer will print impressions in the "reverse landscape" orientation.|
|reversePortrait|6|The printer will print impressions in the "reverse portrait" orientation.|

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
  "@odata.type": "microsoft.graph.printerCapabilities"
}-->

```json
{
  "isColorPrintingSupported": true,
  "supportsFitPdfToPage": true,
  "supportedCopiesPerJob": {"@odata.type": "microsoft.graph.integerRange"},
  "supportedDocumentMimeTypes": ["String"],
  "supportedFinishings": ["String"],
  "supportedMediaColors": ["String"],
  "supportedMediaTypes": ["String"],
  "supportedDuplexConfigurations": ["String"],
  "supportedMediaSizes": ["String"],
  "supportedPagesPerSheet": {"@odata.type": "microsoft.graph.integerRange"},
  "supportedOrientations": ["String"],
  "supportedOutputBins": ["String"],
  "supportedPresentationDirections": ["String"],
  "supportedColorConfigurations": ["String"],
  "supportedPrintQualities": ["String"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerCapabilities resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->