---
title: "stsPolicy resource type"
description: "Represents an abstract base type for policy types that control Microsoft identity platform behavior."
localization_priority: Normal
author: "lujiangfeng666"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# stsPolicy resource type

Namespace: microsoft.graph

Represents an abstract base type for policy types that control [Microsoft identity platform](/azure/active-directory/develop/) behavior.

Inherits from [policyBase](policyBase.md).

## Methods

None

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Unique identifier for this policy. Read-only. Inherited from [policyBase](policyBase.md).|
|description|String| Description for this policy. Inherited from [policyBase](policyBase.md).|
|displayName|String| Display name for this policy. Inherited from [policyBase](policyBase.md).|
|definition|String collection| A string collection containing a JSON string that defines the rules and settings for a policy. The syntax for the definition differs for each derived policy type. Required.|
|isOrganizationDefault|Boolean|If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.stsPolicy",
  "baseType": "microsoft.graph.policyBase",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "description": "String",
  "displayName": "String",
  "definition": ["String"],
  "isOrganizationDefault": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "stsPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->