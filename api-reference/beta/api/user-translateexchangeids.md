---
title: "user: translateExchangeIds"
description: "Translate identifiers of Outlook-related resources between formats."
author: "svpsiva"
localization_priority: Normal
ms.prod: "outlook"
doc_type: apiPageType
---

# user: translateExchangeIds

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Translate identifiers of Outlook-related resources between formats.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | User.ReadBasic.All, User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All |
| Delegated (personal Microsoft account) | User.ReadBasic.All, User.Read, User.ReadWrite |
| Application | User.Read.All, User.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/translateExchangeIds
POST /users/{id|userPrincipalName}/translateExchangeIds
```

## Request headers

| Name | Value |
|:-----|:------|
| Authorization | Bearer {token}. Required. |

## Request body

| Parameter | Type | Description |
|:----------|:-----|:------------|
| inputIds | String collection | A collection of identifiers to convert. All identifiers in the collection MUST have the same source ID type, and MUST be for items in the same mailbox. Maximum size of this collection is 1000 strings. |
| sourceIdType | exchangeIdFormat | The ID type of the identifiers in the `InputIds` parameter. |
| targetIdType | exchangeIdFormat | The requested ID type to convert to. |

### exchangeIdFormat values

| Values | Description |
|:-------|:------------|
| entryId | The binary entry ID format used by MAPI clients. |
| ewsId | The ID format used by Exchange Web Services clients. |
| immutableEntryId | The binary MAPI-compatible immutable ID format. |
| restId | The default ID format used by Microsoft Graph. |
| restImmutableEntryId | The immutable ID format used by Microsoft Graph. |

The binary formats (`entryId` and `immutableEntryId`) are URL-safe base64 encoded. URL-safeness is implemented by modifying the base64 encoding of the binary data in the following way:

- Replace `+` with `-`
- Replace `/` with `_`
- Remove any trailing padding characters (`=`)
- Add an integer to the end of the string indicating how many padding characters were in the original (`0`, `1`, or `2`)

## Response

If successful, this method returns `200 OK` response code and a [convertIdResult](../resources/convertidresult.md) collection in the response body.

## Example

The following example shows how to convert multiple identifiers from the normal REST API format (`restId`) to the REST immutable format (`restImmutableEntryId`).

### Request

Here is the example request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_translateexchangeids"
}-->

```http
POST https://graph.microsoft.com/beta/me/translateExchangeIds
Content-Type: application/json

{
  "inputIds" : [
    "{rest-formatted-id-1}",
    "{rest-formatted-id-2}"
  ],
  "sourceIdType": "restId",
  "targetIdType": "restImmutableEntryId"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-translateexchangeids-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-translateexchangeids-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/user-translateexchangeids-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-translateexchangeids-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

Here is the example response
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.convertIdResult",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "sourceId": "{rest-formatted-id-1}",
      "targetId": "{rest-immutable-formatted-id-1}"
    },
    {
      "sourceId": "{rest-formatted-id-2}",
      "targetId": "{rest-immutable-formatted-id-2}"
    }
  ]
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Example",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->


