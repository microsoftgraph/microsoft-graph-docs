# targetedManagedAppPolicyAssignment resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The type for deployment of groups or apps.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List targetedManagedAppPolicyAssignments](../api/intune_mam_targetedmanagedapppolicyassignment_list.md)|[targetedManagedAppPolicyAssignment](../resources/intune_mam_targetedmanagedapppolicyassignment.md) collection|List properties and relationships of the [targetedManagedAppPolicyAssignment](../resources/intune_mam_targetedmanagedapppolicyassignment.md) objects.|
|[Get targetedManagedAppPolicyAssignment](../api/intune_mam_targetedmanagedapppolicyassignment_get.md)|[targetedManagedAppPolicyAssignment](../resources/intune_mam_targetedmanagedapppolicyassignment.md)|Read properties and relationships of the [targetedManagedAppPolicyAssignment](../resources/intune_mam_targetedmanagedapppolicyassignment.md) object.|
|[Delete targetedManagedAppPolicyAssignment](../api/intune_mam_targetedmanagedapppolicyassignment_delete.md)|None|Deletes a [targetedManagedAppPolicyAssignment](../resources/intune_mam_targetedmanagedapppolicyassignment.md).|
|[Update targetedManagedAppPolicyAssignment](../api/intune_mam_targetedmanagedapppolicyassignment_update.md)|[targetedManagedAppPolicyAssignment](../resources/intune_mam_targetedmanagedapppolicyassignment.md)|Update the properties of a [targetedManagedAppPolicyAssignment](../resources/intune_mam_targetedmanagedapppolicyassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune_shared_deviceandappmanagementassignmenttarget.md)|Identifier for deployment of a group or app|

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
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  }
}
```



