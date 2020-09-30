---
title: "List include condition sets for a permission grant policy"
description: "Retrieve a list of the condition sets which describe conditions under which a permission grant event is included in a permission grant policy"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "microsoft-identity-platform"
author: "psignoret"
---

# List include condition sets for a permission grant policy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the condition sets which are *included* in a [permissionGrantPolicy](../resources/permissiongrantpolicy.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.Read.OwnedBy, Application.Read.All, Directory.Read.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Application.Read.OwnedBy, Application.Read.All, Directory.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals/{id}/includes
```

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) objects in the response body.

## Example

### Request

The following is an example of the request to retrieve the app roles assignments that have been granted for a given resource service principal.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_get_permissiongrantconditionset"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/servicePrincipals/{id}/includes
```


### Response

Here is an example of the response. 

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionGrantConditionSet",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 306

{
  "value": [
    {
        "id": "2G3-4TG6YU2J54hjnaRoPQE",
        "permissionId": "e1fe6dd8-ba31-4d61-89e7-88639da4683d",
        "permissionName": "User.Read",
        "classification": "low"
    }
  ]
}
```