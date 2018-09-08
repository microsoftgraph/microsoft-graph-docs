# hostSecurityState resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Contains stateful information about the host (including devices, computers, and so on).

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|fqdn|String|Host FQDN (Fully Qualified Domain Name) (for example, machine.company.com).|
|isAzureAadJoined|Boolean|True if the host is domain joined to Azure Active Directory Domain Services.|
|isAzureAadRegistered|Boolean|True if the host registered with Azure Active Directory Device Regsitration (BYOD devices - that is, not fully managed by enterprise).|
|isHybridAzureDomainJoined|Boolean|True if the host is domain joined to an on-premises Active Directory domain.|
|netBiosName|String|The local host name, without the DNS domain name.|
|privateIpAddress|String|Private (not routable) IPv4 or IPv6 address (see [RFC 1918](https://tools.ietf.org/html/rfc1918)) at the time of the alert.|
|publicIpAddress|String|Publicly routable IPv4 or IPv6 address (see [RFC 1918](https://tools.ietf.org/html/rfc1918)) at time of the alert.|
|riskScore|String|Provider-generated/calculated risk score of the host.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.hostSecurityState"
}-->

```json
{
  "fqdn": "String",
  "isAzureAadJoined": true,
  "isAzureAadRegistered": true,
  "isHybridAzureDomainJoined": true,
  "netBiosName": "String",
  "privateIpAddress": "String",
  "publicIpAddress": "String",
  "riskScore": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "hostSecurityState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
