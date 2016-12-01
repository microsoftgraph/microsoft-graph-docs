# windows10VpnConfiguration resource type

By providing the configurations in this profile you can instruct the Windows 10 device (desktop or mobile) to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [windowsVpnConfiguration](windowsVpnConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows10VpnConfigurations](../api/windows10VpnConfiguration_list.md)|[windows10VpnConfiguration](../resources/windows10VpnConfiguration.md) collection|List properties and relationships of the [windows10VpnConfiguration](../resources/windows10VpnConfiguration.md) objects.|
|[Get windows10VpnConfiguration](../api/windows10VpnConfiguration_get.md)|[windows10VpnConfiguration](../resources/windows10VpnConfiguration.md)|Read properties and relationships of the [windows10VpnConfiguration](../resources/windows10VpnConfiguration.md) object.|
|[Create windows10VpnConfiguration](../api/windows10VpnConfiguration_create.md)|[windows10VpnConfiguration](../resources/windows10VpnConfiguration.md)|Create a new [windows10VpnConfiguration](../resources/windows10VpnConfiguration.md) object.|
|[Delete windows10VpnConfiguration](../api/windows10VpnConfiguration_delete.md)|None|Deletes a [windows10VpnConfiguration](../resources/windows10VpnConfiguration.md).|
|[Update windows10VpnConfiguration](../api/windows10VpnConfiguration_update.md)|[windows10VpnConfiguration](../resources/windows10VpnConfiguration.md)|Update the properties of a [windows10VpnConfiguration](../resources/windows10VpnConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/windows10VpnConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/windows10VpnConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/windows10VpnConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get windows10CertificateProfileBase](../api/windows10VpnConfiguration_get_windows10CertificateProfileBase.md)|[windows10CertificateProfileBase](../resources/windows10CertificateProfileBase.md)|Get the [windows10CertificateProfileBase](../resources/windows10CertificateProfileBase.md) from the identityCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|connectionName|String|Connection name displayed to the user. Inherited from [windowsVpnConfiguration](windowsVpnConfiguration.md).|
|servers|[vpnServer](../resources/vpnServer.md) collection|List of VPN Servers on the network. Make sure end users can access these network locations. Inherited from [windowsVpnConfiguration](windowsVpnConfiguration.md).|
|customXml|Binary|Custom XML commands that configures the VPN connection. (UTF8 encoded byte array) Inherited from [windowsVpnConfiguration](windowsVpnConfiguration.md).|
|connectionType|String|Connection type. Possible values are: `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`, `automatic`, `ikEv2`, `l2tp`, `pptp`.|
|enableSplitTunneling|Boolean|Enable split tunneling.|
|authenticationMethod|String|Authentication method. Possible values are: `certificate`, `usernameAndPassword`, `customEapXml`.|
|rememberUserCredentials|Boolean|Remember user credentials.|
|enableConditionalAccess|Boolean|Enable conditional access.|
|enableSingleSignOnWithAlternateCertificate|Boolean|Enable single sign-on (SSO) with alternate certificate.|
|singleSignOnEku|[extendedKeyUsage](../resources/extendedKeyUsage.md)|Single sign-on Extended Key Usage (EKU).|
|singleSignOnIssuerHash|String|Single sign-on issuer hash.|
|eapXml|Binary|Extensible Authentication Protocol (EAP) XML. (UTF8 encoded byte array)|
|proxyServer|[windows10VpnProxyServer](../resources/windows10VpnProxyServer.md)|Proxy Server.|
|associatedApps|[windows10AssociatedApps](../resources/windows10AssociatedApps.md) collection|Associated Apps.|
|onlyAssociatedAppsCanUseConnection|Boolean|Only associated Apps can use connection (per-app VPN).|
|windowsInformationProtectionDomain|String|Windows Information Protection (WIP) domain to associate with this connection.|
|trafficRules|[vpnTrafficRule](../resources/vpnTrafficRule.md) collection|Traffic rules.|
|routes|[vpnRoute](../resources/vpnRoute.md) collection|Routes (optional for third-party providers).|
|dnsRules|[vpnDnsRule](../resources/vpnDnsRule.md) collection|DNS rules.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|identityCertificate|[windows10CertificateProfileBase](../resources/windows10CertificateProfileBase.md)|Identity certificate for client authentication when authentication method is certificate.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10VpnConfiguration"
}
-->
```json
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
      "ipAddressOrFqdn": "String",
      "isDefaultServer": true
    }
  ],
  "customXml": "binary",
  "connectionType": "String",
  "enableSplitTunneling": true,
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

