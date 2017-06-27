#  resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

**TODO: Documentation is missing please add the `\[ODataDescription()\]` and/or `\[ODataLongDescription()\]` attributes.**
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceCategory](../api/intune_devicefe_devicecategory_get.md)|[deviceCategory](../resources/intune_devicefe_devicecategory.md)|Read properties and relationships of the [deviceCategory](../resources/intune_devicefe_devicecategory.md) object.|
|[Update deviceCategory](../api/intune_devicefe_devicecategory_update.md)|[deviceCategory](../resources/intune_devicefe_devicecategory.md)|Update the properties of a [deviceCategory](../resources/intune_devicefe_devicecategory.md) object.|

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



