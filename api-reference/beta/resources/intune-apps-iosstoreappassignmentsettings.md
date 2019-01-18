---
title: "iosStoreAppAssignmentSettings resource type"
description: "Contains properties used to assign an iOS Store mobile app to a group."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# iosStoreAppAssignmentSettings resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign an iOS Store mobile app to a group.

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
  "@odata.type": "microsoft.graph.iosStoreAppAssignmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosStoreAppAssignmentSettings",
  "vpnConfigurationId": "String"
}
```





