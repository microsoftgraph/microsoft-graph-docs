---
title: "emailAddress resource type"
description: "Represents the name and SMTP address of an entity instance, for example, a message recipient or calendar owner."
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "outlook"
---

# emailAddress resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the name and SMTP address of an entity instance, for example, a message recipient or calendar owner.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|String|The email address of an entity instance.|
|name|String|The display name of an entity instance.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.emailAddress"
}-->

```json
{
  "address": "string",
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "emailAddress resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/emailaddress.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
