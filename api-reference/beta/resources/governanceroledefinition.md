---
title: "governanceRoleDefinition resource type"
description: "Represents the role definitions. For Azure resources, it can represent Azure RBAC roles, such as Owner, Reader, Contributor, etc."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "governance"
author: "shauliu"
---

# governanceRoleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Represents the role definitions. For Azure resources, it can represent Azure RBAC roles, such as Owner, Reader, Contributor, etc.


## Methods

| Method		  | Return Type	|Description|
|:---------------|:--------|:--------|
|[List](../api/governanceroledefinition-list.md) | [governanceRoleDefinition](../resources/governanceroledefinition.md) collection |List a collection of role definitions on a resource.|
|[Get](../api/governanceroledefinition-get.md) | [governanceRoleDefinition](../resources/governanceroledefinition.md) |Read properties and relationships of a role definition entity specified by id.|

No `POST`, `PUT`, `PATCH`, `DELETE` is supported on `roleDefinitions` entity set for now.

## Properties
| Property    | Type   | Description                                                           |
|:------------|:-------|:----------------------------------------------------------------------|
| id          | String | The id of the role definition.                                        |
| resourceId  | String | Required. The id of the resource associated with the role definition. |
| externalId  | String | The external id of the role definition.                               |
| displayName | String | The display name of the role definition.                              |
| templateId  | String |                                                                       |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|resource|[governanceResource](../resources/governanceresource.md)|Read-only. The associated resource for the role definition.|
|roleSetting|[governanceRoleSetting](../resources/governancerolesetting.md)|The associated role setting for the role definition.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
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
  "templateId":"String"
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
  "suppressions": []
}
-->


