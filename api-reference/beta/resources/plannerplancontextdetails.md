---
title: "plannerPlanContextDetails resource type"
description: "The **plannerPlanContextDetails** resource contains additional information about a plannerPlanContext."
localization_priority: Normal
author: "TarkanSevilmis"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerPlanContextDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerPlanContextDetails** resource contains additional information about a [plannerPlanContext](plannerplancontext.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customLinkText|String|Nullable. Specifies the text to use in a user experience to display a link the the associated [plannerPlanContext](plannerplancontext.md). If null, applications should display the link with a custom text based on the **displayLinkType** property.|
|displayLinkType|plannerPlanContextType|Specifies how an application should display the link to the associated **plannerPlanContext**. Applications may choose to provide customized text, description, icons, or other experiences based on the type of the link. Possible values are: `teamsTab`, `sharePointPage`, `meetingNotes`, `other`, `unknownFutureValue`.|
|url|String|URL of the user experience represented by the associated **plannerPlanContext**. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerPlanContextDetails"
}-->

```json
{
  "url": "http://www.microsoft.com",
  "customLinkText": "Visit Microsoft's home page.",
  "displayLinkType": "other"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerPlanContextDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


