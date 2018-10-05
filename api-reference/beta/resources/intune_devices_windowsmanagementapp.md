# windowsManagementApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows management app entity.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get windowsManagementApp](../api/intune_devices_windowsmanagementapp_get.md)|[windowsManagementApp](../resources/intune_devices_windowsmanagementapp.md)|Read properties and relationships of the [windowsManagementApp](../resources/intune_devices_windowsmanagementapp.md) object.|
|[Update windowsManagementApp](../api/intune_devices_windowsmanagementapp_update.md)|[windowsManagementApp](../resources/intune_devices_windowsmanagementapp.md)|Update the properties of a [windowsManagementApp](../resources/intune_devices_windowsmanagementapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the Windows management app|
|availableVersion|String|Windows management app available version.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|healthSummary|[windowsManagementAppHealthSummary](../resources/intune_devices_windowsmanagementapphealthsummary.md)|Health summary for Windows management app.|
|healthStates|[windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md) collection|The list of health states for installed Windows management app.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsManagementApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsManagementApp",
  "id": "String (identifier)",
  "availableVersion": "String"
}
```



