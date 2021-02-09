---
title: "programResource resource type"
description: "Represents a reference to an object which is the target of the access review."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# programResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **programResource** object, contained within a [programControl](programcontrol.md) object, represents a reference to an object that is the target of the access review.

This type inherits from [identity](identity.md).

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| type | String | Type of the resource, indicating whether it is a group or an app. |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.programResource"
}-->
```json
{
  "type": "string"
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "programResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
