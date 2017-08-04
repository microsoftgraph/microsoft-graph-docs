# Update complianceSettingStateSummary

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/complianceSettingStateSummaries/{complianceSettingStateSummaryId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md) object.
The following table shows the properties that are required when you create a [complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md).

|Property|Type|Description|
|---|---|---|
|setting|String|The setting class name and property name.|
|settingName|String|Name of the setting.|
|instanceDisplayName|String|Name of setting instance that is being reported.|
|settingPlatform|String|Setting platform Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`.|
|platformType|String|Setting platform Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`.|
|id|String|Key of the entity.|
|unknownDeviceCount|Int32|Number of unknown devices|
|notApplicableDeviceCount|Int32|Number of not applicable devices|
|compliantDeviceCount|Int32|Number of compliant devices|
|remediatedDeviceCount|Int32|Number of remediated devices|
|nonCompliantDeviceCount|Int32|Number of NonCompliant devices|
|errorDeviceCount|Int32|Number of error devices|
|conflictDeviceCount|Int32|Number of conflict devices|



## Response
If successful, this method returns a `200 OK` response code and an updated [complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/complianceSettingStateSummaries/{complianceSettingStateSummaryId}
Content-type: application/json
Content-length: 419

{
  "setting": "Setting value",
  "settingName": "Setting Name value",
  "instanceDisplayName": "Instance Display Name value",
  "settingPlatform": "androidForWork",
  "platformType": "androidForWork",
  "unknownDeviceCount": 2,
  "notApplicableDeviceCount": 8,
  "compliantDeviceCount": 4,
  "remediatedDeviceCount": 5,
  "nonCompliantDeviceCount": 7,
  "errorDeviceCount": 0,
  "conflictDeviceCount": 3
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 536

{
  "@odata.type": "#microsoft.graph.complianceSettingStateSummary",
  "setting": "Setting value",
  "settingName": "Setting Name value",
  "instanceDisplayName": "Instance Display Name value",
  "settingPlatform": "androidForWork",
  "platformType": "androidForWork",
  "id": "21926cf1-6cf1-2192-f16c-9221f16c9221",
  "unknownDeviceCount": 2,
  "notApplicableDeviceCount": 8,
  "compliantDeviceCount": 4,
  "remediatedDeviceCount": 5,
  "nonCompliantDeviceCount": 7,
  "errorDeviceCount": 0,
  "conflictDeviceCount": 3
}
```



