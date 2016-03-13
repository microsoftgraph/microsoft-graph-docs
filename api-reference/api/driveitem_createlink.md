# driveItem: createLink


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/createLink
POST /me/drive/root/createLink
POST /workbooks/<id>/createLink

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|type|string||
|scope|string||

### Response
If successful, this method returns `200, OK` response code and [permission](../resources/permission.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "driveitem_createlink"
}-->
```http
POST https://graph.microsoft.com/v1.0/drive/root/createLink
Content-type: application/json
Content-length: 52

{
  "type": "type-value",
  "scope": "scope-value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1048

{
  "grantedTo": {
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
  "id": "id-value",
  "invitation": {
    "email": "email-value",
    "invitedBy": {
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
    "redeemedBy": "redeemedBy-value",
    "signInRequired": true
  },
  "inheritedFrom": {
    "driveId": "driveId-value",
    "id": "id-value",
    "path": "path-value"
  },
  "link": {
    "application": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "type": "type-value",
    "webUrl": "webUrl-value"
  },
  "roles": [
    "roles-value"
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "driveItem: createLink",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->