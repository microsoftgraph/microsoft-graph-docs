# Track changes for a Drive

This method allows your app to track changes to a drive and its children over time.

Your app begins by calling `delta` without any parameters. 
The service starts enumerating the drive's hierarchy, returning pages of items and either an `@odata.nextLink` or an `@odata.deltaLink`, as described below.
Your app should continue calling with the `@odata.nextLink` until you no longer see an `@odata.nextLink` returned, or you see a response with an empty set of changes.

After you have finished receiving all the changes, you may apply them to your local state.
To check for changes in the future, call `delta` again with the `@odata.deltaLink` from the previous response.

Deleted items are returned with the [`deleted` facet](../resources/deleted.md). 
Items with this property set should be removed from your local state. 

**Note:** you should only delete a folder locally if it is empty after syncing all the changes.

## Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read
  * Files.Readwrite

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/root/delta
GET /drives/{drive-id}/root/delta
GET /groups/{group-id}/drive/root/delta
```

## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [DriveItem](../resources/driveitem.md) resources in the response body.

In addition to the collection of DriveItems, the response will also include one of the following properties:

| Name                 | Value  | Description                                                                                                                                      |
|:---------------------|:-------|:-------------------------------------------------------------------------------------------------------------------------------------------------|
| **@odata.nextLink**  | url    | A URL to retrieve the next available page of changes, if there are additional changes in the current set.                                        |
| **@odata.deltaLink** | url    | A URL returned instead of **@odata.nextLink** after all current changes have been returned. Used to read the next set of changes in the future.  |


## Example (Initial Request)
Here is an example of how to call this API to establish your local state.

##### Request
Here is an example of the initial request.

<!-- {
  "blockType": "request",
  "name": "get_item_delta"
}-->
```http
GET https://graph.microsoft.com/beta/me/drive/root/delta
```

##### Response
Here is an example of the response.

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
            "id": "0123456789abc",
            "name": "folder2",
            "folder": { }
        },
        {
            "id": "123010204abac",
            "name": "file.txt",
            "file": { }
        },
        {
            "id": "2353010204ddgg",
            "name": "file5.txt",
            "deleted": { }
        }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/beta/me/drive/delta(token=1230919asd190410jlka)"
}
```

This response includes the first page of changes, and the **@odata.nextLink** property indicates that there are more items available in the current set of items.
Your app should continue to request the URL value of **@odata.nextLink** until all pages of items have been retrieved.

## Example (Last page in a set)
Here is an example of how to call this API to update your local state.

##### Request
Here is an example request after the initial request.

<!-- {
  "blockType": "request",
  "name": "get_item_delta"
}-->
```http
GET https://graph.microsoft.com/beta/me/drive/root/delta(token='123123901209310923!23alksjd')
```

##### Response
Here is an example of the response.

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
            "id": "0123456789abc",
            "name": "folder2",
            "folder": { },
            "deleted": { }
        },
        {
            "id": "123010204abac",
            "name": "file.txt",
            "file": { }
        }
    ],
    "@odata.deltaLink": "https://graph.microsoft.com/beta/me/drive/root/delta?(token='1230919asd190410jlka')"
}
```

This response indicates that the item named `folder2` was deleted and the item `file.txt` was either added or modified between the initial request and this request to update the local state.

The final page of items will include the **@odata.deltaLink** property, which provides the URL that can be used later to retrieve changes since the current set of items.

## Remarks

* The delta feed shows the latest state for each item, not each change. 
  If an item were renamed twice, it would only show up once, with its latest name.
* The same item may appear more than once in a delta feed, for various reasons.
  You should use the last occurrence you see.
* The `parentReference` property on items will not include a value for **path**.
  This occurs because renaming a folder does not result in any descendants of the folder being returned from **delta**. 
  **When using delta you should always track items by id**.

There may be cases when the service can't provide a list of changes for a given token (for example, if a client tries to reuse an old token after being disconnected for a long time, or if server state has changed and a new token is required).
In these cases the service will return an `HTTP 410 Gone` error with an error response containing one of the error codes below, and a `Location` header containing a new nextLink that starts a fresh delta enumeration from scratch.
After finishing the full enumeration, compare the returned items with your local state and follow these instructions.

| Error Type                       | Instructions                                                                                                                                                                                                                    |
|:---------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `resyncChangesApplyDifferences`  | Replace any local items with the server's version (including deletes) if you're sure that the service was up to date with your local changes when you last sync'd. Upload any local changes that the server doesn't know about. |
| `resyncChangesUploadDifferences` | Upload any local items that the service did not return, and upload any files that differ from the server's version (keeping both copies if you're not sure which one is more up-to-date).                                       |


In OneDrive for Business and SharePoint, `delta` is only supported on the `root` folder, not on other folders. 
It also will not return the following DriveItem properties:

* **createdBy**
* **cTag**
* **eTag**
* **fileSystemInfo**
* **lastModifiedBy**
* **parentReference**
* **size**


<!-- {
  "type": "#page.annotation",
  "description": "Get item delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
