---
title: "businessFlowTemplate resource type"
description: "In the Azure AD access reviews feature, the `businesFlowTemplate` represents an Azure AD business flow template. The identifier of a template, such as to review guest members of a group, is supplied by the caller when creating an access review."
localization_priority: Normal
---

# businessFlowTemplate resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the Azure AD [access reviews](accessreviews-root.md) feature, the `businesFlowTemplate` represents an Azure AD business flow template. The identifier of a template, such as to review guest members of a group, is supplied by the caller when creating an access review.

The business flow template objects are automatically generated when the global administrator onboards the tenant to use the access reviews feature.  No additional business flow templates can be created.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List businessFlowTemplates](../api/businessflowtemplate-list.md) | [businessFlowTemplate](businessflowtemplate.md) collection| Get the business flow templates appropriate to access reviews.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| `id`                     |`String`                | The feature-assigned identifier of the business flow template                                      |
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
  "suppressions": [
    "Error: /api-reference/beta/resources/businessflowtemplate.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
