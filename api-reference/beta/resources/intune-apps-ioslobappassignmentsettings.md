---
title: "iosLobAppAssignmentSettings resource type"
description: "Contains properties used to assign an iOS LOB mobile app to a group."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# iosLobAppAssignmentSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to assign an iOS LOB mobile app to a group.


Inherits from [mobileAppAssignmentSettings](../resources/intune-apps-mobileappassignmentsettings.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|vpnConfigurationId|String|The VPN Configuration Id to apply for this app.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosLobAppAssignmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosLobAppAssignmentSettings",
  "vpnConfigurationId": "String"
}
```




