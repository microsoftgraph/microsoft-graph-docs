# Update windowsUpdateForBusinessConfiguration
Update the properties of a [windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceConfigurations/<id>
PATCH /deviceManagement/deviceConfigurations/<id>/groupAssignments/<id>/deviceConfiguration
PATCH /deviceConfigurationAssignments/<id>/deviceConfiguration
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md) object.
The following table shows the properties that are required when you create a [windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|deliveryOptimizationMode|String|Delivery Optimization Mode Possible values are: `userDefined`, `httpOnly`, `httpWithPeeringNat`, `httpWithPeeringPrivateGroup`, `httpWithInternetPeering`, `simpleDownload`, `bypassMode`.|
|prereleaseFeatures|String|The pre-release features. Possible values are: `userDefined`, `settingsOnly`, `settingsAndExperimentations`, `notAllowed`.|
|automaticUpdateMode|String|Automatic update mode. Possible values are: `userDefined`, `notifyDownload`, `autoInstallAtMaintenanceTime`, `autoInstallAndRebootAtMaintenanceTime`, `autoInstallAndRebootAtScheduledTime`, `autoInstallAndRebootWithoutEndUserControl`.|
|microsoftUpdateServiceAllowed|Boolean|Allow Microsoft Update Service|
|driversExcluded|Boolean|Exclude Windows update Drivers|
|installationSchedule|[windowsUpdateInstallScheduleType](../resources/intune_deviceconfig_windowsUpdateInstallScheduleType.md)|Installation schedule|
|qualityUpdatesDeferralPeriodInDays|Int32|Defer Quality Updates by these many days|
|featureUpdatesDeferralPeriodInDays|Int32|Defer Feature Updates by these many days|
|qualityUpdatesPaused|Boolean|Pause Quality Updates|
|featureUpdatesPaused|Boolean|Pause Feature Updates|
|qualityUpdatesPauseExpiryDateTime|DateTimeOffset|Quality Updates Pause Expiry datetime|
|featureUpdatesPauseExpiryDateTime|DateTimeOffset|Feature Updates Pause Expiry datetime|
|businessReadyUpdatesOnly|String|Business ready updates only or regular updates allowed too Possible values are: `userDefined`, `all`, `businessReadyOnly`.|



### Response
If successful, this method returns a `200 OK` response code and an updated [windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/<id>
Content-type: application/json
Content-length: 814

{
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "deliveryOptimizationMode": "httpOnly",
  "prereleaseFeatures": "settingsOnly",
  "automaticUpdateMode": "notifyDownload",
  "microsoftUpdateServiceAllowed": true,
  "driversExcluded": true,
  "installationSchedule": {
    "@odata.type": "microsoft.graph.windowsUpdateInstallScheduleType"
  },
  "qualityUpdatesDeferralPeriodInDays": 34,
  "featureUpdatesDeferralPeriodInDays": 34,
  "qualityUpdatesPaused": true,
  "featureUpdatesPaused": true,
  "qualityUpdatesPauseExpiryDateTime": "2017-01-01T00:00:22.9594683-08:00",
  "featureUpdatesPauseExpiryDateTime": "2016-12-31T23:58:08.068669-08:00",
  "businessReadyUpdatesOnly": "all"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 998

{
  "@odata.type": "#microsoft.graph.windowsUpdateForBusinessConfiguration",
  "id": "4928dd6a-dd6a-4928-6add-28496add2849",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "deliveryOptimizationMode": "httpOnly",
  "prereleaseFeatures": "settingsOnly",
  "automaticUpdateMode": "notifyDownload",
  "microsoftUpdateServiceAllowed": true,
  "driversExcluded": true,
  "installationSchedule": {
    "@odata.type": "microsoft.graph.windowsUpdateInstallScheduleType"
  },
  "qualityUpdatesDeferralPeriodInDays": 34,
  "featureUpdatesDeferralPeriodInDays": 34,
  "qualityUpdatesPaused": true,
  "featureUpdatesPaused": true,
  "qualityUpdatesPauseExpiryDateTime": "2017-01-01T00:00:22.9594683-08:00",
  "featureUpdatesPauseExpiryDateTime": "2016-12-31T23:58:08.068669-08:00",
  "businessReadyUpdatesOnly": "all"
}
```



