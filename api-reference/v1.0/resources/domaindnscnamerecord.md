---
title: "domainDnsCnameRecord resource type"
description: "Represents a CNAME record added to the DNS zone file of a particular domain in the tenant."
author: "adimitui"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# domainDnsCnameRecord resource type

Namespace: microsoft.graph

Represents a CNAME record added to the DNS zone file of a particular domain in the tenant. Inherited from [DomainDnsRecord](domaindnsrecord.md) entity.


## Methods
Direct queries to this resource are not supported. Please see the [domain](domain.md) topic for information on how to query for domain service records.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|canonicalName|String| The canonical name of the CNAME record. Used to configure the CNAME record at the DNS host. |
|id|String| Unique identifier assigned to this entity. Not nullable, Read-only|
|isOptional|Boolean| If false, the CNAME record must be configured by the customer at the DNS host for Microsoft Online Services to operate correctly with the domain. Not nullable |
|label|String| Value used when configuring the *alias/host/name* of the CNAME record at the DNS host. |
|recordType|String| Type of DNS record. The value is always *CName*. Key|
|supportedService|String| Microsoft Online Service or feature that has a dependency on this CNAME record.</br></br>Can be one of the following values: **null**, *Email*, *Sharepoint*, *EmailInternalRelayOnly*, *OfficeCommunicationsOnline*, *SharePointDefaultDomain*, *FullRedelegation*, *SharePointPublic*, *OrgIdAuthentication*, *Yammer*, *Intune*|
|ttl|Int32| Value to use when configuring the time-to-live (ttl) property of the CNAME record at the DNS host. Not nullable |

## Relationships
None


## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.domainDnsRecord",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domainDnsCnameRecord"
}-->

```json
{
  "canonicalName": "String",
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
  "description": "domainDnsCnameRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

