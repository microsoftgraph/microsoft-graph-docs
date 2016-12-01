# deviceComplianceUserStatus resource type

Not yet documented
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceComplianceUserStatuss](../api/deviceComplianceUserStatus_list.md)|[deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md) collection|List properties and relationships of the [deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md) objects.|
|[Get deviceComplianceUserStatus](../api/deviceComplianceUserStatus_get.md)|[deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md)|Read properties and relationships of the [deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md) object.|
|[Create deviceComplianceUserStatus](../api/deviceComplianceUserStatus_create.md)|[deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md)|Create a new [deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md) object.|
|[Delete deviceComplianceUserStatus](../api/deviceComplianceUserStatus_delete.md)|None|Deletes a [deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md).|
|[Update deviceComplianceUserStatus](../api/deviceComplianceUserStatus_update.md)|[deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md)|Update the properties of a [deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md) object.|

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
  "@odata.type": "microsoft.graph.deviceComplianceUserStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceComplianceUserStatus",
  "id": "String (identifier)",
  "status": "String",
  "lastReportedDateTime": "String (timestamp)"
}
```


