---
title: "plannerTeamsPublicationInfo resource type"
description: "Contains detailed information about the publication process that created a plannerTask."
author: "TarkanSevilmis"
localization_priority: Normal
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerTeamsPublicationInfo resource type

Namespace: microsoft.graph

Contains detailed information about the publication process that created a [plannerTask](plannertask.md). A publication process creates copies of tasks based on a template. These tasks are created in multiple plans, and have restricted permissions for the users; for example, they cannot be deleted and users might be blocked from editing certain fields. Publication is used to distribute tasks across an organization and track their progress centrally.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastModifiedDateTime|DateTimeOffset|The date and time when this task was last modified by the publication process. Read-only. |
|publicationId|String| The identifier of the publication. Read-only.|
|publishedToPlanId|String|The identifier of the **plannerPlan** this task was originally placed in. Read-only. |
|publishingTeamId|String| The identifier of the [team](team.md) that initiated the publication process. Read-only.|
|publishingTeamName|String|The display name of the team that initiated the publication process. This display name is for reference only, and might not represent the most up-to-date name of the team. Read-only. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTeamsPublicationInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTeamsPublicationInfo",
  "publicationId": "String",
  "publishingTeamId": "String",
  "publishingTeamName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "publishedToPlanId": "String"
}
```

