---
author: daspek
ms.author: dspektor
title: mentionAction resource type
description: The MentionAction object provides information about who was mentioned during an activity.
localization_priority: Normal
ms.prod: "insights"
doc_type: resourcePageType
---
# mentionAction resource type

Namespace: microsoft.graph

The **MentionAction** resource provides information about an [activity][] that mentioned people.

>**Note:** Item activity records are currently only available on SharePoint and OneDrive for Business.

[activity]: itemactivity.md

## Properties

| Property name | Type                       | Description
|:--------------|:---------------------------|:-----------------------------
| mentionees    | [identitySet][] collection | The identities of the users mentioned in this action.

[identitySet]: identityset.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.mentionAction"
}-->

```json
{
  "mentionees": [{"@odata.type": "microsoft.graph.identitySet"}]
}
```

<!--
{
  "type": "#page.annotation",
  "description": "The MentionAction object provides information about who was mentioned during an activity.",
  "keywords": "activities,activity,action,mention",
  "section": "documentation",
  "tocPath": "Resources/MentionAction",
  "suppressions": []
}
-->

