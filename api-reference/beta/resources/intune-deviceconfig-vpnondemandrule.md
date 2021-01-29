---
title: "vpnOnDemandRule resource type"
description: "VPN On-Demand Rule definition."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# vpnOnDemandRule resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

VPN On-Demand Rule definition.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ssids|String collection|Network Service Set Identifiers (SSIDs).|
|dnsSearchDomains|String collection|DNS Search Domains.|
|probeUrl|String|A URL to probe. If this URL is successfully fetched (returning a 200 HTTP status code) without redirection, this rule matches.|
|action|[vpnOnDemandRuleConnectionAction](../resources/intune-deviceconfig-vpnondemandruleconnectionaction.md)|Action. Possible values are: `connect`, `evaluateConnection`, `ignore`, `disconnect`.|
|domainAction|[vpnOnDemandRuleConnectionDomainAction](../resources/intune-deviceconfig-vpnondemandruleconnectiondomainaction.md)|Domain Action (Only applicable when Action is evaluate connection). Possible values are: `connectIfNeeded`, `neverConnect`.|
|domains|String collection|Domains (Only applicable when Action is evaluate connection).|
|probeRequiredUrl|String|Probe Required Url (Only applicable when Action is evaluate connection and DomainAction is connect if needed).|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
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




