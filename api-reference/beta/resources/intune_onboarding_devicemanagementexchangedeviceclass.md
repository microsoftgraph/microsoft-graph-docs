# deviceManagementExchangeDeviceClass resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device Class in Exchange.
## Properties
|Property|Type|Description|
|---|---|---|
|name|String|Name of the device class which will be impacted by this rule.|
|type|String|Type of device which is impacted by this rule e.g. Model, Family Possible values are: `family`, `model`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementExchangeDeviceClass"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagementExchangeDeviceClass",
  "name": "String",
  "type": "String"
}
```



