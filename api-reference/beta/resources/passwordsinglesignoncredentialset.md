---
title: "passwordSingleSignOnCredentialSet resource type"
description: "Indicates a set of credentials that completely define a sign in flow for a user or group to an application."
localization_priority: Normal
author: "bharathramh92"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# passwordSingleSignOnCredentialSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates a set of credentials that completely define a sign in flow for a user or group to an application.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|credentials|[credential](credential.md) collection|A list of credential objects that define the complete sign in flow.|
|id|String|The ID of the user or group this credential set belongs to.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.passwordSingleSignOnCredentialSet",
  "baseType": null
}-->

```json
{
  "credentials": [{"@odata.type": "microsoft.graph.credential"}],
  "id": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "passwordSingleSignOnCredentialSet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


