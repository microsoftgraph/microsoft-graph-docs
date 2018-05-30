# macOSVpnConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

By providing the configurations in this profile you can instruct the Mac device to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List macOSVpnConfigurations](../api/intune_deviceconfig_macosvpnconfiguration_list.md)|[macOSVpnConfiguration](../resources/intune_deviceconfig_macosvpnconfiguration.md) collection|List properties and relationships of the [macOSVpnConfiguration](../resources/intune_deviceconfig_macosvpnconfiguration.md) objects.|
|[Get macOSVpnConfiguration](../api/intune_deviceconfig_macosvpnconfiguration_get.md)|[macOSVpnConfiguration](../resources/intune_deviceconfig_macosvpnconfiguration.md)|Read properties and relationships of the [macOSVpnConfiguration](../resources/intune_deviceconfig_macosvpnconfiguration.md) object.|
|[Create macOSVpnConfiguration](../api/intune_deviceconfig_macosvpnconfiguration_create.md)|[macOSVpnConfiguration](../resources/intune_deviceconfig_macosvpnconfiguration.md)|Create a new [macOSVpnConfiguration](../resources/intune_deviceconfig_macosvpnconfiguration.md) object.|
|[Delete macOSVpnConfiguration](../api/intune_deviceconfig_macosvpnconfiguration_delete.md)|None|Deletes a [macOSVpnConfiguration](../resources/intune_deviceconfig_macosvpnconfiguration.md).|
|[Update macOSVpnConfiguration](../api/intune_deviceconfig_macosvpnconfiguration_update.md)|[macOSVpnConfiguration](../resources/intune_deviceconfig_macosvpnconfiguration.md)|Update the properties of a [macOSVpnConfiguration](../resources/intune_deviceconfig_macosvpnconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|connectionName|String|Connection name displayed to the user. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|connectionType|[appleVpnConnectionType](../resources/intune_deviceconfig_applevpnconnectiontype.md)|Connection type. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md). Possible values are: `ciscoAnyConnect`, `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`, `customVpn`, `ciscoIPSec`, `citrix`, `ciscoAnyConnectV2`, `paloAltoGlobalProtect`.|
|loginGroupOrDomain|String|Login group or domain when connection type is set to Dell SonicWALL Mobile Connection. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|role|String|Role when connection type is set to Pulse Secure. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|realm|String|Realm when connection type is set to Pulse Secure. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|server|[vpnServer](../resources/intune_deviceconfig_vpnserver.md)|VPN Server on the network. Make sure end users can access this network location. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|identifier|String|Identifier provided by VPN vendor when connection type is set to Custom VPN. For example: Cisco AnyConnect uses an identifier of the form com.cisco.anyconnect.applevpn.plugin Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|customData|[keyValue](../resources/intune_deviceconfig_keyvalue.md) collection|Custom data when connection type is set to Custom VPN. Use this field to enable functionality not supported by Intune, but available in your VPN solution. Contact your VPN vendor to learn how to add these key/value pairs. This collection can contain a maximum of 25 elements. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|enableSplitTunneling|Boolean|Send all network traffic through VPN. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|authenticationMethod|[vpnAuthenticationMethod](../resources/intune_deviceconfig_vpnauthenticationmethod.md)|Authentication method for this VPN connection. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md). Possible values are: `certificate`, `usernameAndPassword`.|
|enablePerApp|Boolean|Setting this to true creates Per-App VPN payload which can later be associated with Apps that can trigger this VPN conneciton on the end user's iOS device. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|safariDomains|String collection|Safari domains when this VPN per App setting is enabled. In addition to the apps associated with this VPN, Safari domains specified here will also be able to trigger this VPN connection. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|onDemandRules|[vpnOnDemandRule](../resources/intune_deviceconfig_vpnondemandrule.md) collection|On-Demand Rules. This collection can contain a maximum of 500 elements. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|proxyServer|[vpnProxyServer](../resources/intune_deviceconfig_vpnproxyserver.md)|Proxy Server. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|

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
|identityCertificate|[macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md)|Identity certificate for client authentication when authentication method is certificate.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSVpnConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSVpnConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "connectionName": "String",
  "connectionType": "String",
  "loginGroupOrDomain": "String",
  "role": "String",
  "realm": "String",
  "server": {
    "@odata.type": "microsoft.graph.vpnServer",
    "description": "String",
    "address": "String",
    "isDefaultServer": true
  },
  "identifier": "String",
  "customData": [
    {
      "@odata.type": "microsoft.graph.keyValue",
      "key": "String",
      "value": "String"
    }
  ],
  "enableSplitTunneling": true,
  "authenticationMethod": "String",
  "enablePerApp": true,
  "safariDomains": [
    "String"
  ],
  "onDemandRules": [
    {
      "@odata.type": "microsoft.graph.vpnOnDemandRule",
      "ssids": [
        "String"
      ],
      "dnsSearchDomains": [
        "String"
      ],
      "probeUrl": "String",
      "action": "String",
      "domainAction": "String",
      "domains": [
        "String"
      ],
      "probeRequiredUrl": "String"
    }
  ],
  "proxyServer": {
    "@odata.type": "microsoft.graph.vpnProxyServer",
    "automaticConfigurationScriptUrl": "String",
    "address": "String",
    "port": 1024
  }
}
```



