---
title: "remoteActionAudit resource type"
description: "Report of remote actions initiated on the devices belonging to a certain tenant."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# remoteActionAudit resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Report of remote actions initiated on the devices belonging to a certain tenant.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List remoteActionAudits](../api/intune-devices-remoteactionaudit-list.md)|[remoteActionAudit](../resources/intune-devices-remoteactionaudit.md) collection|List properties and relationships of the [remoteActionAudit](../resources/intune-devices-remoteactionaudit.md) objects.|
|[Get remoteActionAudit](../api/intune-devices-remoteactionaudit-get.md)|[remoteActionAudit](../resources/intune-devices-remoteactionaudit.md)|Read properties and relationships of the [remoteActionAudit](../resources/intune-devices-remoteactionaudit.md) object.|
|[Create remoteActionAudit](../api/intune-devices-remoteactionaudit-create.md)|[remoteActionAudit](../resources/intune-devices-remoteactionaudit.md)|Create a new [remoteActionAudit](../resources/intune-devices-remoteactionaudit.md) object.|
|[Delete remoteActionAudit](../api/intune-devices-remoteactionaudit-delete.md)|None|Deletes a [remoteActionAudit](../resources/intune-devices-remoteactionaudit.md).|
|[Update remoteActionAudit](../api/intune-devices-remoteactionaudit-update.md)|[remoteActionAudit](../resources/intune-devices-remoteactionaudit.md)|Update the properties of a [remoteActionAudit](../resources/intune-devices-remoteactionaudit.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Report Id.|
|deviceDisplayName|String|Intune device name.|
|userName|String|\[deprecated\] Please use InitiatedByUserPrincipalName instead.|
|initiatedByUserPrincipalName|String|User who initiated the device action, format is UPN.|
|action|[remoteAction](../resources/intune-devices-remoteaction.md)|The action name. Possible values are: `unknown`, `factoryReset`, `removeCompanyData`, `resetPasscode`, `remoteLock`, `enableLostMode`, `disableLostMode`, `locateDevice`, `rebootNow`, `recoverPasscode`, `cleanWindowsDevice`, `logoutSharedAppleDeviceActiveUser`, `quickScan`, `fullScan`, `windowsDefenderUpdateSignatures`, `factoryResetKeepEnrollmentData`, `updateDeviceAccount`, `automaticRedeployment`, `shutDown`, `rotateBitLockerKeys`, `rotateFileVaultKey`, `getFileVaultKey`, `setDeviceName`.|
|requestDateTime|DateTimeOffset|Time when the action was issued, given in UTC.|
|deviceOwnerUserPrincipalName|String|Upn of the device owner.|
|deviceIMEI|String|IMEI of the device.|
|actionState|[actionState](../resources/intune-shared-actionstate.md)|Action state. Possible values are: `none`, `pending`, `canceled`, `active`, `done`, `failed`, `notSupported`.|
|managedDeviceId|String|Action target.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.remoteActionAudit"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.remoteActionAudit",
  "id": "String (identifier)",
  "deviceDisplayName": "String",
  "userName": "String",
  "initiatedByUserPrincipalName": "String",
  "action": "String",
  "requestDateTime": "String (timestamp)",
  "deviceOwnerUserPrincipalName": "String",
  "deviceIMEI": "String",
  "actionState": "String",
  "managedDeviceId": "String"
}
```




