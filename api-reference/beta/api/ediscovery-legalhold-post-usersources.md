---
title: "Create legalHold userSource"
description: "Create a new legalHold userSource object."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# Create legalHold userSource

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Adds a userSource to a legalHold object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /compliance/ediscovery/cases/{caseId}/legalHolds/{legalholdId}/userSources
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [userSource](../resources/ediscovery-usersource.md) object.

The following table shows the properties that are required when you create the [userSource](../resources/ediscovery-usersource.md).

|Property|Type|Description|
|:---|:---|:---|
|email|String|SMTP address of the user.|
|includedSources|microsoft.graph.ediscovery.sourceType|Specifies which sources are included in this group. This value must be `mailbox`, `site` is not supported for legalHolds at this time.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.ediscovery.userSource](../resources/ediscovery-usersource.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_usersource_from__2"
}
-->

``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/c816dd6f-5af8-40c5-a760-331361e05c60/legalHolds/387566cc-38ae-4e85-ab4b-cd2dd34faa07/userSources
Content-Type: application/json
Content-length: 208

{
  "email": "adelev@contoso.com",
  "includedSources": "mailbox"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-usersource-from--2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-usersource-from--2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-usersource-from--2-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-usersource-from--2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.userSource"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/ediscovery/cases/c816dd6f-5af8-40c5-a760-331361e05c60/legalholds/387566cc-38ae-4e85-ab4b-cd2dd34faa07/userSources",
    "value": [
        {
            "displayName": "Adele Vance",
            "createdDateTime": "2020-12-28T20:08:57.857Z",
            "id": "2192ca40-8ea2-410e-ba3b-ec8ae873be6b",
            "email": "AdeleV@contoso.com",
            "includedSources": "mailbox",
            "createdBy": {
                "user": {
                    "id": null,
                    "displayName": "EDiscovery admin"
                }
            }
        }
    ]
}
```
