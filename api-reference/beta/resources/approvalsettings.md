---
title: "approvalSettings complex type"
description: "Used for the requestApprovalSettings property of an access package assignment policy. Provides additional settings to select who must approve each request."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# approvalSettings complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the `requestApprovalSettings` property of an [access package assignment policy](accesspackageassignmentpolicy.md). Provides additional settings to select who must approve each request. 

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| isApprovalRequired | Boolean | If false, then approval is not required for requests in this policy. |
| isApprovalRequiredForExtension | Boolean| If false, then approval is not required for a user who already has an assignment to extend their assignment. |
| isRequestorJustificationRequired | Boolean | Indicates whether the requestor is required to supply a justification in their request. |
| approvalMode| String | One of `NoApproval`, `SingleStage` or `Serial`. The `NoApproval` is used when `isApprovalRequired` is false. |
| approvalStages | [approvalStage](approvalstage.md) collection| If approval is required, the one or two elements of this collection define each of the stages of approval. An empty array if no approval is required.  |

## JSON representation

The following is a JSON representation of the request approval settings property.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.approvalSettings"
}-->

```json
{
    "isApprovalRequired": true,
    "isApprovalRequiredForExtension": false,
    "isRequestorJustificationRequired": true,
    "approvalMode": "Serial",
    "approvalStages": [{"@odata.type": "microsoft.graph.approvalStage"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "approvalSettings complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


