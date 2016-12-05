# managedAppStatusRaw resource type

Represents an un-typed status report about organizations app protection and configuration.

Inherits from [managedAppStatus](../resources/intune_mam_managedAppStatus.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedAppStatusRaws](../api/intune_mam_managedAppStatusRaw_list.md)|[managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md) collection|List properties and relationships of the [managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md) objects.|
|[Get managedAppStatusRaw](../api/intune_mam_managedAppStatusRaw_get.md)|[managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md)|Read properties and relationships of the [managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md) object.|
|[Create managedAppStatusRaw](../api/intune_mam_managedAppStatusRaw_create.md)|[managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md)|Create a new [managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md) object.|
|[Delete managedAppStatusRaw](../api/intune_mam_managedAppStatusRaw_delete.md)|None|Deletes a [managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md).|
|[Update managedAppStatusRaw](../api/intune_mam_managedAppStatusRaw_update.md)|[managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md)|Update the properties of a [managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Friendly name of the status report. Inherited from [managedAppStatus](../resources/intune_mam_managedAppStatus.md)|
|id|String|Key of the entity. Inherited from [managedAppStatus](../resources/intune_mam_managedAppStatus.md)|
|version|String|Version of the entity. Inherited from [managedAppStatus](../resources/intune_mam_managedAppStatus.md)|
|content|[managedAppSummary](../resources/intune_mam_managedAppSummary.md)|Status report content.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppStatusRaw"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedAppStatusRaw",
  "displayName": "String",
  "id": "String (identifier)",
  "version": "String",
  "content": {
    "@odata.type": "microsoft.graph.managedAppSummary"
  }
}
```


