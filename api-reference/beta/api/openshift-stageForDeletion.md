---
title: "StageForDeletion open shift"
description: "Stage deletion of an open shift in draft mode."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Stage deletion of openshift in draft mode

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Stage deletion of [openshift](../resources/openshift.md) instance in a [schedule](../resources/schedule.md) in draft mode.
Use this API to draft multiple openshift deletions before finally sharing all the deleted openshifts.

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
POST /teams/{teamId}/schedule/openShifts/{openShiftId}/stageForDeletion
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.  |
| MS-APP-ACTS-AS | The id of the user on behalf of whom the app is acting. Required for Application permission scope. |

## Response

If successful, this method returns a `204 OK` response code.

## Example 1

#### Request

The following is an example of a request to stage in draft mode an openshift deletion.

```http
POST https://graph.microsoft.com/beta/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/openShifts/{openShiftId}/stageForDeletion
```
---

#### Response

The following is an example of the response.

```http
HTTP/1.1 204 OK
```

## Example 2

#### Request

The following is an example to get an openShift that's been staged for deletion.

```http
GET https://graph.microsoft.com/beta/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/openShifts/{openShiftId}

```
---

#### Response

The following is an example of the response.

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 401

{
  "id": "OPNSHFT_20976420-6453-49ee-8c87-1d42e1f4cd0b",
  "schedulingGroupId": "dbaeeda2-025b-4db3-861d-ccaf7c369fb5",
  "sharedOpenShift": {
    "notes": "Please upload proof of completion.",
    "displayName": "Re-Paint kitchen wall",
    "startDateTime": "2019-10-04T10:00:00.000Z",
    "endDateTime": "2019-10-04T11:00:00.000Z",
    "theme": "white",
    "activities": [],
    "openSlotCount": 3
  },
  "draftOpenShift": {
    "notes": "Please upload proof of completion.",
    "displayName": "Re-Paint kitchen wall",
    "startDateTime": "2019-10-04T10:00:00.000Z",
    "endDateTime": "2019-10-04T11:00:00.000Z",
    "theme": "white",
    "activities": [],
    "openSlotCount": 3
  },
  "createdDateTime": "2019-10-03T10:00:00.000Z",
  "lastModifiedDateTime": "2019-10-03T10:00:00.000Z",
  "lastModifiedBy": {
    "user": {
      "id": "ca124613-19fe-403d-be9a-1e469c98de08",
      "displayName": "Jon Doe"
    }
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
