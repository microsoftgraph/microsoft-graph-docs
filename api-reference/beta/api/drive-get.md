---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/10/2017
title: Get Drive
localization_priority: Normal
ms.prod: "sharepoint"
---
# Get Drive

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [Drive](../resources/drive.md) resource.

A Drive is the top-level container for a file system, such as OneDrive or SharePoint document libraries.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All    |
|Application | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All |

## Get current user's OneDrive

The signed in user's drive (when using delegated authentication) can be accessed from the `me` singleton.

If a user's OneDrive is not provisioned but the user has a license to use OneDrive, this request will automatically provision the user's drive, when using delegated authentication.

### HTTP request

<!-- { "blockType": "request", "name": "get-drive-default", "scopes": "files.read" } -->

```http
GET /me/drive
```

## Get a user's OneDrive

To access a user's OneDrive or OneDrive for Business, your app must request the **drive** relationship on the User resource.

If a user's OneDrive is not provisioned but the user has a license to use OneDrive, this request will automatically provision the user's drive, when using delegated authentication.

### HTTP request

<!-- { "blockType": "request", "name": "get-drive-by-user", "scopes": "files.read.all" } -->

```http
GET /users/{idOrUserPrincipalName}/drive
```
#### Sample Code
# [C#](#tab/CS)
[!INCLUDE [Sample Code]( ../includes/get-drive-default-C#-snippets.md)]

# [Javascript](#tab/Javascript)
[!INCLUDE [Sample Code]( ../includes/get-drive-default-Javascript-snippets.md)]

---


### Path parameters

| Parameter name | Value  | Description                                       |
|:---------------|:-------|:--------------------------------------------------|
| _idOrUserPrincipalName_     | string | Required. The identifier for the user object who owns the OneDrive. |

## Get the document library associated with a group

To access a Group's default document library, your app requests the **drive** relationship on the Group.

### HTTP request

<!-- { "blockType": "request", "name": "get-drive-by-group", "scopes": "group.read.all" } -->

```http
GET /groups/{groupId}/drive
```
#### Sample Code
# [C#](#tab/CS)
[!INCLUDE [Sample Code]( ../includes/get-drive-by-user-C#-snippets.md)]

# [Javascript](#tab/Javascript)
[!INCLUDE [Sample Code]( ../includes/get-drive-by-user-Javascript-snippets.md)]

---


### Path parameters

| Parameter name | Value  | Description                                       |
|:---------------|:-------|:--------------------------------------------------|
| _groupId_      | string | Required. The identifier for the group which owns the document library. |

## Get the document library for a site

To access a [Site's](../resources/site.md) default document library, your app requests the **drive** relationship on the Site.

### HTTP request

```http
GET /sites/{siteId}/drive
```
#### Sample Code
# [C#](#tab/CS)
[!INCLUDE [Sample Code]( ../includes/get-drive-by-group-C#-snippets.md)]

# [Javascript](#tab/Javascript)
[!INCLUDE [Sample Code]( ../includes/get-drive-by-group-Javascript-snippets.md)]

---


### Path parameters

| Parameter name | Value  | Description                                       |
|:---------------|:-------|:--------------------------------------------------|
| _siteId_       | string | Required. The identifier for the site that contains the document library. |

## Get a drive by ID

If you have the unique identifier for a drive, you can access it directly from the top-level drives collection.

### HTTP request

<!-- { "blockType": "request", "name": "get-drive-by-id", "scopes": "files.read" } -->

```http
GET /drives/{driveId}
```

### Path parameters

| Parameter name | Value  | Description                                       |
|:---------------|:-------|:--------------------------------------------------|
| _driveId_      | string | Required. The identifier for the drive requested. |

## Optional query parameters

These method support the [$select query parameter][odata-query-parameters] to shape the response.

## Response

Each of these methods returns a [Drive resource][drive-resource] for the matching drive in the response body.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.drive", "truncated": true, "name": ["get-drive-by-id", "get-drive-by-group", "get-drive-by-user", "get-drive-default"] } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "b!t18F8ybsHUq1z3LTz8xvZqP8zaSWjkFNhsME-Fepo75dTf9vQKfeRblBZjoSQrd7",
    "driveType": "business",
    "owner": {
        "user": {
            "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
            "displayName": "Ryan Gregg"
        }
    },
    "quota": {
        "deleted": 256938,
        "remaining": 1099447353539,
        "state": "normal",
        "total": 1099511627776
    }
}
```
#### Sample Code
# [C#](#tab/CS)
[!INCLUDE [Sample Code]( ../includes/get-drive-by-id-C#-snippets.md)]

# [Javascript](#tab/Javascript)
[!INCLUDE [Sample Code]( ../includes/get-drive-by-id-Javascript-snippets.md)]

---


### Error response codes

If the drive does not exist and cannot be provisioned automatically (when using delegated authentication) an `HTTP 404` response will be returned.

[drive-resource]: ../resources/drive.md
[odata-query-parameters]: /graph/query-parameters

<!--
{
  "type": "#page.annotation",
  "description": "Get metadata for a OneDrive, OneDrive for Business, or Office 365 group drive",
  "keywords": "drive,onedrive,default drive,group drive",
  "section": "documentation",
  "tocPath": "Drives/Get drive",
  "suppressions": [
    "Error: /api-reference/beta/api/drive-get.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
