# Get a DriveItem resource

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the metadata for a [DriveItem](../resources/driveitem.md) in a [Drive](../resources/drive.md) by file system path or ID.

## Prerequisites
One of the following **scopes** is required to execute this API:

* Files.Read
* Files.ReadWrite
* Files.Read.All
* Files.ReadWrite.All
* Sites.Read.All
* Sites.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/items/{item-id}
GET /me/drive/root:/{item-path}
GET /drives/{drive-id}/items/{item-id}
GET /groups/{group-id}/drive/items/{item-id}
```

## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.

## Request headers

| Name          | Value  | Description                                                                                                                                              |
|:--------------|:-------|:---------------------------------------------------------------------------------------------------------------------------------------------------------|
| if-none-match | String | If this request header is included and the eTag (or cTag) provided matches the current tag on the file, an `HTTP 304 Not Modified` response is returned. |


## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the [DriveItem](../resources/driveitem.md) resource in the response body.

## Example

##### Request

Here is an example of the request to the root folder of the user's OneDrive.

<!-- {
  "blockType": "request",
  "name": "get_item"
}-->
```
GET https://graph.microsoft.com/beta/me/drive/root
```

##### Response
Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "createdBy": {
      "user": {
          "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
          "displayName": "Ryan Gregg"
      }
  },
  "createdDateTime": "2016-03-21T20:01:37Z",
  "cTag": "\"c:{86EB4C8E-D20D-46B9-AD41-23B8868DDA8A},0\"",
  "eTag": "\"{86EB4C8E-D20D-46B9-AD41-23B8868DDA8A},1\"",
  "folder": { "childCount": 120 },
  "id": "01NKDM7HMOJTVYMDOSXFDK2QJDXCDI3WUK",
  "lastModifiedBy": {
      "user": {
          "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
          "displayName": "Ryan Gregg"
      }
  },
  "lastModifiedDateTime": "2016-03-21T20:01:37Z",
  "name": "OneDrive",
  "root": { },
  "size": 157286400,
  "webUrl": "https://contoso-my.sharepoint.com/personal/rgregg_contoso_com/Documents"
}
```

## Notes

You can use the [`$expand` query string parameter](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to include the children of an item in the same call as retrieving the metadata of an item if the item has a **children** relationship.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get item",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Item/Get item"
}-->
