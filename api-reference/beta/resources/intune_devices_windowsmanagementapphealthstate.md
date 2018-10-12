# windowsManagementAppHealthState resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows management app health state entity.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsManagementAppHealthStates](../api/intune_devices_windowsmanagementapphealthstate_list.md)|[windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md) collection|List properties and relationships of the [windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md) objects.|
|[Get windowsManagementAppHealthState](../api/intune_devices_windowsmanagementapphealthstate_get.md)|[windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md)|Read properties and relationships of the [windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md) object.|
|[Create windowsManagementAppHealthState](../api/intune_devices_windowsmanagementapphealthstate_create.md)|[windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md)|Create a new [windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md) object.|
|[Delete windowsManagementAppHealthState](../api/intune_devices_windowsmanagementapphealthstate_delete.md)|None|Deletes a [windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md).|
|[Update windowsManagementAppHealthState](../api/intune_devices_windowsmanagementapphealthstate_update.md)|[windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md)|Update the properties of a [windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the Windows management app health state|
|healthState|[healthState](../resources/intune_devices_healthstate.md)|Windows management app health state. Possible values are: `unknown`, `healthy`, `unhealthy`.|
|installedVersion|String|Windows management app installed version.|
|lastCheckInDateTime|DateTimeOffset|Windows management app last check-in time.|
|deviceName|String|Name of the device on which Windows management app is installed.|
|deviceOSVersion|String|Windows 10 OS version of the device on which Windows management app is installed.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsManagementAppHealthState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsManagementAppHealthState",
  "id": "String (identifier)",
  "healthState": "String",
  "installedVersion": "String",
  "lastCheckInDateTime": "String (timestamp)",
  "deviceName": "String",
  "deviceOSVersion": "String"
}
```



