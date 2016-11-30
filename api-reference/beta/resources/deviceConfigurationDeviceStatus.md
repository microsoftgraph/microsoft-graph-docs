# deviceConfigurationDeviceStatus resource type

Not yet documented
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceConfigurationDeviceStatuss](../api/deviceConfigurationDeviceStatus_list.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|List properties and relationships of the [deviceConfigurationDeviceStatus](../resource/deviceConfigurationDeviceStatus.md) objects.|
|[Get deviceConfigurationDeviceStatus](../api/deviceConfigurationDeviceStatus_get.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md)|Read properties and relationships of the [deviceConfigurationDeviceStatus](../resource/deviceConfigurationDeviceStatus.md) object.|
|[Create deviceConfigurationDeviceStatus](../api/deviceConfigurationDeviceStatus_create.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md)|Create a new [deviceConfigurationDeviceStatus](../resource/deviceConfigurationDeviceStatus.md) object.|
|[Delete deviceConfigurationDeviceStatus](../api/deviceConfigurationDeviceStatus_delete.md)|None|Deletes a [deviceConfigurationDeviceStatus](../resource/deviceConfigurationDeviceStatus.md).|
|[Update deviceConfigurationDeviceStatus](../api/deviceConfigurationDeviceStatus_update.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md)|Update the properties of a [deviceConfigurationDeviceStatus](../resource/deviceConfigurationDeviceStatus.md) object.|

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
  "@odata.type": "microsoft.graph.deviceConfigurationDeviceStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationDeviceStatus",
  "id": "String (identifier)",
  "status": "String",
  "lastReportedDateTime": "String (timestamp)"
}
```


