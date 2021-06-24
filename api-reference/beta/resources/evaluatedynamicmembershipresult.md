---
title: "evaluateDynamicMembershipResult resource type"
description: "Represents the result of membership evaluation."
localization_priority: Normal
author: "Jordanndahl"
ms.prod: "groups"
doc_type: "resourcePageType"
---

# evaluateDynamicMembershipResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of membership evaluation.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| membershipRule | String | If a group ID is provided, the value is the membership rule for the group. If a group ID is not provided, the value is the membership rule that was provided as a parameter. For more information, see [Dynamic membership rules for groups in Azure Active Directory](/azure/active-directory/users-groups-roles/groups-dynamic-membership). |
| membershipRuleEvaluationDetails | [expressionEvaluationDetails](expressionevaluationdetails.md) | Provides a detailed anaylsis of the membership evaluation result. |
| membershipRuleEvaluationResult | Boolean | The value is `true` if the user or device is a member of the group. The value can also be `true` if a membership rule was provided and the user or device passes the rule evaluation; otherwise `false`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.evaluateDynamicMembershipResult",
  "baseType": null
}-->

```json
{
  "membershipRule": "String",
  "membershipRuleEvaluationDetails": {"@odata.type": "microsoft.graph.expressionEvaluationDetails"},
  "membershipRuleEvaluationResult": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "evaluateDynamicMembershipResult resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->