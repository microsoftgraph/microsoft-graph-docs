# Enumerate items in a list

Get the collection of [items][item] in a [list][].

[list]: ../resources/list.md
[item]: ../resources/listItem.md

## Prerequisites

One of the following scopes is required to execute this request:

* Sites.Read.All
* Sites.ReadWrite.All

## HTTP request

```http
GET https://graph.microsoft.com/beta/sharepoint/sites/{site-id}/lists/{list-id}/items
GET https://graph.microsoft.com/beta/sharepoint/sites/{site-id}/lists/{list-id}/items?expand=columnSet
GET https://graph.microsoft.com/beta/sharepoint:/{list-path}:/items
```

### Example

#### Request

<!-- { "blockType": "request", "name": "get-list-items" } -->

```http
GET https://graph.microsoft.com/beta/sharepoint/sites/{site-id}/lists/{list-id}/items?expand=columnSet
```

#### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.list", "isCollection": true, "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "62a5327f-48f8-4940-be9d-d9122da22a78",
      "listItemId": 1,
      "columnSet": {
        "Name": "Gadget",
        "Color": "Red",
        "Quantity": 503
       }
    },
    {
      "id": "d14922d8-43e6-4c8a-b029-e35c5b4e0d63",
      "listItemId": 2,
      "columnSet": {
        "Name": "Widget",
        "Color": "Blue",
        "Quantity": 2357
       }
    },
    {
      "id": "efcc7338-f373-4fe7-b3ce-e78931a6ec68",
      "listItemId": 3,
      "columnSet": {
        "Name": "Gizmo",
        "Color": "Green",
        "Quantity": 92
       }
    }
  ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "ListItem/Enumerate"
} -->
