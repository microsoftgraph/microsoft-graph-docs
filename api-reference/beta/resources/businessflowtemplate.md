---
title: "businessFlowTemplate resource type"
description: "In the Azure AD access reviews feature, the `businesFlowTemplate` represents an Azure AD business flow template. The identifier of a template, such as to review guest members of a group, is supplied by the caller when creating an access review."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "markwahl-msft"
---

# businessFlowTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the Azure AD [access reviews](accessreviews-root.md) feature, the `businesFlowTemplate` represents an Azure AD business flow template. The identifier of a template, such as to review guest members of a group, is supplied by the caller when creating an access review.

The business flow template objects are automatically generated when the global administrator onboards the tenant to use the access reviews feature.  The business flow templates include access reviews of assignments to an application, memberships of a group, memberships of an Azure AD role, guest user memberships of a group, and guest user assignments to an application. No additional business flow templates can be created.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List businessFlowTemplates](../api/businessflowtemplate-list.md) | [businessFlowTemplate](businessflowtemplate.md) collection| Get the business flow templates appropriate to access reviews.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| `id`                     |`String`                | The feature-assigned identifier of the business flow template. These values are case sensitive.                                      |
| `displayName`            |`String`                | The name of the business flow template                                                             |


## Relationships

None.

## See also

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create accessReview](../api/accessreview-create.md) |	[accessReview](accessreview.md) |	Create a new accessReview. |


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.businessFlowTemplate"
}-->

```json
{
 "id": "string (identifier)",
 "displayName": "string"
}

```

<!--
{
  "type": "#page.annotation",
  "description": "businessFlowTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


