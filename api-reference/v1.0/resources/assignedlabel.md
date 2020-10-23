---
title: "assignedLabel resource type"
description: "Represents a sensitivity label assigned to an Microsoft 365 group."
localization_priority: Normal
author: "krbain"
ms.prod: "groups"
doc_type: resourcePageType
---

# assignedLabel resource type

Namespace: microsoft.graph

Represents a sensitivity label assigned to an Microsoft 365 group. Sensitivity labels allow administrators to enforce specific group settings on a group by assigning a classification to the group (such as Confidential, Highly Confidential or General). Sensitivity labels are published by administrators in Microsoft 365 Security & Compliance Center as part of Microsoft Information Protection capabilities. For more information about sensitivity labels, see [Sensitivity labels overview](/microsoft-365/compliance/sensitivity-labels?view=o365-worldwide).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|labelId|String|The unique identifier of the label.|
|displayName|String|The display name of the label. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.assignedLabel"
}-->

```json
{
  "labelId": "String",
  "displayName": "String"
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "assignedLabel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->