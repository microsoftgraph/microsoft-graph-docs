---
title: "user: exportPersonalData"
description: "Submits a data policy operation request, made by a Company Administrator to export an organizational user's data."
---

# user: exportPersonalData

Submits a data policy operation request, made by a Company Administrator to export an organizational user's data.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  User.Export.All  |
|Delegated (personal Microsoft account) |  Not applicable  |
|Application | User.Export.All |

>Note: Export can only be performed by a Company Administrator when using the delegated permission.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<id>/exportPersonalData

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}|

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|storageLocation|String|This is a shared access signature (SAS) URL to an Azure Storage account, to where data should be exported.|

## Response
If successful, this method returns `200, OK` response code. It does not return anything in the response body.

## Example
##### Request
<!-- {
  "blockType": "request",
  "name": "user_exportpersonaldata"
}-->
```http
POST https://graph.microsoft.com/beta/users/{id}/exportPersonalData
Content-type: application/json
Content-length: 48

{
  "storageLocation": "storageLocation-value"
}
```

##### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.none"
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user: exportPersonalData",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
