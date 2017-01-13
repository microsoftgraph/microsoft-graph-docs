# Update managedDeviceOverview> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.
Update the properties of a [managedDeviceOverview](../resources/intune_onboarding_manageddeviceoverview.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementManagedDevices.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /managedDeviceOverview
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [managedDeviceOverview](../resources/intune_onboarding_manageddeviceoverview.md) object.
The following table shows the properties that are required when you create a [managedDeviceOverview](../resources/intune_onboarding_manageddeviceoverview.md).

|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|enrolledDeviceCount|Int32|Total enrolled device count. Does not include PC devices managed via Intune PC Agent|
|mdmEnrolledCount|Int32|The number of devices enrolled in MDM|
|dualEnrolledDeviceCount|Int32|The number of devices enrolled in both MDM and EAS|
|deviceOperatingSystemSummary|[deviceOperatingSystemSummary](../resources/intune_onboarding_deviceoperatingsystemsummary.md)|Device operating system summary.|



### Response
If successful, this method returns a `200 OK` response code and an updated [managedDeviceOverview](../resources/intune_onboarding_manageddeviceoverview.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/managedDeviceOverview
Content-type: application/json
Content-length: 328

{
  "enrolledDeviceCount": 19,
  "mdmEnrolledCount": 16,
  "dualEnrolledDeviceCount": 23,
  "deviceOperatingSystemSummary": {
    "@odata.type": "microsoft.graph.deviceOperatingSystemSummary",
    "androidCount": 12,
    "iosCount": 8,
    "macOSCount": 10,
    "windowsMobileCount": 18,
    "windowsCount": 12
  }
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 437

{
  "@odata.type": "#microsoft.graph.managedDeviceOverview",
  "id": "42a91653-1653-42a9-5316-a9425316a942",
  "enrolledDeviceCount": 19,
  "mdmEnrolledCount": 16,
  "dualEnrolledDeviceCount": 23,
  "deviceOperatingSystemSummary": {
    "@odata.type": "microsoft.graph.deviceOperatingSystemSummary",
    "androidCount": 12,
    "iosCount": 8,
    "macOSCount": 10,
    "windowsMobileCount": 18,
    "windowsCount": 12
  }
}
```



