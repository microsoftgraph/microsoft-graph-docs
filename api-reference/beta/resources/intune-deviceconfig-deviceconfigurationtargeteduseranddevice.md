---
title: "deviceConfigurationTargetedUserAndDevice resource type"
description: "Conflict summary for a set of device configuration policies."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceConfigurationTargetedUserAndDevice resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

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




