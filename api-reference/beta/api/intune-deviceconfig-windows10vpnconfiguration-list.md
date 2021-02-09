---
title: "List windows10VpnConfigurations"
description: "List properties and relationships of the windows10VpnConfiguration objects."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# List windows10VpnConfigurations

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [windows10VpnConfiguration](../resources/intune-deviceconfig-windows10vpnconfiguration.md) objects.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/deviceConfigurations
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsDomainJoinConfiguration/networkAccessConfigurations
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [windows10VpnConfiguration](../resources/intune-deviceconfig-windows10vpnconfiguration.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 5260

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windows10VpnConfiguration",
      "id": "c23c9727-9727-c23c-2797-3cc227973cc2",
      "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
      "roleScopeTagIds": [
        "Role Scope Tag Ids value"
      ],
      "supportsScopeTags": true,
      "deviceManagementApplicabilityRuleOsEdition": {
        "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsEdition",
        "osEditionTypes": [
          "windows10EnterpriseN"
        ],
        "name": "Name value",
        "ruleType": "exclude"
      },
      "deviceManagementApplicabilityRuleOsVersion": {
        "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsVersion",
        "minOSVersion": "Min OSVersion value",
        "maxOSVersion": "Max OSVersion value",
        "name": "Name value",
        "ruleType": "exclude"
      },
      "deviceManagementApplicabilityRuleDeviceMode": {
        "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleDeviceMode",
        "deviceMode": "sModeConfiguration",
        "name": "Name value",
        "ruleType": "exclude"
      },
      "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
      "description": "Description value",
      "displayName": "Display Name value",
      "version": 7,
      "connectionName": "Connection Name value",
      "servers": [
        {
          "@odata.type": "microsoft.graph.vpnServer",
          "description": "Description value",
          "address": "Address value",
          "isDefaultServer": true
        }
      ],
      "customXml": "Y3VzdG9tWG1s",
      "profileTarget": "device",
      "connectionType": "f5EdgeClient",
      "enableSplitTunneling": true,
      "enableAlwaysOn": true,
      "enableDeviceTunnel": true,
      "enableDnsRegistration": true,
      "dnsSuffixes": [
        "Dns Suffixes value"
      ],
      "authenticationMethod": "usernameAndPassword",
      "rememberUserCredentials": true,
      "enableConditionalAccess": true,
      "enableSingleSignOnWithAlternateCertificate": true,
      "singleSignOnEku": {
        "@odata.type": "microsoft.graph.extendedKeyUsage",
        "name": "Name value",
        "objectIdentifier": "Object Identifier value"
      },
      "singleSignOnIssuerHash": "Single Sign On Issuer Hash value",
      "eapXml": "ZWFwWG1s",
      "proxyServer": {
        "@odata.type": "microsoft.graph.windows10VpnProxyServer",
        "automaticConfigurationScriptUrl": "https://example.com/automaticConfigurationScriptUrl/",
        "address": "Address value",
        "port": 4,
        "bypassProxyServerForLocalAddress": true
      },
      "associatedApps": [
        {
          "@odata.type": "microsoft.graph.windows10AssociatedApps",
          "appType": "universal",
          "identifier": "Identifier value"
        }
      ],
      "onlyAssociatedAppsCanUseConnection": true,
      "windowsInformationProtectionDomain": "Windows Information Protection Domain value",
      "trafficRules": [
        {
          "@odata.type": "microsoft.graph.vpnTrafficRule",
          "name": "Name value",
          "protocols": 9,
          "localPortRanges": [
            {
              "@odata.type": "microsoft.graph.numberRange",
              "lowerNumber": 11,
              "upperNumber": 11
            }
          ],
          "remotePortRanges": [
            {
              "@odata.type": "microsoft.graph.numberRange",
              "lowerNumber": 11,
              "upperNumber": 11
            }
          ],
          "localAddressRanges": [
            {
              "@odata.type": "microsoft.graph.iPv4Range",
              "lowerAddress": "Lower Address value",
              "upperAddress": "Upper Address value"
            }
          ],
          "remoteAddressRanges": [
            {
              "@odata.type": "microsoft.graph.iPv4Range",
              "lowerAddress": "Lower Address value",
              "upperAddress": "Upper Address value"
            }
          ],
          "appId": "App Id value",
          "appType": "desktop",
          "routingPolicyType": "splitTunnel",
          "claims": "Claims value"
        }
      ],
      "routes": [
        {
          "@odata.type": "microsoft.graph.vpnRoute",
          "destinationPrefix": "Destination Prefix value",
          "prefixSize": 10
        }
      ],
      "dnsRules": [
        {
          "@odata.type": "microsoft.graph.vpnDnsRule",
          "name": "Name value",
          "servers": [
            "Servers value"
          ],
          "proxyServerUri": "Proxy Server Uri value",
          "autoTrigger": true,
          "persistent": true
        }
      ],
      "trustedNetworkDomains": [
        "Trusted Network Domains value"
      ],
      "cryptographySuite": {
        "@odata.type": "microsoft.graph.cryptographySuite",
        "encryptionMethod": "des",
        "integrityCheckMethod": "sha1_96",
        "dhGroup": "group2",
        "cipherTransformConstants": "des",
        "authenticationTransformConstants": "sha1_96",
        "pfsGroup": "pfs2"
      }
    }
  ]
}
```




