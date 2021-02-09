---
title: "groupMembers complex type"
description: "Identifies a collection of users in the tenant who will be allowed as requestor, approver, or reviewer."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# groupMembers complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the request, approval, and assignment review settings of an [access package assignment policy](accesspackageassignmentpolicy.md). 
The `@odata.type` value "`#microsoft.graph.groupMembers`" indicates that this type identifies a collection of users in the tenant who will be allowed as requestor, approver, or reviewer, who are the members of a specific group.

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| id |String | The ID of the group in Azure AD. |
| description |String | The name of the group in Azure AD. Read only. |
| isBackup | Boolean | For **groupMembers** in an approval stage, this property indicates that the group members are a backup fallback approver. |

## JSON representation


The following is a JSON representation of the type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.groupMembers",
  "baseType": "microsoft.graph.userSet"
}-->

```json
{
  "id": "string (identifier)",
  "description": "string",
  "isBackup": false
}
```



<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupMembers complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


