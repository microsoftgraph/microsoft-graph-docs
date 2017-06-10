# List windows10WindowsInformationProtectionConfigurations

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

List properties and relationships of the [windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md) objects.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/deviceConfigurations/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md) objects in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 2151

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windows10WindowsInformationProtectionConfiguration",
      "id": "8888861b-861b-8888-1b86-88881b868888",
      "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
      "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
      "description": "Description value",
      "displayName": "Display Name value",
      "version": 7,
      "appRules": [
        {
          "@odata.type": "microsoft.graph.windowsInformationProtectionAppRule",
          "title": "Title value",
          "mode": "exempt",
          "template": {
            "@odata.type": "microsoft.graph.windowsInformationProtectionAppRuleStoreAppTemplate",
            "publisher": "Publisher value",
            "productName": "Product Name value"
          }
        }
      ],
      "enforcementMode": "override",
      "corporateIdentities": [
        "Corporate Identities value"
      ],
      "corporateNetworkLocations": [
        {
          "@odata.type": "microsoft.graph.windowsInformationProtectionCorporateNetworkLocation",
          "name": "Name value",
          "protectedLocation": {
            "@odata.type": "microsoft.graph.windowsInformationProtectionProtectedLocationEnterpriseCloudResources",
            "values": [
              {
                "@odata.type": "microsoft.graph.enterpriseCloudResource",
                "address": "Address value",
                "proxyServerUri": "Proxy Server Uri value"
              }
            ]
          }
        }
      ],
      "enterpriseProxyServersIsAuthoritative": true,
      "enterpriseIPRangesIsAuthoritative": true,
      "dataRecoveryCertificate": {
        "@odata.type": "microsoft.graph.windowsInformationProtectionDataRecoveryCertificate",
        "dataRecoveryCertificate": "ZGF0YVJlY292ZXJ5Q2VydGlmaWNhdGU=",
        "certificateFileName": "Certificate File Name value"
      },
      "allowUserDecryption": true,
      "requireProtectionUnderLockConfiguration": true,
      "revokeOnUnenroll": true,
      "allowWindowsSearch": true,
      "showIcon": true
    }
  ]
}
```



