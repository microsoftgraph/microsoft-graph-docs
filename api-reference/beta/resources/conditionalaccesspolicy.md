---
title: "conditionalAccessPolicy resource type"
description: "Represents an Azure Active Directory conditional access policy. Conditional access policies are custom rules that define an access scenario."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

# conditionalAccessPolicy resource type

Represents an Azure Active Directory conditional access policy. Conditional access policies are custom rules that define an access scenario.

## Methods

| Method | Return Type | Description |
|:------ |:----------- |:----------- |
| [List conditionalAccessPolicies](../api/conditionalaccesspolicies-list.md) | conditionalAccessPolicies collection | Get all of the conditionalAccessPolicies objects in the organization. |
| [Get conditionalAccessPolicies](../api/conditionalaccesspolicies-get.md) | conditionalAccessPolicy | Read the properties and relationships of a conditionalAccessPolicy object. |
| [Create conditionalAccessPolicies](../api/conditionalaccesspolicies-post-conditionalaccesspolicies.md) | conditionalAccessPolicy | Create a new conditionalAccessPolicies object. |
| [Update conditionalAccessPolicies](../api/conditionalaccesspolicies-update.md)| None | Update a conditionalAccessPolicy object. |
| [Delete conditionalAccessPolicies](../api/conditionalaccesspolicies-delete.md)| None | Delete a conditionalAccessPolicy object. |

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| `id` | String | Specifies the identifier of a conditionalAccessPolicy object. Read-only. |
| `displayName` | String | Specifies a display name for the conditionalAccessPolicy object. |
| `createdDateTime` | DateTimeOffset | Specifies the time that the conditionalAccessPolicy object was created. Read-only. |
| `modifiedDateTime` | DateTimeOffset | Specifies the last modification date and time of the conditionalAccessPolicy object. Read-only. |
| `state` | conditionalAccessPolicyState | Specifies the state of the conditionalAccessPolicy object. Possible values: `Enabled`, `Disabled`. |
| `sessionControls` | [conditionalAccessSessionControls](conditionalaccesssessioncontrols.md) | Specifies the session controls that are enforced after sign-in. |
| `conditions` | [conditionalAccessConditions](conditionalaccessconditions.md) | Specifies the conditions that govern when the policy applies. |
| `grantControls` | [conditionalAccessGrantControls](conditionalaccessgrantcontrols.md) | Specifies the grant controls that must be fulfilled to pass the policy. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [
    "displayName",
    "state",
    "sessionControls",
    "conditions",
    "grantControls"
  ],
  "@odata.type": "microsoft.graph.conditionalaccesspolicies"
}-->

```json
{
    "id": "String",
    "displayName": "String",
    "createdDateTime": "String (timestamp)",
    "modifiedDateTime": "String (timestamp)",
    "state": { "@odata.type": "microsoft.graph.conditionalAccessPolicyState" },
    "sessionControls": { "@odata.type": "microsoft.graph.conditionalaccesssessioncontrols" },
    "conditions": { "@odata.type": "microsoft.graph.conditionalaccessconditions" },
    "grantControls": { "@odata.type": "conditionalaccessgrantcontrols" }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "conditionalaccesspolicies resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->