# windows10VpnConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

By providing the configurations in this profile you can instruct the Windows 10 device (desktop or mobile) to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [windowsVpnConfiguration](../resources/intune_deviceconfig_windowsvpnconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windows10VpnConfigurations](../api/intune_deviceconfig_windows10vpnconfiguration_list.md)|[windows10VpnConfiguration](../resources/intune_deviceconfig_windows10vpnconfiguration.md) collection|List properties and relationships of the [windows10VpnConfiguration](../resources/intune_deviceconfig_windows10vpnconfiguration.md) objects.|
|[Get windows10VpnConfiguration](../api/intune_deviceconfig_windows10vpnconfiguration_get.md)|[windows10VpnConfiguration](../resources/intune_deviceconfig_windows10vpnconfiguration.md)|Read properties and relationships of the [windows10VpnConfiguration](../resources/intune_deviceconfig_windows10vpnconfiguration.md) object.|
|[Create windows10VpnConfiguration](../api/intune_deviceconfig_windows10vpnconfiguration_create.md)|[windows10VpnConfiguration](../resources/intune_deviceconfig_windows10vpnconfiguration.md)|Create a new [windows10VpnConfiguration](../resources/intune_deviceconfig_windows10vpnconfiguration.md) object.|
|[Delete windows10VpnConfiguration](../api/intune_deviceconfig_windows10vpnconfiguration_delete.md)|None|Deletes a [windows10VpnConfiguration](../resources/intune_deviceconfig_windows10vpnconfiguration.md).|
|[Update windows10VpnConfiguration](../api/intune_deviceconfig_windows10vpnconfiguration_update.md)|[windows10VpnConfiguration](../resources/intune_deviceconfig_windows10vpnconfiguration.md)|Update the properties of a [windows10VpnConfiguration](../resources/intune_deviceconfig_windows10vpnconfiguration.md) object.|

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
|profileTarget|[windows10VpnProfileTarget](../resources/intune_deviceconfig_windows10vpnprofiletarget.md)|Profile target type. Possible values are: `user`, `device`, `autoPilotDevice`.|
|connectionType|[windows10VpnConnectionType](../resources/intune_deviceconfig_windows10vpnconnectiontype.md)|Connection type. Possible values are: `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`, `automatic`, `ikEv2`, `l2tp`, `pptp`, `citrix`, `paloAltoGlobalProtect`.|
|enableSplitTunneling|Boolean|Enable split tunneling.|
|enableAlwaysOn|Boolean|Enable Always On mode.|
|enableDeviceTunnel|Boolean|Enable device tunnel.|
|authenticationMethod|[windows10VpnAuthenticationMethod](../resources/intune_deviceconfig_windows10vpnauthenticationmethod.md)|Authentication method. Possible values are: `certificate`, `usernameAndPassword`, `customEapXml`.|
|rememberUserCredentials|Boolean|Remember user credentials.|
|enableConditionalAccess|Boolean|Enable conditional access.|
|enableSingleSignOnWithAlternateCertificate|Boolean|Enable single sign-on (SSO) with alternate certificate.|
|singleSignOnEku|[extendedKeyUsage](../resources/intune_deviceconfig_extendedkeyusage.md)|Single sign-on Extended Key Usage (EKU).|
|singleSignOnIssuerHash|String|Single sign-on issuer hash.|
|eapXml|Binary|Extensible Authentication Protocol (EAP) XML. (UTF8 encoded byte array)|
|proxyServer|[windows10VpnProxyServer](../resources/intune_deviceconfig_windows10vpnproxyserver.md)|Proxy Server.|
|associatedApps|[windows10AssociatedApps](../resources/intune_deviceconfig_windows10associatedapps.md) collection|Associated Apps. This collection can contain a maximum of 10000 elements.|
|onlyAssociatedAppsCanUseConnection|Boolean|Only associated Apps can use connection (per-app VPN).|
|windowsInformationProtectionDomain|String|Windows Information Protection (WIP) domain to associate with this connection.|
|trafficRules|[vpnTrafficRule](../resources/intune_deviceconfig_vpntrafficrule.md) collection|Traffic rules. This collection can contain a maximum of 1000 elements.|
|routes|[vpnRoute](../resources/intune_deviceconfig_vpnroute.md) collection|Routes (optional for third-party providers). This collection can contain a maximum of 1000 elements.|
|dnsRules|[vpnDnsRule](../resources/intune_deviceconfig_vpndnsrule.md) collection|DNS rules. This collection can contain a maximum of 1000 elements.|

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
|identityCertificate|[windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md)|Identity certificate for client authentication when authentication method is certificate.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10VpnConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10VpnConfiguration",
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
  "profileTarget": "String",
  "connectionType": "String",
  "enableSplitTunneling": true,
  "enableAlwaysOn": true,
  "enableDeviceTunnel": true,
  "authenticationMethod": "String",
  "rememberUserCredentials": true,
  "enableConditionalAccess": true,
  "enableSingleSignOnWithAlternateCertificate": true,
  "singleSignOnEku": {
    "@odata.type": "microsoft.graph.extendedKeyUsage",
    "name": "String",
    "objectIdentifier": "String"
  },
  "singleSignOnIssuerHash": "String",
  "eapXml": "binary",
  "proxyServer": {
    "@odata.type": "microsoft.graph.windows10VpnProxyServer",
    "automaticConfigurationScriptUrl": "String",
    "address": "String",
    "port": 1024,
    "bypassProxyServerForLocalAddress": true
  },
  "associatedApps": [
    {
      "@odata.type": "microsoft.graph.windows10AssociatedApps",
      "appType": "String",
      "identifier": "String"
    }
  ],
  "onlyAssociatedAppsCanUseConnection": true,
  "windowsInformationProtectionDomain": "String",
  "trafficRules": [
    {
      "@odata.type": "microsoft.graph.vpnTrafficRule",
      "name": "String",
      "protocols": 1024,
      "localPortRanges": [
        {
          "@odata.type": "microsoft.graph.numberRange",
          "lowerNumber": 1024,
          "upperNumber": 1024
        }
      ],
      "remotePortRanges": [
        {
          "@odata.type": "microsoft.graph.numberRange",
          "lowerNumber": 1024,
          "upperNumber": 1024
        }
      ],
      "localAddressRanges": [
        {
          "@odata.type": "microsoft.graph.iPv4Range",
          "lowerAddress": "String",
          "upperAddress": "String"
        }
      ],
      "remoteAddressRanges": [
        {
          "@odata.type": "microsoft.graph.iPv4Range",
          "lowerAddress": "String",
          "upperAddress": "String"
        }
      ],
      "appId": "String",
      "appType": "String",
      "routingPolicyType": "String",
      "claims": "String"
    }
  ],
  "routes": [
    {
      "@odata.type": "microsoft.graph.vpnRoute",
      "destinationPrefix": "String",
      "prefixSize": 1024
    }
  ],
  "dnsRules": [
    {
      "@odata.type": "microsoft.graph.vpnDnsRule",
      "name": "String",
      "servers": [
        "String"
      ],
      "proxyServerUri": "String"
    }
  ]
}
```



