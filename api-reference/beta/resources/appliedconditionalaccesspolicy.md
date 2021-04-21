---
title: "appliedConditionalAccessPolicy resource type"
description: "Indicates the attributes related to applied conditional access policy or policies that are triggered by the corresponding sign-in activity."
localization_priority: Normal
author: "besiler"
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# appliedConditionalAccessPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the attributes related to applied conditional access policy or policies that are triggered by the corresponding sign-in activity.

## Properties

| Property   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|Display name of the conditional access policy.|
|id|String|Identifier of the conditional access policy.|
|conditionsSatisfied|conditionalAccessConditions|Refers to the conditional access policy conditions that are satisfied. Possible values are: `none`, `application`, `users`, `devicePlatform`, `location`, `clientType`, `signInRisk`, `userRisk`, `time`, `deviceState`, `client`, `ipAddressSeenByAzureAD`, `ipAddressSeenByResourceProvider`, and `unknownFutureValue`.|
|conditionsNotSatisfied|conditionalAccessConditions|Refers to the conditional access policy conditions that are not satisfied. Possible values are: `none`, `application`, `users`, `devicePlatform`, `location`, `clientType`, `signInRisk`, `userRisk`, `time`, `deviceState`, `client`, `ipAddressSeenByAzureAD`, `ipAddressSeenByResourceProvider`, and `unknownFutureValue`.|
|enforcedGrantControls|String collection|Refers to the grant controls enforced by the conditional access policy (example: “Require multi-factor authentication”).|
|enforcedSessionControls|String collection|Refers to the session controls enforced by the conditional access policy (example: “Require app enforced controls”).|
|excludeRulesSatisfied|[conditionalAccessRuleSatisfied](../resources/conditionalaccessrulesatisfied.md) collection|List of key value pairs containing granular details about the exclude conditions in the policy. For every exclude condition that has a match, this property shows the underlying rule that contributed to this match. Example: [{"devicePlatform" : "DevicePlatform"}] means the policy didn’t apply, because the DevicePlatform condition was a match. |
|includeRulesSatisfied|[conditionalAccessRuleSatisfied](../resources/conditionalaccessrulesatisfied.md) collection|List of key value pairs containing granular details about the include conditions in the policy. For every include condition that has a match, this property shows the underlying rule that contributed to the match. Example: [{ "application" : "AllApps"}, {"users": "Group"}], meaning Application condition was a match because AllApps are included, Users condition was a match because the user was part of the included Group rule. |
|result|appliedConditionalAccessPolicyResult| Indicates the result of the CA policy that was triggered. Possible values are: `success`, `failure`, `notApplied` (Policy isn't applied because policy conditions were not met),`notEnabled` (This is due to the policy in disabled state), `unknown`, `unknownFutureValue`, `reportOnlySuccess`, `reportOnlyFailure`, `reportOnlyNotApplied`, `reportOnlyInterrupted`|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"
}-->

```json
{
  "@odata.type": "#microsoft.graph.appliedConditionalAccessPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "enforcedGrantControls": [
    "String"
  ],
  "enforcedSessionControls": [
    "String"
  ],
  "conditionsSatisfied": "String",
  "conditionsNotSatisfied": "String",
  "includeRulesSatisfied": [
    {
      "@odata.type": "microsoft.graph.conditionalAccessRuleSatisfied"
    }
  ],
  "excludeRulesSatisfied": [
    {
      "@odata.type": "microsoft.graph.conditionalAccessRuleSatisfied"
    }
  ],
  "result": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "appliedConditionalAccessPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
