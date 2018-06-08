# domainDnsTxtRecord resource type

Represents a TXT record added to the DNS zone file of a particular domain in the tenant. Inherited from [DomainDnsRecord](domaindnsrecord.md) entity.

## Methods
Direct queries to this resource are not supported. Please see the [domain](domain.md) topic for information on how to query for domain service records.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Unique identifier assigned to this entity. Not nullable, Read-only. |
|isOptional|Boolean| If false, the TXT record must be configured by the customer at the DNS host for Microsoft Online Services to operate correctly with the domain. |
|label|String| Value to use when configuring the *name* property of the TXT record at the DNS host.|
|recordType|String| Type of DNS record. The value is always *Txt*. Key |
|supportedService|String| Microsoft Online Service or feature that has a dependency on this TXT record.</br></br>Can be one of the following values: **null**, *Email*, *Sharepoint*, *EmailInternalRelayOnly*, *OfficeCommunicationsOnline*, *SharePointDefaultDomain*, *FullRedelegation*, *SharePointPublic*, *OrgIdAuthentication*, *Yammer*, *Intune* |
|text|String| Value used when configuring the *text* property at the DNS host. |
|ttl|Int32| Value to use when configuring the *time-to-live (ttl)* property of the MX record at the DNS host. Not nullable |

## Relationships
None


## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.domainDnsRecord",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domainDnsTxtRecord"
}-->

```json
{
  "id": "String (identifier)",
  "isOptional": true,
  "label": "String",
  "recordType": "String",
  "supportedService": "String",
  "text": "String",
  "ttl": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domainDnsTxtRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->