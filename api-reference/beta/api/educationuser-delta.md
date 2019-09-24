---
title: "educationUser: delta"
description: "Get newly created or updated users without having to perform a full read of the entire user collection."
localization_priority: Normal
author: "mlafleur"
ms.prod: "education"
doc_type: apiPageType
---

# educationUser: delta

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get newly created or updated [educationUser](../resources/educationuser.md) without having to perform a full read of the entire collection. See [Use delta query](/graph/delta-query-overview) for details.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)     |
| :------------------------------------- | :---------------------------------------------- |
| Delegated (work or school account)     | Not supported.                                  |
| Delegated (personal Microsoft account) | Not supported.                                  |
| Application                            | EduRoster.Read.All, or EduRoster.WriteWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /education/me/delta
POST /education/users/{id}/delta
POST /education/schools/{id}/users/{id}/delta
```

## Request headers

| Name          | Description   |
| :------------ | :------------ |
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [educationUser](../resources/educationuser.md) collection object in the response body.

## Example

The following example shows how to call this API.

##### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "educationuser_delta"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/me/delta
```

##### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationUser",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1039

{
  "value": [
    {
      "primaryRole": "primaryRole-value",
      "middleName": "middleName-value",
      "externalSource": "externalSource-value",
      "residenceAddress": {
        "type": "type-value",
        "postOfficeBox": "postOfficeBox-value",
        "street": "street-value",
        "city": "city-value",
        "state": "state-value",
        "countryOrRegion": "countryOrRegion-value",
        "postalCode": "postalCode-value"
      },
      "mailingAddress": {
        "type": "type-value",
        "postOfficeBox": "postOfficeBox-value",
        "street": "street-value",
        "city": "city-value",
        "state": "state-value",
        "countryOrRegion": "countryOrRegion-value",
        "postalCode": "postalCode-value"
      },
      "student": {
        "graduationYear": "graduationYear-value",
        "grade": "grade-value",
        "birthDate": "datetime-value",
        "gender": "gender-value",
        "studentNumber": "studentNumber-value",
        "externalId": "externalId-value"
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationUser: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
