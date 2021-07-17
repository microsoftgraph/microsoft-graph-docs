---
title: "List qnas"
description: "Get a list of the qna objects and their properties."
author: "jakeost-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# List qnas
Namespace: microsoft.graph.search

Get a list of the [qna](../resources/qna.md) objects and their properties.

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
GET /qnas
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

If successful, this method returns a `200 OK` response code and a collection of [qna](../resources/qna.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_qna"
}
-->
``` http
GET https://graph.microsoft.com/beta/qnas
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.search.qna)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

[
  {
    "id": "733b26d5-af76-4eea-ac69-1a0ce8716897",
    "displayName": "Global Country Holidays",
    "webUrl": "http://www.contoso.com/",
    "description": "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend.
      <table>
      <thead>
      <tr>
      <td><strong>2021 Dates</strong></td>
      <td><strong>Holiday</strong></td>
      </tr>
      </thead>
      <tbody>
      <tr>
          <td>January 1, 2021</td>
          <td>New Year's Day</td>
      </tr>
          <tr>
          <td>January 18, 2021</td>
          <td>Martin Luther King Day</td>
      </tr>
          <tr>
          <td>February 15, 2021</td>
          <td>Presidents Day</td>
      </tr>
          <tr>
          <td>May 31, 2021</td>
          <td>Memorial Day</td>
      </tr>
          <tr>
          <td>July 5, 2021</td>
          <td>Independence Day</td>
      </tr>
          <tr>
          <td>September 6, 2021</td>
          <td>Labor Day</td>
      </tr>
          <tr>
          <td>November 25, 2021 - November 26, 2021</td>
          <td>Thanksgiving Day and Day after Thanksgiving</td>
      </tr>
      <tr>
          <td>December 23, 2021 - December 24, 2021</td>
          <td>Christmas Eve and Christmas Day</td>
      </tr>
      </tbody>
      </table>",
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
]
```

