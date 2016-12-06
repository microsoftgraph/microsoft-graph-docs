# Create a new item in a list

Create a new [listItem][] in a list.

## Prerequisites

One of the following scopes is required to execute this request:

* Sites.ReadWrite.All

### HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST https://graph.microsoft.com/beta/sharepoint/sites/{site-id}/lists/{list-id}/items
POST https://graph.microsoft.com/beta/sharepoint:/{list-path}:/items
```

### Request body

**Note:** In this beta API you must first create an empty [listItem][] and then update it with column values.

In the initial POST request body, supply an empty JSON object.
Immediately follow up with an [update][] against the **columnSet** to supply its values.

### Example

Here is an example of how to create a new generic list item.

<!-- { "blockType": "request", "name": "create-listitem", "scopes": "sites.readwrite.all" } -->

```json
POST https://graph.microsoft.com/beta/sharepoint/sites/{site-id}/lists/{list-id}/items
Content-Type: application/json

{
}
```

## Response

If successful, this method returns a [listItem][] in the response body for the created list item.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.listItem", "truncated": true } -->

```json
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "f0e1ebd7-d919-4b1f-b765-080074afca3a",
  "createdDateTime": "2016-08-30T08:26:00Z",
  "createdBy": {
    "user": {
      "displayName": "Ryan Gregg",
      "id": "8606e4d5-d582-4f5f-aeba-7d7c18b20cfd"
    }
  },
  "lastModifiedDateTime": "2016-08-30T08:26:00Z",
  "lastModifiedBy": {
    "user": {
      "displayName": "Ryan Gregg",
      "id": "8606e4d5-d582-4f5f-aeba-7d7c18b20cfd"
    }
  }
}
```

**Note:** The response object is truncated for clarity. Default properties will be returned from the actual call.

To finish creating the **listItem**, follow up this create with an [update][] call.

[listItem]: ../resources/listItem.md
[update]: listItem_update.md

<!-- {
  "type": "#page.annotation",
  "description": "Add a new item to a SharePoint list.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "ListItem/Create"
} -->
