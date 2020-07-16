---
title: "Get todoTaskList"
description: "Read the properties and relationships of a todoTaskList object."
author: "avijityadav"
localization_priority: Normal
ms.prod: "Microsoft To Do"
doc_type: apiPageType
---

# Get todoTaskList
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [todoTaskList](../resources/todotasklist.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/concepts/permissions-reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.Read|
|Delegated (personal Microsoft account)|Tasks.Read|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{id|userPrincipalName}/todo/lists/{id}
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [todoTaskList](../resources/todotasklist.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_todotasklist"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/todo/lists/AAMkADIyAAAAABrJAAA=
```


### Response
**Note:** Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call..
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.todoTaskList"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.graph.todoTaskList",
    "id": "5daae1ed-e1ed-5daa-ede1-aa5dede1aa5d",
    "displayName": "Monthly tasks",
    "isOwner": "true",
    "isShared": "false",
    "wellknownListName": "defaultList"
  }
}
```

