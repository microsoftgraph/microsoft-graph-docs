# Create a sharing link for a driveItem

You can use **createLink** action to share an item via a link.

The **createLink** action will create a new sharing link if the specified
link type doesn't already exist for the calling application. If a sharing link
of the specified type already exists for the app, the existing sharing link
will be returned.

Items inherit permissions from their ancestors.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/drive/items/{item-id}/createLink
POST /me/drive/root:/{item-path}:/createLink
POST /groups/<id>/drive/items/<item-id>/createLink
```

### Request headers

| Name          | Type   | Description               |
|:--------------|:-------|:--------------------------|
| Authorization | string | Bearer <token>. Required. |


### Request body
The body of the request defines the type of sharing link your application is
looking for. The request should be a JSON object with this property.

| Name   | Type   | Description                                                          |
|:-------|:-------|:---------------------------------------------------------------------|
| **type** | string | The type of sharing link to create. Either `view`, `edit`, or `embed`. |
| **scope** | string | The scope of link to create. Either `anonymous` or `organization`. Optional. |

### Link types
The following values are allowed for the **type** parameter.

| Type value | Description                                                                                  |
|:-----------|:---------------------------------------------------------------------------------------------|
| `view`     | Creates a read-only link to the item.                                                        |
| `edit`     | Creates a read-write link to the item.                                                       |
| `embed`    | Creates an embeddable link to the item. This option is only available for OneDrive Personal. |

### Scope types
The following values are allowed for the **scope** parameter. This is an
optional parameter. If the **scope** parameter is not specified, the most permissive
link available will be created.

| Type value     | Description                                                                                                                   |
|:---------------|:------------------------------------------------------------------------------------------------------------------------------|
| `anonymous`    | Creates a link to the item accessible to anyone. Anonymous links can only be created for files, and this ability may be disabled by the tenant administrator.                 |
| `organization` | Creates a link to the item accessible within an organization. Organization link scope is not available for OneDrive Personal. |

### Response

If successful, this method returns a single [Permission](../resources/permission.md)
resource in the response body that represents the requested sharing link permission.

The service will first look at the current permissions and check
if one already exists that has the same **type** for the
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
POST /drive/root:/{item-path}:/createLink
Content-type: application/json

{
  "type": "view",
  "scope": "anonymous"
}
```

##### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.permission" } -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "123ABC",
  "roles": ["write"],
  "link": {
    "type": "view",
    "scope": "anonymous",
    "webUrl": "https://onedrive.live.com/redir?resid=5D33DD65C6932946!70859&authkey=!AL7N1QAfSWcjNU8&ithint=folder%2cgif",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    },
  }
}
```

## Creating company sharable links

OneDrive for Business and SharePoint support company sharable links. These are
similar to anonymous links, except they only work for members of the owning
tenant. To create a company sharable link, use the **scope** parameter with a
value of `organization`.

### HTTP request

<!-- { "blockType": "request", "name": "create-link-scoped", "scopes": "files.readwrite service.sharepoint" } -->
```
POST /drive/items/{item-id}/action.createLink
Content-Type: application/json

{
  "type": "edit",
  "scope": "organization"
}
```

### HTTP response

The response will be `201 Created` if a new sharing link is created for the
item or `200 OK` if an existing link is returned.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.permission" } -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "123ABC",
  "roles": ["write"],
  "link": {
    "type": "view",
    "scope": "organization",
    "webUrl": "https://contoso-my.sharepoint.com/personal/ellen_contoso_com/...",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    },
  }
}
```

### Embeddable links

When using the `embed` link type, the webUrl returned can be embedded in an
`<iframe>` HTML element. When an embed link is created the `webHtml`
property contains the HTML code for an `<iframe>` to host the content.

**Note:** Embed links are only supported for OneDrive Personal.

### Programming Notes

Sharing links created using this action do not expire. They are visible in the
sharing permissions for the item and can be removed by an owner of the item.
Sharing links always point to the current version of a item, unless the item is
checked out (SharePoint only).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "item: createLink",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Item/Create sharing link"
} -->
