---
title: "tiIndicator: updateTiIndicators"
description: "Update multiple threat intelligence (TI) indicators in one request instead of multiple requests."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
doc_type: apiPageType
---

# tiIndicator: updateTiIndicators

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update multiple threat intelligence (TI) indicators in one request instead of multiple requests.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type   | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | ThreatIndicators.ReadWrite.OwnedBy |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | ThreatIndicators.ReadWrite.OwnedBy |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /security/tiIndicators/updateTiIndicators
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

In the request body, provide a JSON object with the following parameters. For details about properties that can be updated, see [update tiIndicator](tiindicator-update.md). Required fields for each tiIndicator are: `id`, `expirationDateTime`, `targetProduct`.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|value|tiIndicator collection| Collection of **tiIndicators** to update. Each entity must have **id** and other editable properties to be updated.|

## Response

If successful, this method returns a `200 OK` response code and a collection of [tiIndicator](../resources/tiindicator.md) objects in the response body.  If there is an error, this method returns a `206 Partial Content` response code.  See [Errors](../resources/security-error-codes.md#threat-indicator-bulk-action-errors) for more information.

## Examples

The following example shows how to call this API.

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tiindicator_updatetiindicators",
  "isCollection":true
}-->
```http
POST https://graph.microsoft.com/beta/security/tiIndicators/updateTiIndicators
Content-type: application/json

{
  "value": [
    {
      "id": "c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4",
      "additionalInformation": "mytest"
    },
    {
      "id": "e58c072b-c9bb-a5c4-34ce-eb69af44fb1e",
      "additionalInformation": "test again"
    }
  ]
}

```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tiindicator-updatetiindicators-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tiindicator-updatetiindicators-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/tiindicator-updatetiindicators-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tiindicator-updatetiindicators-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tiIndicator",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.tiIndicator",
      "id": "c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4",
      "azureTenantId": "XXXXXXXXXXXXXXXXXX",
      "action": null,
      "additionalInformation": "mytest",
      "activityGroupNames": [],
      "confidence": 0,
      "description": "This is a test indicator for demo purpose. Take no action on any observables set in this indicator.",
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "tiIndicator: updateTiIndicators",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->


