---
title: "Update deviceManagementReportSchedule"
description: "Update the properties of a deviceManagementReportSchedule object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceManagementReportSchedule

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/reports/reportSchedules/{deviceManagementReportScheduleId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md) object.

The following table shows the properties that are required when you create the [deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md).

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



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceManagementReportSchedule](../resources/intune-reporting-devicemanagementreportschedule.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/reports/reportSchedules/{deviceManagementReportScheduleId}
Content-type: application/json
Content-length: 539

{
  "@odata.type": "#microsoft.graph.deviceManagementReportSchedule",
  "reportScheduleName": "Report Schedule Name value",
  "subject": "Subject value",
  "emails": [
    "Emails value"
  ],
  "recurrence": "daily",
  "startDateTime": "2016-12-31T23:58:46.7156189-08:00",
  "endDateTime": "2017-01-01T00:03:30.9241974-08:00",
  "userId": "User Id value",
  "reportName": "Report Name value",
  "filter": "Filter value",
  "select": [
    "Select value"
  ],
  "orderBy": [
    "Order By value"
  ],
  "format": "pdf"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 588

{
  "@odata.type": "#microsoft.graph.deviceManagementReportSchedule",
  "id": "00bb9785-9785-00bb-8597-bb008597bb00",
  "reportScheduleName": "Report Schedule Name value",
  "subject": "Subject value",
  "emails": [
    "Emails value"
  ],
  "recurrence": "daily",
  "startDateTime": "2016-12-31T23:58:46.7156189-08:00",
  "endDateTime": "2017-01-01T00:03:30.9241974-08:00",
  "userId": "User Id value",
  "reportName": "Report Name value",
  "filter": "Filter value",
  "select": [
    "Select value"
  ],
  "orderBy": [
    "Order By value"
  ],
  "format": "pdf"
}
```




