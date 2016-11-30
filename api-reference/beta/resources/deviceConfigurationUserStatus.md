# deviceConfigurationUserStatus resource type

Not yet documented
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceConfigurationUserStatuss](../api/deviceConfigurationUserStatus_list.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|List properties and relationships of the [deviceConfigurationUserStatus](../resource/deviceConfigurationUserStatus.md) objects.|
|[Get deviceConfigurationUserStatus](../api/deviceConfigurationUserStatus_get.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md)|Read properties and relationships of the [deviceConfigurationUserStatus](../resource/deviceConfigurationUserStatus.md) object.|
|[Create deviceConfigurationUserStatus](../api/deviceConfigurationUserStatus_create.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md)|Create a new [deviceConfigurationUserStatus](../resource/deviceConfigurationUserStatus.md) object.|
|[Delete deviceConfigurationUserStatus](../api/deviceConfigurationUserStatus_delete.md)|None|Deletes a [deviceConfigurationUserStatus](../resource/deviceConfigurationUserStatus.md).|
|[Update deviceConfigurationUserStatus](../api/deviceConfigurationUserStatus_update.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md)|Update the properties of a [deviceConfigurationUserStatus](../resource/deviceConfigurationUserStatus.md) object.|

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
  "@odata.type": "microsoft.graph.deviceConfigurationUserStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationUserStatus",
  "id": "String (identifier)",
  "status": "String",
  "lastReportedDateTime": "String (timestamp)"
}
```


