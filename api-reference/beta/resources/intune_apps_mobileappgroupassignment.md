# mobileAppGroupAssignment resource type

Contains properties used to assign a mobile app to a group.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List mobileAppGroupAssignments](../api/intune_apps_mobileappgroupassignment_list.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) collection|List properties and relationships of the [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) objects.|
|[Get mobileAppGroupAssignment](../api/intune_apps_mobileappgroupassignment_get.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md)|Read properties and relationships of the [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) object.|
|[Create mobileAppGroupAssignment](../api/intune_apps_mobileappgroupassignment_create.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md)|Create a new [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) object.|
|[Delete mobileAppGroupAssignment](../api/intune_apps_mobileappgroupassignment_delete.md)|None|Deletes a [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md).|
|[Update mobileAppGroupAssignment](../api/intune_apps_mobileappgroupassignment_update.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md)|Update the properties of a [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) object.|
|[Get mobileApp](../api/intune_apps_mobileappgroupassignment_get_mobileapp.md)|[mobileApp](../resources/intune_apps_mobileapp.md)|Get the [mobileApp](../resources/intune_apps_mobileapp.md) from the app navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the mobile app to.|
|id|String|Key of the entity.|
|installIntent|String|The install intent defined by the admin. Possible values are: `available`, `notApplicable`, `required`, `uninstall`, `availableWithoutEnrollment`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|app|[mobileApp](../resources/intune_apps_mobileapp.md)|The navigation link to the mobile app being targeted.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mobileAppGroupAssignment",
  "targetGroupId": "String",
  "id": "String (identifier)",
  "installIntent": "String"
}
```



