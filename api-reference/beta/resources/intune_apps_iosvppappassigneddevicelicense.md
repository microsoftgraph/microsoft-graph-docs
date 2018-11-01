---
apiDocType: resourcePageType
---
# iosVppAppAssignedDeviceLicense resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

iOS Volume Purchase Program device license assignment. This class does not support Create, Delete, or Update.

Inherits from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosVppAppAssignedDeviceLicenses](../api/intune_apps_iosvppappassigneddevicelicense_list.md)|[iosVppAppAssignedDeviceLicense](../resources/intune_apps_iosvppappassigneddevicelicense.md) collection|List properties and relationships of the [iosVppAppAssignedDeviceLicense](../resources/intune_apps_iosvppappassigneddevicelicense.md) objects.|
|[Get iosVppAppAssignedDeviceLicense](../api/intune_apps_iosvppappassigneddevicelicense_get.md)|[iosVppAppAssignedDeviceLicense](../resources/intune_apps_iosvppappassigneddevicelicense.md)|Read properties and relationships of the [iosVppAppAssignedDeviceLicense](../resources/intune_apps_iosvppappassigneddevicelicense.md) object.|
|[Create iosVppAppAssignedDeviceLicense](../api/intune_apps_iosvppappassigneddevicelicense_create.md)|[iosVppAppAssignedDeviceLicense](../resources/intune_apps_iosvppappassigneddevicelicense.md)|Create a new [iosVppAppAssignedDeviceLicense](../resources/intune_apps_iosvppappassigneddevicelicense.md) object.|
|[Delete iosVppAppAssignedDeviceLicense](../api/intune_apps_iosvppappassigneddevicelicense_delete.md)|None|Deletes a [iosVppAppAssignedDeviceLicense](../resources/intune_apps_iosvppappassigneddevicelicense.md).|
|[Update iosVppAppAssignedDeviceLicense](../api/intune_apps_iosvppappassigneddevicelicense_update.md)|[iosVppAppAssignedDeviceLicense](../resources/intune_apps_iosvppappassigneddevicelicense.md)|Update the properties of a [iosVppAppAssignedDeviceLicense](../resources/intune_apps_iosvppappassigneddevicelicense.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|
|userEmailAddress|String|The user email address. Inherited from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|
|userId|String|The user ID. Inherited from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|
|userName|String|The user name. Inherited from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|
|userPrincipalName|String|The user principal name. Inherited from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|
|managedDeviceId|String|The managed device ID.|
|deviceName|String|The device name.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosVppAppAssignedDeviceLicense"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosVppAppAssignedDeviceLicense",
  "id": "String (identifier)",
  "userEmailAddress": "String",
  "userId": "String",
  "userName": "String",
  "userPrincipalName": "String",
  "managedDeviceId": "String",
  "deviceName": "String"
}
```





