---
title: "List educationSchools"
description: "Get a list of the educationSchool objects and their properties."
author: "mmast-msft"
ms.author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# List Schools

Namespace: microsoft.graph

Get a list of the [educationSchool](../resources/educationschool.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | EduRoster.ReadBasic                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | EduRoster.Read.All, EduRoster.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /education/schools
```

## Optional query parameters

This method supports the same OData query parameters as [List Users](../api/user-list.md#optional-query-parameters). For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationSchool](../resources/educationschool.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "list_educationschool"
}
-->

```http
GET https://graph.microsoft.com/v1.0/education/schools
```

### Response

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSchool)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.educationSchool",
      "id": "1c23c12e-c12e-1c23-2ec1-231c2ec1231c",
      "displayName": "String",
      "description": "String",
      "externalSource": "String",
      "externalSourceDetail": "String",
      "principalEmail": "String",
      "principalName": "String",
      "externalPrincipalId": "String",
      "lowestGrade": "String",
      "highestGrade": "String",
      "schoolNumber": "String",
      "externalId": "String",
      "phone": "String",
      "fax": "String",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "address": {
        "@odata.type": "microsoft.graph.physicalAddress"
      }
    }
  ]
}
```
