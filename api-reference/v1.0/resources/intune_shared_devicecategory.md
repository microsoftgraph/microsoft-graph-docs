# deviceCategory resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device categories provides a way to organize your devices. Using device categories, company administrators can define their own categories that make sense to their company. These categories can then be applied to a device in the Intune Azure console or selected by a user during device enrollment. You can filter reports and create dynamic Azure Active Directory device groups based on device categories.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceCategories](../api/intune_shared_devicecategory_list.md) collection|List properties and relationships of the [deviceCategory](../resources/intune_shared_devicecategory.md) objects.|
|[Get deviceCategory](../api/intune_shared_devicecategory_get.md)|Read properties and relationships of the [deviceCategory](../resources/intune_shared_devicecategory.md) object.|
|[Create deviceCategory](../api/intune_shared_devicecategory_create.md)|Create a new [deviceCategory](../resources/intune_shared_devicecategory.md) object.|
|[Delete deviceCategory](../api/intune_shared_devicecategory_delete.md).|
|[Update deviceCategory](../api/intune_shared_devicecategory_update.md)|Update the properties of a [deviceCategory](../resources/intune_shared_devicecategory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the device category. Read-only.|
|displayName|String|Display name for the device category.|
|description|String|Optional description for the device category.|

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
``` json
{
  "@odata.type": "#microsoft.graph.deviceCategory",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```



