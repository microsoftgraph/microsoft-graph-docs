---
title: "StageForDeletiontimeOff"
description: "Stage timeOff for deletion in draft mode."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Create timeOff

Namespace: microsoft.graph

Stage deletion of a [timeOff](../resources/timeoff.md) instance in a [schedule](../resources/schedule.md) in draft mode.
Consider a scenario where a manager has created a new timeoff and shared it with his team. Now the manager deleted this timeoff but has not yet shared this change. In this scenario, you can support a different view for the manager with this timeoff deleted, while the team member can still view the shared version of the timeoff.
Use this API to draft multiple timeoff deletions before finally sharing all the deleted timeoffs.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Schedule.ReadWrite.All, Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Schedule.ReadWrite.All* |

>\* **Important:** Application permissions require MS-APP-ACTS-AS header to be provided.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{teamId}/schedule/timesOff/{timeOffId}/stageForDeletion
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.  |
| MS-APP-ACTS-AS | The id of the user on behalf of whom the app is acting. Required for Application permission scope. |

## Response

If successful, this method returns a `204 OK` response code.

## Example to stage a shift to be deleted

#### Request

The following is an example of the request to stage a timeoff to be deleted.

# [HTTP](#tab/http)
```http
POST https://graph.microsoft.com/v1.0/teams/{teamId}/schedule/timesOff/TOR_891045ca-b5d2-406b-aa06-a3c8921245d7/stageForDeletion
```

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.shift"
} -->

```http
HTTP/1.1 204 OK
```

## Example to get a shift that's staged for deletion

#### Request

```
GET https://graph.microsoft.com/beta/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/shifts/SHFT_0fd70cde-5adb-4f97-bc00-cdd99ec1f1a7
```

#### Response

```json
{
  "userId": "c5d0c76b-80c4-481c-be50-923cd8d680a1",
  "createdDateTime": "2019-03-14T05:35:57.755Z",
  "lastModifiedDateTime": "2019-03-14T05:36:08.381Z",
  "lastModifiedBy": {
    "application": null,
    "device": null,
    "conversation": null,
    "user": {
      "id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
      "displayName": "John Doe"
    }
  },
  "sharedTimeOff": {
    "timeOffReasonId": "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
    "startDateTime": "2019-03-11T07:00:00Z",
    "endDateTime": "2019-03-12T07:00:00Z",
    "theme": "white"
  },
  "draftTimeOff": {
    "timeOffReasonId": "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
    "startDateTime": "2019-03-11T07:00:00Z",
    "endDateTime": "2019-03-12T07:00:00Z",
    "theme": "pink"
  },
  "isStagedForDeletion": "true",
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Stage deletion of timeOff in draft mode.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
