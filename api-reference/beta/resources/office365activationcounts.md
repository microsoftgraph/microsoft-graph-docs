---
title: "office365ActivationCounts resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: resourcePageType
---

# office365ActivationCounts resource type

Namespace: microsoft.graph

## Properties

| Property          | Type   | Description                              |
| :---------------- | :----- | ---------------------------------------- |
| reportRefreshDate | Date   | The latest date of the content.          |
| productType       | String | The product type, such as "Microsoft 365 ProPlus" or "Project Client". |
| windows           | Int64  | The activation count on Windows. This number includes every activation on any Windows computer. |
| mac               | Int64  | The activation count on Mac OS.          |
| android           | Int64  | The activation count on an Android device.  |
| ios               | Int64  | The activation count on iOS.             |
| windows10Mobile   | Int64  | The activation count on Windows 10 mobile. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365ActivationCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "productType": "String", 
  "windows": 1024, 
  "mac": 1024, 
  "android": 1024, 
  "ios": 1024, 
  "windows10Mobile": 1024
}
```


