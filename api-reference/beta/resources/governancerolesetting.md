---
title: "governanceRoleSetting resource type"
description: "Represents a set of configurations on each role definition that needs to be evaluated against when role assignments are created or modified."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "governance"
author: "shauliu"
---

# governanceRoleSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a set of configurations on each role definition that needs to be evaluated against when role assignments are created or modified. For example, role settings might include "maximum assignment duration" rule, "MFA required on activation" rule, and so on.

## Methods

| Method		  | Return Type	|Description|
|:---------------|:--------|:--------|
|[List](../api/governancerolesetting-list.md) | [governanceRoleSetting](../resources/governancerolesetting.md) collection|List a collection of role settings on a resource.|
|[Get](../api/governancerolesetting-get.md) |  [governanceRoleSetting](../resources/governancerolesetting.md) |Read properties and relationships of a role setting.|
|[Update](../api/governancerolesetting-update.md) | [governanceRoleSetting](../resources/governancerolesetting.md)	|Update a role setting object. |

## Properties
|Property	            |Type	                                   |Description|
|:--------------------|:---------------------------------------|:----------|
|id                   |String                                  |The id of the roleSetting.|
|resourceId           |String                                  |Required. The id of the resource that the role setting is associated with.|
|roleDefinitionId     |String                                  |Required. The id of the role definition that the role setting is associated with.|
|isDefault            |Boolean                                 |Read-only. Indicate if the roleSetting is a default roleSetting|
|lastUpdatedDateTime  |DateTimeOffset                          |Read-only. The time when the role setting was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|lastUpdatedBy        |String                                  |Read-only. The display name of the administrator who last updated the roleSetting.|
|adminEligibleSettings|[governanceRuleSetting](../resources/governancerulesetting.md) collection|The rule settings that are evaluated when an administrator tries to add an eligible role assignment.|
|adminMemberSettings  |[governanceRuleSetting](../resources/governancerulesetting.md) collection|The rule settings that are evaluated when an administrator tries to add a direct member role assignment.|
|userEligibleSettings |[governanceRuleSetting](../resources/governancerulesetting.md) collection|The rule settings that are evaluated when a user tries to add an eligible role assignment. The setting is not supported for now.|
|userMemberSettings   |[governanceRuleSetting](../resources/governancerulesetting.md) collection|The rule settings that are evaluated when a user tries to activate his role assignment.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|resource|[governanceResource](../resources/governanceresource.md)|Read-only. The associated resource for this role setting.|
|roleDefinition|[governanceRoleDefinition](../resources/governanceroledefinition.md)|Read-only. The role definition that is enforced with this role setting. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.governanceRoleSetting"
}-->

```json
{
  "id": "String (identifier)",
  "resourceId": "String",
  "roleDefinitionId": "String",
  "isDefault": true,
  "lastUpdatedDateTime": "String (timestamp)",
  "lastUpdatedBy": "String",
  "adminEligibleSettings": [{"@odata.type": "microsoft.graph.governanceRuleSetting"}],
  "adminMemberSettings": [{"@odata.type": "microsoft.graph.governanceRuleSetting"}],
  "userEligibleSettings": [{"@odata.type": "microsoft.graph.governanceRuleSetting"}],
  "userMemberSettings": [{"@odata.type": "microsoft.graph.governanceRuleSetting"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "governanceRoleSetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


