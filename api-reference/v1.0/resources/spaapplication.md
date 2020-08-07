---
title: "spaApplication resource type"
description: "Specifies settings for a spa application."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "hamiltonha"
---

# spaApplication resource type

Namespace: microsoft.graph

Specifies settings for a single-page application.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| redirectUris | String collection | Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. |

## JSON representation
Here is a JSON representation of the resource.

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

<!--
{
  "type": "#page.annotation",
  "description": "spaApplication resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
