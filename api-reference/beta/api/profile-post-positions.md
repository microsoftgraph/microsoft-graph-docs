---
title: "Create workPosition"
description: "Use this API to create a new workPosition."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Create workPosition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new [workPosition](../resources/workposition.md) in a user's [profile](../resources/profile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.ReadWrite, User.ReadWrite.All          |
| Delegated (personal Microsoft account) | User.ReadWrite, User.ReadWrite.All          |
| Application                            | User.ReadWrite.All                          |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/profile/positions
POST /users/{id|userPrincipalName}/profile/positions
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required.|
| Content-Type   | application/json. Required. |

## Request body

In the request body, supply a JSON representation of [workPosition](../resources/workposition.md) object.

## Response

If successful, this method returns `201, Created` response code and a new [workPosition](../resources/workposition.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_workposition_from_profile"
}-->

```http
POST https://graph.microsoft.com/Beta/me/profile/positions
Content-type: application/json

 {
  "categories": [],
  "allowedAudiences": "organization",
  "detail": {
      "description": null,
      "endMonthYear": null,
      "jobTitle": "Auditor",
      "startMonthYear": "2001-01-01",
      "summary": null,
      "company": {
          "displayName": "Contoso Ltd.",
          "pronunciation": null,
          "department": "Finance",
          "officeLocation": "12/1110",
          "webUrl": null,
          "address": {
              "type": "business",
              "postOfficeBox": null,
              "street": "30 Isabella St., Second Floor",
              "city": "Pittsburgh",
              "state": "PA",
              "countryOrRegion": "US",
              "postalCode": "15212"
          }
      }
  },
  "manager": null,
  "colleagues": [],
<<<<<<< HEAD
  "isCurrent": "True"
=======
  "isCurrent": "True",
>>>>>>> 7b7c7db48621b45f30c875e5e31daa28a9c5452c
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workPosition"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "categories": [],
  "allowedAudiences": "organization",
  "createdDateTime": "2020-02-18T16:07:14Z",
  "inference": null,
  "lastModifiedDateTime": "2020-02-18T16:07:14Z",
  "id": "1b9e024d-0df8-4b57-af2b-dae70db4f356",
  "detail": {
      "description": null,
      "endMonthYear": null,
      "jobTitle": "Auditor",
      "startMonthYear": "2001-01-01",
      "summary": null,
      "company": {
          "displayName": "Contoso Ltd.",
          "pronunciation": null,
          "department": "Finance",
          "officeLocation": "12/1110",
          "webUrl": null,
          "address": {
              "type": "business",
              "postOfficeBox": null,
              "street": "30 Isabella St., Second Floor",
              "city": "Pittsburgh",
              "state": "PA",
              "countryOrRegion": "US",
              "postalCode": "15212"
          }
      }
  },
  "manager": null,
  "colleagues": [],
  "isCurrent": "True",
  "createdBy": {
      "device": null,
      "user": null,
      "application": {
          "displayName": "AAD",
          "id": null
      }
  }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create workPosition",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->