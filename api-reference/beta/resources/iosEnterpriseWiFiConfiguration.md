# iosEnterpriseWiFiConfiguration resource type

By providing the configurations in this profile you can instruct the iOS device to connect to desired Wi-Fi endpoint. By specifying the authentication method and security types expected by Wi-Fi endpoint you can make the Wi-Fi connection seamless for end user.

Inherits from [iosWiFiConfiguration](iosWiFiConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosEnterpriseWiFiConfigurations](../api/iosEnterpriseWiFiConfiguration_list.md)|[iosEnterpriseWiFiConfiguration](../resources/iosEnterpriseWiFiConfiguration.md) collection|List properties and relationships of the [iosEnterpriseWiFiConfiguration](../resources/iosEnterpriseWiFiConfiguration.md) objects.|
|[Get iosEnterpriseWiFiConfiguration](../api/iosEnterpriseWiFiConfiguration_get.md)|[iosEnterpriseWiFiConfiguration](../resources/iosEnterpriseWiFiConfiguration.md)|Read properties and relationships of the [iosEnterpriseWiFiConfiguration](../resources/iosEnterpriseWiFiConfiguration.md) object.|
|[Create iosEnterpriseWiFiConfiguration](../api/iosEnterpriseWiFiConfiguration_create.md)|[iosEnterpriseWiFiConfiguration](../resources/iosEnterpriseWiFiConfiguration.md)|Create a new [iosEnterpriseWiFiConfiguration](../resources/iosEnterpriseWiFiConfiguration.md) object.|
|[Delete iosEnterpriseWiFiConfiguration](../api/iosEnterpriseWiFiConfiguration_delete.md)|None|Deletes a [iosEnterpriseWiFiConfiguration](../resources/iosEnterpriseWiFiConfiguration.md).|
|[Update iosEnterpriseWiFiConfiguration](../api/iosEnterpriseWiFiConfiguration_update.md)|[iosEnterpriseWiFiConfiguration](../resources/iosEnterpriseWiFiConfiguration.md)|Update the properties of a [iosEnterpriseWiFiConfiguration](../resources/iosEnterpriseWiFiConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/iosEnterpriseWiFiConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/iosEnterpriseWiFiConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/iosEnterpriseWiFiConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[List iosTrustedRootCertificates](../api/iosEnterpriseWiFiConfiguration_list_iosTrustedRootCertificate.md)|[iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md) collection|Get the iosTrustedRootCertificates from the rootCertificatesForServerValidation navigation property.|
|[Get iosCertificateProfileBase](../api/iosEnterpriseWiFiConfiguration_get_iosCertificateProfileBase.md)|[iosCertificateProfileBase](../resources/iosCertificateProfileBase.md)|Get the [iosCertificateProfileBase](../resources/iosCertificateProfileBase.md) from the identityCertificateForClientAuthentication navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|networkName|String|Network Name Inherited from [iosWiFiConfiguration](iosWiFiConfiguration.md).|
|ssid|String|This is the name of the Wi-Fi network that is broadcast to all devices. Inherited from [iosWiFiConfiguration](iosWiFiConfiguration.md).|
|connectAutomatically|Boolean|Connect automatically when this network is in range. Setting this to true will skip the user prompt and automatically connect the device to Wi-Fi network. Inherited from [iosWiFiConfiguration](iosWiFiConfiguration.md).|
|connectWhenNetworkNameIsHidden|Boolean|Connect when the network is not broadcasting its name (SSID). When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices. Inherited from [iosWiFiConfiguration](iosWiFiConfiguration.md).|
|wiFiSecurityType|String|Indicates whether Wi-Fi endpoint uses an EAP based security type. Inherited from [iosWiFiConfiguration](iosWiFiConfiguration.md). Possible values are: `open`, `wpaPersonal`, `wpaEnterprise`, `wep`.|
|proxySettings|String|Proxy Type for this Wi-Fi connection Inherited from [iosWiFiConfiguration](iosWiFiConfiguration.md). Possible values are: `none`, `manual`, `automatic`.|
|proxyManualAddress|String|IP Address or DNS hostname of the proxy server when manual configuration is selected. Inherited from [iosWiFiConfiguration](iosWiFiConfiguration.md).|
|proxyManualPort|Int32|Port of the proxy server when manual configuration is selected. Inherited from [iosWiFiConfiguration](iosWiFiConfiguration.md).|
|proxyAutomaticConfigurationUrl|String|URL of the proxy server automatic configuration script when automatic configuration is selected. This URL is typically the location of PAC (Proxy Auto Configuration) file. Inherited from [iosWiFiConfiguration](iosWiFiConfiguration.md).|
|eapType|String|Extensible Authentication Protocol (EAP). Indicates the type of EAP protocol set on the the Wi-Fi endpoint (router). Possible values are: `eapTls`, `leap`, `eapSim`, `eapTtls`, `peap`, `eapFast`.|
|eapFastConfiguration|String|EAP-FAST Configuration Option when EAP-FAST is the selected EAP Type. Possible values are: `noProtectedAccessCredential`, `useProtectedAccessCredential`, `useProtectedAccessCredentialAndProvision`, `useProtectedAccessCredentialAndProvisionAnonymously`.|
|trustedServerCertificateNames|String collection|Trusted server certificate names when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. This is the common name used in the certificates issued by your trusted certificate authority (CA). If you provide this information, you can bypass the dynamic trust dialog that is displayed on end users' devices when they connect to this Wi-Fi network.|
|authenticationMethod|String|Authentication Method when EAP Type is configured to PEAP or EAP-TTLS. Possible values are: `certificate`, `usernameAndPassword`.|
|nonEapAuthenticationMethodForEapTtls|String|Non-EAP Method for Authentication when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: `unencryptedPassword`, `challengeHandshakeAuthenticationProtocol`, `microsoftChap`, `microsoftChapVersionTwo`.|
|enableOuterIdentityPrivacy|String|Enable identity privacy (Outer Identity) when EAP Type is configured to EAP - TTLS, EAP - FAST or PEAP. This property masks usernames with the text you enter. For example, if you use 'anonymous', each user that authenticates with this Wi-Fi connection using their real username is displayed as 'anonymous'.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|rootCertificatesForServerValidation|[iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md) collection|Trusted Root Certificates for Server Validation when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. If you provide this value you do not need to provide trustedServerCertificateNames, and vice versa.|
|identityCertificateForClientAuthentication|[iosCertificateProfileBase](../resources/iosCertificateProfileBase.md)|Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication).|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosEnterpriseWiFiConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosEnterpriseWiFiConfiguration",
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

