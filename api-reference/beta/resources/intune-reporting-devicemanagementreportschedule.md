---
title: "deviceManagementReportSchedule resource type"
description: "Entity representing a schedule for which reports are delivered"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementReportSchedule resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity representing a schedule for which reports are delivered

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementReportSchedules](../api/intune-reporting-devicemanagementreportschedule-list.md)|[deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md) collection|List properties and relationships of the [deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md) objects.|
|[Get deviceManagementReportSchedule](../api/intune-reporting-devicemanagementreportschedule-get.md)|[deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md)|Read properties and relationships of the [deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md) object.|
|[Create deviceManagementReportSchedule](../api/intune-reporting-devicemanagementreportschedule-create.md)|[deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md)|Create a new [deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md) object.|
|[Delete deviceManagementReportSchedule](../api/intune-reporting-devicemanagementreportschedule-delete.md)|None|Deletes a [deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md).|
|[Update deviceManagementReportSchedule](../api/intune-reporting-devicemanagementreportschedule-update.md)|[deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md)|Update the properties of a [deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this entity|
|reportScheduleName|String|Name of the schedule|
|subject|String|Subject of the scheduled reports that are delivered|
|emails|String collection|Emails to which the scheduled reports are delivered|
|recurrence|[deviceManagementScheduledReportRecurrence](../resources/intune-reporting-devicemanagementscheduledreportrecurrence.md)|Frequency of scheduled report delivery. Possible values are: `none`, `daily`, `weekly`, `monthly`.|
|startDateTime|DateTimeOffset|Time that the delivery of the scheduled reports starts|
|endDateTime|DateTimeOffset|Time that the delivery of the scheduled reports ends|
|userId|String|The Id of the User who created the report|
|reportName|String|Name of the report|
|filter|String|Filters applied on the report|
|select|String collection|Columns selected from the report|
|orderBy|String collection|Ordering of columns in the report|
|format|[deviceManagementReportFileFormat](../resources/intune-reporting-devicemanagementreportfileformat.md)|Format of the scheduled report. Possible values are: `csv`, `pdf`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementReportSchedule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementReportSchedule",
  "id": "String (identifier)",
  "reportScheduleName": "String",
  "subject": "String",
  "emails": [
    "String"
  ],
  "recurrence": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "userId": "String",
  "reportName": "String",
  "filter": "String",
  "select": [
    "String"
  ],
  "orderBy": [
    "String"
  ],
  "format": "String"
}
```




