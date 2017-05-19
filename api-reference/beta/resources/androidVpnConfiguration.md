# androidVpnConfiguration resource type

By providing the configurations in this profile you can instruct the Android device to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [deviceConfiguration](../resources/deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidVpnConfigurations](../api/androidVpnConfiguration_list.md)|[androidVpnConfiguration](../resources/androidVpnConfiguration.md) collection|List properties and relationships of the [androidVpnConfiguration](../resources/androidVpnConfiguration.md) objects.|
|[Get androidVpnConfiguration](../api/androidVpnConfiguration_get.md)|[androidVpnConfiguration](../resources/androidVpnConfiguration.md)|Read properties and relationships of the [androidVpnConfiguration](../resources/androidVpnConfiguration.md) object.|
|[Create androidVpnConfiguration](../api/androidVpnConfiguration_create.md)|[androidVpnConfiguration](../resources/androidVpnConfiguration.md)|Create a new [androidVpnConfiguration](../resources/androidVpnConfiguration.md) object.|
|[Delete androidVpnConfiguration](../api/androidVpnConfiguration_delete.md)|None|Deletes a [androidVpnConfiguration](../resources/androidVpnConfiguration.md).|
|[Update androidVpnConfiguration](../api/androidVpnConfiguration_update.md)|[androidVpnConfiguration](../resources/androidVpnConfiguration.md)|Update the properties of a [androidVpnConfiguration](../resources/androidVpnConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/androidVpnConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/androidVpnConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/androidVpnConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get androidCertificateProfileBase](../api/androidVpnConfiguration_get_androidCertificateProfileBase.md)|[androidCertificateProfileBase](../resources/androidCertificateProfileBase.md)|Get the [androidCertificateProfileBase](../resources/androidCertificateProfileBase.md) from the identityCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|connectionName|String|Connection name displayed to the user.|
|connectionType|String|Connection type. Possible values are: `ciscoAnyConnect`, `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`, `citrix`.|
|role|String|Role when connection type is set to Pulse Secure.|
|realm|String|Realm when connection type is set to Pulse Secure.|
|servers|[vpnServer](../resources/vpnServer.md) collection|List of VPN Servers on the network. Make sure end users can access these network locations.|
|fingerprint|String|Fingerprint is a string that will be used to verify the VPN server can be trusted, which is only applicable when connection type is Check Point Capsule VPN.|
|customData|[keyValue](../resources/keyValue.md) collection|Custom data when connection type is set to Citrix.|
|authenticationMethod|String|Authentication method. Possible values are: `certificate`, `usernameAndPassword`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|identityCertificate|[androidCertificateProfileBase](../resources/androidCertificateProfileBase.md)|Identity certificate for client authentication when authentication method is certificate.|

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

