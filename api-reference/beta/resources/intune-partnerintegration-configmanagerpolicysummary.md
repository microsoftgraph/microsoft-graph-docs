---
title: "configManagerPolicySummary resource type"
description: "A ConfigManager policy summary."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# configManagerPolicySummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A ConfigManager policy summary.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|targetedDeviceCount|Int32|The number of devices targeted by the policy.|
|compliantDeviceCount|Int32|The number of devices evaluated to be compliant by the policy.|
|nonCompliantDeviceCount|Int32|The number of devices evaluated to be noncompliant by the policy.|
|failedDeviceCount|Int32|The number of devices that failed to be evaluated by the policy.|
|pendingDeviceCount|Int32|The number of devices that have acknowledged the policy but are pending evaluation.|
|enforcedDeviceCount|Int32|The number of devices that have have been remediated by the policy.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.configManagerPolicySummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configManagerPolicySummary",
  "targetedDeviceCount": 1024,
  "compliantDeviceCount": 1024,
  "nonCompliantDeviceCount": 1024,
  "failedDeviceCount": 1024,
  "pendingDeviceCount": 1024,
  "enforcedDeviceCount": 1024
}
```




