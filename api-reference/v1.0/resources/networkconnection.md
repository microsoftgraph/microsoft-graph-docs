---
title: "networkConnection resource type"
description: "Contains stateful information about the network connection related to the alert."
localization_priority: Normal
author: "chinguyen1"
ms.prod: "security"
doc_type: resourcePageType
---

# networkConnection resource type

Namespace: microsoft.graph

Contains stateful information about the network connection related to the alert.

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|applicationName|String|Name of the application managing the network connection (for example, Facebook or SMTP).|
|destinationAddress|String|Destination IP address (of the network connection).|
|destinationLocation|String|Location (by IP address mapping) associated with the destination of a network connection.|
|destinationDomain|String|Destination domain portion of the destination URL. (for example 'www.contoso.com').|
|destinationPort|String|Destination port (of the network connection).|
|destinationUrl|String|Network connection URL/URI string - excluding parameters. (for example 'www.contoso.com/products/default.html')|
|direction|connectionDirection|Network connection direction. Possible values are: `unknown`, `inbound`, `outbound`.|
|domainRegisteredDateTime|DateTimeOffset|Date when the destination domain was registered. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|localDnsName|String|The local DNS name resolution as it appears in the host's local DNS cache (for example, in case the 'hosts' file was tampered with).|
|natDestinationAddress|String|Network Address Translation destination IP address.|
|natDestinationPort|String|Network Address Translation destination port.|
|natSourceAddress|String|Network Address Translation source IP address.|
|natSourcePort|String|Network Address Translation source port.|
|protocol|[securityNetworkProtocol](securitynetworkprotocol.md)|Network protocol. Possible values are: `unknown`, `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`.|
|riskScore|String|Provider generated/calculated risk score of the network connection. Recommended value range of 0-1, which equates to a percentage.|
|sourceAddress|String|Source (i.e. origin) IP address (of the network connection).|
|sourceLocation|String|Location (by IP address mapping) associated with the source of a network connection.|
|sourcePort|String|Source (i.e. origin) IP port (of the network connection).|
|status|connectionStatus|Network connection status. Possible values are: `unknown`, `attempted`, `succeeded`, `blocked`, `failed`.|
|urlParameters|String|Parameters (suffix) of the destination URL.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.networkConnection"
}-->

```json
{
  "applicationName": "String",
  "destinationAddress": "String",
  "destinationLocation": "String",
  "destinationDomain": "String",
  "destinationPort": "String",
  "destinationUrl": "String",
  "direction": "@odata.type: microsoft.graph.connectionDirection",
  "domainRegisteredDateTime": "String (timestamp)",
  "localDnsName": "String",
  "natDestinationAddress": "String",
  "natDestinationPort": "String",
  "natSourceAddress": "String",
  "natSourcePort": "String",
  "protocol": "@odata.type: microsoft.graph.securityNetworkProtocol",
  "riskScore": "String",
  "sourceAddress": "String",
  "sourceLocation": "String",
  "sourcePort": "String",
  "status": "@odata.type: microsoft.graph.connectionStatus",
  "urlParameters": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "networkConnection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

