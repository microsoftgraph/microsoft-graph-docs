# Search for an item

Search the hierarchy of items for items matching a query. You can search and/or
filter results to find the items your app is looking for.

Search returns matching results from the item specified in the URL and all
children of that item. Filtering works on the collection of items returned,
which can be either all children when using search, or just the immediate
children when using a collection.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read
  * Files.ReadWrite

### HTTP request
<!-- { "blockType": "ignored" } -->
```
GET /me/drive/root/search(q='vacation')
GET /me/drive/items/{item-id}/search(q='vacation')
GET /me/drive/root:/{item-path}:/search(q='vacation')
```

### Optional query parameters
This method supports the [OData Query
Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help
customize the response.

### Request headers

| Name          | Type   | Description               |
|:--------------|:-------|:--------------------------|
| Authorization | string | Bearer <token>. Required. |


### Request body
Do not supply a request body for this method.

#### Function parameters

| Name | Value  | Description                                                                                                                          |
|:-----|:-------|:-------------------------------------------------------------------------------------------------------------------------------------|
| `q`  | string | The query text used to search for items. Values may be matched across several fields including filename, metadata, and file content. |

### Example
Here is an example of how to call this API.

##### Request

Here is an example of the request searching the signed in user's OneDrive
<!-- {
  "blockType": "request",
  "name": "item_search"
}-->
```http
GET /me/drive/root/microsoft.graph.search(q='{search-query}')
```

##### Response
This method returns an object containing an array of [driveItems](../resources/driveitem.md) that
match the search criteria. If no items were found, an empty array is returned.

If there are too many matches the response will be paged and an
**@odata.nextLink** property will contain a URL to the next page of results. You
can use the `top` query parameter to specify the number of items in the page.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
      {
        "id": "0123456789abc!123",
        "name": "Vacation photos",
        "folder": {},
        "searchResult": { "onClickTelemetryUrl": "https://bing.com/0123456789abc!123" }
      },
      {
        "id": "0123456789abc!456",
        "name": "Summer Vacation Rentals.docx",
        "file": {},
        "searchResult": { "onClickTelemetryUrl": "https://bing.com/0123456789abc!456" }
      }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/drive/root/microsoft.graph.search(query='vacation')&skipToken=1asdlnjnkj1nalkm!asd"
}
```

## Remarks

**Note:** In OneDrive for Business and SharePoint, search does not return the following properties:

* `parentReference`


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "item: search",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Items/Search items"
}-->
