---
title: "appleVpnAlwaysOnConfiguration resource type"
description: "Always On VPN configuration for MacOS and iOS IKEv2"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# appleVpnAlwaysOnConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Always On VPN configuration for MacOS and iOS IKEv2

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tunnelConfiguration|[vpnTunnelConfigurationType](../resources/intune-deviceconfig-vpntunnelconfigurationtype.md)|Determines what connections the specific tunnel configuration applies to. Possible values are: `wifiAndCellular`, `cellular`, `wifi`.|
|userToggleEnabled|Boolean|Allow the user to toggle the VPN configuration using the UI|
|voicemailExceptionAction|[vpnServiceExceptionAction](../resources/intune-deviceconfig-vpnserviceexceptionaction.md)|Determine whether voicemail service will be exempt from the always-on VPN connection. Possible values are: `forceTrafficViaVPN`, `allowTrafficOutside`, `dropTraffic`.|
|airPrintExceptionAction|[vpnServiceExceptionAction](../resources/intune-deviceconfig-vpnserviceexceptionaction.md)|Determine whether AirPrint service will be exempt from the always-on VPN connection. Possible values are: `forceTrafficViaVPN`, `allowTrafficOutside`, `dropTraffic`.|
|cellularExceptionAction|[vpnServiceExceptionAction](../resources/intune-deviceconfig-vpnserviceexceptionaction.md)|Determine whether Cellular service will be exempt from the always-on VPN connection. Possible values are: `forceTrafficViaVPN`, `allowTrafficOutside`, `dropTraffic`.|
|allowAllCaptiveNetworkPlugins|Boolean|Specifies whether traffic from all captive network plugins should be allowed outside the vpn|
|allowedCaptiveNetworkPlugins|[specifiedCaptiveNetworkPlugins](../resources/intune-deviceconfig-specifiedcaptivenetworkplugins.md)|Determines whether all, some, or no non-native captive networking apps are allowed|
|allowCaptiveWebSheet|Boolean|Determines whether traffic from the Websheet app is allowed outside of the VPN|
|natKeepAliveIntervalInSeconds|Int32|Specifies how often in seconds to send a network address translation keepalive package through the VPN|
|natKeepAliveOffloadEnable|Boolean|Enable hardware offloading of NAT keepalive signals when the device is asleep|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appleVpnAlwaysOnConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appleVpnAlwaysOnConfiguration",
  "tunnelConfiguration": "String",
  "userToggleEnabled": true,
  "voicemailExceptionAction": "String",
  "airPrintExceptionAction": "String",
  "cellularExceptionAction": "String",
  "allowAllCaptiveNetworkPlugins": true,
  "allowedCaptiveNetworkPlugins": {
    "@odata.type": "microsoft.graph.specifiedCaptiveNetworkPlugins",
    "allowedBundleIdentifiers": [
      "String"
    ]
  },
  "allowCaptiveWebSheet": true,
  "natKeepAliveIntervalInSeconds": 1024,
  "natKeepAliveOffloadEnable": true
}
```




