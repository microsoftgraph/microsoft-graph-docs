---
title: "cloudPcRemoteActionResult resource type"
description: "Represents the cloud PC-specified remote action result."
author: "RuiHou105"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcRemoteActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the cloud PC-specified remote action result.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[getCloudPcRemoteActionResults](../api/manageddevice-getcloudpcremoteactionresults.md)|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md)|Check the cloud PC specified remote action results. Now cloud PC supports reprovision and resize remote actions.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionName|String|The specified action. Supported values: `Reprovision`, `Resize`.|
|actionState|[actionState](#actionstate-values)|State of the action. Possible values are: `None`, `pending`, `canceled`, `active`, `done`, `failed`, `notSupported`. Read-only.|
|cloudPcId|String|The ID of the cloud PC device on which the remote action is performed. Read-only.|
|managedDeviceId|String|The ID of the Intune managed device on which the remote action is performed. Read-only.|
|startDateTime|DateTimeOffset|Time the action was initiated. The Timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.|
|lastUpdatedDateTime|DateTimeOffset|Last update time for action. The Timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.|
|statusDetails|[cloudPcStatusDetails](../resources/cloudpcStatusDetails.md)|The details of the cloud PC status. |

### actionState values

|Member|Description|
|:---|:---|
|none|Not a valid action state.|
|pending|Action is pending.|
|canceled|Action has been cancelled.|
|active|Action is active.|
|done|Action completed without errors.|
|failed|Action failed.|
|notSupported|Action is not supported.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcRemoteActionResult"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcRemoteActionResult",
  "actionName": "String",
  "actionState": "String",
  "startDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "cloudPcId": "String",
  "managedDeviceId": "String",
  "statusDetails": {
    "@odata.type": "microsoft.graph.cloudPcStatusDetails"
  }
}
```
