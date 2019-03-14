---
title: "windowsFirewallRule resource type"
description: "A rule controlling traffic through the Windows Firewall."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# windowsFirewallRule resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A rule controlling traffic through the Windows Firewall.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the rule. Does not need to be unique.|
|description|String|The description of the rule.|
|packageFamilyName|String|The package family name of a Microsoft Store application that's affected by the firewall rule.|
|filePath|String|The full file path of an app that's affected by the firewall rule.|
|serviceName|String|The name used in cases when a service, not an application, is sending or receiving traffic.|
|protocol|Int32|0-255 number representing the IP protocol (TCP = 6, UDP = 17). If not specified, the default is All. Valid values 0 to 255|
|localPortRanges|String collection|List of local port ranges. For example, "100-120", "200", "300-320". If not specified, the default is All.|
|remotePortRanges|String collection|List of remote port ranges. For example, "100-120", "200", "300-320". If not specified, the default is All.|
|localAddressRanges|String collection|List of local addresses covered by the rule. Valid tokens include:
- "*" indicates any local address. If present, this must be the only token included.
- A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask nor a network prefix is specified, the subnet mask defaults to 255.255.255.255.
- A valid IPv6 address.
- An IPv4 address range in the format of "start address - end address" with no spaces included.
- An IPv6 address range in the format of "start address - end address" with no spaces included.
Default is any address.|
|remoteAddressRanges|String collection|List of tokens specifying the remote addresses covered by the rule. Tokens are case insensitive. Valid tokens include:
- "*" indicates any remote address. If present, this must be the only token included.
- "Defaultgateway"
- "DHCP"
- "DNS"
- "WINS"
- "Intranet" (supported on Windows versions 1809+)
- "RmtIntranet" (supported on Windows versions 1809+)
- "Internet" (supported on Windows versions 1809+)
- "Ply2Renders" (supported on Windows versions 1809+)
- "LocalSubnet" indicates any local address on the local subnet.
- A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask nor a network prefix is specified, the subnet mask defaults to 255.255.255.255.
- A valid IPv6 address.
- An IPv4 address range in the format of "start address - end address" with no spaces included.
- An IPv6 address range in the format of "start address - end address" with no spaces included.
Default is any address.|
|profileTypes|[windowsFirewallRuleNetworkProfileTypes](../resources/intune-deviceconfig-windowsfirewallrulenetworkprofiletypes.md)|Specifies the profiles to which the rule belongs. If not specified, the default is All. Possible values are: `notConfigured`, `domain`, `private`, `public`.|
|action|[stateManagementSetting](../resources/intune-deviceconfig-statemanagementsetting.md)|The action the rule enforces. If not specified, the default is Allowed. Possible values are: `notConfigured`, `blocked`, `allowed`.|
|trafficDirection|[windowsFirewallRuleTrafficDirectionType](../resources/intune-deviceconfig-windowsfirewallruletrafficdirectiontype.md)|The traffic direction that the rule is enabled for. If not specified, the default is Out. Possible values are: `notConfigured`, `out`, `in`.|
|interfaceTypes|[windowsFirewallRuleInterfaceTypes](../resources/intune-deviceconfig-windowsfirewallruleinterfacetypes.md)|The interface types of the rule. Possible values are: `notConfigured`, `remoteAccess`, `wireless`, `lan`.|
|localUserAuthorizations|String|Specifies the list of authorized local users for the app container. This is a string in Security Descriptor Definition Language (SDDL) format.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsFirewallRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsFirewallRule",
  "displayName": "String",
  "description": "String",
  "packageFamilyName": "String",
  "filePath": "String",
  "serviceName": "String",
  "protocol": 1024,
  "localPortRanges": [
    "String"
  ],
  "remotePortRanges": [
    "String"
  ],
  "localAddressRanges": [
    "String"
  ],
  "remoteAddressRanges": [
    "String"
  ],
  "profileTypes": "String",
  "action": "String",
  "trafficDirection": "String",
  "interfaceTypes": "String",
  "localUserAuthorizations": "String"
}
```




