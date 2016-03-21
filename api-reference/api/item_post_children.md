# Create an item in a collection

Use this API to create a new item in a collection.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/children
POST /drive/items/<id>/children
POST /drives/<id>/root/children

```

### Request headers

| Name          | Type   | Description               |
|:--------------|:-------|:--------------------------|
| Authorization | string | Bearer <token>. Required. |


### Request body
In the request body, supply a JSON representation of [item](../resources/driveitem.md) object.


### Response
If successful, this method returns `201, Created` response code and [item](../resources/driveitem.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_item_from_item"
}-->
```http
<<<<<<< HEAD:api-reference/api/item_post_children.md
POST https://graph.microsoft.com/beta/drive/root
=======
POST https://graph.microsoft.com/v1.0/drive/root
Content-Type: application/json

{
  "name": "test-folder",
  "folder": { }
}
>>>>>>> master:api-reference/v1.0/api/item_post_children.md
```

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "createdBy": {
    "application": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "user": {
      "displayName": "displayName-value",
      "id": "id-value"
    }
  },
  "createdDateTime": "datetime-value",
  "cTag": "cTag-value",
  "eTag": "eTag-value",
  "id": "id-value",
  "lastModifiedBy": {
    "application": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "user": {
      "displayName": "displayName-value",
      "id": "id-value"
    }
  },
  "lastModifiedDateTime": "datetime-value",
  "name": "name-value",
  "parentReference": {
    "driveId": "driveId-value",
    "id": "id-value",
    "path": "path-value"
  },
  "size": 0,
  "folder": {
<<<<<<< HEAD:api-reference/api/item_post_children.md
    "childCount": 99
  },
  "image": {
    "height": 99,
    "width": 99
  },
  "location": {
    "altitude": 99,
    "latitude": 99.0,
    "longitude": 99.0
  },
  "photo": {
    "height": 99,
    "width": 99,
    "id": "id-value"
  },
  "searchResult": {
    "onClickTelemetryUrl": "onClickTelemetryUrl-value"
  },
  "shared": {
    "owner": {
      "application": {
        "displayName": "displayName-value",
        "id": "id-value"
      },
      "device": {
        "displayName": "displayName-value",
        "id": "id-value"
      },
      "user": {
        "displayName": "displayName-value",
        "id": "id-value"
      }
    },
    "scope": "scope-value"
  },
  "specialFolder": {
    "name": "name-value"
  },
  "video": {
    "bitrate": 99,
    "duration": 99,
    "height": 99,
    "width": 99
=======
    "childCount": 0
>>>>>>> master:api-reference/v1.0/api/item_post_children.md
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create children",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
