# androidVpnConfiguration resource type

By providing the configurations in this profile you can instruct the Android device to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidVpnConfigurations](../api/intune_deviceconfig_androidVpnConfiguration_list.md)|[androidVpnConfiguration](../resources/intune_deviceconfig_androidVpnConfiguration.md) collection|List properties and relationships of the [androidVpnConfiguration](../resources/intune_deviceconfig_androidVpnConfiguration.md) objects.|
|[Get androidVpnConfiguration](../api/intune_deviceconfig_androidVpnConfiguration_get.md)|[androidVpnConfiguration](../resources/intune_deviceconfig_androidVpnConfiguration.md)|Read properties and relationships of the [androidVpnConfiguration](../resources/intune_deviceconfig_androidVpnConfiguration.md) object.|
|[Create androidVpnConfiguration](../api/intune_deviceconfig_androidVpnConfiguration_create.md)|[androidVpnConfiguration](../resources/intune_deviceconfig_androidVpnConfiguration.md)|Create a new [androidVpnConfiguration](../resources/intune_deviceconfig_androidVpnConfiguration.md) object.|
|[Delete androidVpnConfiguration](../api/intune_deviceconfig_androidVpnConfiguration_delete.md)|None|Deletes a [androidVpnConfiguration](../resources/intune_deviceconfig_androidVpnConfiguration.md).|
|[Update androidVpnConfiguration](../api/intune_deviceconfig_androidVpnConfiguration_update.md)|[androidVpnConfiguration](../resources/intune_deviceconfig_androidVpnConfiguration.md)|Update the properties of a [androidVpnConfiguration](../resources/intune_deviceconfig_androidVpnConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_androidVpnConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_androidVpnConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_androidVpnConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get androidCertificateProfileBase](../api/intune_deviceconfig_androidVpnConfiguration_get_androidCertificateProfileBase.md)|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md)|Get the [androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md) from the identityCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|connectionName|String|Connection name displayed to the user.|
|connectionType|String|Connection type. Possible values are: `ciscoAnyConnect`, `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`, `citrix`.|
|role|String|Role when connection type is set to Pulse Secure.|
|realm|String|Realm when connection type is set to Pulse Secure.|
|servers|[vpnServer](../resources/intune_deviceconfig_vpnServer.md) collection|List of VPN Servers on the network. Make sure end users can access these network locations.|
|fingerprint|String|Fingerprint is a string that will be used to verify the VPN server can be trusted, which is only applicable when connection type is Check Point Capsule VPN.|
|customData|[keyValue](../resources/intune_deviceconfig_keyValue.md) collection|Custom data when connection type is set to Citrix.|
|authenticationMethod|String|Authentication method. Possible values are: `certificate`, `usernameAndPassword`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|identityCertificate|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md)|Identity certificate for client authentication when authentication method is certificate.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidVpnConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidVpnConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "connectionName": "String",
  "connectionType": "String",
  "role": "String",
  "realm": "String",
  "servers": [
    {
      "@odata.type": "microsoft.graph.vpnServer",
      "description": "String",
      "ipAddressOrFqdn": "String",
      "isDefaultServer": true
    }
  ],
  "fingerprint": "String",
  "customData": [
    {
      "@odata.type": "microsoft.graph.keyValue",
      "key": "String",
      "value": "String"
    }
  ],
  "authenticationMethod": "String"
}
```


