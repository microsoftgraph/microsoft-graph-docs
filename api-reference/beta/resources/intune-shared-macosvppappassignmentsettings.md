---
title: "macOsVppAppAssignmentSettings resource type"
description: "Contains properties used to assign an Mac VPP mobile app to a group."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOsVppAppAssignmentSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to assign an Mac VPP mobile app to a group.


Inherits from [mobileAppAssignmentSettings](../resources/intune-shared-mobileappassignmentsettings.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|useDeviceLicensing|Boolean|Whether or not to use device licensing.|
|uninstallOnDeviceRemoval|Boolean|Whether or not to uninstall the app when device is removed from Intune.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOsVppAppAssignmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOsVppAppAssignmentSettings",
  "useDeviceLicensing": true,
  "uninstallOnDeviceRemoval": true
}
```




