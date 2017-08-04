#  resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceCategory](../api/intune_devices_devicecategory_get.md)|[deviceCategory](../resources/intune_devices_devicecategory.md)|Read properties and relationships of the [deviceCategory](../resources/intune_devices_devicecategory.md) object.|
|[Update deviceCategory](../api/intune_devices_devicecategory_update.md)|[deviceCategory](../resources/intune_devices_devicecategory.md)|Update the properties of a [deviceCategory](../resources/intune_devices_devicecategory.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique identifier for the device category. Read-only.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCategory"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceCategory",
  "id": "String (identifier)"
}
```



