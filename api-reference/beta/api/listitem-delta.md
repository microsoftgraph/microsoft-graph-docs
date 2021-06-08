---
author: learafa
description: "This method allows your app to track changes to a list and its items over time."
title: "sites: delta"
localization_priority: Normal
ms.prod: "SharePoint"
doc_type: apiPageType
---
# listItem: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This method allows your app to track changes to a list and its items over time.

Your app begins by calling `delta` without any parameters.
The service starts enumerating the list's hierarchy, returning pages of items and either an `@odata.nextLink` or an `@odata.deltaLink`, as described below.
Your app should continue calling with the `@odata.nextLink` until you see an `@odata.deltaLink` returned.

After you have finished receiving all the changes, you may apply them to your local state.
To check for changes in the future, call `delta` again with the `@odata.deltaLink` from the previous response.

Deleted items are returned with an @removed object and [`deleted` facet](../resources/deleted.md).
The @removed will include reason property, for example, "@removed": {"reason": "deleted"}. Deleted indicates the item is deleted and cannot be restored.
Items with this deleted reason or deleted facet property should be removed from your local state.

**Note:** you should only delete a folder locally if it is empty after syncing all the changes.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Sites.Read.All, Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{siteId}/lists/{listId}/items/delta
```

## Query Parameters

| Name   | Value  | Description                                                                                                                          |
|:-------|:-------|:-------------------------------------------------------------------------------------------------------------------------------------|
| token  | string | Optional. If unspecified, enumerates the hierarchy's current state. If `latest`, returns empty response with latest delta token. If a previous delta token, returns new state since that token.

## Optional query parameters

This method supports the `$select`, `$expand`, and `$top` [OData query parameters](/graph/query-parameters) to customize the response.

## Request Header

|Header       |Value                    |
|-------------|-------------------------|
|Authorization|Bearer {token}. Required.|

## Response

If successful, this method returns a `200 OK` response code and a collection of [ListItems](../resources/listItem.md) resources in the response body.

In addition to the collection of ListItems, the response will also include one of the following properties:

| Name                 | Value  | Description                                                                                                                                      |
|:---------------------|:-------|:-------------------------------------------------------------------------------------------------------------------------------------------------|
| **@odata.nextLink**  | url    | A URL to retrieve the next available page of changes, if there are additional changes in the current set.                                        |
| **@odata.deltaLink** | url    | A URL returned instead of **@odata.nextLink** after all current changes have been returned. Used to read the next set of changes in the future.  |

## Examples

### Example 1:

Here is an example of the initial request, how to call this API to establish your local state.

#### Request

Here is an example of the initial request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get_listItem_delta_first" } -->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/sites/{siteId}/lists/{listId}/items/delta
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-listItem-delta-first-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-listItem-delta-first-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-listItem-delta-first-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-listItem-delta-first-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here is an example of the response.

<!-- { "blockType": "response", "@odata.type": "Collection(microsoft.graph.listItem)", "truncated": true, "scope": "site.read" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "createdDateTime": "2020-06-02T22:46:58Z",
            "id": "1",
            "webUrl": "http://contoso.sharepoint.com/Shared%20Documents/TestFolder",
            "contentType": {
                "id": "0x00123456789abc",
                "name": "Folder"
            }
        },
        {
            "id": "2",
            "webUrl": "http://contoso.sharepoint.com/Shared%20Documents/Shared%20Documents/TestItemA.txt",
            "contentType": {
                "id": "0x00123456789abc",
                "name": "Document"
            }
        },
        {
            "id": "3",
            "webUrl": "http://contoso.sharepoint.com/Shared%20Documents/Shared%20Documents/TestItemB.txt",
            "contentType": {
                "id": "0x00123456789abc",
                "name": "Document"
            }
        }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/sites/{siteId}/lists/{listId}/items/{itemId}delta(token=1230919asd190410jlka)"
}
```

This response includes the first page of changes, and the **@odata.nextLink** property indicates that there are more items available in the current set of items.
Your app should continue to request the URL value of **@odata.nextLink** until all pages of items have been retrieved.

### Example 2:

Here is an example of the last page in a set, how to call this API to update your local state.

#### Request

Here is an example request after the initial request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get-listItem-delta-last" }-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/sites/{siteId}/lists/{listId}/items/delta(token='1230919asd190410jlka')
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-listItem-delta-last-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-listItem-delta-last-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-listItem-delta-last-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-listItem-delta-last-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here is an example of the response.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.listItem)", "scope": "site.read" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
       {
            "createdDateTime": "2020-06-02T22:46:58Z",
            "id": "1",
            "webUrl": "http://contoso.sharepoint.com/Shared%20Documents/TestFolder",
            "contentType": {
                "id": "0x00123456789abc",
                "name": "Folder"
            }
        },
        {
            "id": "3",
            "webUrl": "http://contoso.sharepoint.com/Shared%20Documents/Shared%20Documents/TestItemB.txt",
            "contentType": {
                "id": "0x00123456789abc",
                "name": "Document"
            },
            "@removed": {"reason": "deleted"}
        }
    ],
    "@odata.deltaLink": "https://graph.microsoft.com/v1.0/sites/{siteId}/lists/{listId}/items/{itemId}/delta?(token='1230919asd190410jlka')"
}
```

This response indicates that the item named `TestItemB.txt` was deleted and the item `TestFolder` was either added or modified between the initial request and this request to update the local state.

The final page of items will include the **@odata.deltaLink** property, which provides the URL that can be used later to retrieve changes since the current set of items.

There may be cases when the service can't provide a list of changes for a given token (for example, if a client tries to reuse an old token after being disconnected for a long time, or if server state has changed and a new token is required).
In these cases the service will return an `HTTP 410 Gone` error with an error response containing one of the error codes below, and a `Location` header containing a new nextLink that starts a fresh delta enumeration from scratch.
After finishing the full enumeration, compare the returned items with your local state and follow these instructions.

| Error Type                       | Instructions                                                                                                                                                                                                                    |
|:---------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `resyncChangesApplyDifferences`  | Replace any local items with the server's version (including deletes) if you're sure that the service was up to date with your local changes when you last sync'd. Upload any local changes that the server doesn't know about. |
| `resyncChangesUploadDifferences` | Upload any local items that the service did not return, and upload any items that differ from the server's version (keeping both copies if you're not sure which one is more up-to-date).                                       |

### Example 3:

In some scenarios, it may be useful to request the current deltaLink value without first enumerating all of the items in the list already.

This can be useful if your app only wants to know about changes, and doesn't need to know about existing items.
To retrieve the latest deltaLink, call `delta` with a query string parameter `?token=latest`.

#### Request

```http
GET /sites/{siteId}/lists/{listId}/items/delta?token=latest
```

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get-delta-latest", "scope": "sites.read", "target": "action" } -->

```msgraph-interactive
GET /sites/{siteId}/lists/{listId}/items/delta?token=latest
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-delta-latest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-delta-latest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-delta-latest-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-delta-latest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- { "blockType": "response", "isEmpty": true, "@odata.type": "Collection(microsoft.graph.listItem)" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [ ],
    "@odata.deltaLink": "https://graph.microsoft.com/v1.0/sites/{siteId}/lists/{listId}/items/{itemId}/delta?token=1230919asd190410jlka"
}
```

## Remarks

* The delta feed shows the latest state for each item, not each change. If an item were renamed twice, it would only show up once, with its latest name.

* The same item may appear more than once in a delta feed, for various reasons. You should use the last occurrence you see.

## Error responses

In addition to the resync errors detailed above, see [Error Responses][error-response] for details about how errors are returned.

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Sync changes from the service to your client state.",
  "keywords": "sync,delta,changes,$delta",
  "section": "documentation",
  "tocPath": "ListItem/Get delta"
} -->
