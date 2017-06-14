# Create item

Use this API to create a new item.
## Prerequisites
The following **scopes** are required to execute this API:
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /shares/{id}/items

```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
In the request body, supply a JSON representation of [item](../resources/driveitem.md) object.


## Response
If successful, this method returns `201, Created` response code and [item](../resources/driveitem.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_driveitem_from_share"
}-->
```http
POST https://graph.microsoft.com/beta/shares/{id}/items
Content-type: application/json
Content-length: 504

{
  "driveItem": {
    "content": "content-value",
    "createdBy": {
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
    "createdDateTime": "2016-10-19T10:37:00Z",
    "cTag": "cTag-value",
    "description": "description-value",
    "eTag": "eTag-value"
  }
}
```
In the request body, supply a JSON representation of [driveItem](../resources/driveitem.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 504

{
  "driveItem": {
    "content": "content-value",
    "createdBy": {
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
    "createdDateTime": "2016-10-19T10:37:00Z",
    "cTag": "cTag-value",
    "description": "description-value",
    "eTag": "eTag-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create item",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
