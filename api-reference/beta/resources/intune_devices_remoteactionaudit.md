# remoteActionAudit resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Report of remote actions initiated on the devices belonging to a certain tenant.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List remoteActionAudits](../api/intune_devices_remoteactionaudit_list.md)|[remoteActionAudit](../resources/intune_devices_remoteactionaudit.md) collection|List properties and relationships of the [remoteActionAudit](../resources/intune_devices_remoteactionaudit.md) objects.|
|[Get remoteActionAudit](../api/intune_devices_remoteactionaudit_get.md)|[remoteActionAudit](../resources/intune_devices_remoteactionaudit.md)|Read properties and relationships of the [remoteActionAudit](../resources/intune_devices_remoteactionaudit.md) object.|
|[Create remoteActionAudit](../api/intune_devices_remoteactionaudit_create.md)|[remoteActionAudit](../resources/intune_devices_remoteactionaudit.md)|Create a new [remoteActionAudit](../resources/intune_devices_remoteactionaudit.md) object.|
|[Delete remoteActionAudit](../api/intune_devices_remoteactionaudit_delete.md)|None|Deletes a [remoteActionAudit](../resources/intune_devices_remoteactionaudit.md).|
|[Update remoteActionAudit](../api/intune_devices_remoteactionaudit_update.md)|[remoteActionAudit](../resources/intune_devices_remoteactionaudit.md)|Update the properties of a [remoteActionAudit](../resources/intune_devices_remoteactionaudit.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Report Id.|
|deviceDisplayName|String|Intune device name.|
|userName|String|\[deprecated\] Please use InitiatedByUserPrincipalName instead.|
|initiatedByUserPrincipalName|String|User who initiated the device action, format is UPN.|
|action|[remoteAction](../resources/intune_devices_remoteaction.md)|The action name. Possible values are: `unknown`, `factoryReset`, `removeCompanyData`, `resetPasscode`, `remoteLock`, `enableLostMode`, `disableLostMode`, `locateDevice`, `rebootNow`, `recoverPasscode`, `cleanWindowsDevice`, `logoutSharedAppleDeviceActiveUser`, `quickScan`, `fullScan`, `windowsDefenderUpdateSignatures`, `factoryResetKeepEnrollmentData`, `updateDeviceAccount`, `automaticRedeployment`, `shutDown`.|
|requestDateTime|DateTimeOffset|Time when the action was issued, given in UTC.|
|deviceOwnerUserPrincipalName|String|Upn of the device owner.|
|deviceIMEI|String|IMEI of the device.|
|actionState|[actionState](../resources/intune_shared_actionstate.md)|Action state. Possible values are: `none`, `pending`, `canceled`, `active`, `done`, `failed`, `notSupported`.|

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
  "actionState": "String"
}
```



