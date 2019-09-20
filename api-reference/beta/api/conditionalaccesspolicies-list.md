---
title: "List conditionalAccessPolicies"
description: "Retrieve all Conditional Access Policy objects in the directory."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# List conditionalAccessPolicies

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve all [conditionalAccessPolicies](../resources/conditionalaccesspolicy.md) objects in the directory.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type | Permissions (from least to most privileged) |
|:-------------- |:------------------------------------------- |
| Delegated (work or school account) | Directory.AccessAsUser.All	|
| Delegated (personal Microsoft account) | Not supported. |
| Delegated (work or school account) | Policy.Read.All or Policy.ReadWrite.ConditionalAccess |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /conditionalAccess/policies/
```

## Request headers

| Header | Value |
|:------ |:----- |
| Authorization  | Bearer {token}. Required. |
| Content-Type  | application/json |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [conditionalAccessPolicies](../resources/conditionalaccesspolicy.md) objects in the response body.

## Example

The following example retrieves all conditionalAccessPolicies objects.

### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/beta/conditionalAccess/policies/
```

### Response

The following is an example of the response. 

> **Note:** The response object shown here may be truncated for brevity. All of the properties are returned from an actual call.

```http
HTTP/1.1 200 OK
Content-type: application/json
  
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#conditionalAccessPolicies",
  "@odata.count": 12,
  "value": [
    {
      "id": "94f8bf38-27b1-46d0-a745-9dac7e22c7d1",
      "displayName": "Test Policy Sample",
      "createdDateTime": null,
      "modifiedDateTime": null,
      "state": "enabled"
    },
    ...
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List conditionalAccessPolicies",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->