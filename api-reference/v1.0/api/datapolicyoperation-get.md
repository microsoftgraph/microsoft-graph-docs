---
title: "Get dataPolicyOperation"
description: "Retrieve the properties of the dataPolicyOperation object."
localization_priority: Normal
author: "lleonard-msft"
ms.prod: "microsoft-identity-platform"
---

# Get dataPolicyOperation

Retrieve the properties of a **dataPolicyOperation** object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  User.Export.All, User.Read.All  |
|Delegated (personal Microsoft account) |  Not applicable  |
|Application | User.Export.All, User.Read.All | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /dataPolicyOperations/{id}
```

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and a [dataPolicyOperation](../resources/datapolicyoperation.md) object in the response body.
## Example
##### Request
<!-- {
  "blockType": "request",
  "name": "get_datapolicyoperation"
}-->
```http
GET https://graph.microsoft.com/v1.0/dataPolicyOperations/{id}
```
##### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.dataPolicyOperation"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 212

{
  "completedDateTime": "datetime-value",
  "id": "id-value",
  "status": "status-value",
  "storageLocation": "storageLocation-value",
  "userId": "userId-value",
  "submittedDateTime": "datetime-value", 
  "progress": "double-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get dataPolicyOperation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
