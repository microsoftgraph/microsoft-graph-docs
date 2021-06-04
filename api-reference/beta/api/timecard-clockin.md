---
title: "Clock In"
description: "Clock in to start a timecard."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Clock In

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Clock in to start a [timeCard](../resources/timecard.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Schedule.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Schedule.ReadWrite.All* |

>\* **Important:** Application permissions require MS-APP-ACTS-AS header to be provided.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{teamId}/schedule/timecards/clockIn
```

## Optional query parameters
This method does not support OData query parameters to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-type | application/json. Required.|
| MS-APP-ACTS-AS | The id of the user on behalf of whom the app is acting. Required for Application permission scope. |

## Request body

Provide a new [timeCardEvent](../resources/timecardevent.md) object in the request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [timeCard](../resources/timecard.md) object in the response body.

## Examples

### Request
The following is an example of the request. 

```http
POST https://graph.microsoft.com/beta/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timecards/clockIn
Content-Type: application/json

{ 
   "atApprovedLocation": true,
   "notes":{
        "content": "Started late due to traffic in CA 237",
        "contentType": "text"
     }
}
```

### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.timeCard"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "id":"3895809b-a618-4c0d-86a0-d42b25b7d74f",
   "userId":"a3601044-a1b5-438e-b742-f78d01d68a67",
   "createdDateTime":"2019-03-18T00:00:00.000Z",
   "createdBy":{
      "user":{
         "id":"a3601044-a1b5-438e-b742-f78d01d68a67",
         "displayName":"Dwight Schrute"
      }
   },
   "lastModifiedDateTime":"2019-03-18T00:00:00.000Z",
   "lastModifiedBy":{
      "user":{
         "id":"a3601044-a1b5-438e-b742-f78d01d68a67",
         "displayName":"Dwight Schrute"
      }
   },
   "state":"clockedIn",
   "confirmationStatus":"notConfirmed",
   "originalEntry":{
      "clockInEvent":{
         "dateTime":"2019-03-18T00:00:00.000Z",
         "atApprovedLocation":true,
         "notes":{
            "content": "Started late due to traffic in CA 237",
            "contentType": "text"
         },
      },
      "clockOutEvent":null,
      "breaks":null
   },
   "clockInEvent":{
      "dateTime":"2019-03-18T00:00:00.000Z",
      "atApprovedLocation":true,
      "notes":{
            "content": "Started late due to traffic in CA 237",
            "contentType": "text"
      },
   },
   "clockOutEvent":null,
   "notes":null,
   "breaks":null,
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Clock In",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
