---
title: "privilegedRoleSummary resource type"
description: "The statistics summary for a particular role."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "governance"
author: "shauliu"
---

# privilegedRoleSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The statistics summary for a particular role.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get privilegedRoleSummary](../api/privilegedrolesummary-get.md) | [privilegedRoleSummary](privilegedrolesummary.md) |Read properties and relationships of privilegedRoleSummary object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|elevatedCount|int32|The number of users that have the role assigned and the role is activated.|
|id|string| The unique identifier for the role. Read-only.|
|managedCount|int32|The number of users that have the role assigned but the role is deactivated.|
|mfaEnabled|boolean|`true` if the role activation requires MFA. `false` if the role activation doesn't require MFA.|
|status|roleSummaryStatus| Possible values are: `ok`, `bad`. The value depends on the ratio of (managedCount / usersCount). If the ratio is less than a predefined threshold, `ok` is returned. Otherwise, `bad` is returned.|
|usersCount|int32|The number of users that are assigned with the role.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.privilegedRoleSummary"
}-->

```json
{
  "elevatedCount": 1024,
  "id": "string (identifier)",
  "managedCount": 1024,
  "mfaEnabled": true,
  "status": "string",
  "usersCount": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "privilegedRoleSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


