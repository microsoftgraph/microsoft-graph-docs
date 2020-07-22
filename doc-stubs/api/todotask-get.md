---
title: "Get todoTask"
description: "Read the properties and relationships of a todoTask object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get todoTask
Namespace: microsoft.graph

Read the properties and relationships of a [todoTask](../resources/todotask.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/concepts/permissions-reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tasks/{tasksId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [todoTask](../resources/todotask.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_todotask"
}
-->
``` http
GET https://graph.microsoft.com/beta/tasks/{tasksId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.todoTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.graph.todoTask",
    "id": "721a35e2-35e2-721a-e235-1a72e2351a72",
    "body": {
      "@odata.type": "microsoft.graph.itemBody"
    },
    "completedDateTime": {
      "@odata.type": "microsoft.graph.dateTimeTimeZone"
    },
    "dueDateTime": {
      "@odata.type": "microsoft.graph.dateTimeTimeZone"
    },
    "importance": "String",
    "isReminderOn": "Boolean",
    "recurrence": {
      "@odata.type": "microsoft.graph.patternedRecurrence"
    },
    "reminderDateTime": {
      "@odata.type": "microsoft.graph.dateTimeTimeZone"
    },
    "status": "String",
    "title": "String",
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "bodyLastModifiedDateTime": "String (timestamp)"
  }
}
```

