---
title: "educationClass: delta"
description: "Get newly created or updated classes, including membership changes, without having to perform a full read of the entire class collection."
localization_priority: Normal
author: "mlafleur"
ms.prod: "education"
doc_type: apiPageType
---

# educationClass: delta

Namespace: microsoft.graph

Get newly created or updated classes, including membership changes, without having to perform a full read of the entire class collection. See [Use delta query](/graph/delta-query-overview) for details.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                              |
| :------------------------------------- | :----------------------------------------------------------------------- |
| Delegated (work or school account)     | EduRoster.ReadBasic, EduRoster.Read, or EduRoster.ReadWrite              |
| Delegated (personal Microsoft account) | Not supported.                                                           |
| Application                            | EduRoster.ReadBasic.All, EduRoster.Read.All, or EduRoster.WriteWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /education/classes/delta
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this function returns an `200 OK` response code and an [educationClass](../resources/educationclass.md) collection in the response body. The response also includes a `nextLink` URL or a `deltaLink` URL.

- If a `nextLink` URL is returned, there are additional pages of data to be retrieved in the session. The application continues making requests using the `nextLink` URL until a `deltaLink` URL is included in the response.
- If a `deltaLink` URL is returned, there is no more data about the existing state of the resource to be returned. Persist and use the `deltaLink` URL to learn about changes to the resource in the future.

For details, see [Using delta query](/graph/delta-query-overview). For example requests, see [Get incremental changes for users](/graph/delta-query-users).

> [!IMPORTANT]
> educationClass deltas do not include deleted classes.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "educationclass_delta"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/delta
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/educationclass-delta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/educationclass-delta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/educationclass-delta-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/educationclass-delta-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationClass)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{

  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(educationClass)",
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/education/classes/delta?$skiptoken=sU1S4IJGk3hwxbia8...",
  "value": [
    {
      "@odata.type": "#microsoft.graph.educationClass",
      "id": "String (identifier)",
      "displayName": "String",
      "mailNickname": "String",
      "description": "String",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "classCode": "String",
      "externalName": "String",
      "externalId": "String",
      "externalSource": "String",
      "externalSourceDetail": "String",
      "grade": "String",
      "term": {
        "@odata.type": "microsoft.graph.educationTerm"
      }
    }
  ]
}
```
