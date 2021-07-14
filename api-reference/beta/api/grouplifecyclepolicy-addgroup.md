---
title: "groupLifecyclePolicy: addGroup"
description: "Adds a group to a lifecycle policy."
author: "Jordanndahl"
localization_priority: Normal
ms.prod: "groups"
doc_type: apiPageType
---

# groupLifecyclePolicy: addGroup

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Adds specific groups to a lifecycle policy. This action limits the group lifecycle policy to a set of groups only if the **managedGroupTypes** property of [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md) is set to `Selected`.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported |
|Application | Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groupLifecyclePolicies/{id}/addGroup
```

## Request headers

| Name | Description |
|:---------------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter | Type | Description |
|:---------------|:--------|:----------|
|groupId|String| The identifier of the group to add to the policy. |

When the **managedGroupTypes** property of [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md) is set to `Selected`, you can add up to 500 groups to the list. If you need to add more than 500 groups, the **managedGroupTypes** property of [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md) must be set to `All`.

Only one group can be added per request.

## Response

If successful, this method returns `200 OK` response code. If the group is added to the policy, a `true` value is returned in the response body. Otherwise, a `false` value is returned in the response body.

## Example

#### Request

<!-- {
  "blockType": "ignored",
  "name": "grouplifecyclepolicy_addgroup"
} -->
```http
POST https://graph.microsoft.com/beta/groupLifecyclePolicies/{id}/addGroup
Content-type: application/json
Content-length: 57

{
  "groupId": "ffffffff-ffff-ffff-ffff-ffffffffffff"
}
```

#### Response
<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 21

{
  "value": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "groupLifecyclePolicy: addgroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


