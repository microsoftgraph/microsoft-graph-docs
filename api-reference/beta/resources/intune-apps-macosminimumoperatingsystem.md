---
title: "macOSMinimumOperatingSystem resource type"
description: "The minimum operating system required for a MacOS app."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSMinimumOperatingSystem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The minimum operating system required for a MacOS app.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|v10_7|Boolean|Mac OS 10.7 or later.|
|v10_8|Boolean|Mac OS 10.8 or later.|
|v10_9|Boolean|Mac OS 10.9 or later.|
|v10_10|Boolean|Mac OS 10.10 or later.|
|v10_11|Boolean|Mac OS 10.11 or later.|
|v10_12|Boolean|Mac OS 10.12 or later.|
|v10_13|Boolean|Mac OS 10.13 or later.|
|v10_14|Boolean|Mac OS 10.14 or later.|
|v10_15|Boolean|Mac OS 10.15 or later.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSMinimumOperatingSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSMinimumOperatingSystem",
  "v10_7": true,
  "v10_8": true,
  "v10_9": true,
  "v10_10": true,
  "v10_11": true,
  "v10_12": true,
  "v10_13": true,
  "v10_14": true,
  "v10_15": true
}
```




