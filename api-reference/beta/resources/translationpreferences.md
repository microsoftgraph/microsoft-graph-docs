---
title: "translationPreferences resource type"
description: "A resource representing the user's translation settings preferences."
localization_priority: Normal
author: "jasonbro"
ms.prod: "users"
doc_type: resourcePageType
---
# translationPreferences resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entry in a user's translation language override list.

## Properties

|Property             |Type                 		  			    |Description                                                            |
|---------------------|-------------------------------------------------------------|-----------------------------------------------------------------------|
|translationBehavior  |[translationBehavior](#translationbehavior-values)  	    |The user's preferred translation behavior.<br><br>Returned by default. Not nullable. |                   
|languageOverrides    |[translationLanguageOverride](translationLanguageOverride.md) collection                | Translation override behavior for languages, if any.<br><br>Returned by default.|
|untranslatedLanguages|String collection| The list of languages the user does not need translated. This is computed from the **authoringLanguages** collection in [regionalAndLanguageSettings](regionalandlanguagesettings.md), and the **languageOverrides** collection in **translationPreferences**. The list specifies neutral culture values that include the language code without any country or region association. For example, it would specify "fr" for the neutral French culture, but not "fr-FR" for the French culture in France. <br><br>Returned by default. Read only.| 

### translationBehavior values

|Member |Description                                                                  |
|-------|-----------------------------------------------------------------------------|
|Ask    |Prompt the user before translating the messages/chats/web pages for the user.|
|Yes    |Automatically translate the messages/chats/web pages for the user.           |
|No     |Do not offer prompted or automatic translation for the user.                 |



## JSON representation

The following is a JSON definition of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.translationPreferences"
}-->

```json
{
    "translationBehavior": "string",
    "languageOverrides": [{"@odata.type":"microsoft.graph.translationLanguageOverride"}],
    "untranslatedLanguages": ["string"]
}
```
<!-- {
  "type": "#page.annotation",
  "description": translationPreferences resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


