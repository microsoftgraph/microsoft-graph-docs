# windowsAutopilotDeploymentProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Autopilot Deployment Profile
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get windowsAutopilotDeploymentProfile](../api/intune_enrollment_windowsautopilotdeploymentprofile_get.md)|[windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md)|Read properties and relationships of the [windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md) object.|
|[assign action](../api/intune_enrollment_windowsautopilotdeploymentprofile_assign.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Profile Key|
|displayName|String|Name of the profile|
|description|String|Description of the profile|
|language|String|Language configured on the device|
|createdDateTime|DateTimeOffset|Profile creation time|
|lastModifiedDateTime|DateTimeOffset|Profile last modified time|
|outOfBoxExperienceSettings|[outOfBoxExperienceSettings](../resources/intune_enrollment_outofboxexperiencesettings.md)|Out of box experience setting|
|enrollmentStatusScreenSettings|[windowsEnrollmentStatusScreenSettings](../resources/intune_enrollment_windowsenrollmentstatusscreensettings.md)|Enrollment status screen setting|
|enrollmentSettings|[windowsAutoPilotEnrollmentSettings](../resources/intune_enrollment_windowsautopilotenrollmentsettings.md)|Enrollment settings delivered to auto pilot devices|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignedDevices|[windowsAutopilotDeviceIdentity](../resources/intune_enrollment_windowsautopilotdeviceidentity.md) collection|The list of assigned devices for the profile.|
|assignments|[windowsAutopilotDeploymentProfileAssignment](../resources/intune_enrollment_windowsautopilotdeploymentprofileassignment.md) collection|The list of group assignments for the profile.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsAutopilotDeploymentProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsAutopilotDeploymentProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "language": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "outOfBoxExperienceSettings": {
    "@odata.type": "microsoft.graph.outOfBoxExperienceSettings",
    "hidePrivacySettings": true,
    "hideEULA": true,
    "userType": "String",
    "deviceUsageType": "String",
    "skipKeyboardSelectionPage": true
  },
  "enrollmentStatusScreenSettings": {
    "@odata.type": "microsoft.graph.windowsEnrollmentStatusScreenSettings",
    "hideInstallationProgress": true,
    "allowDeviceUseBeforeProfileAndAppInstallComplete": true,
    "blockDeviceSetupRetryByUser": true,
    "allowLogCollectionOnInstallFailure": true,
    "customErrorMessage": "String",
    "installProgressTimeoutInMinutes": 1024,
    "allowDeviceUseOnInstallFailure": true
  },
  "enrollmentSettings": {
    "@odata.type": "microsoft.graph.windowsAutoPilotEnrollmentSettings",
    "blockWindowsConsumerFeatures": true
  }
}
```



