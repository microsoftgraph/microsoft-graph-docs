---
title: "mobileAppTroubleshootingHistoryItem resource type"
description: "History Item contained in the Mobile App Troubleshooting Event."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
---

# mobileAppTroubleshootingHistoryItem resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

History Item contained in the Mobile App Troubleshooting Event.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|occurrenceDateTime|DateTimeOffset|Time when the history item occurred.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mobileAppTroubleshootingHistoryItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppTroubleshootingHistoryItem",
  "occurrenceDateTime": "String (timestamp)"
}
```





