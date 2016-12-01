# Create editionUpgradeConfiguration
Create a new [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionUpgradeConfiguration.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceConfigurations/<id>
POST /deviceManagement/deviceConfigurations/<id>/groupAssignments/<id>/deviceConfiguration
POST /deviceConfigurationAssignments/<id>/deviceConfiguration
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a editionUpgradeConfiguration object.
The following table shows the properties that are required when you create a editionUpgradeConfiguration.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|licenseType|String|Edition Upgrade License Type. Possible values are: `productKey`, `licenseFile`.|
|targetEdition|String|Edition Upgrade Target Edition. Possible values are: `windows10Enterprise`, `windows10EnterpriseN`, `windows10Education`, `windows10EducationN`, `windows10MobileEnterprise`, `windows10HolographicEnterprise`.|
|license|String|Edition Upgrade License File Content.|
|productKey|String|Edition Upgrade Product Key.|



### Response
If successful, this method returns a `201 Created` response code and a [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionUpgradeConfiguration.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/<id>
Content-type: application/json
Content-length: 375

{
  "@odata.type": "#microsoft.graph.editionUpgradeConfiguration",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "licenseType": "licenseFile",
  "targetEdition": "windows10EnterpriseN",
  "license": "License value",
  "productKey": "Product Key value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 483

{
  "@odata.type": "#microsoft.graph.editionUpgradeConfiguration",
  "id": "f39fc471-c471-f39f-71c4-9ff371c49ff3",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "licenseType": "licenseFile",
  "targetEdition": "windows10EnterpriseN",
  "license": "License value",
  "productKey": "Product Key value"
}
```



