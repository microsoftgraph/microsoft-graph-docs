---
title: "Get team photo"
description: "Get the photo (picture) for a team."
author: "clearab"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get team photo

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the photo (picture) for a team, or metadata for the photo. In general, it is a best practice to first attempt to retrieve the metadata for the size of the photo you'd like to get to ensure that size is available. Once you have retrieved the metadata, use the `/$value` path to get the binary data for the photo.

This method first attempts to retrieve the specified photo from Microsoft 365. If the photo is not available in Microsoft 365, it attempts to retrieve the photo from Azure Active Directory instead.

The following are the supported sizes of HD photos in Microsoft 365: 48x48, 64x64, 96x96, 120x120, 240x240, 360x360, 432x432, 504x504, and 648x648 pixels. Photos can be any dimension if they are stored in Azure Active Directory.

You can get the metadata of the largest available photo, or optionally specify a size to get the metadata for that photo size. If the size you request is not available, you can still get a smaller size. For example, if the largest photo uploaded is 504x504 pixels, all but the 648x648 size of the photo will be available for download. If the specified size is not available in the Microsoft 365 or in Azure Active Directory, the size 1x1 is returned with the rest of the metadata.

> [!Note]
> There is a limit of 4 MB on the total size of the REST request. This limits the photo size to less than 4 MB.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Team.ReadBasic.All, TeamSettings.Read.All, TeamSettings.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

> **Note**: Permissions marked with * use [resource-specific consent](https://aka.ms/teams-rsc).

> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request

### Get the metadata of the photo

This endpoint will return the metadata of the photo. If no size is specified, the metadata for the largest photo size available will be returned.

<!-- {
  "blockType": "ignored"
}-->

```http
GET /teams/{id}/photo
GET /teams/{id}/photo/{size}
```

### Get the photo

This endpoint will retrieve the binary data for the photo. If no size is specified, the largest size available will be returned.

<!-- {
  "blockType": "ignored"
}-->

```http
GET /beta/teams/{id}/photo/$value
GET /beta/teams/{id}/photo/{size}/$value
```

## Path parameters

This method supports an optional path parameter to specify the size of the photo to be retrieved. You can specify any size up to the largest available size. Get the photo metadata to determine the largest size available.

|**Parameter**|**Type**|**Description**|
|:-----|:-----|:-----|
|size  |String  | A photo size. The supported sizes of HD photos on Microsoft 365 are as follows: 48x48, 64x64, 96x96, 120x120, 240x240, 360x360, 432x432, 504x504, and 648x648. Photos can be any dimension if they are stored in Azure Active Directory. Optional.|

## Request headers

| Header        | Value           |
|:--------------|:--------------  |
| Authorization | Bearer {token}. Required.  |

## Request body

Do not supply a body for this request.

## Response

### Response for getting the metadata of a photo

If successful, this method returns a `200 OK` response code, and metadata about the photo.

### Response for getting the photo

If successful, this method returns a `200 OK` response code, and the binary data for the photo.

## Examples

### Example 1: Get the photo metadata

#### Request

Here is an example of the request to get the metadata of the team photo.

<!-- {
  "blockType": "ignored",
  "name": "get_team_photo_metadata"
}-->
```http
GET https://graph.microsoft.com/beta/teams/{id}/photo
```

#### Response

Here is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.none"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('ddfcd489-628b-7d04-b48b-20075df800e5')/photo/$entity",
    "@odata.id": "https://graph.microsoft.com/beta/teams('ddfcd489-628b-7d04-b48b-20075df800e5')/photo",
    "@odata.mediaContentType": "image/jpeg",
    "@odata.mediaEtag": "\"BA09D118\"",
    "id": "240X240",
    "width": 240,
    "height": 240
}
```

### Example 2: Get a specific size of the team photo

Here is an example of the request to get the team photo in a specific size.

#### Request

<!-- {
  "blockType": "ignored",
  "name": "get_team_photo"
}-->
```http
GET https://graph.microsoft.com/beta/teams/{id}/photo/240x240/$value
```

#### Response

Contains the binary data of the requested 240x240 photo. The HTTP response code is 200.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get team photo",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
