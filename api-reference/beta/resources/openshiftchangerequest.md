---
title: "openShiftChangeRequest resource type"
description: "Represents a type of shift request to claim an open shift in a schedule."
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# openShiftChangeRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a type of shift request to claim an [openshift](../resources/openshift.md) in a [schedule](../resources/schedule.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create](../api/openshiftchangerequest-post.md) | [openshiftchangerequest](openshiftchangerequest.md) | Create an instance of an openshiftchangerequest object. |
| [List](../api/openshiftchangerequest-list.md) | Collection of [openshiftchangerequest](openshiftchangerequest.md) | List the properties and relationships of **openShiftChangeRequest** objects in a team. |
| [Get](../api/openshiftchangerequest-get.md) | [openShiftChangeRequest](openshiftchangerequest.md) | Read the properties and relationships of an **openShiftChangeRequest** object. |
|[Approve](../api/openshiftchangerequest-approve.md)|None|Approve an open shift change request.|
|[Decline](../api/openshiftchangerequest-decline.md)|None| Decline an open shift change request.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|openShiftId|String| ID for the open shift.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.openShiftChangeRequest",
  "baseType": ""
}-->

```json
{
  "openShiftId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "openShiftChangeRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


