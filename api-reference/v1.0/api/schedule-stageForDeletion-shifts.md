---
title: "StageForDeletion shift"
description: "Stage shift for deletion in draft mode."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Create shift

Namespace: microsoft.graph

Stage deletion of a [shift](../resources/shift.md) instance in a [schedule](../resources/schedule.md) in draft mode.
Consider a scenario where a manager has created a new shift and shared it with his team. Now the manager deleted this shift but has not yet shared this change. In this scenario, you can support a different view for the manager with this shift deleted, while the team member can still view the shared version of the shift.
Use this API to draft multiple shift deletions before finally sharing all the deleted shifts.

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
POST /teams/{teamId}/schedule/shifts/{shiftId}/stageForDeletion
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json. Required. |
| MS-APP-ACTS-AS | The id of the user on behalf of whom the app is acting. Required for Application permission scope. |

## Response

If successful, this method returns a `204 OK` response code.

## Example to stage a shift to be deleted

#### Request

The following is an example of the request to stage a shift to be deleted.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schedule-post-shifts"
}-->
```http
POST https://graph.microsoft.com/v1.0/teams/{teamId}/schedule/shifts{shiftId}/stageForDeletion
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#teams('a3601044-a1b5-438e-b742-f78d01d68a67')/schedule/shifts/$entity",
    "@odata.etag": "\"6501009d-0000-0700-0000-5e96487c0000\"",
    "id": "SHFT_0fd70cde-5adb-4f97-bc00-cdd99ec1f1a7",
    "createdDateTime": "2020-04-14T11:54:38.213Z",
    "lastModifiedDateTime": "2020-04-14T23:34:13.367Z",
    "schedulingGroupId": "TAG_281b5a27-3248-4954-9d7f-4fe5a75743cf",
    "userId": "1c717a55-febd-4850-b5f6-101f3a29972c",
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "1c717a55-febd-4850-b5f6-101f3a29972c",
            "displayName": "Sumanth Lingom"
        },
        "conversation": null
    },
    "sharedShift": {
        "displayName": null,
        "notes": null,
        "startDateTime": "2020-05-11T15:00:00Z",
        "endDateTime": "2020-05-12T14:49:00Z",
        "theme": "green",
        "activities": []
    },
    "draftShift": {
        "displayName": null,
        "notes": "draft and delete",
        "startDateTime": "2020-05-13T15:00:00Z",
        "endDateTime": "2020-05-14T14:49:00Z",
        "theme": "green",
        "activities": []
    },
    "isStagedForDeletion": true,
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Stages deletion of shift in draft mode",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
