# androidEnterpriseWiFiConfiguration resource type

By providing the configurations in this profile you can instruct the Android device to connect to desired Wi-Fi endpoint. By specifying the authentication method and security types expected by Wi-Fi endpoint you can make the Wi-Fi connection seamless for end user.

Inherits from [androidWiFiConfiguration](../resources/intune_deviceconfig_androidwificonfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidEnterpriseWiFiConfigurations](../api/intune_deviceconfig_androidenterprisewificonfiguration_list.md)|[androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md) collection|List properties and relationships of the [androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md) objects.|
|[Get androidEnterpriseWiFiConfiguration](../api/intune_deviceconfig_androidenterprisewificonfiguration_get.md)|[androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md)|Read properties and relationships of the [androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md) object.|
|[Create androidEnterpriseWiFiConfiguration](../api/intune_deviceconfig_androidenterprisewificonfiguration_create.md)|[androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md)|Create a new [androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md) object.|
|[Delete androidEnterpriseWiFiConfiguration](../api/intune_deviceconfig_androidenterprisewificonfiguration_delete.md)|None|Deletes a [androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md).|
|[Update androidEnterpriseWiFiConfiguration](../api/intune_deviceconfig_androidenterprisewificonfiguration_update.md)|[androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md)|Update the properties of a [androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_androidenterprisewificonfiguration_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_androidenterprisewificonfiguration_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_androidenterprisewificonfiguration_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get androidTrustedRootCertificate](../api/intune_deviceconfig_androidenterprisewificonfiguration_get_androidtrustedrootcertificate.md)|[androidTrustedRootCertificate](../resources/intune_deviceconfig_androidtrustedrootcertificate.md)|Get the [androidTrustedRootCertificate](../resources/intune_deviceconfig_androidtrustedrootcertificate.md) from the rootCertificateForServerValidation navigation property.|
|[Get androidCertificateProfileBase](../api/intune_deviceconfig_androidenterprisewificonfiguration_get_androidcertificateprofilebase.md)|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|Get the [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md) from the identityCertificateForClientAuthentication navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|networkName|String|Network Name Inherited from [androidWiFiConfiguration](../resources/intune_deviceconfig_androidwificonfiguration.md)|
|ssid|String|This is the name of the Wi-Fi network that is broadcast to all devices. Inherited from [androidWiFiConfiguration](../resources/intune_deviceconfig_androidwificonfiguration.md)|
|connectAutomatically|Boolean|Connect automatically when this network is in range. Setting this to true will skip the user prompt and automatically connect the device to Wi-Fi network. Inherited from [androidWiFiConfiguration](../resources/intune_deviceconfig_androidwificonfiguration.md)|
|connectWhenNetworkNameIsHidden|Boolean|When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices. Inherited from [androidWiFiConfiguration](../resources/intune_deviceconfig_androidwificonfiguration.md)|
|wiFiSecurityType|String|Indicates whether Wi-Fi endpoint uses an EAP based security type. Inherited from [androidWiFiConfiguration](../resources/intune_deviceconfig_androidwificonfiguration.md) Possible values are: `open`, `wpaEnterprise`.|
|eapType|String|Indicates the type of EAP protocol set on the the Wi-Fi endpoint (router). Possible values are: `eapTls`, `eapTtls`, `peap`.|
|authenticationMethod|String|Indicates the Authentication Method the client (device) needs to use when the EAP Type is configured to PEAP or EAP-TTLS. Possible values are: `certificate`, `usernameAndPassword`.|
|nonEapAuthenticationMethodForEapTtls|String|Non-EAP Method for Authentication (Inner Identity) when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: `unencryptedPassword`, `challengeHandshakeAuthenticationProtocol`, `microsoftChap`, `microsoftChapVersionTwo`.|
|nonEapAuthenticationMethodForPeap|String|Non-EAP Method for Authentication (Inner Identity) when EAP Type is PEAP and Authenticationmethod is Username and Password. Possible values are: `none`, `microsoftChapVersionTwo`.|
|enableOuterIdentityPrivacy|String|Enable identity privacy (Outer Identity) when EAP Type is configured to EAP-TTLS or PEAP. The String provided here is used to mask the username of individual users when they attempt to connect to Wi-Fi network.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|rootCertificateForServerValidation|[androidTrustedRootCertificate](../resources/intune_deviceconfig_androidtrustedrootcertificate.md)|Trusted Root Certificate for Server Validation when EAP Type is configured to EAP-TLS, EAP-TTLS or PEAP. This is the certificate presented by the Wi-Fi endpoint when the device attempts to connect to Wi-Fi endpoint. The device (or user) must accept this certificate to continue the connection attempt.|
|identityCertificateForClientAuthentication|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication). This is the certificate presented by client to the Wi-Fi endpoint. The authentication server sitting behind the Wi-Fi endpoint must accept this certificate to successfully establish a Wi-Fi connection.|

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



