# macOSEnterpriseWiFiConfiguration resource type> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

MacOS Wi-Fi WPA-Enterprise/WPA2-Enterprise configuration profile.

Inherits from [macOSWiFiConfiguration](../resources/intune_deviceconfig_macoswificonfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSEnterpriseWiFiConfigurations](../api/intune_deviceconfig_macosenterprisewificonfiguration_list.md)|[macOSEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_macosenterprisewificonfiguration.md) collection|List properties and relationships of the [macOSEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_macosenterprisewificonfiguration.md) objects.|
|[Get macOSEnterpriseWiFiConfiguration](../api/intune_deviceconfig_macosenterprisewificonfiguration_get.md)|[macOSEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_macosenterprisewificonfiguration.md)|Read properties and relationships of the [macOSEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_macosenterprisewificonfiguration.md) object.|
|[Create macOSEnterpriseWiFiConfiguration](../api/intune_deviceconfig_macosenterprisewificonfiguration_create.md)|[macOSEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_macosenterprisewificonfiguration.md)|Create a new [macOSEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_macosenterprisewificonfiguration.md) object.|
|[Delete macOSEnterpriseWiFiConfiguration](../api/intune_deviceconfig_macosenterprisewificonfiguration_delete.md)|None|Deletes a [macOSEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_macosenterprisewificonfiguration.md).|
|[Update macOSEnterpriseWiFiConfiguration](../api/intune_deviceconfig_macosenterprisewificonfiguration_update.md)|[macOSEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_macosenterprisewificonfiguration.md)|Update the properties of a [macOSEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_macosenterprisewificonfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_macosenterprisewificonfiguration_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_macosenterprisewificonfiguration_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_macosenterprisewificonfiguration_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get macOSTrustedRootCertificate](../api/intune_deviceconfig_macosenterprisewificonfiguration_get_macostrustedrootcertificate.md)|[macOSTrustedRootCertificate](../resources/intune_deviceconfig_macostrustedrootcertificate.md)|Get the [macOSTrustedRootCertificate](../resources/intune_deviceconfig_macostrustedrootcertificate.md) from the rootCertificateForServerValidation navigation property.|
|[Get macOSCertificateProfileBase](../api/intune_deviceconfig_macosenterprisewificonfiguration_get_macoscertificateprofilebase.md)|[macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md)|Get the [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md) from the identityCertificateForClientAuthentication navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|networkName|String|Network Name Inherited from [macOSWiFiConfiguration](../resources/intune_deviceconfig_macoswificonfiguration.md)|
|ssid|String|This is the name of the Wi-Fi network that is broadcast to all devices. Inherited from [macOSWiFiConfiguration](../resources/intune_deviceconfig_macoswificonfiguration.md)|
|connectAutomatically|Boolean|Connect automatically when this network is in range. Setting this to true will skip the user prompt and automatically connect the device to Wi-Fi network. Inherited from [macOSWiFiConfiguration](../resources/intune_deviceconfig_macoswificonfiguration.md)|
|connectWhenNetworkNameIsHidden|Boolean|Connect when the network is not broadcasting its name (SSID). When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices. Inherited from [macOSWiFiConfiguration](../resources/intune_deviceconfig_macoswificonfiguration.md)|
|wiFiSecurityType|String|Indicates whether Wi-Fi endpoint uses an EAP based security type. Inherited from [macOSWiFiConfiguration](../resources/intune_deviceconfig_macoswificonfiguration.md) Possible values are: `open`, `wpaPersonal`, `wpaEnterprise`, `wep`.|
|proxySettings|String|Proxy Type for this Wi-Fi connection Inherited from [macOSWiFiConfiguration](../resources/intune_deviceconfig_macoswificonfiguration.md) Possible values are: `none`, `manual`, `automatic`.|
|proxyManualAddress|String|IP Address or DNS hostname of the proxy server when manual configuration is selected. Inherited from [macOSWiFiConfiguration](../resources/intune_deviceconfig_macoswificonfiguration.md)|
|proxyManualPort|Int32|Port of the proxy server when manual configuration is selected. Inherited from [macOSWiFiConfiguration](../resources/intune_deviceconfig_macoswificonfiguration.md)|
|proxyAutomaticConfigurationUrl|String|URL of the proxy server automatic configuration script when automatic configuration is selected. This URL is typically the location of PAC (Proxy Auto Configuration) file. Inherited from [macOSWiFiConfiguration](../resources/intune_deviceconfig_macoswificonfiguration.md)|
|eapType|String|Extensible Authentication Protocol (EAP). Indicates the type of EAP protocol set on the the Wi-Fi endpoint (router). Possible values are: `eapTls`, `leap`, `eapSim`, `eapTtls`, `peap`, `eapFast`.|
|eapFastConfiguration|String|EAP-FAST Configuration Option when EAP-FAST is the selected EAP Type. Possible values are: `noProtectedAccessCredential`, `useProtectedAccessCredential`, `useProtectedAccessCredentialAndProvision`, `useProtectedAccessCredentialAndProvisionAnonymously`.|
|trustedServerCertificateNames|String collection|Trusted server certificate names when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. This is the common name used in the certificates issued by your trusted certificate authority (CA). If you provide this information, you can bypass the dynamic trust dialog that is displayed on end users devices when they connect to this Wi-Fi network.|
|authenticationMethod|String|Authentication Method when EAP Type is configured to PEAP or EAP-TTLS. Possible values are: `certificate`, `usernameAndPassword`.|
|nonEapAuthenticationMethodForEapTtls|String|Non-EAP Method for Authentication (Inner Identity) when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: `unencryptedPassword`, `challengeHandshakeAuthenticationProtocol`, `microsoftChap`, `microsoftChapVersionTwo`.|
|enableOuterIdentityPrivacy|String|Enable identity privacy (Outer Identity) when EAP Type is configured to EAP-TTLS, EAP-FAST or PEAP. This property masks usernames with the text you enter. For example, if you use 'anonymous', each user that authenticates with this Wi-Fi connection using their real username is displayed as 'anonymous'.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|rootCertificateForServerValidation|[macOSTrustedRootCertificate](../resources/intune_deviceconfig_macostrustedrootcertificate.md)|Trusted Root Certificate for Server Validation when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP.|
|identityCertificateForClientAuthentication|[macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md)|Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication).|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSEnterpriseWiFiConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.macOSEnterpriseWiFiConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "networkName": "String",
  "ssid": "String",
  "connectAutomatically": true,
  "connectWhenNetworkNameIsHidden": true,
  "wiFiSecurityType": "String",
  "proxySettings": "String",
  "proxyManualAddress": "String",
  "proxyManualPort": 1024,
  "proxyAutomaticConfigurationUrl": "String",
  "eapType": "String",
  "eapFastConfiguration": "String",
  "trustedServerCertificateNames": [
    "String"
  ],
  "authenticationMethod": "String",
  "nonEapAuthenticationMethodForEapTtls": "String",
  "enableOuterIdentityPrivacy": "String"
}
```



