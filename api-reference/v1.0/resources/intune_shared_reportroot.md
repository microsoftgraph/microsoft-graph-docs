---
apiDocType: resourcePageType
---
# reportRoot resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The resource that represents an instance of History Reports.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get reportRoot](../api/intune_shared_reportroot_get.md)|[reportRoot](../resources/intune_shared_reportroot.md)|Read properties and relationships of the [reportRoot](../resources/intune_shared_reportroot.md) object.|
|[Update reportRoot](../api/intune_shared_reportroot_update.md)|[reportRoot](../resources/intune_shared_reportroot.md)|Update the properties of a [reportRoot](../resources/intune_shared_reportroot.md) object.|
|**Device configuration**|
|[deviceConfigurationDeviceActivity function](../api/intune_shared_reportroot_deviceconfigurationdeviceactivity.md)|[report](../resources/intune_shared_report.md)|Metadata for the device configuration device activity report|
|[deviceConfigurationUserActivity function](../api/intune_shared_reportroot_deviceconfigurationuseractivity.md)|[report](../resources/intune_shared_report.md)|Metadata for the device configuration user activity report|
|**Troubleshooting**|
|[managedDeviceEnrollmentFailureDetails function](../api/intune_shared_reportroot_manageddeviceenrollmentfailuredetails.md)|[report](../resources/intune_shared_report.md)|Not yet documented.|
|[managedDeviceEnrollmentTopFailures function](../api/intune_shared_reportroot_manageddeviceenrollmenttopfailures.md)|[report](../resources/intune_shared_report.md)|Not yet documented.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this entity.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportRoot"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot",
  "id": "String (identifier)"
}
```

## Example

<!--{"blockType": "request"}-->
```http
GET https://graph.microsoft.com/v1.0/reports
```

<!--{"blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.reportRoot"}-->
```json
HTTP/1.1 200 OK
Content-Type: application/json

{
}
```