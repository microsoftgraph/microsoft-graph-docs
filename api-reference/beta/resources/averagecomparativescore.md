---
title: " averageComparativeScore resource type"
description: "This resource contains various different scores based by different scopes (for example, average by industry vertical, average by company seat size, and so on) and control category (Identity, Data, Device, Apps, Infrastructure)."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "preetikr"
---

#  averageComparativeScore resource type

Namespace: microsoft.graph

This resource contains various different scores based by different scopes (for example, average by industry vertical, average by company seat size, and so on) and control category (Identity, Data, Device, Apps, Infrastructure).

|Property |Type |Description |
|:--|:--|:--|
|	basis	|	String	|	Scope type (By AllTenants, TotalSeats, IndustryTypes).	|
|	averageScore	|	Double	| Average score within specified basis. |
|	deviceScore	|	Double	| Average score within specified basis. |
|	dataScore	|	Double	| Average score within specified basis. |
|	identityScore	|	Double	| Average score within specified basis. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.averageComparativeScore"
}-->

```json
{
  "basis": "String",
  "averageScore": "Double",
  "deviceScore": "Double",
  "dataScore": "Double",
  "identityScore": "Double"
}

```


<!-- {
  "type": "#page.annotation",
  "description": "averageComparativeScore resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


