# deviceComplianceDeviceStatus resource type

Not yet documented
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceComplianceDeviceStatuss](../api/deviceComplianceDeviceStatus_list.md)|[deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md) collection|List properties and relationships of the [deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md) objects.|
|[Get deviceComplianceDeviceStatus](../api/deviceComplianceDeviceStatus_get.md)|[deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md)|Read properties and relationships of the [deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md) object.|
|[Create deviceComplianceDeviceStatus](../api/deviceComplianceDeviceStatus_create.md)|[deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md)|Create a new [deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md) object.|
|[Delete deviceComplianceDeviceStatus](../api/deviceComplianceDeviceStatus_delete.md)|None|Deletes a [deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md).|
|[Update deviceComplianceDeviceStatus](../api/deviceComplianceDeviceStatus_update.md)|[deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md)|Update the properties of a [deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|status|String|Compliance status of the policy report. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|lastReportedDateTime|DateTimeOffset|Last modified date time of the policy report.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceDeviceStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceComplianceDeviceStatus",
  "id": "String (identifier)",
  "status": "String",
  "lastReportedDateTime": "String (timestamp)"
}
```


