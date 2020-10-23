---
title: "localeInfo resource type"
description: "Information about the locale, including the preferred language and country/region, of the signed-in user."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "outlook"
author: "svpsiva"
---

# localeInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Information about the locale, including the preferred language and country/region, of the signed-in user.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|locale|string|A locale representation for the user, which includes the user's preferred language and country/region. For example, "en-us". The language component follows 2-letter codes as defined in [ISO 639-1](https://www.iso.org/iso/home/standards/language_codes.htm), and the country component follows 2-letter codes as defined in [ISO 3166-1 alpha-2](https://www.iso.org/iso/country_codes.htm).|
|displayName|string|A name representing the user's locale in natural language, for example, "English (United States)".|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.localeInfo"
}-->

```json
{
  "locale": "string",
  "displayName": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "localeInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


