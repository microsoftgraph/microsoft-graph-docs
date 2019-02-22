---
title: "governanceRoleDefinition resource type"
description: "Represents the role definitions. For Azure resources, it can represent Azure RBAC roles, such as Owner, Reader, Contributor, etc."
localization_priority: Normal
---

# governanceRoleDefinition resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Represents the role definitions. For Azure resources, it can represent Azure RBAC roles, such as Owner, Reader, Contributor, etc.


## Methods

| Method		  | Return Type	|Description|
|:---------------|:--------|:--------|:----------|
|[List](../api/governanceroledefinition-list.md) | [governanceRoleDefinition](../resources/governanceroledefinition.md) collection |List a collection of role definitions on a resource.|
|[Get](../api/governanceroledefinition-get.md) | [governanceRoleDefinition](../resources/governanceroledefinition.md) |Read properties and relationships of a role definition entity specified by id.|
No `POST`, `PUT`, `PATCH`, `DELETE` is supported on `roleDefinitions` entity set for now.
## Properties
| Property	| Type	    |Description|
|:----|:----------|:----------|:----------|
|id         |String     |The id of the role definition. |
|resourceId |String     |Required. The id of the resource associated with the role definition. |
|externalId   |String     |The external id of the role definition.|
|displayName|String     |The display name of the role definition.|
|subjectCount|Int32     |Optional. The number of subjects that are assigned to the role. It represents the status of the requestor's access to the resource. To get the property, please explictly use `$select=subjectCount` in the query.|
|eligibleAssignmentCount|Int32|Optional. The number of eligible role assignments associated with the role definition. To get the property, please explictly use `$select=eligibleAssignmentCount` in the query.|
|activeAssignmentCount|Int32    |Optional. The number of active role assignments associated with the role definition.  To get the property, please explictly use `$select=activeAssignmentCount` in the query.|


## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|resource|[governanceResource](../resources/governanceresource.md)|Read-only. The associated resource for the role definition.|
|roleSetting|[governanceRoleSetting](../resources/governancerolesetting.md)|The associated role setting for the role definition.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.governanceRoleDefinition"
}-->

```json
{
  "id": "String (identifier)",
  "resourceId": "String",
  "externalId": "String",
  "displayName": "String",
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "governanceRoleDefinition",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/governanceroledefinition.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
