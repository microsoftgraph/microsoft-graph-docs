---
title: "deviceManagementAutopilotPolicyStatusDetail resource type"
description: "Policy status detail item contained by an autopilot event."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementAutopilotPolicyStatusDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Policy status detail item contained by an autopilot event.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementAutopilotPolicyStatusDetails](../api/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail-list.md)|[deviceManagementAutopilotPolicyStatusDetail](../resources/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail.md) collection|List properties and relationships of the [deviceManagementAutopilotPolicyStatusDetail](../resources/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail.md) objects.|
|[Get deviceManagementAutopilotPolicyStatusDetail](../api/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail-get.md)|[deviceManagementAutopilotPolicyStatusDetail](../resources/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail.md)|Read properties and relationships of the [deviceManagementAutopilotPolicyStatusDetail](../resources/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail.md) object.|
|[Create deviceManagementAutopilotPolicyStatusDetail](../api/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail-create.md)|[deviceManagementAutopilotPolicyStatusDetail](../resources/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail.md)|Create a new [deviceManagementAutopilotPolicyStatusDetail](../resources/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail.md) object.|
|[Delete deviceManagementAutopilotPolicyStatusDetail](../api/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail-delete.md)|None|Deletes a [deviceManagementAutopilotPolicyStatusDetail](../resources/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail.md).|
|[Update deviceManagementAutopilotPolicyStatusDetail](../api/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail-update.md)|[deviceManagementAutopilotPolicyStatusDetail](../resources/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail.md)|Update the properties of a [deviceManagementAutopilotPolicyStatusDetail](../resources/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|UUID for the object|
|displayName|String|The friendly name of the policy.|
|policyType|[deviceManagementAutopilotPolicyType](../resources/intune-troubleshooting-devicemanagementautopilotpolicytype.md)|The type of policy. Possible values are: `unknown`, `application`, `appModel`, `configurationPolicy`.|
|complianceStatus|[deviceManagementAutopilotPolicyComplianceStatus](../resources/intune-troubleshooting-devicemanagementautopilotpolicycompliancestatus.md)|The policy compliance status. Possible values are: `unknown`, `compliant`, `installed`, `notCompliant`, `notInstalled`, `error`.|
|trackedOnEnrollmentStatus|Boolean|Indicates if this prolicy was tracked as part of the autopilot bootstrap enrollment sync session|
|lastReportedDateTime|DateTimeOffset|Timestamp of the reported policy status|
|errorCode|Int32|The errorode associated with the compliance or enforcement status of the policy. Error code for enforcement status takes precedence if it exists.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementAutopilotPolicyStatusDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementAutopilotPolicyStatusDetail",
  "id": "String (identifier)",
  "displayName": "String",
  "policyType": "String",
  "complianceStatus": "String",
  "trackedOnEnrollmentStatus": true,
  "lastReportedDateTime": "String (timestamp)",
  "errorCode": 1024
}
```




