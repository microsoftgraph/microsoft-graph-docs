---
title: "Update workPosition"
description: "Update the properties of a workPosition object in a user's profile."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Update workPosition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [workPosition](../resources/workposition.md) object in a user's [profile](../resources/profile.md).

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
PATCH /me/profile/positions/{id}
PATCH /users/{id|userPrincipalName}/profile/positions/{id}
```

## Request headers

| Name           |Description                  |
|:---------------|:----------------------------|
| Authorization  | Bearer {token}. Required.   |
| Content-Type   | application/json. Required. |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type                                        | Description                                                                                                 |
|:-------------|:--------------------------------------------|:------------------------------------------------------------------------------------------------------------|
|categories|String collection                                | Contains categories a user has associated with the position. (eg: digital transformation, ms graph, people) |
|detail    |[positionDetail](../resources/positiondetail.md) | Contains detail about a users work position.                                                                |

## Response

If successful, this method returns a `200 OK` response code and an updated [workPosition](../resources/workposition.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_workposition"
}-->

```http
PATCH https://graph.microsoft.com/beta/me/profile/positions/{id}
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
  "isCurrent": "True",
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-workposition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-workposition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-workposition-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workPosition",
  "baseType": "microsoft.graph.itemfacet",
  "keyProperty": "id"
} -->

```http
HTTP/1.1 200 OK
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
  "description": "Update workposition",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
