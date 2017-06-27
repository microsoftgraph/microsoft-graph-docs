# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_devicefe_devicemanagement_get.md)|[deviceManagement](../resources/intune_devicefe_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_devicefe_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_devicefe_devicemanagement_update.md)|[deviceManagement](../resources/intune_devicefe_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_devicefe_devicemanagement.md) object.|
|[List remoteActionAudits](../api/intune_devicefe_remoteactionaudit_list.md)|[remoteActionAudit](../resources/intune_devicefe_remoteactionaudit.md) collection|List properties and relationships of the [remoteActionAudit](../resources/intune_devicefe_remoteactionaudit.md) objects.|
|[Create remoteActionAudit](../api/intune_devicefe_remoteactionaudit_create.md)|[remoteActionAudit](../resources/intune_devicefe_remoteactionaudit.md)|Create a new [remoteActionAudit](../resources/intune_devicefe_remoteactionaudit.md) object.|
|[Get applePushNotificationCertificate](../api/intune_devicefe_applepushnotificationcertificate_get.md)|[applePushNotificationCertificate](../resources/intune_devicefe_applepushnotificationcertificate.md)|Read properties and relationships of the [applePushNotificationCertificate](../resources/intune_devicefe_applepushnotificationcertificate.md) object.|
|[List deviceManagementScripts](../api/intune_devicefe_devicemanagementscript_list.md)|[deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md) collection|List properties and relationships of the [deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md) objects.|
|[Create deviceManagementScript](../api/intune_devicefe_devicemanagementscript_create.md)|[deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md)|Create a new [deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md) object.|
|[Get managedDeviceOverview](../api/intune_devicefe_manageddeviceoverview_get.md)|[managedDeviceOverview](../resources/intune_devicefe_manageddeviceoverview.md)|Read properties and relationships of the [managedDeviceOverview](../resources/intune_devicefe_manageddeviceoverview.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device|
|subscriptionState|String|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|remoteActionAudits|[remoteActionAudit](../resources/intune_devicefe_remoteactionaudit.md) collection|The list of device remote action audits with the tenant.|
|applePushNotificationCertificate|[applePushNotificationCertificate](../resources/intune_devicefe_applepushnotificationcertificate.md)|Apple push notification certificate.|
|deviceManagementScripts|[deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md) collection|The list of device management scripts associated with the tenant.|
|managedDeviceOverview|[managedDeviceOverview](../resources/intune_devicefe_manageddeviceoverview.md)|Device overview|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "subscriptionState": "String"
}
```



