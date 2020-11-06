---
title: "List openShiftChangeRequests"
description: "Retrieve a list of openShiftChangeRequest objects in a team."
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "apiPageType"
---

# List openShiftChangeRequests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [openShiftChangeRequest](../resources/openshiftchangerequest.md) objects in a team.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Group.ReadWrite.All, Group.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /teams/{id}/schedule/openShiftsChangeRequests
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the list of [openShiftChangeRequest](../resources/openshiftchangerequest.md) objects in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_openshiftchangerequest"
}-->

```http
GET https://graph.microsoft.com/beta/teams/{id}/schedule/openShiftsChangeRequests
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.openShiftChangeRequest"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
	"value": [{
		"id": "SREQ_0b87dd20-d5ed-4764-9c3e-cfc8516def09",
		"openShiftId": "577b75d2-a927-48c0-a5d1-dc984894e7b8",
		"assignedTo": "manager",
		"state": "pending",
		"senderUserId": "3fe0bc21-1398-4fd9-9713-52511b434c1e",
		"senderDateTime": "2019-05-01T10:00:00Z",
		"senderMessage": "Can I take this shift?",
		"managerUserId": null,
		"managerActionDateTime": null,
		"managerActionMessage": null,
		"createdDateTime": "2019-03-14T04:32:51.451Z",
		"lastModifiedDateTime": "2019-03-14T05:32:51.451Z",
		"lastModifiedBy": {
			"application": null,
			"device": null,
			"conversation": null,
			"user": {
				"id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
				"displayName": "John Doe"
			}
		}
	}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List openShiftChangeRequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


