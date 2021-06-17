---
title: "win32LobAppAssignmentSettings resource type"
description: "Contains properties used to assign an Win32 LOB mobile app to a group."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# win32LobAppAssignmentSettings resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to assign an Win32 LOB mobile app to a group.


Inherits from [mobileAppAssignmentSettings](../resources/intune-apps-mobileappassignmentsettings.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|notifications|[win32LobAppNotification](../resources/intune-apps-win32lobappnotification.md)|The notification status for this app assignment. Possible values are: `showAll`, `showReboot`, `hideAll`.|
|restartSettings|[win32LobAppRestartSettings](../resources/intune-apps-win32lobapprestartsettings.md)|The reboot settings to apply for this app assignment.|
|installTimeSettings|[mobileAppInstallTimeSettings](../resources/intune-apps-mobileappinstalltimesettings.md)|The install time settings to apply for this app assignment.|
|deliveryOptimizationPriority|[win32LobAppDeliveryOptimizationPriority](../resources/intune-apps-win32lobappdeliveryoptimizationpriority.md)|The delivery optimization priority for this app assignment. This setting is not supported in National Cloud environments. Possible values are: `notConfigured`, `foreground`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppAssignmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppAssignmentSettings",
  "notifications": "String",
  "restartSettings": {
    "@odata.type": "microsoft.graph.win32LobAppRestartSettings",
    "gracePeriodInMinutes": 1024,
    "countdownDisplayBeforeRestartInMinutes": 1024,
    "restartNotificationSnoozeDurationInMinutes": 1024
  },
  "installTimeSettings": {
    "@odata.type": "microsoft.graph.mobileAppInstallTimeSettings",
    "useLocalTime": true,
    "startDateTime": "String (timestamp)",
    "deadlineDateTime": "String (timestamp)"
  },
  "deliveryOptimizationPriority": "String"
}
```




