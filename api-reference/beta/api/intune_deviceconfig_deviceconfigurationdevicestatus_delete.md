# Delete deviceConfigurationDeviceStatus
Deletes a [deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md).
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /deviceManagement/deviceConfigurations/{id}/deviceStatuses/{id}
DELETE /deviceManagement/deviceConfigurations/{id}/rootCertificate//deviceStatuses/{id}
DELETE /deviceManagement/deviceConfigurations/{id}/microsoft.graph.iosScepCertificateProfile/rootCertificate//deviceStatuses/{id}
DELETE /deviceManagement/deviceConfigurations/{id}/microsoft.graph.macOSScepCertificateProfile/rootCertificate//deviceStatuses/{id}
DELETE /deviceManagement/deviceConfigurations/{id}/microsoft.graph.windows10VpnConfiguration/identityCertificate//deviceStatuses/{id}
DELETE /deviceManagement/deviceConfigurations/{id}/microsoft.graph.windowsPhone81VpnConfiguration/identityCertificate//deviceStatuses/{id}
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `204 No Content` response code.

### Example
##### Request
Here is an example of the request.
```http
DELETE https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{id}/deviceStatuses/{id}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```



