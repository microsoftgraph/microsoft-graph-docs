# deviceManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for Android for Work settings functionality under device management.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune_androidforwork_devicemanagement_get.md)|[deviceManagement](../resources/intune_androidforwork_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_androidforwork_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_androidforwork_devicemanagement_update.md)|[deviceManagement](../resources/intune_androidforwork_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_androidforwork_devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|androidForWorkSettings|[androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md)|The singleton Android for Work settings entity.|
|androidForWorkAppConfigurationSchemas|[androidForWorkAppConfigurationSchema](../resources/intune_androidforwork_androidforworkappconfigurationschema.md) collection|Android for Work app configuration schema entities.|
|androidForWorkEnrollmentProfiles|[androidForWorkEnrollmentProfile](../resources/intune_androidforwork_androidforworkenrollmentprofile.md) collection|Android for Work enrollment profile entities.|
|androidManagedStoreAccountEnterpriseSettings|[androidManagedStoreAccountEnterpriseSettings](../resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md)|The singleton Android managed store account enterprise settings entity.|
|androidManagedStoreAppConfigurationSchemas|[androidManagedStoreAppConfigurationSchema](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md) collection|Android Enterprise app configuration schema entities.|
|androidDeviceOwnerEnrollmentProfiles|[androidDeviceOwnerEnrollmentProfile](../resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md) collection|Android device owner enrollment profile entities.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```



