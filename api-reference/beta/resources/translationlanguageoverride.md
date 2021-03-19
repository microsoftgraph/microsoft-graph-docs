---
title: "translationLanguageOverride resource type"
description: "A resource representing an entry in the translation language override list."
localization_priority: Normal
author: "jasonbro"
ms.prod: "users"
doc_type: resourcePageType
---
# translationLanguageOverride resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents any translation override for a language.

## Properties

|Property             |Type                 		  			    |Description                                                            |
|---------------------|-------------------------------------------------------------|-----------------------------------------------------------------------|
|languageTag	      |String               		  			    |The language to apply the override.<br><br>Returned by default. Not nullable.       |                   
|translationBehavior  |[translationBehavior](translationPreferences.md#translationbehavior-values)        |The translation override behavior for the language, if any.<br><br>Returned by default. Not nullable.|

## JSON representation

The following is a JSON definition of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.translationLanguageOverride"
}-->

```json
{
    "languageTag": "string",
    "translationBehavior": "string"
}
```
<!-- {
  "type": "#page.annotation",
  "description": translationLanguageOverride resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


