---
title: "publicClientApplication resource type"
description: "Specifies settings for non Web App or Web Api. (e.g. Mobile or other public client such as an installed application running on a desktop device)"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "sureshja"
---

# publicClientApplication resource type

Namespace: microsoft.graph

Specifies settings for non-web app or non-web API (for example, mobile or other public clients such as an installed application running on a desktop device).

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|redirectUris|String collection| Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. |

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.publicClientApplication"
}-->

```json
{
  "redirectUris": ["String"]
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "installedClient resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

