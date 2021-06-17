---
title: "reportRoot resource type"
description: "The resource that represents an instance of History Reports."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The resource that represents an instance of History Reports.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get reportRoot](../api/intune-deviceconfig-reportroot-get.md)|[reportRoot](../resources/intune-deviceconfig-reportroot.md)|Read properties and relationships of the [reportRoot](../resources/intune-deviceconfig-reportroot.md) object.|
|[Update reportRoot](../api/intune-deviceconfig-reportroot-update.md)|[reportRoot](../resources/intune-deviceconfig-reportroot.md)|Update the properties of a [reportRoot](../resources/intune-deviceconfig-reportroot.md) object.|
|[deviceConfigurationUserActivity function](../api/intune-deviceconfig-reportroot-deviceconfigurationuseractivity.md)|[report](../resources/intune-deviceconfig-report.md)|Metadata for the device configuration user activity report|
|[deviceConfigurationDeviceActivity function](../api/intune-deviceconfig-reportroot-deviceconfigurationdeviceactivity.md)|[report](../resources/intune-deviceconfig-report.md)|Metadata for the device configuration device activity report|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this entity.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportRoot"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot",
  "id": "String (identifier)"
}
```




