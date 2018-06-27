# androidEnterpriseWiFiConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

By providing the configurations in this profile you can instruct the Android device to connect to desired Wi-Fi endpoint. By specifying the authentication method and security types expected by Wi-Fi endpoint you can make the Wi-Fi connection seamless for end user.

Inherits from [androidWiFiConfiguration](../resources/intune_deviceconfig_androidwificonfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidEnterpriseWiFiConfigurations](../api/intune_deviceconfig_androidenterprisewificonfiguration_list.md)|[androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md) collection|List properties and relationships of the [androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md) objects.|
|[Get androidEnterpriseWiFiConfiguration](../api/intune_deviceconfig_androidenterprisewificonfiguration_get.md)|[androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md)|Read properties and relationships of the [androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md) object.|
|[Create androidEnterpriseWiFiConfiguration](../api/intune_deviceconfig_androidenterprisewificonfiguration_create.md)|[androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md)|Create a new [androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md) object.|
|[Delete androidEnterpriseWiFiConfiguration](../api/intune_deviceconfig_androidenterprisewificonfiguration_delete.md)|None|Deletes a [androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md).|
|[Update androidEnterpriseWiFiConfiguration](../api/intune_deviceconfig_androidenterprisewificonfiguration_update.md)|[androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md)|Update the properties of a [androidEnterpriseWiFiConfiguration](../resources/intune_deviceconfig_androidenterprisewificonfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
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
|wiFiSecurityType|[androidWiFiSecurityType](../resources/intune_deviceconfig_androidwifisecuritytype.md)|Indicates whether Wi-Fi endpoint uses an EAP based security type. Inherited from [androidWiFiConfiguration](../resources/intune_deviceconfig_androidwificonfiguration.md). Possible values are: `open`, `wpaEnterprise`.|
|eapType|[androidEapType](../resources/intune_deviceconfig_androideaptype.md)|Indicates the type of EAP protocol set on the the Wi-Fi endpoint (router). Possible values are: `eapTls`, `eapTtls`, `peap`.|
|authenticationMethod|[wiFiAuthenticationMethod](../resources/intune_deviceconfig_wifiauthenticationmethod.md)|Indicates the Authentication Method the client (device) needs to use when the EAP Type is configured to PEAP or EAP-TTLS. Possible values are: `certificate`, `usernameAndPassword`.|
|innerAuthenticationProtocolForEapTtls|[nonEapAuthenticationMethodForEapTtlsType](../resources/intune_deviceconfig_noneapauthenticationmethodforeapttlstype.md)|Non-EAP Method for Authentication (Inner Identity) when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: `unencryptedPassword`, `challengeHandshakeAuthenticationProtocol`, `microsoftChap`, `microsoftChapVersionTwo`.|
|innerAuthenticationProtocolForPeap|[nonEapAuthenticationMethodForPeap](../resources/intune_deviceconfig_noneapauthenticationmethodforpeap.md)|Non-EAP Method for Authentication (Inner Identity) when EAP Type is PEAP and Authenticationmethod is Username and Password. Possible values are: `none`, `microsoftChapVersionTwo`.|
|outerIdentityPrivacyTemporaryValue|String|Enable identity privacy (Outer Identity) when EAP Type is configured to EAP-TTLS or PEAP. The String provided here is used to mask the username of individual users when they attempt to connect to Wi-Fi network.|

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
|rootCertificateForServerValidation|[androidTrustedRootCertificate](../resources/intune_deviceconfig_androidtrustedrootcertificate.md)|Trusted Root Certificate for Server Validation when EAP Type is configured to EAP-TLS, EAP-TTLS or PEAP. This is the certificate presented by the Wi-Fi endpoint when the device attempts to connect to Wi-Fi endpoint. The device (or user) must accept this certificate to continue the connection attempt.|
|identityCertificateForClientAuthentication|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication). This is the certificate presented by client to the Wi-Fi endpoint. The authentication server sitting behind the Wi-Fi endpoint must accept this certificate to successfully establish a Wi-Fi connection.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidEnterpriseWiFiConfiguration"
}
-->
``` json
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
  "innerAuthenticationProtocolForEapTtls": "String",
  "innerAuthenticationProtocolForPeap": "String",
  "outerIdentityPrivacyTemporaryValue": "String"
}
```



