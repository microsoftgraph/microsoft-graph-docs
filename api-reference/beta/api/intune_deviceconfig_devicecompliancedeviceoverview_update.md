# Update deviceComplianceDeviceOverview

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/deviceStatusOverview/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md) object.
The following table shows the properties that are required when you create a [deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|numberOfPendingDevices|Int32|Number of pending devices|
|numberOfSucceededDevices|Int32|Number of succeeded devices|
|numberOfErrorDevices|Int32|Number of error devices|
|numberOfFailedDevices|Int32|Number of failed devices|
|lastUpdateTime|DateTimeOffset|Last update time|
|policyRevision|Int32|Version of the policy for that overview|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/deviceStatusOverview/
Content-type: application/json
Content-length: 213

{
  "numberOfPendingDevices": 6,
  "numberOfSucceededDevices": 8,
  "numberOfErrorDevices": 4,
  "numberOfFailedDevices": 5,
  "lastUpdateTime": "2017-01-01T00:02:03.0612494-08:00",
  "policyRevision": 14
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 331

{
  "@odata.type": "#microsoft.graph.deviceComplianceDeviceOverview",
  "id": "886f167b-167b-886f-7b16-6f887b166f88",
  "numberOfPendingDevices": 6,
  "numberOfSucceededDevices": 8,
  "numberOfErrorDevices": 4,
  "numberOfFailedDevices": 5,
  "lastUpdateTime": "2017-01-01T00:02:03.0612494-08:00",
  "policyRevision": 14
}
```



