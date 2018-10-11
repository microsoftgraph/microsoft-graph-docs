# verifiedDomain resource type

Specifies a domain for a tenant. The **verifiedDomains** property of the [organization](organization.md) entity is a collection of **VerifiedDomain**.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|capabilities|String|For example, “Email”, “OfficeCommunicationsOnline”.|
|isDefault|Boolean|                **true** if this is the default domain associated with the tenant; otherwise, **false**.            |
|isInitial|Boolean|**true** if this is the initial domain associated with the tenant; otherwise, **false**|
|name|String|The domain name; for example, “contoso.onmicrosoft.com”|
|type|String|For example, “Managed”.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.verifiedDomain"
}-->

```json
{
  "capabilities": "string",
  "isDefault": true,
  "isInitial": true,
  "name": "string",
  "type": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "verifiedDomain resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
