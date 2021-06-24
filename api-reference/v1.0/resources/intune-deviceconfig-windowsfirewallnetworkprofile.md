---
title: "windowsFirewallNetworkProfile resource type"
description: "Windows Firewall Profile Policies."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsFirewallNetworkProfile resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Firewall Profile Policies.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|firewallEnabled|[stateManagementSetting](../resources/intune-deviceconfig-statemanagementsetting.md)|Configures the host device to allow or block the firewall and advanced security enforcement for the network profile. Possible values are: `notConfigured`, `blocked`, `allowed`.|
|stealthModeBlocked|Boolean|Prevent the server from operating in stealth mode. When StealthModeRequired and StealthModeBlocked are both true, StealthModeBlocked takes priority.|
|incomingTrafficBlocked|Boolean|Configures the firewall to block all incoming traffic regardless of other policy settings. When IncomingTrafficRequired and IncomingTrafficBlocked are both true, IncomingTrafficBlocked takes priority.|
|unicastResponsesToMulticastBroadcastsBlocked|Boolean|Configures the firewall to block unicast responses to multicast broadcast traffic. When UnicastResponsesToMulticastBroadcastsRequired and UnicastResponsesToMulticastBroadcastsBlocked are both true, UnicastResponsesToMulticastBroadcastsBlocked takes priority.|
|inboundNotificationsBlocked|Boolean|Prevents the firewall from displaying notifications when an application is blocked from listening on a port. When InboundNotificationsRequired and InboundNotificationsBlocked are both true, InboundNotificationsBlocked takes priority.|
|authorizedApplicationRulesFromGroupPolicyMerged|Boolean|Configures the firewall to merge authorized application rules from group policy with those from local store instead of ignoring the local store rules. When AuthorizedApplicationRulesFromGroupPolicyNotMerged and AuthorizedApplicationRulesFromGroupPolicyMerged are both true, AuthorizedApplicationRulesFromGroupPolicyMerged takes priority.|
|globalPortRulesFromGroupPolicyMerged|Boolean|Configures the firewall to merge global port rules from group policy with those from local store instead of ignoring the local store rules. When GlobalPortRulesFromGroupPolicyNotMerged and GlobalPortRulesFromGroupPolicyMerged are both true, GlobalPortRulesFromGroupPolicyMerged takes priority.|
|connectionSecurityRulesFromGroupPolicyMerged|Boolean|Configures the firewall to merge connection security rules from group policy with those from local store instead of ignoring the local store rules. When ConnectionSecurityRulesFromGroupPolicyNotMerged and ConnectionSecurityRulesFromGroupPolicyMerged are both true, ConnectionSecurityRulesFromGroupPolicyMerged takes priority.|
|outboundConnectionsBlocked|Boolean|Configures the firewall to block all outgoing connections by default. When OutboundConnectionsRequired and OutboundConnectionsBlocked are both true, OutboundConnectionsBlocked takes priority. This setting will get applied to Windows releases version 1809 and above.|
|inboundConnectionsBlocked|Boolean|Configures the firewall to block all incoming connections by default. When InboundConnectionsRequired and InboundConnectionsBlocked are both true, InboundConnectionsBlocked takes priority.|
|securedPacketExemptionAllowed|Boolean|Configures the firewall to allow the host computer to respond to unsolicited network traffic of that traffic is secured by IPSec even when stealthModeBlocked is set to true. When SecuredPacketExemptionBlocked and SecuredPacketExemptionAllowed are both true, SecuredPacketExemptionAllowed takes priority.|
|policyRulesFromGroupPolicyMerged|Boolean|Configures the firewall to merge Firewall Rule policies from group policy with those from local store instead of ignoring the local store rules. When PolicyRulesFromGroupPolicyNotMerged and PolicyRulesFromGroupPolicyMerged are both true, PolicyRulesFromGroupPolicyMerged takes priority.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsFirewallNetworkProfile",
  "firewallEnabled": "String",
  "stealthModeBlocked": true,
  "incomingTrafficBlocked": true,
  "unicastResponsesToMulticastBroadcastsBlocked": true,
  "inboundNotificationsBlocked": true,
  "authorizedApplicationRulesFromGroupPolicyMerged": true,
  "globalPortRulesFromGroupPolicyMerged": true,
  "connectionSecurityRulesFromGroupPolicyMerged": true,
  "outboundConnectionsBlocked": true,
  "inboundConnectionsBlocked": true,
  "securedPacketExemptionAllowed": true,
  "policyRulesFromGroupPolicyMerged": true
}
```




