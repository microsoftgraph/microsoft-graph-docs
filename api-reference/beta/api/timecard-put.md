---
title: "Update timeCard"
description: "Update an existing timeCard entry."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Update timeCard

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing [timecard](../resources/timecard.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Schedule.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Schedule.ReadWrite.All*  |

>\* **Important:** Application permissions require MS-APP-ACTS-AS header to be provided.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /teams/{teamId}/schedule/timecards/{timeCardID}
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.  |
| MS-APP-ACTS-AS | The id of the user on behalf of whom the app is acting. Required for Application permission scope. |

## Request body

In the request body, supply a JSON representation of a [timeCardEntry](../resources/timeCardEntry.md) object.

## Response

If successful, this method returns a `200 OK` response code and a [timecard](../resources/timecard.md) object in the response body.

## Example

#### Request

The following is an example of the request.

```http
PUT https://graph.microsoft.com/beta/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timecards/3895809b-a618-4c0d-86a0-d42b25b7d74f

{
   "clockInEvent":{
         "dateTime":"2019-03-18T00:00:00.000Z",
         "atApprovedLocation":true,
         "notes":{
               "content": "Started late due to traffic in CA 237",
                "contentType": "text"
         },
   },
   "clockOutEvent":null,
   "notes":{
        "content": "8 To 5 Inventory management",
        "contentType": "text"
   },
   "breaks":[
      {
         "notes":{
             "content": "Lunch break",
             "contentType": "text"
         },
         "start":{
            "dateTime":"2019-03-18T04:00:00.000Z",
            "atApprovedLocation":true,
            "notes":{
                "content": "Starting break 15 mins late to make up for late clockin",
                "contentType": "text"
            },
         }
      }
   ]
}
```
---


#### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.timeOff"
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
      "breaks":[
         {
            "breakId":"string",
            "notes":{
                "content": "Lunch break",
                "contentType": "text"
            },
            "start":{
               "dateTime":"2019-03-18T02:00:00.000Z",
               "atApprovedLocation":true,
               "notes":{
                   "content": "Starting break late to make up for late clockin",
                   "contentType": "text"
                },
            },
            "end":null
         }
      ]
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
   "notes":{
        "content": "8 To 5 Inventory management",
        "contentType": "text"
   },
   "breaks":[
      {
         "breakId":"string",
         "notes":{
             "content": "Lunch break",
             "contentType": "text"
         },
         "start":{
            "dateTime":"2019-03-18T04:00:00.000Z",
            "atApprovedLocation":true,
            "notes":{
                "content": "Starting break 15 mins late to make up for late clockin",
                "contentType": "text"
            },
         },
         "end":null
      }
   ]
}
```

## Example to enable timeclock for the schedule along with location detection

### Request

The following is an example of the request.
<!-- {
  "blockType": "request"
}-->

```http
PUT https://graph.microsoft.com/beta/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule
{     
    "enabled": true,  

    "timeZone": "America/Chicago",  

    "provisionStatus": "Completed",  

    "provisionStatusCode": null,  

    "openShiftsEnabled": true,  

    "swapShiftsRequestsEnabled": true,  

    "offerShiftRequestsEnabled": true,  

    "timeOffRequestsEnabled": true,  

    "timeClockEnabled": true,

    "timeClockSettings": {

        "approvedLocation": {

           "altitude": 1024.13,

           "latitude": 26.13246,

           "longitude": 24.34616

        }
     }

 }
 ```

### Response

The following is an example of the response.

```http
HTTP/1.1 200 OK

{     

    "enabled": true,  

    "timeZone": "America/Chicago",  

    "provisionStatus": "Completed",  

    "provisionStatusCode": null,  

    "openShiftsEnabled": true,  

    "swapShiftsRequestsEnabled": true,  

    "offerShiftRequestsEnabled": true,  

    "timeOffRequestsEnabled": true,  

    "timeClockEnabled": true,  

    "timeClockSettings": {

        "approvedLocation": {

           "altitude": 1024.13,

           "latitude": 26.13246,

           "longitude": 24.34616

        }
     }

 }
 ```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Replace an existing timeCard",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
