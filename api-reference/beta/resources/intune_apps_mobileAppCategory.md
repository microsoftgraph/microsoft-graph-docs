# mobileAppCategory resource type

Contains properties for a single Intune app category.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List mobileAppCategories](../api/intune_apps_mobileAppCategory_list.md)|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) collection|List properties and relationships of the [mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) objects.|
|[Get mobileAppCategory](../api/intune_apps_mobileAppCategory_get.md)|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md)|Read properties and relationships of the [mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) object.|
|[Create mobileAppCategory](../api/intune_apps_mobileAppCategory_create.md)|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md)|Create a new [mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) object.|
|[Delete mobileAppCategory](../api/intune_apps_mobileAppCategory_delete.md)|None|Deletes a [mobileAppCategory](../resources/intune_apps_mobileAppCategory.md).|
|[Update mobileAppCategory](../api/intune_apps_mobileAppCategory_update.md)|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md)|Update the properties of a [mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|The key of the entity.|
|displayName|String|The name of the app category.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppCategory"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mobileAppCategory",
  "id": "String (identifier)",
  "displayName": "String"
}
```


