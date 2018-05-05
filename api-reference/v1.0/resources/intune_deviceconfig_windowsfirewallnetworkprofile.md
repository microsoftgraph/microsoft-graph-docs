# windowsFirewallNetworkProfile resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Firewall Profile Policies.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|firewallEnabled|[stateManagementSetting](../resources/intune_deviceconfig_statemanagementsetting.md)|Turn on the firewall and advanced security enforcement. Possible values are: `notConfigured`, `blocked`, `allowed`.|
|stealthModeBlocked|Boolean|Prevent the server from operating in stealth mode|
|incomingTrafficBlocked|Boolean|Configures the firewall to block all incoming traffic regardless of other policy settings|
|unicastResponsesToMulticastBroadcastsBlocked|Boolean|Configures the firewall to block unicast responses to multicast broadcast traffic|
|inboundNotificationsBlocked|Boolean|Prevents the firewall from displaying notifications when an application is blocked from listening on a port|
|authorizedApplicationRulesFromGroupPolicyMerged|Boolean|Configures the firewall to merge authorized application rules from group policy with those from local store instead of ignoring the local store rules|
|globalPortRulesFromGroupPolicyMerged|Boolean|Configures the firewall to merge global port rules from group policy with those from local store instead of ignoring the local store rules|
|connectionSecurityRulesFromGroupPolicyMerged|Boolean|Configures the firewall to merge connection security rules from group policy with those from local store instead of ignoring the local store rules|
|outboundConnectionsBlocked|Boolean|Configures the firewall to block all outgoing connections by default|
|inboundConnectionsBlocked|Boolean|Configures the firewall to block all incoming connections by default|
|securedPacketExemptionAllowed|Boolean|Configures the firewall to allow the host computer to respond to unsolicited network traffic of that traffic is secured by IPSec even when stealthModeBlocked is set to true|
|policyRulesFromGroupPolicyMerged|Boolean|Configures the firewall to merge Firewall Rule policies from group policy with those from local store instead of ignoring the local store rules|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
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



