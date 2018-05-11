# mobileAppAssignment resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A class containing the properties used for Group Assignment of a Mobile App.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppAssignments](../api/intune_apps_mobileappassignment_list.md)|[mobileAppAssignment](../resources/intune_apps_mobileappassignment.md) collection|List properties and relationships of the [mobileAppAssignment](../resources/intune_apps_mobileappassignment.md) objects.|
|[Get mobileAppAssignment](../api/intune_apps_mobileappassignment_get.md)|[mobileAppAssignment](../resources/intune_apps_mobileappassignment.md)|Read properties and relationships of the [mobileAppAssignment](../resources/intune_apps_mobileappassignment.md) object.|
|[Create mobileAppAssignment](../api/intune_apps_mobileappassignment_create.md)|[mobileAppAssignment](../resources/intune_apps_mobileappassignment.md)|Create a new [mobileAppAssignment](../resources/intune_apps_mobileappassignment.md) object.|
|[Delete mobileAppAssignment](../api/intune_apps_mobileappassignment_delete.md)|None|Deletes a [mobileAppAssignment](../resources/intune_apps_mobileappassignment.md).|
|[Update mobileAppAssignment](../api/intune_apps_mobileappassignment_update.md)|[mobileAppAssignment](../resources/intune_apps_mobileappassignment.md)|Update the properties of a [mobileAppAssignment](../resources/intune_apps_mobileappassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|intent|[installIntent](../resources/intune_apps_installintent.md)|The install intent defined by the admin. Possible values are: `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune_shared_deviceandappmanagementassignmenttarget.md)|The target group assignment defined by the admin.|
|settings|[mobileAppAssignmentSettings](../resources/intune_apps_mobileappassignmentsettings.md)|The settings for target assignment defined by the admin.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppAssignment",
  "id": "String (identifier)",
  "intent": "String",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  },
  "settings": {
    "@odata.type": "microsoft.graph.mobileAppAssignmentSettings"
  }
}
```



