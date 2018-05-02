# Update deviceManagement

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [deviceManagement](../resources/intune_shared_devicemanagement.md) object.
## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission&nbsp;type&nbsp;(by&nbsp;workflow) | Permissions (from most to least privileged) |
|:---|:---|
| Delegated (work or school account) |
| &nbsp; &nbsp; Auditing | DeviceManagementApps.ReadWrite.All |
| &nbsp; &nbsp; Company terms | DeviceManagementServiceConfig.ReadWrite.All |
| &nbsp; &nbsp; Device configuration | DeviceManagementConfiguration.ReadWrite.All |
| &nbsp; &nbsp; Devices | DeviceManagementManagedDevices.ReadWrite.All |
| &nbsp; &nbsp; Enrollment | DeviceManagementServiceConfig.ReadWrite.All |
| &nbsp; &nbsp; Notification | DeviceManagementServiceConfig.ReadWrite.All |
| &nbsp; &nbsp; Onboarding | DeviceManagementServiceConfig.ReadWrite.All |
| &nbsp; &nbsp; RBAC | DeviceManagementRBAC.ReadWrite.All |
| &nbsp; &nbsp; Remote assistance | DeviceManagementServiceConfig.ReadWrite.All |
| &nbsp; &nbsp; Telecom expense management | DeviceManagementServiceConfig.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.|
| Application | Not supported. |

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceManagement](../resources/intune_shared_devicemanagement.md) object.

The following table shows the properties that are required when you create the [deviceManagement](../resources/intune_shared_devicemanagement.md).

|Property|Type|Description|
|:---|:---|:---|
|accountMoveCompletionDateTime|DateTimeOffset|The date & time when tenant data moved between scaleunits.|
|id|String|Unique Identifier for the device|
|intuneAccountId|Guid|Intune Account ID for given tenant|
|intuneBrand|[intuneBrand](../resources/intune_onboarding_intunebrand.md)|intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.|
|maximumDepTokens|Int32|Maximum number of dep tokens allowed per-tenant.|
|settings|[deviceManagementSettings](../resources/intune_deviceconfig_devicemanagementsettings.md)|Account level settings.|
|subscriptionState|[deviceManagementSubscriptionState](../resources/intune_devices_devicemanagementsubscriptionstate.md)|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|

Request body property support varies according to workflow.

## Response
If successful, this method returns a `200 OK` response code and an updated [deviceManagement](../resources/intune_shared_devicemanagement.md) object in the response body.

## Example
### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement
Content-type: application/json
Content-length: 751

{
  "subscriptionState": "active",
  "subscriptions": "intune",
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
  "accountMoveCompletionDateTime": "2017-01-01T00:01:17.9006709-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. Returned properties vary according to workflow and context.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 855

{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "0b283420-3420-0b28-2034-280b2034280b",
  "subscriptionState": "active",
  "subscriptions": "intune",
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
  "accountMoveCompletionDateTime": "2017-01-01T00:01:17.9006709-08:00"
}
```



