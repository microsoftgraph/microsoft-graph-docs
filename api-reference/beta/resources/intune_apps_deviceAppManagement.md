# deviceAppManagement resource type

Singleton entity that acts as a container for all device app management functionality.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceAppManagement](../api/intune_apps_deviceAppManagement_get.md)|[deviceAppManagement](../resources/intune_apps_deviceAppManagement.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune_apps_deviceAppManagement.md) object.|
|[Update deviceAppManagement](../api/intune_apps_deviceAppManagement_update.md)|[deviceAppManagement](../resources/intune_apps_deviceAppManagement.md)|Update the properties of a [deviceAppManagement](../resources/intune_apps_deviceAppManagement.md) object.|
|[List mobileApps](../api/intune_apps_deviceAppManagement_list_mobileApp.md)|[mobileApp](../resources/intune_apps_mobileApp.md) collection|Get the mobileApps from the mobileApps navigation property.|
|[Create mobileApp](../api/intune_apps_deviceAppManagement_create_mobileApp.md)|[mobileApp](../resources/intune_apps_mobileApp.md)|Create a new [mobileApp](../resources/intune_apps_mobileApp.md) by posting to the mobileApps collection.|
|[List mobileAppCategories](../api/intune_apps_deviceAppManagement_list_mobileAppCategory.md)|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) collection|Get the mobileAppCategories from the mobileAppCategories navigation property.|
|[Create mobileAppCategory](../api/intune_apps_deviceAppManagement_create_mobileAppCategory.md)|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md)|Create a new [mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) by posting to the mobileAppCategories collection.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|mobileApps|[mobileApp](../resources/intune_apps_mobileApp.md) collection|The mobile apps.|
|mobileAppCategories|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) collection|The mobile app categories.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "String (identifier)"
}
```


