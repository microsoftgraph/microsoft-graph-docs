# azureADWindowsAutopilotDeploymentProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Autopilot Deployment Profile

Inherits from [windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List azureADWindowsAutopilotDeploymentProfiles](../api/intune_enrollment_azureadwindowsautopilotdeploymentprofile_list.md)|[azureADWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_azureadwindowsautopilotdeploymentprofile.md) collection|List properties and relationships of the [azureADWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_azureadwindowsautopilotdeploymentprofile.md) objects.|
|[Get azureADWindowsAutopilotDeploymentProfile](../api/intune_enrollment_azureadwindowsautopilotdeploymentprofile_get.md)|[azureADWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_azureadwindowsautopilotdeploymentprofile.md)|Read properties and relationships of the [azureADWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_azureadwindowsautopilotdeploymentprofile.md) object.|
|[Create azureADWindowsAutopilotDeploymentProfile](../api/intune_enrollment_azureadwindowsautopilotdeploymentprofile_create.md)|[azureADWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_azureadwindowsautopilotdeploymentprofile.md)|Create a new [azureADWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_azureadwindowsautopilotdeploymentprofile.md) object.|
|[Delete azureADWindowsAutopilotDeploymentProfile](../api/intune_enrollment_azureadwindowsautopilotdeploymentprofile_delete.md)|None|Deletes a [azureADWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_azureadwindowsautopilotdeploymentprofile.md).|
|[Update azureADWindowsAutopilotDeploymentProfile](../api/intune_enrollment_azureadwindowsautopilotdeploymentprofile_update.md)|[azureADWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_azureadwindowsautopilotdeploymentprofile.md)|Update the properties of a [azureADWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_azureadwindowsautopilotdeploymentprofile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Profile Key Inherited from [windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md)|
|displayName|String|Name of the profile Inherited from [windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md)|
|description|String|Description of the profile Inherited from [windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md)|
|createdDateTime|DateTimeOffset|Profile creation time Inherited from [windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md)|
|lastModifiedDateTime|DateTimeOffset|Profile last modified time Inherited from [windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md)|
|outOfBoxExperienceSettings|[outOfBoxExperienceSettings](../resources/intune_enrollment_outofboxexperiencesettings.md)|Out of box experience setting Inherited from [windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignedDevices|[windowsAutopilotDeviceIdentity](../resources/intune_enrollment_windowsautopilotdeviceidentity.md) collection|The list of assigned devices for the profile. Inherited from [windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureADWindowsAutopilotDeploymentProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADWindowsAutopilotDeploymentProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "outOfBoxExperienceSettings": {
    "@odata.type": "microsoft.graph.outOfBoxExperienceSettings",
    "hidePrivacySettings": true,
    "hideEULA": true,
    "userType": "String"
  }
}
```



