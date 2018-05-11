# windowsAutopilotDeploymentProfileAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

An assignment of a Windows Autopilot deployment profile to an AAD group.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsAutopilotDeploymentProfileAssignments](../api/intune_enrollment_windowsautopilotdeploymentprofileassignment_list.md)|[windowsAutopilotDeploymentProfileAssignment](../resources/intune_enrollment_windowsautopilotdeploymentprofileassignment.md) collection|List properties and relationships of the [windowsAutopilotDeploymentProfileAssignment](../resources/intune_enrollment_windowsautopilotdeploymentprofileassignment.md) objects.|
|[Get windowsAutopilotDeploymentProfileAssignment](../api/intune_enrollment_windowsautopilotdeploymentprofileassignment_get.md)|[windowsAutopilotDeploymentProfileAssignment](../resources/intune_enrollment_windowsautopilotdeploymentprofileassignment.md)|Read properties and relationships of the [windowsAutopilotDeploymentProfileAssignment](../resources/intune_enrollment_windowsautopilotdeploymentprofileassignment.md) object.|
|[Create windowsAutopilotDeploymentProfileAssignment](../api/intune_enrollment_windowsautopilotdeploymentprofileassignment_create.md)|[windowsAutopilotDeploymentProfileAssignment](../resources/intune_enrollment_windowsautopilotdeploymentprofileassignment.md)|Create a new [windowsAutopilotDeploymentProfileAssignment](../resources/intune_enrollment_windowsautopilotdeploymentprofileassignment.md) object.|
|[Delete windowsAutopilotDeploymentProfileAssignment](../api/intune_enrollment_windowsautopilotdeploymentprofileassignment_delete.md)|None|Deletes a [windowsAutopilotDeploymentProfileAssignment](../resources/intune_enrollment_windowsautopilotdeploymentprofileassignment.md).|
|[Update windowsAutopilotDeploymentProfileAssignment](../api/intune_enrollment_windowsautopilotdeploymentprofileassignment_update.md)|[windowsAutopilotDeploymentProfileAssignment](../resources/intune_enrollment_windowsautopilotdeploymentprofileassignment.md)|Update the properties of a [windowsAutopilotDeploymentProfileAssignment](../resources/intune_enrollment_windowsautopilotdeploymentprofileassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the assignment.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune_shared_deviceandappmanagementassignmenttarget.md)|The assignment target for the Windows Autopilot deployment profile.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsAutopilotDeploymentProfileAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsAutopilotDeploymentProfileAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  }
}
```



