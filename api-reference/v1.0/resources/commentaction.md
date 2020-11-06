---
author: daspek
ms.author: dspektor
title: commentAction resource type
description: The commentAction object provides information about a comment that was made on an item.
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# commentAction resource type

Namespace: microsoft.graph

The **commentAction** resource provides information about a comment [activity][] made on an item.

>**Note:** Item activity records are currently only available on SharePoint and OneDrive for Business.

[activity]: itemactivity.md

## Properties

| Property name    | Type                       | Description
|:-----------------|:---------------------------|:-----------------------------
| isReply          | boolean                    | If true, this activity was a reply to an existing comment thread.
| parentAuthor     | [identitySet][]            | The identity of the user who started the comment thread.
| participants     | [identitySet][] collection | The identities of the users participating in this comment thread.

[identitySet]: identityset.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.commentAction"
}-->

```json
{
  "isReply": false,
  "parentAuthor": {"@odata.type": "microsoft.graph.identitySet"},
  "participants": [{"@odata.type": "microsoft.graph.identitySet"}]
}
```
<!--
{
  "type": "#page.annotation",
  "description": "The commentAction object provides information about a comment that was made on an item.",
  "keywords": "activities,activity,action,comment",
  "section": "documentation",
  "tocPath": "Resources/commentAction",
  "suppressions": []
}
-->

