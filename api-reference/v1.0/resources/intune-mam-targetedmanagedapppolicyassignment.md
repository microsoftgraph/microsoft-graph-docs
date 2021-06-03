---
title: "targetedManagedAppPolicyAssignment resource type"
description: "The type for deployment of groups or apps."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# targetedManagedAppPolicyAssignment resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The type for deployment of groups or apps.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List targetedManagedAppPolicyAssignments](../api/intune-mam-targetedmanagedapppolicyassignment-list.md)|[targetedManagedAppPolicyAssignment](../resources/intune-mam-targetedmanagedapppolicyassignment.md) collection|List properties and relationships of the [targetedManagedAppPolicyAssignment](../resources/intune-mam-targetedmanagedapppolicyassignment.md) objects.|
|[Get targetedManagedAppPolicyAssignment](../api/intune-mam-targetedmanagedapppolicyassignment-get.md)|[targetedManagedAppPolicyAssignment](../resources/intune-mam-targetedmanagedapppolicyassignment.md)|Read properties and relationships of the [targetedManagedAppPolicyAssignment](../resources/intune-mam-targetedmanagedapppolicyassignment.md) object.|
|[Delete targetedManagedAppPolicyAssignment](../api/intune-mam-targetedmanagedapppolicyassignment-delete.md)|None|Deletes a [targetedManagedAppPolicyAssignment](../resources/intune-mam-targetedmanagedapppolicyassignment.md).|
|[Update targetedManagedAppPolicyAssignment](../api/intune-mam-targetedmanagedapppolicyassignment-update.md)|[targetedManagedAppPolicyAssignment](../resources/intune-mam-targetedmanagedapppolicyassignment.md)|Update the properties of a [targetedManagedAppPolicyAssignment](../resources/intune-mam-targetedmanagedapppolicyassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|Identifier for deployment to a group or app|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.targetedManagedAppPolicyAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.targetedManagedAppPolicyAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",
    "collectionId": "String"
  }
}
```




