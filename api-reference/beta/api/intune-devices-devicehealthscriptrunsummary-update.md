---
title: "Update deviceHealthScriptRunSummary"
description: "Update the properties of a deviceHealthScriptRunSummary object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceHealthScriptRunSummary

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceHealthScriptRunSummary](../resources/intune-devices-devicehealthscriptrunsummary.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/deviceHealthScripts/{deviceHealthScriptId}/runSummary
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceHealthScriptRunSummary](../resources/intune-devices-devicehealthscriptrunsummary.md) object.

The following table shows the properties that are required when you create the [deviceHealthScriptRunSummary](../resources/intune-devices-devicehealthscriptrunsummary.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device health script run summary entity. This property is read-only.|
|noIssueDetectedDeviceCount|Int32|Number of devices for which the detection script did not find an issue and the device is healthy|
|issueDetectedDeviceCount|Int32|Number of devices for which the detection script found an issue|
|detectionScriptErrorDeviceCount|Int32|Number of devices on which the detection script execution encountered an error and did not complete|
|detectionScriptPendingDeviceCount|Int32|Number of devices which have not yet run the latest version of the device health script|
|detectionScriptNotApplicableDeviceCount|Int32|Number of devices for which the detection script was not applicable|
|issueRemediatedDeviceCount|Int32|Number of devices for which the remediation script was able to resolve the detected issue|
|remediationSkippedDeviceCount|Int32|Number of devices for which remediation was skipped|
|issueReoccurredDeviceCount|Int32|Number of devices for which the remediation script executed successfully but failed to resolve the detected issue|
|remediationScriptErrorDeviceCount|Int32|Number of devices for which the remediation script execution encountered an error and did not complete|
|lastScriptRunDateTime|DateTimeOffset|Last run time for the script across all devices|
|issueRemediatedCumulativeDeviceCount|Int32|Number of devices that were remediated over the last 30 days|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceHealthScriptRunSummary](../resources/intune-devices-devicehealthscriptrunsummary.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceHealthScripts/{deviceHealthScriptId}/runSummary
Content-type: application/json
Content-length: 543

{
  "@odata.type": "#microsoft.graph.deviceHealthScriptRunSummary",
  "noIssueDetectedDeviceCount": 10,
  "issueDetectedDeviceCount": 8,
  "detectionScriptErrorDeviceCount": 15,
  "detectionScriptPendingDeviceCount": 1,
  "detectionScriptNotApplicableDeviceCount": 7,
  "issueRemediatedDeviceCount": 10,
  "remediationSkippedDeviceCount": 13,
  "issueReoccurredDeviceCount": 10,
  "remediationScriptErrorDeviceCount": 1,
  "lastScriptRunDateTime": "2017-01-01T00:01:17.4310553-08:00",
  "issueRemediatedCumulativeDeviceCount": 4
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 592

{
  "@odata.type": "#microsoft.graph.deviceHealthScriptRunSummary",
  "id": "8221b043-b043-8221-43b0-218243b02182",
  "noIssueDetectedDeviceCount": 10,
  "issueDetectedDeviceCount": 8,
  "detectionScriptErrorDeviceCount": 15,
  "detectionScriptPendingDeviceCount": 1,
  "detectionScriptNotApplicableDeviceCount": 7,
  "issueRemediatedDeviceCount": 10,
  "remediationSkippedDeviceCount": 13,
  "issueReoccurredDeviceCount": 10,
  "remediationScriptErrorDeviceCount": 1,
  "lastScriptRunDateTime": "2017-01-01T00:01:17.4310553-08:00",
  "issueRemediatedCumulativeDeviceCount": 4
}
```




