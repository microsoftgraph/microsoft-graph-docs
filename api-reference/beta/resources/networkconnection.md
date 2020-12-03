---
title: "networkConnection resource type"
description: " > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "preetikr"
---

# networkConnection resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains stateful information about the network connection related to the alert.

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|applicationName|String|Name of the application managing the network connection (for example, Facebook, SMTP, etc.).|
|destinationAddress|String|Destination IP address (of the network connection).|
|destinationDomain|String|Destination domain portion of the destination URL. (for example 'www.contoso.com').|
|destinationLocation|String|Location (by IP address mapping) associated with the destination of a network connection.|
|destinationPort|String|Destination port (of the network connection).|
|destinationUrl|String|Network connection URL/URI string - excluding parameters. (for example 'www.contoso.com/products/default.html')|
|direction|connectionDirection|Network connection direction. Possible values are: `unknown`, `inbound`, `outbound`.|
|domainRegisteredDateTime|DateTimeOffset|Date when the destination domain was registered. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|localDnsName|String|The local DNS name resolution as it appears in the host's local DNS cache (for example, in case the 'hosts' file was tampered with).|
|natDestinationAddress|String|Network Address Translation destination IP address.|
|natDestinationPort|String|Network Address Translation destination port.|
|natSourceAddress|String|Network Address Translation source IP address.|
|natSourcePort|String|Network Address Translation source port.|
|protocol|securityNetworkProtocol|Network protocol. Possible values are: `unknown`, `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`.|
|riskScore|String|Provider generated/calculated risk score of the network connection. Recommended value range of 0-1, which equates to a percentage.|
|sourceAddress|String|Source (i.e. origin) IP address (of the network connection).|
|sourceLocation|String|Location (by IP address mapping) associated with the source of a network connection.|
|sourcePort|String|Source (i.e. origin) IP port (of the network connection).|
|status|connectionStatus|Network connection status. Possible values are: `unknown`, `attempted`, `succeeded`, `blocked`, `failed`.|
|urlParameters|String|Parameters (suffix) of the destination URL.|

### securityNetworkProtocol values

|Member|Value|Description|
|:---|:---|:---|
|unknown|-1|Unknown protocol.|
|ip|0|Internet Protocol.|
|icmp|1| Internet Control Message Protocol.|
|igmp|2| Internet Group Management Protocol.|
|ggp|3| Gateway To Gateway Protocol.|
|ipv4|4| Internet Protocol version 4.|
|tcp|6| Transmission Control Protocol.|
|pup|12| PARC Universal Packet Protocol.|
|udp|17| User Datagram Protocol.|
|idp|22| Internet Datagram Protocol.|
|ipv6|41| Internet Protocol version 6 (ipv6).|
|ipv6RoutingHeader|43| ipv6 Routing header.|
|ipv6FragmentHeader|44| ipv6 Fragment header.|
|ipSecEncapsulatingSecurityPayload|50| ipv6 Encapsulating Security Payload header.|
|ipSecAuthenticationHeader|51| ipv6 Authentication header.|
|icmpV6|58| Internet Control Message Protocol for ipv6.|
|ipv6NoNextHeader|59| ipv6 No next header.|
|ipv6DestinationOptions|60| ipv6 Destination Options header.|
|nd|77| Net Disk Protocol (unofficial).|
|raw|255| Raw IP packet protocol.|
|ipx|1000| Internet Packet Exchange Protocol.|
|spx|1256| Sequenced Packet Exchange protocol.|
|spxII|1257| Sequenced Packet Exchange version 2 protocol.|

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
  "destinationDomain": "String",
  "destinationLocation": "String",
  "destinationPort": "String",
  "destinationUrl": "String",
  "direction": "String",
  "domainRegisteredDateTime": "String (timestamp)",
  "localDnsName": "String",
  "natDestinationAddress": "String",
  "natDestinationPort": "String",
  "natSourceAddress": "String",
  "natSourcePort": "String",
  "protocol": "string",
  "riskScore": "String",
  "sourceAddress": "String",
  "sourceLocation": "String",
  "sourcePort": "String",
  "status": "String",
  "urlParameters": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "networkConnection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


