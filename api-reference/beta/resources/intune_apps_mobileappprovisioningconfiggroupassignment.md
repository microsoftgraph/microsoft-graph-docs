# mobileAppProvisioningConfigGroupAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains the properties used to assign an App provisioning configuration to a group.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppProvisioningConfigGroupAssignments](../api/intune_apps_mobileappprovisioningconfiggroupassignment_list.md)|[mobileAppProvisioningConfigGroupAssignment](../resources/intune_apps_mobileappprovisioningconfiggroupassignment.md) collection|List properties and relationships of the [mobileAppProvisioningConfigGroupAssignment](../resources/intune_apps_mobileappprovisioningconfiggroupassignment.md) objects.|
|[Get mobileAppProvisioningConfigGroupAssignment](../api/intune_apps_mobileappprovisioningconfiggroupassignment_get.md)|[mobileAppProvisioningConfigGroupAssignment](../resources/intune_apps_mobileappprovisioningconfiggroupassignment.md)|Read properties and relationships of the [mobileAppProvisioningConfigGroupAssignment](../resources/intune_apps_mobileappprovisioningconfiggroupassignment.md) object.|
|[Create mobileAppProvisioningConfigGroupAssignment](../api/intune_apps_mobileappprovisioningconfiggroupassignment_create.md)|[mobileAppProvisioningConfigGroupAssignment](../resources/intune_apps_mobileappprovisioningconfiggroupassignment.md)|Create a new [mobileAppProvisioningConfigGroupAssignment](../resources/intune_apps_mobileappprovisioningconfiggroupassignment.md) object.|
|[Delete mobileAppProvisioningConfigGroupAssignment](../api/intune_apps_mobileappprovisioningconfiggroupassignment_delete.md)|None|Deletes a [mobileAppProvisioningConfigGroupAssignment](../resources/intune_apps_mobileappprovisioningconfiggroupassignment.md).|
|[Update mobileAppProvisioningConfigGroupAssignment](../api/intune_apps_mobileappprovisioningconfiggroupassignment_update.md)|[mobileAppProvisioningConfigGroupAssignment](../resources/intune_apps_mobileappprovisioningconfiggroupassignment.md)|Update the properties of a [mobileAppProvisioningConfigGroupAssignment](../resources/intune_apps_mobileappprovisioningconfiggroupassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|targetGroupId|String|The ID of the AAD group in which the app provisioning configuration is being targeted.|
|id|String|Key of the entity.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppProvisioningConfigGroupAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppProvisioningConfigGroupAssignment",
  "targetGroupId": "String",
  "id": "String (identifier)"
}
```



