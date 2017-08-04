# mdmAppConfigGroupAssignment resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains the properties used to assign an MDM app configuration to a group.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List mdmAppConfigGroupAssignments](../api/intune_apps_mdmappconfiggroupassignment_list.md)|[mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) collection|List properties and relationships of the [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) objects.|
|[Get mdmAppConfigGroupAssignment](../api/intune_apps_mdmappconfiggroupassignment_get.md)|[mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md)|Read properties and relationships of the [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) object.|
|[Create mdmAppConfigGroupAssignment](../api/intune_apps_mdmappconfiggroupassignment_create.md)|[mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md)|Create a new [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) object.|
|[Delete mdmAppConfigGroupAssignment](../api/intune_apps_mdmappconfiggroupassignment_delete.md)|None|Deletes a [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md).|
|[Update mdmAppConfigGroupAssignment](../api/intune_apps_mdmappconfiggroupassignment_update.md)|[mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md)|Update the properties of a [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|appConfiguration|String|The navigation link to the mdm app Configuration being targeted.|
|targetGroupId|String|The Id of the AAD group we are targeting the mdm app configuration to.|
|id|String|Key of the entity.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.intune_apps_graph.mdmAppConfigGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.intune_apps_graph.mdmAppConfigGroupAssignment",
  "appConfiguration": "String",
  "targetGroupId": "String",
  "id": "String (identifier)"
}
```



