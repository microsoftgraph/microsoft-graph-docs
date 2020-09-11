---
title: "teamsTabConfiguration resource type (Open Type)"
description: "The settings that determine the content of a tab."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsTabConfiguration resource type (Open Type)

Namespace: microsoft.graph



The settings that determine the content of a [tab](teamstab.md).
When a tab is interactively configured, this information is set by the tab provider application.
In addition to the properties below, some tab provider applications specify additional custom properties.

## Properties

|Property|Type|Description|
|-|-|-|
|  entityId   |   string |  Identifier for the entity hosted by the tab provider.     |
|  contentUrl |   string |  Url used for rendering tab contents in Teams. Required.    |
|  removeUrl  |   string |  Url called by Teams client when a Tab is removed using the Teams Client.     |
|  websiteUrl |   string |  Url for showing tab contents outside of Teams.     |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsTabConfiguration"
}-->

```json
{
   "entityId": "string",
   "contentUrl": "string (HTTPS Url)",
   "websiteUrl": "string (HTTPS Url)",
   "removeUrl": "string (HTTPS Url)"  
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teamsTabConfiguration complex type (Open Type)",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
