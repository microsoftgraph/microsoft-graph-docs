---
title: "windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus resource type"
description: "Contains properties for the deployment state of a WindowsDefenderApplicationControl supplemental policy for a device."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for the deployment state of a WindowsDefenderApplicationControl supplemental policy for a device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsDefenderApplicationControlSupplementalPolicyDeploymentStatuses](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus-list.md)|[windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus.md) collection|List properties and relationships of the [windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus.md) objects.|
|[Get windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus-get.md)|[windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus.md)|Read properties and relationships of the [windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus.md) object.|
|[Create windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus-create.md)|[windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus.md)|Create a new [windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus.md) object.|
|[Delete windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus-delete.md)|None|Deletes a [windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus.md).|
|[Update windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus-update.md)|[windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus.md)|Update the properties of a [windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|deviceName|String|Device name.|
|deviceId|String|Device ID.|
|lastSyncDateTime|DateTimeOffset|Last sync date time.|
|osVersion|String|Windows OS Version.|
|osDescription|String|Windows OS Version Description.|
|deploymentStatus|[windowsDefenderApplicationControlSupplementalPolicyStatuses](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicystatuses.md)|The deployment state of the policy. Possible values are: `unknown`, `success`, `tokenError`, `notAuthorizedByToken`, `policyNotFound`.|
|userName|String|The name of the user of this device.|
|userPrincipalName|String|User Principal Name.|
|policyVersion|String|Human readable version of the WindowsDefenderApplicationControl supplemental policy.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md)|The navigation link to the WindowsDefenderApplicationControl supplemental policy.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus",
  "id": "String (identifier)",
  "deviceName": "String",
  "deviceId": "String",
  "lastSyncDateTime": "String (timestamp)",
  "osVersion": "String",
  "osDescription": "String",
  "deploymentStatus": "String",
  "userName": "String",
  "userPrincipalName": "String",
  "policyVersion": "String"
}
```




