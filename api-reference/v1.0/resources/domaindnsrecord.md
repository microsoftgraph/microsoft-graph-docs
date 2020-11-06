---
title: "domainDnsRecord resource type"
description: "The DomainDnsRecord entity is used to present DNS records."
localization_priority: Normal
author: "adimitui"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# domainDnsRecord resource type

Namespace: microsoft.graph

For each domain in the tenant, you may be required to add DNS record(s) to the DNS zone file of the domain before the domain can be used by Microsoft Online Services. The **DomainDnsRecord** entity is used to present such DNS records. Base entity for [DomainDnsCnameRecord](domaindnscnamerecord.md), [DomainDnsMxRecord](domaindnsmxrecord.md), [DomainDnsSrvRecord](domaindnssrvrecord.md) and [DomainDnsTxtRecord](domaindnstxtrecord.md) entities.

## Methods
Direct queries to this resource are not supported. Please see the [domain](domain.md) topic for information on how to query for domain service records.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Unique identifier assigned to this entity. Not nullable, Read-only.|
|isOptional|Boolean| If false, this record must be configured by the customer at the DNS host for Microsoft Online Services to operate correctly with the domain. |
|label|String| Value used when configuring the name of the DNS record at the DNS host. |
|recordType|String| Indicates what type of DNS record this entity represents.</br></br>The value can be one of the following: *CName*, *Mx*, *Srv*, *Txt*</br></br>Key |
|supportedService|String| Microsoft Online Service or feature that has a dependency on this DNS record.</br></br>Can be one of the following values: **null**, *Email*, *Sharepoint*, *EmailInternalRelayOnly*, *OfficeCommunicationsOnline*, *SharePointDefaultDomain*, *FullRedelegation*, *SharePointPublic*, *OrgIdAuthentication*, *Yammer*, *Intune*|
|ttl|Int32| Value to use when configuring the time-to-live (ttl) property of the DNS record at the DNS host. Not nullable |

## Relationships
None

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domainDnsRecord"
}-->

```json
{
  "id": "String (identifier)",
  "isOptional": true,
  "label": "String",
  "recordType": "String",
  "supportedService": "String",
  "ttl": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domainDnsRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

