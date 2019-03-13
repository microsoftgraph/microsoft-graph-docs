---
title: "assignedLicense resource type"
description: "Represents a license assigned to a user. The **assignedLicenses** property of the user entity is a collection of **assignedLicense**."
localization_priority: Normal
doc_type: resourcePageType
---

# assignedLicense resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a license assigned to a user. The **assignedLicenses** property of the [user](user.md) entity is a collection of **assignedLicense**.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|disabledPlans|Guid collection|A collection of the unique identifiers for plans that have been disabled.|
|skuId|Guid|The unique identifier for the SKU.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.assignedLicense"
}-->

```json
{
  "disabledPlans": ["guid"],
  "skuId": "guid"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "assignedLicense resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/assignedlicense.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
