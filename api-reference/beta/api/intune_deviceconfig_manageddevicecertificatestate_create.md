# Create managedDeviceCertificateState

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.iosScepCertificateProfile/managedDeviceCertificateStates/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.macOSScepCertificateProfile/managedDeviceCertificateStates/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.androidScepCertificateProfile/managedDeviceCertificateStates/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windows81SCEPCertificateProfile/managedDeviceCertificateStates/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/identityCertificate//microsoft.graph.androidForWorkScepCertificateProfile/managedDeviceCertificateStates/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsPhone81VpnConfiguration/identityCertificate//microsoft.graph.windowsPhone81SCEPCertificateProfile/managedDeviceCertificateStates/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a managedDeviceCertificateState object.
The following table shows the properties that are required when you create a managedDeviceCertificateState.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|devicePlatform|String|Device platform Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`.|
|certificateKeyUsage|String|Key usage Possible values are: `keyEncipherment`, `digitalSignature`.|
|certificateProfileDisplayName|String|Certificate profile display name|
|deviceDisplayName|String|Device display name|
|userDisplayName|String|User display name|
|serverUrl|String|Server URL|
|certificateExpirationDateTime|DateTimeOffset|Certificate expiry date|
|lastCertificateStateChangeDateTime|DateTimeOffset|Last certificate issuance state change|
|certificateIssuer|String|Issuer|
|certificateThumbprint|String|Thumbprint|
|certificateSerialNumber|String|Serial number|
|certificateKeyLength|Int32|Key length|
|enhancedKeyUsage|String|Extended key usage|



## Response
If successful, this method returns a `201 Created` response code and a [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.iosScepCertificateProfile/managedDeviceCertificateStates/
Content-type: application/json
Content-length: 795

{
  "@odata.type": "#microsoft.graph.managedDeviceCertificateState",
  "devicePlatform": "androidForWork",
  "certificateKeyUsage": "digitalSignature",
  "certificateProfileDisplayName": "Certificate Profile Display Name value",
  "deviceDisplayName": "Device Display Name value",
  "userDisplayName": "User Display Name value",
  "serverUrl": "https://example.com/serverUrl/",
  "certificateExpirationDateTime": "2017-01-01T00:02:14.9489247-08:00",
  "lastCertificateStateChangeDateTime": "2017-01-01T00:01:10.7144639-08:00",
  "certificateIssuer": "Certificate Issuer value",
  "certificateThumbprint": "Certificate Thumbprint value",
  "certificateSerialNumber": "Certificate Serial Number value",
  "certificateKeyLength": 4,
  "enhancedKeyUsage": "Enhanced Key Usage value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 844

{
  "@odata.type": "#microsoft.graph.managedDeviceCertificateState",
  "id": "d99bc884-c884-d99b-84c8-9bd984c89bd9",
  "devicePlatform": "androidForWork",
  "certificateKeyUsage": "digitalSignature",
  "certificateProfileDisplayName": "Certificate Profile Display Name value",
  "deviceDisplayName": "Device Display Name value",
  "userDisplayName": "User Display Name value",
  "serverUrl": "https://example.com/serverUrl/",
  "certificateExpirationDateTime": "2017-01-01T00:02:14.9489247-08:00",
  "lastCertificateStateChangeDateTime": "2017-01-01T00:01:10.7144639-08:00",
  "certificateIssuer": "Certificate Issuer value",
  "certificateThumbprint": "Certificate Thumbprint value",
  "certificateSerialNumber": "Certificate Serial Number value",
  "certificateKeyLength": 4,
  "enhancedKeyUsage": "Enhanced Key Usage value"
}
```



