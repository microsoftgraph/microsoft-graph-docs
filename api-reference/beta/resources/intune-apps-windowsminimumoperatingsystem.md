---
title: "windowsMinimumOperatingSystem resource type"
description: "The minimum operating system required for a Windows mobile app."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# windowsMinimumOperatingSystem resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The minimum operating system required for a Windows mobile app.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|v8_0|Boolean|Windows version 8.0 or later.|
|v8_1|Boolean|Windows version 8.1 or later.|
|v10_0|Boolean|Windows version 10.0 or later.|
|v10_1607|Boolean|Windows 10 1607 or later.|
|v10_1703|Boolean|Windows 10 1703 or later.|
|v10_1709|Boolean|Windows 10 1709 or later.|
|v10_1803|Boolean|Windows 10 1803 or later.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsMinimumOperatingSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsMinimumOperatingSystem",
  "v8_0": true,
  "v8_1": true,
  "v10_0": true,
  "v10_1607": true,
  "v10_1703": true,
  "v10_1709": true,
  "v10_1803": true
}
```





