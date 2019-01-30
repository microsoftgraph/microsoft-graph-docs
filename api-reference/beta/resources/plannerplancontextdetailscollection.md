---
title: "plannerPlanContextDetailsCollection resource type"
description: " the value is the plannerPlanContextDetails object."
author: "TarkanSevilmis"
localization_priority: Normal
ms.prod: "planner"
---

# plannerPlanContextDetailsCollection resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


The **plannerPlanContextDetailsCollection** resource represents the collection of external contexts to which a plan is linked. This resource is an open type and is part of the [plannerPlanDetails](plannerplandetails.md) object. The property name in the property-value pair is an app-specific identifier of the context; the value is the [plannerPlanContextDetails](plannerplancontextdetails.md) object.


## Properties
Properties of an open type can be defined by the client. In this case, the client should use a distinctive identifier that represents the external context as the property name. 
The property values must be [plannerPlanContextDetails](plannerplancontextdetails.md) objects. Based on OData, property names in open types cannot contain the following characters: `.`, `:`, `@`, `%`. These characters need to be encoded with URL encoding format. To remove an item in the favorites list, the value needs to be removed from the [plannerPlanContextCollection](plannerplancontextcollection.md) collection instead, which will automatically remove the entry in this object.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerPlanContextDetailsCollection"
}-->
```json
{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerPlanContextDetailsCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/plannerplancontextdetailscollection.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
