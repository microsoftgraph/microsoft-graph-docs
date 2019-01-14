---
title: "deviceConfigurationTargetedUserAndDevice resource type"
description: "Conflict summary for a set of device configuration policies."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# deviceConfigurationTargetedUserAndDevice resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Conflict summary for a set of device configuration policies.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceId|String|The id of the device in the checkin.|
|deviceName|String|The name of the device in the checkin.|
|userId|String|The id of the user in the checkin.|
|userDisplayName|String|The display name of the user in the checkin|
|userPrincipalName|String|The UPN of the user in the checkin.|
|lastCheckinDateTime|DateTimeOffset|Last checkin time for this user/device pair.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceConfigurationTargetedUserAndDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationTargetedUserAndDevice",
  "deviceId": "String",
  "deviceName": "String",
  "userId": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String",
  "lastCheckinDateTime": "String (timestamp)"
}
```





