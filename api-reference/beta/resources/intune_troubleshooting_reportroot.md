# reportRoot resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The resource that represents an instance of Enrollment Failure Reports.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get reportRoot](../api/intune_troubleshooting_reportroot_get.md)|[reportRoot](../resources/intune_troubleshooting_reportroot.md)|Read properties and relationships of the [reportRoot](../resources/intune_troubleshooting_reportroot.md) object.|
|[Update reportRoot](../api/intune_troubleshooting_reportroot_update.md)|[reportRoot](../resources/intune_troubleshooting_reportroot.md)|Update the properties of a [reportRoot](../resources/intune_troubleshooting_reportroot.md) object.|
|[managedDeviceEnrollmentFailureDetails function](../api/intune_troubleshooting_reportroot_manageddeviceenrollmentfailuredetails.md)|[report](../resources/intune_troubleshooting_report.md)|Not yet documented|
|[managedDeviceEnrollmentFailureDetails function](../api/intune_troubleshooting_reportroot_manageddeviceenrollmentfailuredetails.md)|[report](../resources/intune_troubleshooting_report.md)|Not yet documented|
|[managedDeviceEnrollmentFailureTrends function](../api/intune_troubleshooting_reportroot_manageddeviceenrollmentfailuretrends.md)|[report](../resources/intune_troubleshooting_report.md)|Metadata for the enrollment failure trends report|
|[managedDeviceEnrollmentTopFailures function](../api/intune_troubleshooting_reportroot_manageddeviceenrollmenttopfailures.md)|[report](../resources/intune_troubleshooting_report.md)|Not yet documented|
|[managedDeviceEnrollmentTopFailures function](../api/intune_troubleshooting_reportroot_manageddeviceenrollmenttopfailures.md)|[report](../resources/intune_troubleshooting_report.md)|Not yet documented|

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



