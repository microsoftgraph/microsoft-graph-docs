---
title: "notebook: getRecentNotebooks"
description: "Get a list of recentNotebook instances that have been accessed by the signed-in user."
author: "jewan-microsoft"
localization_priority: Normal
ms.prod: "onenote"
doc_type: apiPageType
---

# notebook: getRecentNotebooks

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [recentNotebook](../resources/recentnotebook.md) instances that have been accessed by the signed-in user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Notes.Create, Notes.Read, Notes.ReadWrite, Notes.Read.All, Notes.ReadWrite.All,|
|Delegated (personal Microsoft account) | Notes.Create, Notes.Read, Notes.ReadWrite |
|Application | Notes.Read.All, Notes.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/onenote/notebooks/getRecentNotebooks(includePersonalNotebooks=includePersonalNotebooks-value)
GET /users/{id | userPrincipalName}/onenote/notebooks/getRecentNotebooks(includePersonalNotebooks=includePersonalNotebooks-value)
```

The `{id | userPrincipalName}` for the user must match the user encoded in the authorization token used to make the request.

## Function parameters

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|includePersonalNotebooks|Boolean|Include notebooks owned by the user. Set to `true` to include notebooks owned by the user; otherwise, set to `false`. If you don't include the `includePersonalNotebooks` parameter, your request will return a `400` error response.|

## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|

## Request body
Do not supply a request body for this method.

## Response
A successful response returns a `200 OK` that contains a JSON collection of **recentNotebooks**.

## Example
The following example shows how to call this API.

##### Request
The following example shows the request.
<!-- { "blockType": "request", "name": "recent_notebooks", "scopes": "notes.read" } -->
```http
GET https://graph.microsoft.com/v1.0/onenote/notebooks/getrecentnotebooks(includePersonalNotebooks=true)
```

##### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.notebook",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-Length: 1110

{
  "value":[
    {
      "name":"Personal Notebook","lastAccessedTime":"timestamp","links":{
        "oneNoteClientUrl":{
          "href":"onenote:href-value"
        },"oneNoteWebUrl":{
          "href":"href-value"
        }
      },"sourceService":"OneDrive"
    },{
      "name":"Team Shared Notebook","lastAccessedTime":"timestamp","links":{
        "oneNoteClientUrl":{
          "href":"onenote:href-value"
        },"oneNoteWebUrl":{
          "href":"href-value"
        }
      },"sourceService":"OneDriveForBusiness"
    }
  ]
}
```


