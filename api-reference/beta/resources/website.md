---
title: "website resource type"
description: "Represents a web site."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "AAmatino"
---

# website resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a web site.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|type|String| Possible values are: `other`, `home`, `work`, `blog`, `profile`.|
|address|string|The URL of the website.|
|displayName|string|The display name of the web site.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.website"
}-->

```json
{
  "type": "String",
  "address": "string",
  "displayName": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "webSite resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


