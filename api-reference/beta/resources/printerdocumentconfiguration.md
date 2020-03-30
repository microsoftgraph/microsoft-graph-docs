---
title: printerDocumentConfiguration resource type
description: A group of settings that a printer should use to print a document.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printerDocumentConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A group of settings that a printer should use to print a document.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|pageRanges|[printPageRange](printpagerange.md) collection|The page ranges to print. Read-only.|
|printQuality|printQuality|The print quality to use when printing the job. Valid values are described in the table below. Read-only.|
|printResolutionInDpi|Int32|The resolution to use when printing the job, expressed in dots per inch (DPI). Read-only.|
|feedDirection|printerFeedDirection|The direction to use when feeding media into the printer. Valid values are described in the following table. Read-only.|
|orientation|printOrientation|The orientation setting the printer should use when printing the job. Valid values are described in the following table.|
|duplexConfiguration|printDuplexConfiguration|The duplex configuration the printer should use when printing the job. Valid values are described in the table below. Read-only.|
|copies|Int32|The number of copies that should be printed. Read-only.|
|colorConfiguration|printColorConfiguration|The color configuration the printer should use to print the job. Valid values are described in the table below. Read-only.|

### printDuplexConfiguration values

|Member|Value|Description|
|:---|:---|:---|
|twoSidedLongEdge|0|The printer will print double-sided, and will flip documents along the long edge.|
|twoSidedShortEdge|1|The printer will print double-sided, and will flip documents along the short edge.|
|oneSided|2|The printer will print single-sided.|

### printQuality values

|Member|Description|
|:---|:---|
|low|The printer will print the job using low (commonly known as "draft") quality.|
|medium|The printer will print the job using medim (commonly known as "normal") quality.|
|high|The printer will print the job using high (commonly known as "best" or "fine") quality.|

## printerFeedDirection values

|Member|Description|
|:---|:---|
|longEdgeFirst|The printer will consume sheets from the active tray in "landscape" orientation, with the long edge of the sheet first.|
|shortEdgeFirst|The printer will consume sheets from the active tray in "portrait" orientation, with the short edge of the sheet first.|

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
  "@odata.type": "microsoft.graph.printerDocumentConfiguration"
}-->

```json
{
  "pageRanges": [{"@odata.type": "microsoft.graph.printPageRange"}],
  "printQuality": "String",
  "printResolutionInDpi": 123456,
  "feedDirection": "String",
  "orientation": "String",
  "duplexConfiguration": "String",
  "copies": 123456,
  "colorConfiguration": "String",
}

```
