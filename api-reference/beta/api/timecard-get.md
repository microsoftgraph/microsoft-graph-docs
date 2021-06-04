---
title: "Get timeCard"
description: "Get a timeCard by ID."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get timeCard

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [timeCard](../resources/timeCard.md) object by ID.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Schedule.Read.All, Schedule.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Schedule.Read.All*, Schedule.ReadWrite.All* |

>\* **Important:** Application permissions require MS-APP-ACTS-AS header to be provided.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /teams/{teamId}/schedule/timecards/{timecardID}

```

## Optional query parameters
This method does not support OData query parameters to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| MS-APP-ACTS-AS | The id of the user on behalf of whom the app is acting. Required for Application permission scope. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [timeCard](../resources/timeCard.md) object in the response body.

## Example

#### Request
The following is an example of the request. 

```http
GET https://graph.microsoft.com/beta/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timecards/3895809b-a618-4c0d-86a0-d42b25b7d74f
```
---

#### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.timeCard"
} -->

```http
HTTP/1.1 200 OK
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
   "state":"onBreak",
   "clockInEvent":{
      "dateTime":"2019-03-18T00:00:00.000Z",
      "atApprovedLocation":true,
      "notes":null
   },
   "clockOutEvent":null,
   "breaks":[
      {
         "breakId":"string",
         "notes":{
             "content": "Lunch break",
             "contentType": "text"
          },
         "start":{
            "dateTime":"2019-03-18T00:00:00.000Z",
            "atApprovedLocation":true,
            "notes":{
                 "content": "Started my break 5 minutes early",
                 "contentType": "text"
            },
         },
         "end":null
      }
   ],
   "notes":null,
   "originalEntry":{
      "clockInEvent":{
         "dateTime":"2019-03-18T00:00:00.000Z",
         "atApprovedLocation":true,
         "notes":null
      },
      "clockOutEvent":null,
      "breaks":[
         {
            "breakId":"4591109b-a618-3e0d-e6a0-d42b25b7231f",
            "notes":{
             "content": "Lunch break",
             "contentType": "text"
             },
            "start":{
               "dateTime":"2019-03-18T00:00:00.000Z",
               "atApprovedLocation":true,
               "notes":{
                    "content": "Started my break 5 minutes early",
                    "contentType": "text"
               },
            },
            "end":null
         }
      ]
   }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get a timeCard by ID",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
