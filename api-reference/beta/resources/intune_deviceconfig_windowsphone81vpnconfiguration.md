# windowsPhone81VpnConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

By providing the configurations in this profile you can instruct the Windows Phone 8.1 to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81vpnconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsPhone81VpnConfigurations](../api/intune_deviceconfig_windowsphone81vpnconfiguration_list.md)|[windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsphone81vpnconfiguration.md) collection|List properties and relationships of the [windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsphone81vpnconfiguration.md) objects.|
|[Get windowsPhone81VpnConfiguration](../api/intune_deviceconfig_windowsphone81vpnconfiguration_get.md)|[windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsphone81vpnconfiguration.md)|Read properties and relationships of the [windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsphone81vpnconfiguration.md) object.|
|[Create windowsPhone81VpnConfiguration](../api/intune_deviceconfig_windowsphone81vpnconfiguration_create.md)|[windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsphone81vpnconfiguration.md)|Create a new [windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsphone81vpnconfiguration.md) object.|
|[Delete windowsPhone81VpnConfiguration](../api/intune_deviceconfig_windowsphone81vpnconfiguration_delete.md)|None|Deletes a [windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsphone81vpnconfiguration.md).|
|[Update windowsPhone81VpnConfiguration](../api/intune_deviceconfig_windowsphone81vpnconfiguration_update.md)|[windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsphone81vpnconfiguration.md)|Update the properties of a [windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsphone81vpnconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|connectionName|String|Connection name displayed to the user. Inherited from [windowsVpnConfiguration](../resources/intune_deviceconfig_windowsvpnconfiguration.md)|
|servers|[vpnServer](../resources/intune_deviceconfig_vpnserver.md) collection|List of VPN Servers on the network. Make sure end users can access these network locations. This collection can contain a maximum of 500 elements. Inherited from [windowsVpnConfiguration](../resources/intune_deviceconfig_windowsvpnconfiguration.md)|
|customXml|Binary|Custom XML commands that configures the VPN connection. (UTF8 encoded byte array) Inherited from [windowsVpnConfiguration](../resources/intune_deviceconfig_windowsvpnconfiguration.md)|
|applyOnlyToWindows81|Boolean|Value indicating whether this policy only applies to Windows 8.1. This property is read-only. Inherited from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81vpnconfiguration.md)|
|connectionType|[windowsVpnConnectionType](../resources/intune_deviceconfig_windowsvpnconnectiontype.md)|Connection type. Inherited from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81vpnconfiguration.md). Possible values are: `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`.|
|loginGroupOrDomain|String|Login group or domain when connection type is set to Dell SonicWALL Mobile Connection. Inherited from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81vpnconfiguration.md)|
|enableSplitTunneling|Boolean|Enable split tunneling for the VPN. Inherited from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81vpnconfiguration.md)|
|proxyServer|[windows81VpnProxyServer](../resources/intune_deviceconfig_windows81vpnproxyserver.md)|Proxy Server. Inherited from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81vpnconfiguration.md)|
|bypassVpnOnCompanyWifi|Boolean|Bypass VPN on company Wi-Fi.|
|bypassVpnOnHomeWifi|Boolean|Bypass VPN on home Wi-Fi.|
|authenticationMethod|[vpnAuthenticationMethod](../resources/intune_deviceconfig_vpnauthenticationmethod.md)|Authentication method. Possible values are: `certificate`, `usernameAndPassword`.|
|rememberUserCredentials|Boolean|Remember user credentials.|
|dnsSuffixSearchList|String collection|DNS suffix search list.|

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
|identityCertificate|[windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsphone81certificateprofilebase.md)|Identity certificate for client authentication when authentication method is certificate.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsPhone81VpnConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsPhone81VpnConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "connectionName": "String",
  "servers": [
    {
      "@odata.type": "microsoft.graph.vpnServer",
      "description": "String",
      "address": "String",
      "isDefaultServer": true
    }
  ],
  "customXml": "binary",
  "applyOnlyToWindows81": true,
  "connectionType": "String",
  "loginGroupOrDomain": "String",
  "enableSplitTunneling": true,
  "proxyServer": {
    "@odata.type": "microsoft.graph.windows81VpnProxyServer",
    "automaticConfigurationScriptUrl": "String",
    "address": "String",
    "port": 1024,
    "automaticallyDetectProxySettings": true,
    "bypassProxyServerForLocalAddress": true
  },
  "bypassVpnOnCompanyWifi": true,
  "bypassVpnOnHomeWifi": true,
  "authenticationMethod": "String",
  "rememberUserCredentials": true,
  "dnsSuffixSearchList": [
    "String"
  ]
}
```



