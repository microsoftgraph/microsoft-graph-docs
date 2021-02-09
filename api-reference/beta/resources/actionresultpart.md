---
title: "actionResultType resource type"
description: "Abstract type for modeling responses of bulk operations."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# actionResultPart resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that serves as a base for modeling responses of bulk operations. The **error** property is selectively populated based on whether the response represents an error.

## Properties

| Property | Type	| Description |
|:---------------|:--------|:----------|
|error|[publicError](publicerror.md) |The error that occurred, if any, during the course of the bulk operation.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.actionResultPart"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.actionResultPart",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```
## See also

- [aadUserConversationMemberResult](aadUserConversationMemberResult.md)
- [Add members in bulk to team](../api/conversationmembers-add.md)

<!-- uuid: 20fd7863-9545-40d4-ae8f-fee2d115a690
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "actionResultPart",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


