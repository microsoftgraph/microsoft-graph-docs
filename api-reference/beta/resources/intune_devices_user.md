# user resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List users](../api/intune_devices_user_list.md)|[user](../resources/intune_devices_user.md) collection|List properties and relationships of the [user](../resources/intune_devices_user.md) objects.|
|[Get user](../api/intune_devices_user_get.md)|[user](../resources/intune_devices_user.md)|Read properties and relationships of the [user](../resources/intune_devices_user.md) object.|
|[Create user](../api/intune_devices_user_create.md)|[user](../resources/intune_devices_user.md)|Create a new [user](../resources/intune_devices_user.md) object.|
|[Delete user](../api/intune_devices_user_delete.md)|None|Deletes a [user](../resources/intune_devices_user.md).|
|[Update user](../api/intune_devices_user_update.md)|[user](../resources/intune_devices_user.md)|Update the properties of a [user](../resources/intune_devices_user.md) object.|
|[removeAllDevicesFromManagement action](../api/intune_devices_user_removealldevicesfrommanagement.md)|None|Retire all devices from management for this user|
|[List managedDevices](../api/intune_devices_manageddevice_list.md)|[managedDevice](../resources/intune_devices_manageddevice.md) collection|List properties and relationships of the [managedDevice](../resources/intune_devices_manageddevice.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique identifier of the user.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|managedDevices|[managedDevice](../resources/intune_devices_manageddevice.md) collection|The managed devices associated with the user.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)"
}
```



