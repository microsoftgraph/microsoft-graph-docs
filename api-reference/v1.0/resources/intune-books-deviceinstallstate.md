---
title: "deviceInstallState resource type"
description: "Contains properties for the installation state for a device."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceInstallState resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for the installation state for a device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceInstallStates](../api/intune-books-deviceinstallstate-list.md)|[deviceInstallState](../resources/intune-books-deviceinstallstate.md) collection|List properties and relationships of the [deviceInstallState](../resources/intune-books-deviceinstallstate.md) objects.|
|[Get deviceInstallState](../api/intune-books-deviceinstallstate-get.md)|[deviceInstallState](../resources/intune-books-deviceinstallstate.md)|Read properties and relationships of the [deviceInstallState](../resources/intune-books-deviceinstallstate.md) object.|
|[Create deviceInstallState](../api/intune-books-deviceinstallstate-create.md)|[deviceInstallState](../resources/intune-books-deviceinstallstate.md)|Create a new [deviceInstallState](../resources/intune-books-deviceinstallstate.md) object.|
|[Delete deviceInstallState](../api/intune-books-deviceinstallstate-delete.md)|None|Deletes a [deviceInstallState](../resources/intune-books-deviceinstallstate.md).|
|[Update deviceInstallState](../api/intune-books-deviceinstallstate-update.md)|[deviceInstallState](../resources/intune-books-deviceinstallstate.md)|Update the properties of a [deviceInstallState](../resources/intune-books-deviceinstallstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|deviceName|String|Device name.|
|deviceId|String|Device Id.|
|lastSyncDateTime|DateTimeOffset|Last sync date and time.|
|installState|[installState](../resources/intune-books-installstate.md)|The install state of the eBook. Possible values are: `notApplicable`, `installed`, `failed`, `notInstalled`, `uninstallFailed`, `unknown`.|
|errorCode|String|The error code for install failures.|
|osVersion|String|OS Version.|
|osDescription|String|OS Description.|
|userName|String|Device User Name.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceInstallState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInstallState",
  "id": "String (identifier)",
  "deviceName": "String",
  "deviceId": "String",
  "lastSyncDateTime": "String (timestamp)",
  "installState": "String",
  "errorCode": "String",
  "osVersion": "String",
  "osDescription": "String",
  "userName": "String"
}
```




