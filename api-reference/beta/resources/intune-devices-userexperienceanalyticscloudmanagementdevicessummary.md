---
title: "userExperienceAnalyticsCloudManagementDevicesSummary resource type"
description: "The user experience work from anywhere Cloud management devices summary."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsCloudManagementDevicesSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience work from anywhere Cloud management devices summary.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|coManagedDeviceCount|Int32|Total number of  co-managed devices.|
|intuneDeviceCount|Int32|The count of intune devices that are not autopilot registerd.|
|tenantAttachDeviceCount|Int32|Total count of tenant attach devices.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsCloudManagementDevicesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsCloudManagementDevicesSummary",
  "coManagedDeviceCount": 1024,
  "intuneDeviceCount": 1024,
  "tenantAttachDeviceCount": 1024
}
```




