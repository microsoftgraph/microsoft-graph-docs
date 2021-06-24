---
title: "win32LobAppRestartSettings resource type"
description: "Contains properties describing restart coordination following an app installation."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# win32LobAppRestartSettings resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties describing restart coordination following an app installation.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|gracePeriodInMinutes|Int32|The number of minutes to wait before restarting the device after an app installation.|
|countdownDisplayBeforeRestartInMinutes|Int32|The number of minutes before the restart time to display the countdown dialog for pending restarts.|
|restartNotificationSnoozeDurationInMinutes|Int32|The number of minutes to snooze the restart notification dialog when the snooze button is selected.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppRestartSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppRestartSettings",
  "gracePeriodInMinutes": 1024,
  "countdownDisplayBeforeRestartInMinutes": 1024,
  "restartNotificationSnoozeDurationInMinutes": 1024
}
```




