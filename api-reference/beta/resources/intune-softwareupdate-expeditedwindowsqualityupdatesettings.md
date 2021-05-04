---
title: "expeditedWindowsQualityUpdateSettings resource type"
description: "A complex type to store the expedited quality update settings such as release date and days until forced reboot."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# expeditedWindowsQualityUpdateSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A complex type to store the expedited quality update settings such as release date and days until forced reboot.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|qualityUpdateRelease|String|The release date to identify a quality update.|
|daysUntilForcedReboot|Int32|The number of days after installation that forced reboot will happen.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.expeditedWindowsQualityUpdateSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.expeditedWindowsQualityUpdateSettings",
  "qualityUpdateRelease": "String",
  "daysUntilForcedReboot": 1024
}
```




