# Create a sharing link for an item

You can use the **createLink** action to share an existing item via a link. This is
a friendly shortcut for creating common sharing links.

The **createLink** method will create a new sharing link if the specified
link type doesn't already exist. If a sharing link of the specified type already
exists for the app, the existing sharing link will be returned.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/items/{item-id}/microsoft.graph.createLink
POST /drive/root:/{item-path}:/microsoft.graph.createLink
```

### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |


### Request body
In the request body, you define the type of sharing link. A `view` link allows the user to view the item, and an `edit` link allows the user to edit the item.

| Name   | Type   | Description                                                          |
|:-------|:-------|:---------------------------------------------------------------------|
| _type_ | String | The type of link to create. Possible values are `view` or `edit`. |
| _scope_ | String | Scope of the link. |



### Response

If successful, this method returns a single [Permission](../resources/permission.md)
resource in the response body that represents the requested sharing link permission.

The service will first look at the current permissions and check
if one already exists that has the same _type_ for the
calling application.

The response will be `201 Created` if a new sharing link is created for the
item or  `200 OK` if an existing link is returned.

### Example
Here is an example of how to call this API.

##### Request
Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "item_createlink"
}-->
```http
POST /drive/root:/{item-path}:/microsoft.graph.createLink
Content-type: application/json

{
  "type": "type-value",
  "scope": "scope-value"
}
```

##### Response
Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.permission"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "123ABC",
  "roles": ["write"],
  "link": {
    "type": "view",
    "webUrl": "https://onedrive.live.com/redir?resid=5D33DD65C6932946!70859&authkey=!AL7N1QAfSWcjNU8&ithint=folder%2cgif",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    }    
  },
  "shareId": "123kljlkas!21kljla"
}

```

### Notes
Sharing links created using this action do not expire. They are visible in the sharing permissions for the item on the OneDrive website and can be removed by an owner of the item. Sharing links always point to the "current" version of an item.
For more info about sharing links, see [Create a sharing link for an item in OneDrive](https://dev.onedrive.com/items/sharing_createLink.htm).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "item: createLink",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
} -->
