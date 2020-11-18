---
title: "reportRoot resource type"
description: "The resource that represents an instance of a device or troubleshooting report, depending on context."
localization_priority: Normal
author: "dougeby"
ms.prod: "intune"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The resource that represents an instance of a device or troubleshooting report, depending on context.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get reportRoot](../api/intune-shared-reportroot-get.md)|Read properties and relationships of the [reportRoot](../resources/intune-shared-reportroot.md) object.|
|[Update reportRoot](../api/intune-shared-reportroot-update.md)|Update the properties of a [reportRoot](../resources/intune-shared-reportroot.md) object.|
|**Device configuration**|
|[deviceConfigurationUserActivity function](../api/intune-shared-reportroot-deviceconfigurationuseractivity.md)|Metadata for the device configuration user activity report|
|[deviceConfigurationDeviceActivity function](../api/intune-shared-reportroot-deviceconfigurationdeviceactivity.md)|Metadata for the device configuration device activity report|
|**Troubleshooting**|
|[managedDeviceEnrollmentAbandonmentDetails function](../api/intune-shared-reportroot-manageddeviceenrollmentabandonmentdetails.md)|[report](../resources/intune-shared-report.md)|Metadata for Enrollment abandonment details report|
|[managedDeviceEnrollmentAbandonmentSummary function](../api/intune-shared-reportroot-manageddeviceenrollmentabandonmentsummary.md)|[report](../resources/intune-shared-report.md)|Metadata for Enrollment abandonment summary report|
|[managedDeviceEnrollmentFailureDetails function](../api/intune-shared-reportroot-manageddeviceenrollmentfailuredetails.md)|Not yet documented|
|[managedDeviceEnrollmentFailureTrends function](../api/intune-shared-reportroot-manageddeviceenrollmentfailuretrends.md)|Metadata for the enrollment failure trends report|
|[managedDeviceEnrollmentTopFailures function](../api/intune-shared-reportroot-manageddeviceenrollmenttopfailures.md)|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this entity.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportRoot"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot",
  "id": "String (identifier)"
}
```




