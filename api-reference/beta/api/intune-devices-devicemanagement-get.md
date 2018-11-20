# Get deviceManagement

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Read properties and relationships of the [deviceManagement](../resources/intune-devices-devicemanagement.md) object.
## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.ReadWrite.All, DeviceManagementManagedDevices.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement
```

## Optional query parameters
This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.
## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [deviceManagement](../resources/intune-devices-devicemanagement.md) object in the response body.

## Example
### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 2702

{
  "value": {
    "@odata.type": "#microsoft.graph.deviceManagement",
    "id": "0b283420-3420-0b28-2034-280b2034280b",
    "subscriptionState": "active",
    "subscriptions": "intune",
    "managedDeviceCleanupSettings": {
      "@odata.type": "microsoft.graph.managedDeviceCleanupSettings",
      "deviceInactivityBeforeRetirementInDays": "Device Inactivity Before Retirement In Days value"
    },
    "adminConsent": {
      "@odata.type": "microsoft.graph.adminConsent",
      "shareAPNSData": "granted"
    },
    "deviceProtectionOverview": {
      "@odata.type": "microsoft.graph.deviceProtectionOverview",
      "totalReportedDeviceCount": 8,
      "inactiveThreatAgentDeviceCount": 14,
      "unknownStateThreatAgentDeviceCount": 2,
      "pendingSignatureUpdateDeviceCount": 1,
      "cleanDeviceCount": 0,
      "pendingFullScanDeviceCount": 10,
      "pendingRestartDeviceCount": 9,
      "pendingManualStepsDeviceCount": 13,
      "pendingOfflineScanDeviceCount": 13,
      "criticalFailuresDeviceCount": 11
    },
    "windowsMalwareOverview": {
      "@odata.type": "microsoft.graph.windowsMalwareOverview",
      "malwareDetectedDeviceCount": 10,
      "malwareStateSummary": [
        {
          "@odata.type": "microsoft.graph.windowsMalwareStateCount",
          "state": "actionFailed",
          "deviceCount": 11,
          "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00"
        }
      ],
      "malwareExecutionStateSummary": [
        {
          "@odata.type": "microsoft.graph.windowsMalwareExecutionStateCount",
          "executionState": "blocked",
          "deviceCount": 11,
          "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00"
        }
      ],
      "malwareCategorySummary": [
        {
          "@odata.type": "microsoft.graph.windowsMalwareCategoryCount",
          "category": "adware",
          "deviceCount": 11,
          "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00"
        }
      ],
      "malwareNameSummary": [
        {
          "@odata.type": "microsoft.graph.windowsMalwareNameCount",
          "malwareIdentifier": "Malware Identifier value",
          "name": "Name value",
          "deviceCount": 11,
          "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00"
        }
      ],
      "osVersionsSummary": [
        {
          "@odata.type": "microsoft.graph.osVersionCount",
          "osVersion": "Os Version value",
          "deviceCount": 11,
          "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00"
        }
      ]
    },
    "accountMoveCompletionDateTime": "2017-01-01T00:01:17.9006709-08:00"
  }
}
```





