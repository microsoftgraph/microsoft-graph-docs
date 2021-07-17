---
title: "List bookmarks"
description: "Get a list of the bookmark objects and their properties."
author: "jakeost-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# List bookmarks
Namespace: microsoft.graph.search

Get a list of the [bookmark](../resources/bookmark.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)| Global administrator, global reader, search administrator, search editor. |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /bookmarks
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [bookmark](../resources/bookmark.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_bookmark"
}
-->
``` http
GET https://graph.microsoft.com/beta/bookmarks
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.search.bookmark)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

[
  {
    "id": "733b26d5-af76-4eea-ac69-1a0ce8716897",
    "displayName": "Italy Holiday",
    "webUrl": "http://www.margiestravel.com/",
    "description": "Book a fancy vacation in Tuscany or browse museums in Florence.",
    "lastModifiedDateTime": "2016-03-21T20:01:37Z",
    "lastModifiedBy": {
      "user": {
          "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
          "displayName": "Amalie Larsen"
      }
    },
    "keywords":  {
      "keywords": ["Vacation in Europe", "Holiday in Europe"],
      "reservedKeywords": ["Vacation in Italy"],
      "matchSimilarKeywords": true
    },
    "categories": ["HR"],
    "availabilityStartDateTime": "2020-09-21T20:01:37Z",
    "availabilityEndDateTime": "2020-11-21T20:01:37Z",
    "languageTags": ["en-US"],
    "platforms": ["ios"],
    "groupIds": ["groupId"],
    "targetedVariations": null,
    "powerAppIds": ["powerAppId"],
    "state": "published",
    "isSuggested": false
  }
]
```

