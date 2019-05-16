---
title: "educationOutcome resource type"
description: "The outcome of grading an assignment."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
---

# educationOutcome resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The outcome of grading an assignment. You cannot instantiate an outcome directly; you must make a subclass that will represent the type of resource being used.

This resource stores the common properties across all resource types.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List outcomes](../api/educationsubmission-list-outcomes.md) | [educationOutcome](educationoutcome.md) collection | Get all existing **educationOutcomes**.|
|[Update outcome](../api/educationsubmission-update-outcome.md) | [educationOutcome](educationoutcome.md) | Update an existing **educationOutcome**.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String|Unique identifier for the outcome.|
|lastModifiedBy|[identitySet](identityset.md)| Who last modified the outcome. |
|lastModifiedDateTime|DateTimeOffset|Moment when the outcome was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationOutcome"
}-->

```json
{
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationOutcome resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
