# activeDirectoryWindowsAutopilotDeploymentProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Auto Pilot Deployment Profile

Inherits from [windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List activeDirectoryWindowsAutopilotDeploymentProfiles](../api/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile_list.md)|[activeDirectoryWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md) collection|List properties and relationships of the [activeDirectoryWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md) objects.|
|[Get activeDirectoryWindowsAutopilotDeploymentProfile](../api/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile_get.md)|[activeDirectoryWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md)|Read properties and relationships of the [activeDirectoryWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md) object.|
|[Create activeDirectoryWindowsAutopilotDeploymentProfile](../api/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile_create.md)|[activeDirectoryWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md)|Create a new [activeDirectoryWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md) object.|
|[Delete activeDirectoryWindowsAutopilotDeploymentProfile](../api/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile_delete.md)|None|Deletes a [activeDirectoryWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md).|
|[Update activeDirectoryWindowsAutopilotDeploymentProfile](../api/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile_update.md)|[activeDirectoryWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md)|Update the properties of a [activeDirectoryWindowsAutopilotDeploymentProfile](../resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md) object.|

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
|domainJoinConfiguration|[windowsDomainJoinConfiguration](../resources/intune_enrollment_windowsdomainjoinconfiguration.md)|Configuration to join Active Directory domain|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.activeDirectoryWindowsAutopilotDeploymentProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.activeDirectoryWindowsAutopilotDeploymentProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "outOfBoxExperienceSettings": {
    "@odata.type": "microsoft.graph.outOfBoxExperienceSettings",
    "hidePrivacySettings": true,
    "hideEULA": true,
    "userType": "String",
    "deviceUsageType": "String"
  }
}
```



