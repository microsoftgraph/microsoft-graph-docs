---
title: "Create journalLine"
description: "Use this API to create a new journalLine."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "apiPageType"
---

# Create journalLine

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new journalLine.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /financials/companies/{id}/journals/{id}/journalLines
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply a JSON representation of [journalLine](../resources/dynamics-journalline.md) object.

## Response

If successful, this method returns `201, Created` response code and a new [journalLine](../resources/dynamics-journalline.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_journalline_from_journal"
}-->

```http
POST https://graph.microsoft.com/beta/financials/companies/{id}/journals/{id}/journalLines
Content-type: application/json

{
  "journalDisplayName": "journalDisplayName-value",
  "lineNumber": 99,
  "accountId": "accountId-value",
  "accountNumber": "accountNumber-value",
  "postingDate": "datetime-value"
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.journalLine"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "journalDisplayName": "journalDisplayName-value",
  "lineNumber": 99,
  "accountId": "accountId-value",
  "accountNumber": "accountNumber-value",
  "postingDate": "datetime-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create journalLine",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->