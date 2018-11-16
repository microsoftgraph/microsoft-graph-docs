# windowsWifiEnterpriseEAPConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This entity provides descriptions of the declared methods, properties and relationships exposed by the Wifi CSP.

Inherits from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsWifiEnterpriseEAPConfigurations](../api/intune_deviceconfig_windowswifienterpriseeapconfiguration_list.md)|[windowsWifiEnterpriseEAPConfiguration](../resources/intune_deviceconfig_windowswifienterpriseeapconfiguration.md) collection|List properties and relationships of the [windowsWifiEnterpriseEAPConfiguration](../resources/intune_deviceconfig_windowswifienterpriseeapconfiguration.md) objects.|
|[Get windowsWifiEnterpriseEAPConfiguration](../api/intune_deviceconfig_windowswifienterpriseeapconfiguration_get.md)|[windowsWifiEnterpriseEAPConfiguration](../resources/intune_deviceconfig_windowswifienterpriseeapconfiguration.md)|Read properties and relationships of the [windowsWifiEnterpriseEAPConfiguration](../resources/intune_deviceconfig_windowswifienterpriseeapconfiguration.md) object.|
|[Create windowsWifiEnterpriseEAPConfiguration](../api/intune_deviceconfig_windowswifienterpriseeapconfiguration_create.md)|[windowsWifiEnterpriseEAPConfiguration](../resources/intune_deviceconfig_windowswifienterpriseeapconfiguration.md)|Create a new [windowsWifiEnterpriseEAPConfiguration](../resources/intune_deviceconfig_windowswifienterpriseeapconfiguration.md) object.|
|[Delete windowsWifiEnterpriseEAPConfiguration](../api/intune_deviceconfig_windowswifienterpriseeapconfiguration_delete.md)|None|Deletes a [windowsWifiEnterpriseEAPConfiguration](../resources/intune_deviceconfig_windowswifienterpriseeapconfiguration.md).|
|[Update windowsWifiEnterpriseEAPConfiguration](../api/intune_deviceconfig_windowswifienterpriseeapconfiguration_update.md)|[windowsWifiEnterpriseEAPConfiguration](../resources/intune_deviceconfig_windowswifienterpriseeapconfiguration.md)|Update the properties of a [windowsWifiEnterpriseEAPConfiguration](../resources/intune_deviceconfig_windowswifienterpriseeapconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|supportsScopeTags|Boolean|Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|preSharedKey|String|This is the pre-shared key for WPA Personal Wi-Fi network. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|
|wifiSecurityType|[wiFiSecurityType](../resources/intune_deviceconfig_wifisecuritytype.md)|Specify the Wifi Security Type. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md). Possible values are: `open`, `wpaPersonal`, `wpaEnterprise`, `wep`, `wpa2Personal`, `wpa2Enterprise`.|
|meteredConnectionLimit|[meteredConnectionLimitType](../resources/intune_deviceconfig_meteredconnectionlimittype.md)|Specify the metered connection limit type for the wifi connection. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md). Possible values are: `unrestricted`, `fixed`, `variable`.|
|ssid|String|Specify the SSID of the wifi connection. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|
|networkName|String|Specify the network configuration name. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|
|connectAutomatically|Boolean|Specify whether the wifi connection should connect automatically when in range. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|
|connectToPreferredNetwork|Boolean|Specify whether the wifi connection should connect to more preferred networks when already connected to this one.  Requires ConnectAutomatically to be true. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|
|connectWhenNetworkNameIsHidden|Boolean|Specify whether the wifi connection should connect automatically even when the SSID is not broadcasting. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|
|proxySetting|[wiFiProxySetting](../resources/intune_deviceconfig_wifiproxysetting.md)|Specify the proxy setting for Wi-Fi configuration Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md). Possible values are: `none`, `manual`, `automatic`.|
|proxyManualAddress|String|Specify the IP address for the proxy server. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|
|proxyManualPort|Int32|Specify the port for the proxy server. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|
|proxyAutomaticConfigurationUrl|String|Specify the URL for the proxy server configuration script. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|
|forceFIPSCompliance|Boolean|Specify whether to force FIPS compliance. Inherited from [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|
|networkSingleSignOn|[networkSingleSignOnType](../resources/intune_deviceconfig_networksinglesignontype.md)|Specify the network single sign on type. Possible values are: `disabled`, `prelogon`, `postlogon`.|
|maximumAuthenticationTimeoutInSeconds|Int32|Specify maximum authentication timeout (in seconds).  Valid range: 1-120|
|promptForAdditionalAuthenticationCredentials|Boolean|Specify whether the wifi connection should prompt for additional authentication credentials.|
|enablePairwiseMasterKeyCaching|Boolean|Specify whether the wifi connection should enable pairwise master key caching.|
|maximumPairwiseMasterKeyCacheTimeInMinutes|Int32|Specify maximum pairwise master key cache time (in minutes).  Valid range: 5-1440|
|maximumNumberOfPairwiseMasterKeysInCache|Int32|Specify maximum number of pairwise master keys in cache.  Valid range: 1-255|
|enablePreAuthentication|Boolean|Specify whether pre-authentication should be enabled.|
|maximumPreAuthenticationAttempts|Int32|Specify maximum pre-authentication attempts.  Valid range: 1-16|
|eapType|[eapType](../resources/intune_deviceconfig_eaptype.md)|Extensible Authentication Protocol (EAP). Indicates the type of EAP protocol set on the the Wi-Fi endpoint (router). Possible values are: `eapTls`, `leap`, `eapSim`, `eapTtls`, `peap`, `eapFast`.|
|trustedServerCertificateNames|String collection|Specify trusted server certificate names.|
|authenticationMethod|[wiFiAuthenticationMethod](../resources/intune_deviceconfig_wifiauthenticationmethod.md)|Specify the authentication method. Possible values are: `certificate`, `usernameAndPassword`.|
|innerAuthenticationProtocolForEAPTTLS|[nonEapAuthenticationMethodForEapTtlsType](../resources/intune_deviceconfig_noneapauthenticationmethodforeapttlstype.md)|Specify inner authentication protocol for EAP TTLS. Possible values are: `unencryptedPassword`, `challengeHandshakeAuthenticationProtocol`, `microsoftChap`, `microsoftChapVersionTwo`.|
|outerIdentityPrivacyTemporaryValue|String|Specify the string to replace usernames for privacy when using EAP TTLS or PEAP.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|assignments|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation status by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune_deviceconfig_settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|rootCertificatesForServerValidation|[windows81TrustedRootCertificate](../resources/intune_deviceconfig_windows81trustedrootcertificate.md) collection|Specify root certificate for server validation.|
|identityCertificateForClientAuthentication|[windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md)|Specify identity certificate for client authentication.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsWifiEnterpriseEAPConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsWifiEnterpriseEAPConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "supportsScopeTags": true,
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "preSharedKey": "String",
  "wifiSecurityType": "String",
  "meteredConnectionLimit": "String",
  "ssid": "String",
  "networkName": "String",
  "connectAutomatically": true,
  "connectToPreferredNetwork": true,
  "connectWhenNetworkNameIsHidden": true,
  "proxySetting": "String",
  "proxyManualAddress": "String",
  "proxyManualPort": 1024,
  "proxyAutomaticConfigurationUrl": "String",
  "forceFIPSCompliance": true,
  "networkSingleSignOn": "String",
  "maximumAuthenticationTimeoutInSeconds": 1024,
  "promptForAdditionalAuthenticationCredentials": true,
  "enablePairwiseMasterKeyCaching": true,
  "maximumPairwiseMasterKeyCacheTimeInMinutes": 1024,
  "maximumNumberOfPairwiseMasterKeysInCache": 1024,
  "enablePreAuthentication": true,
  "maximumPreAuthenticationAttempts": 1024,
  "eapType": "String",
  "trustedServerCertificateNames": [
    "String"
  ],
  "authenticationMethod": "String",
  "innerAuthenticationProtocolForEAPTTLS": "String",
  "outerIdentityPrivacyTemporaryValue": "String"
}
```





