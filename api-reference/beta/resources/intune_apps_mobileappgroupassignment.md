﻿# mobileAppGroupAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign a mobile app to a group.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppGroupAssignments](../api/intune_apps_mobileappgroupassignment_list.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) collection|List properties and relationships of the [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) objects.|
|[Get mobileAppGroupAssignment](../api/intune_apps_mobileappgroupassignment_get.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md)|Read properties and relationships of the [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) object.|
|[Create mobileAppGroupAssignment](../api/intune_apps_mobileappgroupassignment_create.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md)|Create a new [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) object.|
|[Delete mobileAppGroupAssignment](../api/intune_apps_mobileappgroupassignment_delete.md)|None|Deletes a [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md).|
|[Update mobileAppGroupAssignment](../api/intune_apps_mobileappgroupassignment_update.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md)|Update the properties of a [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|targetGroupId|String|The Id of the AAD group we are targeting the mobile app to.|
|vpnConfigurationId|String|The Id of the Vpn Profile to apply for this app.|
|installIntent|String|The install intent defined by the admin. Possible values are: `available`, `notApplicable`, `required`, `uninstall`, `availableWithoutEnrollment`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|app|[mobileApp](../resources/intune_apps_mobileapp.md)|The navigation link to the mobile app being targeted.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppGroupAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppGroupAssignment",
  "id": "String (identifier)",
  "targetGroupId": "String",
  "vpnConfigurationId": "String",
  "installIntent": "String"
}
```



