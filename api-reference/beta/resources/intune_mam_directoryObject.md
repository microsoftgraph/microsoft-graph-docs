# directoryObject resource type

Represents an Azure Active Directory object. The directoryObject type is the base type for many other directory entity types.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List directoryObjects](../api/intune_mam_directoryObject_list.md)|[directoryObject](../resources/intune_mam_directoryObject.md) collection|List properties and relationships of the [directoryObject](../resources/intune_mam_directoryObject.md) objects.|
|[Get directoryObject](../api/intune_mam_directoryObject_get.md)|[directoryObject](../resources/intune_mam_directoryObject.md)|Read properties and relationships of the [directoryObject](../resources/intune_mam_directoryObject.md) object.|
|[Create directoryObject](../api/intune_mam_directoryObject_create.md)|[directoryObject](../resources/intune_mam_directoryObject.md)|Create a new [directoryObject](../resources/intune_mam_directoryObject.md) object.|
|[Delete directoryObject](../api/intune_mam_directoryObject_delete.md)|None|Deletes a [directoryObject](../resources/intune_mam_directoryObject.md).|
|[Update directoryObject](../api/intune_mam_directoryObject_update.md)|[directoryObject](../resources/intune_mam_directoryObject.md)|Update the properties of a [directoryObject](../resources/intune_mam_directoryObject.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|The directory object identifier|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.directoryObject",
  "id": "String (identifier)"
}
```


