---
title: "openShift resource type"
description: "Represents an unassigned open shift in a schedule."
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# openShift resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an unassigned, open shift in a [schedule](../resources/schedule.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create](../api/openshift-post.md) | [openShift](openshift.md) | Create an instance of an **openShift** object. |
| [List](../api/openshift-list.md) | Collection of [openShift](openshift.md) | List the properties and relationships of **openShift** objects in a team.|
| [Get](../api/openshift-get.md) | [openShift](openshift.md) | Read the properties and relationships of an **openShift** object. |
| [Update](../api/openshift-update.md) | [openShift](openshift.md) | Update an **openShift** object. |
| [Delete](../api/openshift-delete.md) | None | Delete an **openShift** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|draftOpenShift|[openShiftItem](openshiftitem.md)|An unpublished open shift.|
|schedulingGroupId|String|ID for the scheduling group that the open shift belongs to.|
|sharedOpenShift|[openShiftItem](openshiftitem.md)|A published open shift.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.openShift",
  "baseType": ""
}-->

```json
{
  "draftOpenShift": {"@odata.type": "microsoft.graph.openShiftItem"},
  "schedulingGroupId": "String",
  "sharedOpenShift": {"@odata.type": "microsoft.graph.openShiftItem"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "openShift resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


