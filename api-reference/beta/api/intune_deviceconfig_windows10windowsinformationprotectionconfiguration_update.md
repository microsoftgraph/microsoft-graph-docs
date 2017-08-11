# Update windows10WindowsInformationProtectionConfiguration

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}
PATCH /deviceConfigurationAssignments/{deviceConfigurationAssignmentsId}/deviceConfiguration/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/groupAssignments/{deviceConfigurationGroupAssignmentId}/deviceConfiguration/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md) object.
The following table shows the properties that are required when you create a [windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|appRules|[windowsInformationProtectionAppRule](../resources/intune_deviceconfig_windowsinformationprotectionapprule.md) collection|App Rules.|
|enforcementMode|String|App enforcement mode for paste/drop/share actions. Possible values are: `block`, `override`, `silent`, `off`.|
|corporateIdentities|String collection|Corporate Identities. (IP address or FQDN)|
|corporateNetworkLocations|[windowsInformationProtectionCorporateNetworkLocation](../resources/intune_deviceconfig_windowsinformationprotectioncorporatenetworklocation.md) collection|Define your corporate network boundary to be protected by Windows Information Protection.|
|enterpriseProxyServersIsAuthoritative|Boolean|Enterprise Proxy Servers list is authoritative (do not auto-detect).|
|enterpriseIPRangesIsAuthoritative|Boolean|Enterprise IP Range list is authoritative (do not auto-detect).|
|dataRecoveryCertificate|[windowsInformationProtectionDataRecoveryCertificate](../resources/intune_deviceconfig_windowsinformationprotectiondatarecoverycertificate.md)|Data Recovery Certificate.|
|allowUserDecryption|Boolean|Allow user descryption.|
|requireProtectionUnderLockConfiguration|Boolean|Prevent corporate data from being accessed by apps when the device is locked. Applies only to Windows 10 Mobile.|
|revokeOnUnenroll|Boolean|Revoke encryption keys on unenroll.|
|allowWindowsSearch|Boolean|Allow Windows Search to search encrypted corporate data and Store apps.|
|showIcon|Boolean|Show the Windows Information Protection icon overlay.|

## Response

If successful, this method returns a `200 OK` response code and an updated [windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{deviceConfigurationId}
Content-type: application/json
Content-length: 1717

{
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
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
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1914

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
```



