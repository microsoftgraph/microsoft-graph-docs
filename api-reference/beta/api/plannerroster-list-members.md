---
title: "List members of a roster"
description: "Get the plannerRosterMember resources from the members navigation property."
author: "tarkansevilmis"
localization_priority: Normal
ms.prod: "planner"
doc_type: apiPageType
---

# List members of a roster
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [plannerRosterMembers](../resources/plannerrostermember.md) from a [plannerRoster](../resources/plannerroster.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.Read, Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /planner/rosters/{plannerRosterId}/members
```

## Optional query parameters
This method only supports following OData query parameters:

- $select

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [plannerRosterMember](../resources/plannerrostermember.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_plannerrostermember"
}
-->
``` http
GET https://graph.microsoft.com/beta/planner/rosters/6519868f-868f-6519-8f86-19658f861965/members
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.plannerRosterMember)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.plannerRosterMember",
      "id": "670095cd-95cd-6700-cd95-0067cd950067",
      "userId": "5ba84f7a-aa11-4a51-a298-9f2c7ec6bb38",
      "tenantId": "7084c257-c1b7-4286-98b0-20ea7b5c1319",
      "roles": [
      ]
    }
  ]
}
```

