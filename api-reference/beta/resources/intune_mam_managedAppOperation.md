# managedAppOperation resource type

Represents an operation applied against an app registration.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedAppOperations](../api/intune_mam_managedAppOperation_list.md)|[managedAppOperation](../resources/intune_mam_managedAppOperation.md) collection|List properties and relationships of the [managedAppOperation](../resources/intune_mam_managedAppOperation.md) objects.|
|[Get managedAppOperation](../api/intune_mam_managedAppOperation_get.md)|[managedAppOperation](../resources/intune_mam_managedAppOperation.md)|Read properties and relationships of the [managedAppOperation](../resources/intune_mam_managedAppOperation.md) object.|
|[Create managedAppOperation](../api/intune_mam_managedAppOperation_create.md)|[managedAppOperation](../resources/intune_mam_managedAppOperation.md)|Create a new [managedAppOperation](../resources/intune_mam_managedAppOperation.md) object.|
|[Delete managedAppOperation](../api/intune_mam_managedAppOperation_delete.md)|None|Deletes a [managedAppOperation](../resources/intune_mam_managedAppOperation.md).|
|[Update managedAppOperation](../api/intune_mam_managedAppOperation_update.md)|[managedAppOperation](../resources/intune_mam_managedAppOperation.md)|Update the properties of a [managedAppOperation](../resources/intune_mam_managedAppOperation.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|The operation name.|
|lastModifiedDateTime|DateTimeOffset|The last time the app operation was modified.|
|state|String|The current state of the operation|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppOperation"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedAppOperation",
  "displayName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "state": "String",
  "id": "String (identifier)",
  "version": "String"
}
```


