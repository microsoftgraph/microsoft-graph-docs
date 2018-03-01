# androidDeviceComplianceLocalActionBase resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Local Action Configuration
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidDeviceComplianceLocalActionBases](../api/intune_deviceconfig_androiddevicecompliancelocalactionbase_list.md)|[androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md) collection|List properties and relationships of the [androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md) objects.|
|[Get androidDeviceComplianceLocalActionBase](../api/intune_deviceconfig_androiddevicecompliancelocalactionbase_get.md)|[androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md)|Read properties and relationships of the [androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|gracePeriodInMinutes|Int32|Number of minutes to wait till a local action is enforced. Valid values 0 to 2147483647|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidDeviceComplianceLocalActionBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceComplianceLocalActionBase",
  "id": "String (identifier)",
  "gracePeriodInMinutes": 1024
}
```



