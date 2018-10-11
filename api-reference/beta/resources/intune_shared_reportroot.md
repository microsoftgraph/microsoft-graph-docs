# reportRoot resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The resource that represents an instance of a device or troubleshooting report, depending on context.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get reportRoot](../api/intune_shared_reportroot_get.md)|Read properties and relationships of the [reportRoot](../resources/intune_shared_reportroot.md) object.|
|[Update reportRoot](../api/intune_shared_reportroot_update.md)|Update the properties of a [reportRoot](../resources/intune_shared_reportroot.md) object.|
|**Device configuration**|
|[deviceConfigurationUserActivity function](../api/intune_shared_reportroot_deviceconfigurationuseractivity.md)|Metadata for the device configuration user activity report|
|[deviceConfigurationDeviceActivity function](../api/intune_shared_reportroot_deviceconfigurationdeviceactivity.md)|Metadata for the device configuration device activity report|
|**Troubleshooting**|
|[managedDeviceEnrollmentFailureDetails function](../api/intune_shared_reportroot_manageddeviceenrollmentfailuredetails.md)|Not yet documented|
|[managedDeviceEnrollmentFailureTrends function](../api/intune_shared_reportroot_manageddeviceenrollmentfailuretrends.md)|Metadata for the enrollment failure trends report|
|[managedDeviceEnrollmentTopFailures function](../api/intune_shared_reportroot_manageddeviceenrollmenttopfailures.md)|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this entity.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportRoot"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot",
  "id": "String (identifier)"
}
```



