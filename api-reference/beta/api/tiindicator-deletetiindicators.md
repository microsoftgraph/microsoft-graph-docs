---
title: "tiIndicator: deleteTiIndicators"
description: "Delete multiple threat intelligence (TI) indicators in one request instead of multiple requests."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
---

# tiIndicator: deleteTiIndicators

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete multiple threat intelligence (TI) indicators in one request instead of multiple requests.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | ThreatIndicators.ReadWrite.OwnedBy |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | ThreatIndicators.ReadWrite.OwnedBy |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /security/tiIndicators/deleteTiIndicators
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|value|String collection| Collection of tiIndicator `id`s to be deleted. |

## Response

If successful, this method returns `200, OK` response code and a [resultInfo](../resources/resultinfo.md) collection object in the response body.

## Examples

The following example shows how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "tiindicator_deletetiindicators"
}-->

```http
POST https://graph.microsoft.com/beta/security/tiIndicators/deleteTiIndicators
Content-type: application/json

{
  "value": [
    "id-value1",
    "id-value2"
  ]
}
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.resultInfo",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "value": [
    {
      "code": "code-value",
      "message": "message-value",
      "subCode": "subCode-value"
    }
  ]
}
```
#### Sample Code
# [C#](#tab/CS)
[!INCLUDE [Sample Code]( ../includes/tiindicator_deletetiindicators-C#-snippets.md)]

# [Javascript](#tab/Javascript)
[!INCLUDE [Sample Code]( ../includes/tiindicator_deletetiindicators-Javascript-snippets.md)]

---


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "tiIndicator: deleteTiIndicators",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
