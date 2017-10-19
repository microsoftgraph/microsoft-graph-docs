# domainDnsMxRecord resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a MX record added to the DNS zone file of a particular domain in the tenant. Inherited from [DomainDnsRecord](domaindnsrecord.md) entity.

## Methods
Direct queries to this resource are not supported. Please see the [domain](domain.md) topic for information on how to query for domain service records.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Unique identifier assigned to this entity. Not nullable, Read-only.|
|isOptional|Boolean| If false, the MX record must be configured by the customer at the DNS host for Microsoft Online Services to operate correctly with the domain. |
|label|String| Value used when configuring the *alias/host/name* property of the MX record at the DNS host. |
|mailExchange|String| Value used when configuring the *answer/destination/value* of the MX record at the DNS host.|
|preference|Int32| Value used when configuring the *Preference/Priority* property of the MX record at the DNS host. |
|recordType|String| Type of DNS record. The value is always *Mx*. Key |
|supportedService|String| Microsoft Online Service or feature that has a dependency on this MX record.</br></br>Can be one of the following values: **null**, *Email*, *Sharepoint*, *EmailInternalRelayOnly*, *OfficeCommunicationsOnline*, *SharePointDefaultDomain*, *FullRedelegation*, *SharePointPublic*, *OrgIdAuthentication*, *Yammer*, *Intune* |
|ttl|Int32| Value to use when configuring the *time-to-live (ttl)* property of the MX record at the DNS host. Not nullable |

## Relationships
None

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domainDnsMxRecord"
}-->

```json
{
  "canonicalName": "String",
  "id": "String (identifier)",
  "isOptional": true,
  "label": "String",
  "mailExchange": "String",
  "preference": 1024,
  "recordType": "String",
  "supportedService": "String",
  "ttl": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domainDnsMxRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->