# appProvisioningConfigGroupAssignment resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains the properties used to assign an App provisioning configuration to a group.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List appProvisioningConfigGroupAssignments](../api/intune_apps_appprovisioningconfiggroupassignment_list.md)|[appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) collection|List properties and relationships of the [appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) objects.|
|[Get appProvisioningConfigGroupAssignment](../api/intune_apps_appprovisioningconfiggroupassignment_get.md)|[appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md)|Read properties and relationships of the [appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) object.|
|[Create appProvisioningConfigGroupAssignment](../api/intune_apps_appprovisioningconfiggroupassignment_create.md)|[appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md)|Create a new [appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) object.|
|[Delete appProvisioningConfigGroupAssignment](../api/intune_apps_appprovisioningconfiggroupassignment_delete.md)|None|Deletes a [appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md).|
|[Update appProvisioningConfigGroupAssignment](../api/intune_apps_appprovisioningconfiggroupassignment_update.md)|[appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md)|Update the properties of a [appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the mdm app configuration to.|
|id|String|Key of the entity.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appProvisioningConfigGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.appProvisioningConfigGroupAssignment",
  "targetGroupId": "String",
  "id": "String (identifier)"
}
```



