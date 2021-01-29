---
title: "authenticationRequirementPolicy resource type"
description: "Source of authentication requirement, such as Conditional Access, per-user MFA, Identity Protection, and Security Defaults"
localization_priority: Normal
author: "danielwood95"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# authenticationRequirementPolicy resource type

Namespace: microsoft.graph
Source of authentication requirement, such as Conditional Access, per-user MFA, Identity Protection, and Security Defaults



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|requirementProvider|requirementProvider|Enum value representing the source of authentication|
|detail|String|Source of authentication requirement, such as Conditional Access, per-user MFA, Identity Protection, and Security Defaults|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.authenticationRequirementPolicy"
}-->

```json
{
  "requirementProvider": "user",
  "detail": "Per-user MFA"
}

```

