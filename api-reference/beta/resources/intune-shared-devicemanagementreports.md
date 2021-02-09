---
title: "deviceManagementReports resource type"
description: "Singleton entity that acts as a container for all reports functionality."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementReports resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all reports functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagementReports](../api/intune-reporting-devicemanagementreports-get.md)|[deviceManagementReports](../resources/intune-shared-devicemanagementreports.md)|Read properties and relationships of the [deviceManagementReports](../resources/intune-shared-devicemanagementreports.md) object.|
|[Update deviceManagementReports](../api/intune-reporting-devicemanagementreports-update.md)|[deviceManagementReports](../resources/intune-shared-devicemanagementreports.md)|Update the properties of a [deviceManagementReports](../resources/intune-shared-devicemanagementreports.md) object.|
|[getDeviceNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getdevicenoncompliancereport.md)|Stream|Not yet documented|
|[getPolicyNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getpolicynoncompliancereport.md)|Stream|Not yet documented|
|[getPolicyNonComplianceMetadata action](../api/intune-reporting-devicemanagementreports-getpolicynoncompliancemetadata.md)|Stream|Not yet documented|
|[getPolicyNonComplianceSummaryReport action](../api/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport.md)|Stream|Not yet documented|
|[getSettingNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getsettingnoncompliancereport.md)|Stream|Not yet documented|
|[getReportFilters action](../api/intune-reporting-devicemanagementreports-getreportfilters.md)|Stream|Not yet documented|
|[getHistoricalReport action](../api/intune-reporting-devicemanagementreports-gethistoricalreport.md)|Stream|Not yet documented|
|[getCachedReport action](../api/intune-reporting-devicemanagementreports-getcachedreport.md)|Stream|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this entity|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|cachedReportConfigurations|[deviceManagementCachedReportConfiguration](../resources/intune-reporting-devicemanagementcachedreportconfiguration.md) collection|Entity representing the configuration of a cached report|
|exportJobs|[deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md) collection|Entity representing a job to export a report|
|reportSchedules|[deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md) collection|Entity representing a schedule for which reports are delivered|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementReports"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementReports",
  "id": "String (identifier)"
}
```




