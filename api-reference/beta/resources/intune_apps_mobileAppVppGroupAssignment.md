# mobileAppVppGroupAssignment resource type

Contains properties used to assign a Vpp mobile app to a group.

Inherits from [mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List mobileAppVppGroupAssignments](../api/intune_apps_mobileAppVppGroupAssignment_list.md)|[mobileAppVppGroupAssignment](../resources/intune_apps_mobileAppVppGroupAssignment.md) collection|List properties and relationships of the [mobileAppVppGroupAssignment](../resources/intune_apps_mobileAppVppGroupAssignment.md) objects.|
|[Get mobileAppVppGroupAssignment](../api/intune_apps_mobileAppVppGroupAssignment_get.md)|[mobileAppVppGroupAssignment](../resources/intune_apps_mobileAppVppGroupAssignment.md)|Read properties and relationships of the [mobileAppVppGroupAssignment](../resources/intune_apps_mobileAppVppGroupAssignment.md) object.|
|[Create mobileAppVppGroupAssignment](../api/intune_apps_mobileAppVppGroupAssignment_create.md)|[mobileAppVppGroupAssignment](../resources/intune_apps_mobileAppVppGroupAssignment.md)|Create a new [mobileAppVppGroupAssignment](../resources/intune_apps_mobileAppVppGroupAssignment.md) object.|
|[Delete mobileAppVppGroupAssignment](../api/intune_apps_mobileAppVppGroupAssignment_delete.md)|None|Deletes a [mobileAppVppGroupAssignment](../resources/intune_apps_mobileAppVppGroupAssignment.md).|
|[Update mobileAppVppGroupAssignment](../api/intune_apps_mobileAppVppGroupAssignment_update.md)|[mobileAppVppGroupAssignment](../resources/intune_apps_mobileAppVppGroupAssignment.md)|Update the properties of a [mobileAppVppGroupAssignment](../resources/intune_apps_mobileAppVppGroupAssignment.md) object.|
|[Get mobileApp](../api/intune_apps_mobileAppVppGroupAssignment_get_mobileApp.md)|[mobileApp](../resources/intune_apps_mobileApp.md)|Get the [mobileApp](../resources/intune_apps_mobileApp.md) from the app navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the mobile app to. Inherited from [mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md)|
|id|String|Key of the entity. Inherited from [mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md)|
|installIntent|String|The install intent defined by the admin. Inherited from [mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md) Possible values are: `available`, `notApplicable`, `required`, `uninstall`, `availableWithoutEnrollment`.|
|useDeviceLicensing|Boolean|Whether or not to use device licensing.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|app|[mobileApp](../resources/intune_apps_mobileApp.md)|The navigation link to the mobile app being targeted. Inherited from [mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppVppGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mobileAppVppGroupAssignment",
  "targetGroupId": "String",
  "id": "String (identifier)",
  "installIntent": "String",
  "useDeviceLicensing": true
}
```


