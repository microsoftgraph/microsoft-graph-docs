---
title: "spaApplication resource type"
description: "Specifies settings for a single-page application."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "hamiltonha"
---

# spaApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies settings for a single-page application.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| redirectUris | String collection | Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. |

## JSON representation
The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.spaApplication"
}-->

```json
{
  "redirectUris": ["String"]
}
```
