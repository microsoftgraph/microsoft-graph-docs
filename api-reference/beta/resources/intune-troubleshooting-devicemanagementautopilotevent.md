---
title: "deviceManagementAutopilotEvent resource type"
description: "Represents an Autopilot flow event."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementAutopilotEvent resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an Autopilot flow event.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementAutopilotEvents](../api/intune-troubleshooting-devicemanagementautopilotevent-list.md)|[deviceManagementAutopilotEvent](../resources/intune-troubleshooting-devicemanagementautopilotevent.md) collection|List properties and relationships of the [deviceManagementAutopilotEvent](../resources/intune-troubleshooting-devicemanagementautopilotevent.md) objects.|
|[Get deviceManagementAutopilotEvent](../api/intune-troubleshooting-devicemanagementautopilotevent-get.md)|[deviceManagementAutopilotEvent](../resources/intune-troubleshooting-devicemanagementautopilotevent.md)|Read properties and relationships of the [deviceManagementAutopilotEvent](../resources/intune-troubleshooting-devicemanagementautopilotevent.md) object.|
|[Create deviceManagementAutopilotEvent](../api/intune-troubleshooting-devicemanagementautopilotevent-create.md)|[deviceManagementAutopilotEvent](../resources/intune-troubleshooting-devicemanagementautopilotevent.md)|Create a new [deviceManagementAutopilotEvent](../resources/intune-troubleshooting-devicemanagementautopilotevent.md) object.|
|[Delete deviceManagementAutopilotEvent](../api/intune-troubleshooting-devicemanagementautopilotevent-delete.md)|None|Deletes a [deviceManagementAutopilotEvent](../resources/intune-troubleshooting-devicemanagementautopilotevent.md).|
|[Update deviceManagementAutopilotEvent](../api/intune-troubleshooting-devicemanagementautopilotevent-update.md)|[deviceManagementAutopilotEvent](../resources/intune-troubleshooting-devicemanagementautopilotevent.md)|Update the properties of a [deviceManagementAutopilotEvent](../resources/intune-troubleshooting-devicemanagementautopilotevent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|UUID for the object|
|deviceId|String|Device id associated with the object|
|eventDateTime|DateTimeOffset|Time when the event occurred .|
|deviceRegisteredDateTime|DateTimeOffset|Device registration date.|
|enrollmentStartDateTime|DateTimeOffset|Device enrollment start date.|
|enrollmentType|[windowsAutopilotEnrollmentType](../resources/intune-troubleshooting-windowsautopilotenrollmenttype.md)|Enrollment type. Possible values are: `unknown`, `azureADJoinedWithAutopilotProfile`, `offlineDomainJoined`, `azureADJoinedUsingDeviceAuthWithAutopilotProfile`, `azureADJoinedUsingDeviceAuthWithoutAutopilotProfile`, `azureADJoinedWithOfflineAutopilotProfile`, `azureADJoinedWithWhiteGlove`, `offlineDomainJoinedWithWhiteGlove`, `offlineDomainJoinedWithOfflineAutopilotProfile`.|
|deviceSerialNumber|String|Device serial number.|
|managedDeviceName|String|Managed device name.|
|userPrincipalName|String|User principal name used to enroll the device.|
|windowsAutopilotDeploymentProfileDisplayName|String|Autopilot profile name.|
|enrollmentState|[enrollmentState](../resources/intune-shared-enrollmentstate.md)|Enrollment state like Enrolled, Failed. Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`, `blocked`.|
|windows10EnrollmentCompletionPageConfigurationDisplayName|String|Enrollment Status Page profile name|
|windows10EnrollmentCompletionPageConfigurationId|String|Enrollment Status Page profile ID|
|deploymentState|[windowsAutopilotDeploymentState](../resources/intune-troubleshooting-windowsautopilotdeploymentstate.md)|Deployment state like Success, Failure, InProgress, SuccessWithTimeout. Possible values are: `unknown`, `success`, `inProgress`, `failure`, `successWithTimeout`, `notAttempted`, `disabled`.|
|deviceSetupStatus|[windowsAutopilotDeploymentState](../resources/intune-troubleshooting-windowsautopilotdeploymentstate.md)|Deployment status for the enrollment status page device setup phase. Possible values are: `unknown`, `success`, `inProgress`, `failure`, `successWithTimeout`, `notAttempted`, `disabled`.|
|accountSetupStatus|[windowsAutopilotDeploymentState](../resources/intune-troubleshooting-windowsautopilotdeploymentstate.md)|Deployment status for the enrollment status page account setup phase. Possible values are: `unknown`, `success`, `inProgress`, `failure`, `successWithTimeout`, `notAttempted`, `disabled`.|
|osVersion|String|Device operating system version.|
|deploymentDuration|Duration|Autopilot deployment duration including enrollment.|
|deploymentTotalDuration|Duration|Total deployment duration from enrollment to Desktop screen.|
|devicePreparationDuration|Duration|Time spent in device enrollment.|
|deviceSetupDuration|Duration|Time spent in device ESP.|
|accountSetupDuration|Duration|Time spent in user ESP.|
|deploymentStartDateTime|DateTimeOffset|Deployment start time.|
|deploymentEndDateTime|DateTimeOffset|Deployment end time.|
|targetedAppCount|Int32|Count of applications targeted.|
|targetedPolicyCount|Int32|Count of policies targeted.|
|enrollmentFailureDetails|String|Enrollment failure details.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policyStatusDetails|[deviceManagementAutopilotPolicyStatusDetail](../resources/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail.md) collection|Policy and application status details for this device.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementAutopilotEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementAutopilotEvent",
  "id": "String (identifier)",
  "deviceId": "String",
  "eventDateTime": "String (timestamp)",
  "deviceRegisteredDateTime": "String (timestamp)",
  "enrollmentStartDateTime": "String (timestamp)",
  "enrollmentType": "String",
  "deviceSerialNumber": "String",
  "managedDeviceName": "String",
  "userPrincipalName": "String",
  "windowsAutopilotDeploymentProfileDisplayName": "String",
  "enrollmentState": "String",
  "windows10EnrollmentCompletionPageConfigurationDisplayName": "String",
  "windows10EnrollmentCompletionPageConfigurationId": "String",
  "deploymentState": "String",
  "deviceSetupStatus": "String",
  "accountSetupStatus": "String",
  "osVersion": "String",
  "deploymentDuration": "String (duration)",
  "deploymentTotalDuration": "String (duration)",
  "devicePreparationDuration": "String (duration)",
  "deviceSetupDuration": "String (duration)",
  "accountSetupDuration": "String (duration)",
  "deploymentStartDateTime": "String (timestamp)",
  "deploymentEndDateTime": "String (timestamp)",
  "targetedAppCount": 1024,
  "targetedPolicyCount": 1024,
  "enrollmentFailureDetails": "String"
}
```




