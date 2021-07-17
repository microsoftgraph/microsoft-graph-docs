---
title: "Get qna"
description: "Read the properties and relationships of a qna object."
author: "jakeost-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# Get qna
Namespace: microsoft.graph.search

Read the properties and relationships of a [qna](../resources/qna.md) object.

## Permissions
One of the following permissions is required to call this api. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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
GET /qnas/{qnaId}
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

If successful, this method returns a `200 OK` response code and a [qna](../resources/qna.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_qna"
}
-->
``` http
GET https://graph.microsoft.com/beta/qnas/{qnaId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.qna"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "733b26d5-af76-4eea-ac69-1a0ce8716897",
    "displayName": "Global Country Holidays",
    "webUrl": "http://www.contoso.com/",
    "description": "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend.",
    "lastModifiedDateTime": "2016-03-21T20:01:37Z",
    "lastModifiedBy": {
        "user": {
            "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
            "displayName": "Amalie Larsen"
        }
    },
    "keywords":  {
      "keywords": ["new years day", "martin luther king day", "presidents day", "memorial day", "independence day", "labor day", "thanksgiving", "christmas"],
      "reservedKeywords": ["holidays", "paid days off"],
      "matchSimilarKeywords": true
    },
    "availabilityStartDateTime": "2020-09-21T20:01:37Z",
    "availabilityEndDateTime": "2021-12-31T20:01:37Z",
    "languageTags": ["en-US"],
    "platforms": ["ios"],
    "groupIds": ["groupId"],
    "targetedVariations": null,
    "state": "published"
}
```

