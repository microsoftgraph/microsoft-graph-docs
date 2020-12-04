---
title: "redirectUriSettings resource type"
description: "Specifies the index for a redirectUri"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "luleon"
---

# redirectUriSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the index of the URLs where user tokens are sent for sign-in. This is only valid for applications using SAML.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| `uri` | String | Specifies the URI that tokens are sent to. |
|`index`|int|Identifies specific URI with in the redirectURIs collection in SAML SSO flows. Defaults to null. The index is unique across all the returnUris for the application.|


## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.redirectUriSettings"
}-->

```json
{                
    "uri": "string",
    "index": "int"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "redirectUriSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


