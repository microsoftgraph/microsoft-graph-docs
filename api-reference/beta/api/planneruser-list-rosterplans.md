---
title: "List rosterPlans"
description: "Get the plannerPlan resources from the rosterPlans navigation property."
author: "tarkansevilmis"
localization_priority: Normal
ms.prod: "planner"
doc_type: apiPageType
---

# List rosterPlans
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [plannerPlans](../resources/plannerplan.md) that are contained by the [plannerRosters](../resources/plannerroster.md) of which the user is a member.

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
GET /users/{usersId}/planner/rosterPlans
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

If successful, this method returns a `200 OK` response code and a collection of [plannerPlan](../resources/plannerplan.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_plannerplan_2"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/planner/rosterPlans
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-plannerplan-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-plannerplan-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-plannerplan-2-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-plannerplan-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.plannerPlan)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.plannerPlan",
      "id": "c6442b38-2b38-c644-382b-44c6382b44c6",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "title": "Test plan",
      "container": {
        "@odata.type": "microsoft.graph.plannerPlanContainer",
        "url": "https://graph.microsoft.com/beta/planner/rosters/5ba84f7a-aa11-4a51-a298-9f2c7ec6bb38",
        "containerId": "5ba84f7a-aa11-4a51-a298-9f2c7ec6bb38",
        "type": "roster"
      }
    }
  ]
}
```

