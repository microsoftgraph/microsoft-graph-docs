# androidEnterpriseWiFiConfiguration resource type

By providing the configurations in this profile you can instruct the Android device to connect to desired Wi-Fi endpoint. By specifying the authentication method and security types expected by Wi-Fi endpoint you can make the Wi-Fi connection seamless for end user.

Inherits from [androidWiFiConfiguration](androidWiFiConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidEnterpriseWiFiConfigurations](../api/androidEnterpriseWiFiConfiguration_list.md)|[androidEnterpriseWiFiConfiguration](androidEnterpriseWiFiConfiguration.md) collection|List properties and relationships of the [androidEnterpriseWiFiConfiguration](../resource/androidEnterpriseWiFiConfiguration.md) objects.|
|[Get androidEnterpriseWiFiConfiguration](../api/androidEnterpriseWiFiConfiguration_get.md)|[androidEnterpriseWiFiConfiguration](androidEnterpriseWiFiConfiguration.md)|Read properties and relationships of the [androidEnterpriseWiFiConfiguration](../resource/androidEnterpriseWiFiConfiguration.md) object.|
|[Create androidEnterpriseWiFiConfiguration](../api/androidEnterpriseWiFiConfiguration_create.md)|[androidEnterpriseWiFiConfiguration](androidEnterpriseWiFiConfiguration.md)|Create a new [androidEnterpriseWiFiConfiguration](../resource/androidEnterpriseWiFiConfiguration.md) object.|
|[Delete androidEnterpriseWiFiConfiguration](../api/androidEnterpriseWiFiConfiguration_delete.md)|None|Deletes a [androidEnterpriseWiFiConfiguration](../resource/androidEnterpriseWiFiConfiguration.md).|
|[Update androidEnterpriseWiFiConfiguration](../api/androidEnterpriseWiFiConfiguration_update.md)|[androidEnterpriseWiFiConfiguration](androidEnterpriseWiFiConfiguration.md)|Update the properties of a [androidEnterpriseWiFiConfiguration](../resource/androidEnterpriseWiFiConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/androidEnterpriseWiFiConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/androidEnterpriseWiFiConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/androidEnterpriseWiFiConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get androidTrustedRootCertificate](../api/androidEnterpriseWiFiConfiguration_get_androidTrustedRootCertificate.md)|[androidTrustedRootCertificate](androidTrustedRootCertificate.md)|Get the [androidTrustedRootCertificate](androidTrustedRootCertificate.md) from the rootCertificateForServerValidation navigation property.|
|[Get androidCertificateProfileBase](../api/androidEnterpriseWiFiConfiguration_get_androidCertificateProfileBase.md)|[androidCertificateProfileBase](androidCertificateProfileBase.md)|Get the [androidCertificateProfileBase](androidCertificateProfileBase.md) from the identityCertificateForClientAuthentication navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|networkName|String|Network Name Inherited from [androidWiFiConfiguration](androidWiFiConfiguration.md).|
|ssid|String|This is the name of the Wi-Fi network that is broadcast to all devices. Inherited from [androidWiFiConfiguration](androidWiFiConfiguration.md).|
|connectAutomatically|Boolean|Connect automatically when this network is in range. Setting this to true will skip the user prompt and automatically connect the device to Wi-Fi network. Inherited from [androidWiFiConfiguration](androidWiFiConfiguration.md).|
|connectWhenNetworkNameIsHidden|Boolean|When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices. Inherited from [androidWiFiConfiguration](androidWiFiConfiguration.md).|
|wiFiSecurityType|String|Indicates whether Wi-Fi endpoint uses an EAP based security type. Inherited from [androidWiFiConfiguration](androidWiFiConfiguration.md). Possible values are: `open`, `wpaEnterprise`.|
|eapType|String|Indicates the type of EAP protocol set on the the Wi-Fi endpoint (router). Possible values are: `eapTls`, `eapTtls`, `peap`.|
|authenticationMethod|String|Indicates the Authentication Method the client (device) needs to use when the EAP Type is configured to PEAP or EAP-TTLS. Possible values are: `certificate`, `usernameAndPassword`.|
|nonEapAuthenticationMethodForEapTtls|String|Non-EAP Method for Authentication (Inner Identity) when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: `unencryptedPassword`, `challengeHandshakeAuthenticationProtocol`, `microsoftChap`, `microsoftChapVersionTwo`.|
|nonEapAuthenticationMethodForPeap|String|Non-EAP Method for Authentication (Inner Identity) when EAP Type is PEAP and Authenticationmethod is Username and Password. Possible values are: `none`, `microsoftChapVersionTwo`.|
|enableOuterIdentityPrivacy|String|Enable identity privacy (Outer Identity) when EAP Type is configured to EAP-TTLS or PEAP. The String provided here is used to mask the username of individual users when they attempt to connect to Wi-Fi network.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|rootCertificateForServerValidation|[androidTrustedRootCertificate](androidTrustedRootCertificate.md)|Trusted Root Certificate for Server Validation when EAP Type is configured to EAP-TLS, EAP-TTLS or PEAP. This is the certificate presented by the Wi-Fi endpoint when the device attempts to connect to Wi-Fi endpoint. The device (or user) must accept this certificate to continue the connection attempt.|
|identityCertificateForClientAuthentication|[androidCertificateProfileBase](androidCertificateProfileBase.md)|Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication). This is the certificate presented by client to the Wi-Fi endpoint. The authentication server sitting behind the Wi-Fi endpoint must accept this certificate to successfully establish a Wi-Fi connection.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidEnterpriseWiFiConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidEnterpriseWiFiConfiguration",
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
  "eapType": "String",
  "authenticationMethod": "String",
  "nonEapAuthenticationMethodForEapTtls": "String",
  "nonEapAuthenticationMethodForPeap": "String",
  "enableOuterIdentityPrivacy": "String"
}
```

