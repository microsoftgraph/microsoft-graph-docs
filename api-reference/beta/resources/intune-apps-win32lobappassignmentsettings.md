---
title: "win32LobAppAssignmentSettings resource type"
description: "Contains properties used to assign an Win32 LOB mobile app to a group."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# win32LobAppAssignmentSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to assign an Win32 LOB mobile app to a group.


Inherits from [mobileAppAssignmentSettings](../resources/intune-apps-mobileappassignmentsettings.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|notifications|[win32LobAppNotification](../resources/intune-apps-win32lobappnotification.md)|The notification status this app assignment. Possible values are: `showAll`, `showReboot`, `hideAll`.|

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
  "notifications": "String"
}
```




