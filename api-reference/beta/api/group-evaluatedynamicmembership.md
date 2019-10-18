---
title: "group: evaluateDynamicMembership"
description: "Evaluate if a user or device is a member of a dynamic group."
author: "davidmu1"
localization_priority: Normal
ms.prod: "groups"
doc_type: apiPageType
---

# group: evaluateDynamicMembership

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Evaluate whether a user or device is a member of a dynamic group. The membership rule is returned along with other details that were used to evaluate the user or device. You can complete this operation in the following ways: 
- Evaluate whether a member ID (user or device) is part of the specified group.  
- Evaluate whether a member ID (user or device) is part of the specified group based on member ID and membership rule.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Evaluate dynamic membership with member ID and group ID

| Permission type | Permissions (from least to most privileged) |
| :-------------- | :------------------------------------------ |
| Delegated (work or school account) | For user: Group.Read.All and User.Read.All, Directory.Read.All<br><br>For device: Group.Read.All and Device.Read.All, Directory.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

### Evaluate dynamic membership with member ID and membership rule

| Permission type | Permissions (from least to most privileged) |
| :-------------- | :------------------------------------------ |
| Delegated (work or school account) | For user: User.Read.All, Directory.Read.All<br><br>For device: Device.Read.All, Directory.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groups/{id}/evaluateDynamicMembership
POST /groups/evaluateDynamicMembership
```

## Request headers

| Name | Description |
| :--- | :---------- |
| Authorization | Bearer {token} |
| Content-type  | application/json |

## Request body

In the request body, supply a value for the **memberId** property, or the **memberId** and **membershipRule** properties.

## Response

If successful, this method returns a `200 OK` response code and the result and details of membership evaluation.

## Examples

### Example 1: Evaluate membership using member ID and group ID

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "group_evaluatedynamicmembership"
}-->

```http
POST https://graph.microsoft.com/beta/groups/{id}/evaluateDynamicMembership 
Content-type: application/json
{ 
  "memberId": [
    "memberId-value"
  ]
}
```

#### Response

The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "membershipRule": "membershipRule-value",
  "membershipRuleEvaluationResult": true,
  "membershipRuleEvaluationDetails": {
    "expressionResult": true,
    "expression": "expression-value",
    "propertyToEvaluate": {
      "propertyName": "propertyName-value",
      "propertyValue": "propertyValue-value"
    }
  }
}

```

### Example 2: Evaluate membership using member ID and membership rule

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "group_evaluatedynamicmembership"
}-->

```http
POST https://graph.microsoft.com/beta/groups/evaluateDynamicMembership 
Content-type: application/json
{ 
  "memberId": [
    "memberIds-value"
  ],
  "membershipRule": [
    "membershipRule-value"
  ]
}
```

#### Response

The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "membershipRule": "membershipRule-value",
  "membershipRuleEvaluationResult": true,
  "membershipRuleEvaluationDetails": {
    "expressionResult": true,
    "expression": "expression-value",
    "propertyToEvaluate": {
      "propertyName": "propertyName-value",
      "propertyValue": "propertyValue-value"
    }
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "group: evaluateDynamicMembership",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
