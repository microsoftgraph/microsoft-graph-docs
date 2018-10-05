# iosLobAppProvisioningConfigurationAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A class containing the properties used for Group Assignment of an iOS LOB App Provisioning and Configuration.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosLobAppProvisioningConfigurationAssignments](../api/intune_apps_ioslobappprovisioningconfigurationassignment_list.md)|[iosLobAppProvisioningConfigurationAssignment](../resources/intune_apps_ioslobappprovisioningconfigurationassignment.md) collection|List properties and relationships of the [iosLobAppProvisioningConfigurationAssignment](../resources/intune_apps_ioslobappprovisioningconfigurationassignment.md) objects.|
|[Get iosLobAppProvisioningConfigurationAssignment](../api/intune_apps_ioslobappprovisioningconfigurationassignment_get.md)|[iosLobAppProvisioningConfigurationAssignment](../resources/intune_apps_ioslobappprovisioningconfigurationassignment.md)|Read properties and relationships of the [iosLobAppProvisioningConfigurationAssignment](../resources/intune_apps_ioslobappprovisioningconfigurationassignment.md) object.|
|[Create iosLobAppProvisioningConfigurationAssignment](../api/intune_apps_ioslobappprovisioningconfigurationassignment_create.md)|[iosLobAppProvisioningConfigurationAssignment](../resources/intune_apps_ioslobappprovisioningconfigurationassignment.md)|Create a new [iosLobAppProvisioningConfigurationAssignment](../resources/intune_apps_ioslobappprovisioningconfigurationassignment.md) object.|
|[Delete iosLobAppProvisioningConfigurationAssignment](../api/intune_apps_ioslobappprovisioningconfigurationassignment_delete.md)|None|Deletes a [iosLobAppProvisioningConfigurationAssignment](../resources/intune_apps_ioslobappprovisioningconfigurationassignment.md).|
|[Update iosLobAppProvisioningConfigurationAssignment](../api/intune_apps_ioslobappprovisioningconfigurationassignment_update.md)|[iosLobAppProvisioningConfigurationAssignment](../resources/intune_apps_ioslobappprovisioningconfigurationassignment.md)|Update the properties of a [iosLobAppProvisioningConfigurationAssignment](../resources/intune_apps_ioslobappprovisioningconfigurationassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune_shared_deviceandappmanagementassignmenttarget.md)|The target group assignment defined by the admin.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosLobAppProvisioningConfigurationAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosLobAppProvisioningConfigurationAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  }
}
```



