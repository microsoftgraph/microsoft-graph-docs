---
title: "comanagedDevicesSummary resource type"
description: "Summary data for co managed devices"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# comanagedDevicesSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Summary data for co managed devices

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inventoryCount|Int32|Number of devices with Inventory swung-over. This property is read-only.|
|compliancePolicyCount|Int32|Number of devices with CompliancePolicy swung-over. This property is read-only.|
|resourceAccessCount|Int32|Number of devices with ResourceAccess swung-over. This property is read-only.|
|configurationSettingsCount|Int32|Number of devices with ConfigurationSettings swung-over. This property is read-only.|
|windowsUpdateForBusinessCount|Int32|Number of devices with WindowsUpdateForBusiness swung-over. This property is read-only.|
|endpointProtectionCount|Int32|Number of devices with EndpointProtection swung-over. This property is read-only.|
|modernAppsCount|Int32|Number of devices with ModernApps swung-over. This property is read-only.|
|officeAppsCount|Int32|Number of devices with OfficeApps swung-over. This property is read-only.|
|totalComanagedCount|Int32|Number of Co-Managed Devices. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.comanagedDevicesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.comanagedDevicesSummary",
  "inventoryCount": 1024,
  "compliancePolicyCount": 1024,
  "resourceAccessCount": 1024,
  "configurationSettingsCount": 1024,
  "windowsUpdateForBusinessCount": 1024,
  "endpointProtectionCount": 1024,
  "modernAppsCount": 1024,
  "officeAppsCount": 1024,
  "totalComanagedCount": 1024
}
```




