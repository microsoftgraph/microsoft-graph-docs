# vpnOnDemandRule resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

VPN On-Demand Rule definition.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|ssids|String collection|Network Service Set Identifiers (SSIDs).|
|dnsSearchDomains|String collection|DNS Search Domains.|
|probeUrl|String|A URL to probe. If this URL is successfully fetched (returning a 200 HTTP status code) without redirection, this rule matches.|
|action|[vpnOnDemandRuleConnectionAction](../resources/intune_deviceconfig_vpnondemandruleconnectionaction.md)|Action. Possible values are: `connect`, `evaluateConnection`, `ignore`, `disconnect`.|
|domainAction|[vpnOnDemandRuleConnectionDomainAction](../resources/intune_deviceconfig_vpnondemandruleconnectiondomainaction.md)|Domain Action (Only applicable when Action is evaluate connection). Possible values are: `connectIfNeeded`, `neverConnect`.|
|domains|String collection|Domains (Only applicable when Action is evaluate connection).|
|probeRequiredUrl|String|Probe Required Url (Only applicable when Action is evaluate connection and DomainAction is connect if needed).|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.vpnOnDemandRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.vpnOnDemandRule",
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
```



