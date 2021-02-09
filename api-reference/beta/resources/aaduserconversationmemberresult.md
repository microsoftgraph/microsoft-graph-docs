---
title: "aadUserConversationMemberResult resource type"
description: "Resource for modeling responses of bulk operations on aadUserConversationMember."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# aadUserConversationMemberResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the individual response for each member specified in a bulk operation comprising of [aadUserConversationMember(s)](aadUserConversationMember.md) in the request.
This resource is the derivative of the [actionResultPart](actionresultpart.md) resource.

## Properties

| Property | Type	| Description |
|:---------------|:--------|:----------|
|userId|`String`|The user object ID of the Azure AD user that was being added as part of the bulk operation.|
|error|[publicError](publicerror.md) |The error that occurred, if any, during the course of the bulk operation.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.aadUserConversationMemberResult"
}-->

```json
{
    "userId": "string",
    "error": "microsoft.graph.publicError"
}
```

## See also

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


