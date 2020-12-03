---
title: printJobConfiguration resource type
description: A group of settings that a printer should use to print a job.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printJobConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A group of settings that a printer should use to print a job.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|pageRanges|[integerRange](integerrange.md) collection|The page ranges to print. Read-only.|
|quality|printQuality|The print quality to use when printing the job. Valid values are described in the table below. Read-only.|
|dpi|Int32|The resolution to use when printing the job, expressed in dots per inch (DPI). Read-only.|
|feedOrientation|printerFeedOrientation|The orientation to use when feeding media into the printer. Valid values are described in the following table. Read-only.|
|orientation|printOrientation|The orientation setting the printer should use when printing the job. Valid values are described in the following table.|
|duplexMode|printDuplexMode|The duplex mode the printer should use when printing the job. Valid values are described in the table below. Read-only.|
|copies|Int32|The number of copies that should be printed. Read-only.|
|colorMode|printColorMode|The color mode the printer should use to print the job. Valid values are described in the table below. Read-only.|
|inputBin|String|The input bin (tray) to use when printing. See the printer's [capabilities](printercapabilities.md) for a list of supported input bins.|
|outputBin|String|The output bin to place completed prints into. See the printer's [capabilities](printercapabilities.md) for a list of supported output bins.|
|mediaSize|String|The media sizeto use when printing. Supports standard size names for ISO and ANSI media sizes, along with any custom sizes supported by the associated printer.|
|margin|[printMargin](printmargin.md)|The margin settings to use when printing.|
|mediaType|String|The default media (such as paper) type to print the document on. Valid values are described in the following table.|
|finishings|printFinishing collection|Finishing processes to use when printing.|
|pagesPerSheet|Int32|The number of document pages to print on each sheet.
|multipageLayout|printMultipageLayout|The direction to lay out pages when multiple pages are being printed per sheet. Valid values are described in the following table.|
|collate|Boolean|Whether the printer should collate pages wehen printing multiple copies of a multi-page document.|
|scaling|printScaling|Specifies how the printer should scale the document data to fit the requested media. Valid values are described in the following table.|

### printQuality values

|Member|Value|Description|
|:---|:---|:---|
|low|0|The printer will print the job using low (commonly known as "draft") quality.|
|medium|1|The printer will print the job using medim (commonly known as "normal") quality.|
|high|2|The printer will print the job using high (commonly known as "best" or "fine") quality.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|

### printerFeedOrientation values

|Member|Value|Description|
|:---|:---|:---|
|longEdgeFirst|0|The printer will consume sheets from the active tray in "landscape" orientation, with the long edge of the sheet first.|
|shortEdgeFirst|1|The printer will consume sheets from the active tray in "portrait" orientation, with the short edge of the sheet first.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|

### printOrientation values

|Member|Value|Description|
|:---|:---|:---|
|portrait|3|The printer will print impressions in the "portrait" orientation.|
|landscape|4|The printer will print impressions in the "landscape" orientation.|
|reverseLandscape|5|The printer will print impressions in the "reverse landscape" orientation.|
|reversePortrait|6|The printer will print impressions in the "reverse portrait" orientation.|

### printDuplexMode values

|Member|Value|Description|
|:---|:---|:---|
|flipOnLongEdge|0|The printer will print double-sided, and will flip documents along the long edge.|
|flipOnShortEdge|1|The printer will print double-sided, and will flip documents along the short edge.|
|oneSided|2|The printer will print single-sided.|

### printColorMode values

|Member|Value|Description|
|:---|:---|:---|
|blackAndWhite|0|Black and white (use black marker material only.)|
|grayscale|1|Grayscale (may use some color marker material.)|
|color|2|Color (use any combination of marker materials to create a color impression).|
|auto|3|Let the printer decide which color mode to use.|

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
  "@odata.type": "microsoft.graph.printJobConfiguration"
}-->

```json
{
  "pageRanges": [{"@odata.type": "microsoft.graph.integerRange"}],
  "quality": {"@odata.type": "microsoft.graph.printQuality"},
  "dpi": 12345,
  "feedOrientation": {"@odata.type": "microsoft.graph.printerFeedOrientation"},
  "orientation": {"@odata.type": "microsoft.graph.printOrientation"},
  "duplexMode": {"@odata.type": "microsoft.graph.printDuplexMode"},
  "copies": 12345,
  "colorMode": {"@odata.type": "microsoft.graph.printColorMode"},
  "inputBin": "",
  "outputBin": "",
  "mediaSize": "",
  "margin": {"@odata.type": "microsoft.graph.printMargin"},
  "mediaType": "",
  "finishings": [{"@odata.type": "microsoft.graph.printFinishing"}],
  "pagesPerSheet": 12345,
  "multipageLayout": {"@odata.type": "microsoft.graph.printMultipageLayout"},
  "collate": true,
  "scaling": {"@odata.type": "microsoft.graph.printScaling"}
}

```


