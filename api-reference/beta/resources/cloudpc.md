---
title: "cloudPC resource type"
description: "Cloud managed virtual desktops."
author: "AshleyYangSZ"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPC resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud-managed virtual desktop. This cloud PC is also enrolled into Intune and managed through MEM portal, so the managedDevice resource type below also refers to this cloud PC, which means both cloudPC resource and managedDevice resource represent the same cloud PC.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List properties and relationships of the [cloudPC](../resources/cloudpc.md) objects.|
|[Get cloudPC](../api/cloudpc-get.md)|[cloudPC](../resources/cloudpc.md)|Read the properties and relationships of a [cloudPC](../resources/cloudpc.md) object.|
|[Reprovision](../api/cloudpc-reprovision.md)|None|Reprovision a [cloudPC](../resources/cloudpc.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the cloud PC. Read-only.|
|displayName|String|The cloud PC display name.|
|imageDisplayName|String|Name of the OS image that's on the cloud PC.|
|managedDeviceId|String|The cloud PC’s Intune device ID.|
|managedDeviceName|String|The cloud PC’s Intune device name.|
|provisioningPolicyId|String|The cloud PC's provisioning policy ID.|
|provisioningPolicyName|String|The provisioning policy that is applied during provisioning of cloud PCs.|
|onPremisesConnectionName|String|The on-premises connection that is applied during provisioning of cloud PCs.|
|servicePlanId|String|The cloud PC's service plan ID.|
|servicePlanName|String|The cloud PC's service plan name.|
|status|[cloudPcStatus](#cloudpcstatus-values)|Status of the cloud PC. Possible values are: `notProvisioned`, `provisioning`, `provisioned`, `inGracePeriod`, `deprovisioning`, `failed`, `provisionedWithWarnings`, `resizing`, `unknownFutureValue`.|
|statusDetails|[cloudPcStatusDetails](../resources/cloudpcstatusdetails.md)|The details of the cloud PC status.|
|userPrincipalName|String|The user principal name (UPN) of the user assigned to the cloud PC.|
|lastModifiedDateTime|DateTimeOffset|The cloud PC's last modified date and time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|gracePeriodEndDateTime|DateTimeOffset|The date and time when the grace period ends and reprovisioning/deprovisioning happens. Required only if status is `inGracePeriod`. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

### cloudPcStatus values

|Member|Description|
|:---|:---|
|notProvisioned|The Cloud PC hasn’t been provisioned.|
|provisioning|Cloud PC provisioning is in progress.|
|provisioned|The Cloud PC is provisioned and can be accessed by end users.|
|inGracePeriod|The Cloud PC is in the one week grace period before it’s deprovisioned.|
|deprovisioning|The Cloud PC is deprovisioning.|
|failed|The operation on Cloud PC has failed.|
|provisionedWithWarnings|The cloud PC is provisioned and can be accessed by end users but with some warnings. User may continue to use this cloud PC.|
|resizing|The cloud PC is resizing.|
|unknownFutureValue|Unknown future status (Reserved, not used right now).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPC",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPC",
  "id": "String (identifier)",
  "displayName": "String",
  "imageDisplayName": "String",
  "managedDeviceId": "String",
  "managedDeviceName": "String",
  "provisioningPolicyId": "String",
  "provisioningPolicyName": "String",
  "onPremisesConnectionName": "String",
  "servicePlanId": "String",
  "servicePlanName": "String",
  "status": "String",
  "userPrincipalName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "gracePeriodEndDateTime": "String (timestamp)"
}
```

# managedDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cloud PCs are enrolled into Intune allowing IT admin to manage these devices through the MEM portal and APIs. So cloud PC extends managedDevice resource from Intune to allow some remote operations on it. Both cloudPC resource above and managedDevice resource refers to the same cloud-managed virtual desktop. 

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[reprovisionCloudPc of managedDevice](../api/manageddevice-reprovisioncloudpc.md)|None|Reprovision a Cloud PC with Intune managed device id in [managedDevice](../resources/cloudpc.md).|
|[bulkReprovisionCloudPc of managedDevice](../api/manageddevice-bulkreprovisioncloudpc.md)|None|Bulk reprovision a set of Cloud PC devices with Intune managed device IDs in [managedDevice](../resources/cloudpc.md).|
|[resizeCloudPc of managedDevice](../api/manageddevice-resizecloudpc.md)|None|Upgrade or downgrade an existing CloudPC to another configuration with new vCPU and storage size through Intune managed device id in [managedDevice](../resources/cloudpc.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the Intune managed device.|
|cloudPcRemoteActionResults|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md)|The remote action results.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDevice",
  "id": "String (identifier)",
  "cloudPcRemoteActionResults": [
      {
        "@odata.type": "microsoft.graph.cloudPcRemoteActionResult",
      }
  ]
}
```