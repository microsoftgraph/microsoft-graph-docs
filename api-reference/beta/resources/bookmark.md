---
title: "bookmark resource type"
description: "bookmark"
author: "jakeost-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# bookmark resource type

Namespace: microsoft.graph.search

A bookmark is a tenant wide administrative answer in Microsoft search results for common tenant search queries. A bookmark has many properties which allow Admins to make common resources more accessible in their organization.
\



Inherits from [searchAnswer](../resources/searchanswer.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bookmarks](../api/search-bookmark-list-bookmarks.md)|[microsoft.graph.search.bookmark](../resources/bookmark.md) collection|Get a list of the [bookmark](../resources/bookmark.md) objects and their properties.|
|[Create bookmark](../api/search-bookmark-post-bookmarks.md)|[microsoft.graph.search.bookmark](../resources/bookmark.md)|Create a new [bookmark](../resources/bookmark.md) object.|
|[Get bookmark](../api/search-bookmark-get-bookmarks.md)|[microsoft.graph.search.bookmark](../resources/bookmark.md)|Read the properties and relationships of a [bookmark](../resources/bookmark.md) object.|
|[Update bookmark](../api/search-bookmark-update-bookmarks.md)|[microsoft.graph.search.bookmark](../resources/bookmark.md)|Update the properties of a [bookmark](../resources/bookmark.md) object.|
|[Delete bookmark](../api/search-bookmark-delete-bookmarks.md)|None|Deletes a [bookmark](../resources/bookmark.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Guid id of the bookmark. Inherited from [entity](../resources/entity.md).|
|displayName|String|Bookmark name displayed in search results. Inherited from [searchAnswer](../resources/searchanswer.md).|
|description|String|Bookmark description shown on search results page. Inherited from [searchAnswer](../resources/searchanswer.md).|
|webUrl|String|Bookmark url link. When users click this bookmark in search results they will go to this url. Inherited from [searchAnswer](../resources/searchanswer.md).|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Details of the user that created or last modified the bookmark. Inherited from [searchAnswer](../resources/searchanswer.md). Read only.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of when the bookmark is created or edited. Inherited from [searchAnswer](../resources/searchanswer.md). Read only. |
|categories|String collection|Categories commonly used to describe this bookmark. eg. IT, HR, etc.|
|availabilityStartDateTime|DateTimeOffset|Date bookmark will start to appear as a search result. Set as null for always available.|
|availabilityEndDateTime|DateTimeOffset|Date bookmark will stop appearing as a search result. Set as null for always available.|
|languageTags|String collection|List of countries or regions able to view this bookmark.|
|platforms|microsoft.graph.platform collection|List of devices and OS able to view this qna. Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/answervariant.md) collection|Variations of a bookmark for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings will apply to all variations.|
|powerAppIds|String collection|PowerApp ids for this bookmark. By adding existing PowerApps to a Bookmark, users can complete tasks like entering vacation time or reporting expenses on the search results page.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/answerkeyword.md)|Keywords that trigger this bookmark to appear in search results.|
|state|String|State of the bookmark. Possible values are: `published`, `draft`, `excluded`.|
|isSuggested|Boolean|True if this bookmark was suggested to the admin by a user or was mined and suggested by Microsoft. Read only.|
|groupIds|String collection|List of security groups able to view this bookmark.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.search.bookmark",
  "baseType": "microsoft.graph.search.searchAnswer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.search.bookmark",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "webUrl": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "categories": [
    "String"
  ],
  "availabilityStartDateTime": "String (timestamp)",
  "availabilityEndDateTime": "String (timestamp)",
  "languageTags": [
    "String"
  ],
  "platforms": [
    "String"
  ],
  "targetedVariations": [
    {
      "@odata.type": "microsoft.graph.search.answerVariant"
    }
  ],
  "powerAppIds": [
    "String"
  ],
  "keywords": {
    "@odata.type": "microsoft.graph.search.answerKeyword"
  },
  "state": "String",
  "isSuggested": "Boolean",
  "groupIds": [
    "String"
  ]
}
```

