---
title: "managedDeviceMobileAppConfigurationAssignment resource type"
description: "Contains the properties used to assign an MDM app configuration to a group."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# managedDeviceMobileAppConfigurationAssignment resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the properties used to assign an MDM app configuration to a group.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedDeviceMobileAppConfigurationAssignments](../api/intune-apps-manageddevicemobileappconfigurationassignment-list.md)|[managedDeviceMobileAppConfigurationAssignment](../resources/intune-apps-manageddevicemobileappconfigurationassignment.md) collection|List properties and relationships of the [managedDeviceMobileAppConfigurationAssignment](../resources/intune-apps-manageddevicemobileappconfigurationassignment.md) objects.|
|[Get managedDeviceMobileAppConfigurationAssignment](../api/intune-apps-manageddevicemobileappconfigurationassignment-get.md)|[managedDeviceMobileAppConfigurationAssignment](../resources/intune-apps-manageddevicemobileappconfigurationassignment.md)|Read properties and relationships of the [managedDeviceMobileAppConfigurationAssignment](../resources/intune-apps-manageddevicemobileappconfigurationassignment.md) object.|
|[Create managedDeviceMobileAppConfigurationAssignment](../api/intune-apps-manageddevicemobileappconfigurationassignment-create.md)|[managedDeviceMobileAppConfigurationAssignment](../resources/intune-apps-manageddevicemobileappconfigurationassignment.md)|Create a new [managedDeviceMobileAppConfigurationAssignment](../resources/intune-apps-manageddevicemobileappconfigurationassignment.md) object.|
|[Delete managedDeviceMobileAppConfigurationAssignment](../api/intune-apps-manageddevicemobileappconfigurationassignment-delete.md)|None|Deletes a [managedDeviceMobileAppConfigurationAssignment](../resources/intune-apps-manageddevicemobileappconfigurationassignment.md).|
|[Update managedDeviceMobileAppConfigurationAssignment](../api/intune-apps-manageddevicemobileappconfigurationassignment-update.md)|[managedDeviceMobileAppConfigurationAssignment](../resources/intune-apps-manageddevicemobileappconfigurationassignment.md)|Update the properties of a [managedDeviceMobileAppConfigurationAssignment](../resources/intune-apps-manageddevicemobileappconfigurationassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the entity.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|Assignment target that the T&C policy is assigned to.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceMobileAppConfigurationAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfigurationAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.allLicensedUsersAssignmentTarget"
  }
}
```




