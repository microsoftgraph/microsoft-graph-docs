---
title: "StageForDeletion openShift"
description: "Stage openshift for deletion in draft mode."
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "apiPageType"
---

# Create openShift

Namespace: microsoft.graph

Stage deletion of an [openShift](../resources/openshift.md) object in draft mode.
Consider a scenario where a manager has created a new open shift and shared it with his team. Now the manager deleted this open shift but has not yet shared this change. In this scenario, you can support a different view for the manager with this open shift deleted, while the team member can still view the shared version of the open shift.
Use this API to draft multiple open shift deletions before finally sharing all the deleted open shifts.


## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Schedule.ReadWrite.All, Group.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Schedule.ReadWrite.All* |

>\* **Important:** Application permissions require MS-APP-ACTS-AS header to be provided.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{id}/schedule/openShifts/{openShiftId}/stageForDeletion
```
  
## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-type | application/json. Required.|
| MS-APP-ACTS-AS | The id of the user on behalf of whom the app is acting. Required for Application permission scope. |

## Response

If successful, this method returns a `204 OK` response code.

## Example to stage an open shift to be deleted.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request"
}-->

```http
POST https://graph.microsoft.com/v1.0/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/openshifts/OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8/stageForDeletion
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

## Example to get an open shift that's staged for deletion

#### Request

```
GET https://graph.microsoft.com/beta/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/openshifts/OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8
```

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.openShift"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

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

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Stage shift for deletion in draft mode.",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
