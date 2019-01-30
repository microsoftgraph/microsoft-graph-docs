---
title: "verifiedDomain resource type"
description: "Specifies a domain for a tenant. The **verifiedDomains** property of the organization entity is a collection of **VerifiedDomain**."
localization_priority: Normal
---

# verifiedDomain resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
<!--
{
  "type": "#page.annotation",
  "description": "verifiedDomain resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/verifieddomain.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
