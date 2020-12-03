---
title: "conditionalAccessPolicy resource type"
description: "Represents an Azure Active Directory conditional access policy. Conditional access policies are custom rules that define an access scenario."
localization_priority: Normal
author: "videor"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# conditionalAccessPolicy resource type

Namespace: microsoft.graph

Represents an Azure Active Directory conditional access policy. Conditional access policies are custom rules that define an access scenario. For more information, see the [Conditional access documentation](/azure/active-directory/conditional-access/).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List conditionalAccessPolicies](../api/conditionalaccessroot-list-policies.md) | [conditionalAccessPolicy](conditionalaccesspolicy.md) collection | Get all of the conditionalAccessPolicies objects in the organization. |
| [Create conditionalAccessPolicy](../api/conditionalaccessroot-post-policies.md) | [conditionalAccessPolicy](conditionalaccesspolicy.md) | Create a new conditionalAccessPolicy object. |
| [Get conditionalAccessPolicy](../api/conditionalaccesspolicy-get.md) | [conditionalAccessPolicy](conditionalaccesspolicy.md) | Read properties and relationships of a conditionalAccessPolicy object. |
| [Update conditionalAccessPolicy](../api/conditionalaccesspolicy-update.md) | [conditionalAccessPolicy](conditionalaccesspolicy.md) | Update a conditionalAccessPolicy object. |
| [Delete conditionalAccessPolicy](../api/conditionalaccesspolicy-delete.md) | None | Delete a conditionalAccessPolicy object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|conditions|[conditionalAccessConditionSet](conditionalaccessconditionset.md)| Specifies the rules that must be met for the policy to apply. Required. |
|createdDateTime|DateTimeOffset| The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Readonly. |
|displayName|String| Specifies a display name for the conditionalAccessPolicy object. |
|grantControls|[conditionalAccessGrantControls](conditionalaccessgrantcontrols.md)| Specifies the grant controls that must be fulfilled to pass the policy. |
|id|String| Specifies the identifier of a conditionalAccessPolicy object. Read-only.|
|modifiedDateTime| DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Readonly. |
|sessionControls|[conditionalAccessSessionControls](conditionalaccesssessioncontrols.md)| Specifies the session controls that are enforced after sign-in. |
|state|string| Specifies the state of the conditionalAccessPolicy object. Possible values are: `enabled`, `disabled`, `enabledForReportingButNotEnforced`. Required. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "displayName",
    "sessionControls",
    "grantControls"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessPolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "conditions": {"@odata.type": "microsoft.graph.conditionalAccessConditionSet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "grantControls": {"@odata.type": "microsoft.graph.conditionalAccessGrantControls"},
  "id": "String (identifier)",
  "modifiedDateTime": "String (timestamp)",
  "sessionControls": {"@odata.type": "microsoft.graph.conditionalAccessSessionControls"},
  "state": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->