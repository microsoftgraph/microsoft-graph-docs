---
author: learafa
description: "Sync changes of sites from the service to your client state."
title: "sites: delta"
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---
# sites: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This method allows your app to track the creation and deletion of siteCollection, sites, and lists over time.

Your app begins by calling `delta` without any parameters.
The service starts enumerating sites, returning pages of changes to sites and either an `@odata.nextLink` or an `@odata.deltaLink`, as described below.
Your app should continue calling with the `@odata.nextLink` until you see an `@odata.deltaLink` returned.

After you have finished receiving all the changes, you may apply them to your local state.
To check for changes in the future, call `delta` again with the `@odata.deltaLink` from the previous response.

Deleted sites are returned with a removed annotation. The removed annotation will include reason property, for example, "@microsoft.graph.removed": {"reason": "deleted"}. Deleted indicates the item is deleted and should be removed from your local state.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not Supported  |
|Delegated (personal Microsoft account) | Not Supported   |
|Application | Sites.Read.All, Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/delta
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

## Request Body

No request body is required.

## Response

If successful, this method returns a `200 OK` response code and a collection of [Site](../resources/site.md) resource in the response body.

In addition to the collection of resources, the response will also include one of the following properties:

| Name                 | Value  | Description                                                                                                                                      |
|:---------------------|:-------|:-------------------------------------------------------------------------------------------------------------------------------------------------|
| **@odata.nextLink**  | url    | A URL to retrieve the next available page of changes, if there are additional changes in the current set.                                        |
| **@odata.deltaLink** | url    | A URL returned instead of **@odata.nextLink** after all current changes have been returned. Used to read the next set of changes in the future.  |

## Examples

### Example 1:

Here is an example of the initial request, how to call this API to establish your local state.

#### Request

Here is an example of the initial request.

<!-- { "blockType": "request", "name": "get_sites_delta_first", "tags": "service.graph" } -->

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get_sites_delta_first" } -->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/sites/delta
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-sites-delta-first-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-sites-delta-first-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-sites-delta-first-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-sites-delta-first-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here is an example of the response.

<!-- { "blockType": "response", "@odata.type": "Collection(microsoft.graph.site)", "truncated": true, "scope": "site.read" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
            "name": "teamSiteA"
        },
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851",
            "name": "teamSiteB"
        },
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851",
            "name": "teamSiteC"
        }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/sites/delta(token=1230919asd190410jlka)"
}
```

This response includes the first page of changes, and the **@odata.nextLink** property indicates that there are more resources available than the current set.
Your app should continue to request the URL value of **@odata.nextLink** until all pages of resources have been retrieved.

### Example 2:

Here is an example of the last page in a set, how to call this API to update your local state.

#### Request

Here is an example request after the initial request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get-sites-delta-last" }-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/sites/delta(token='1230919asd190410jlka')
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-sites-delta-last-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-sites-delta-last-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-sites-delta-last-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-sites-delta-last-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here is an example of the response.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.site)", "scope": "site.read" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
            "name": "teamSiteA",
            "@removed": {"reason": "deleted"},
        },
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851",
            "name": "teamSiteB"
        }
    ],
    "@odata.deltaLink": "https://graph.microsoft.com/v1.0/sites/delta?(token='1230919asd190410jlka')"
}
```

This response indicates that the site named `teamSiteA` was deleted and the site  `teamSiteB` was either added or modified between the initial request and this request to update the local state.

The final page of items will include the **@odata.deltaLink** property, which provides the URL that can be used later to retrieve changes since the current set of resources.

There may be cases when the service can't provide a list of changes for a given token (for example, if a client tries to reuse an old token after being disconnected for a long time, or if server state has changed and a new token is required).
In these cases the service will return an `HTTP 410 Gone` error with an error response containing one of the error codes below, and a `Location` header containing a new nextLink that starts a fresh delta enumeration from scratch.
After finishing the full enumeration, compare the returned resources with your local state and follow these instructions.

| Error Type                       | Instructions                                                                                                                                                                                                                    |
|:---------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `resyncChangesApplyDifferences`  | Replace any local sites, lists or webs with the server's version (including deletes) if you're sure that the service was up to date with your local changes when you last sync'd. Upload any local changes that the server doesn't know about. |
| `resyncChangesUploadDifferences` | Upload any local sites, webs, lists that the service did not return, and upload ones that differ from the server's version (keeping both copies if you're not sure which one is more up-to-date).                                       |

### Example 3:

In some scenarios, it may be useful to request the current deltaLink value without first enumerating all of the sites, lists, and webs.

This can be useful if your app only wants to know about changes, and doesn't need to know about existing resources.
To retrieve the latest deltaLink, call `delta` with a query string parameter `?token=latest`.

**Note: If you are trying to maintain a full local representation of the resources, you must use `delta` for the initial enumeration.
Using `delta` is the only way to guarantee that you've read all of the data you need to.**

#### Request

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get-delta-latest", "scope": "sites.read", "target": "action" } -->

```msgraph-interactive
GET /sites/delta?token=latest
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

<!-- { "blockType": "response", "isEmpty": true, "@odata.type": "Collection(microsoft.graph.site)" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [ ],
    "@odata.deltaLink": "https://graph.microsoft.com/v1.0/sites/delta?token=1230919asd190410jlka"
}
```

## Remarks

* The delta feed shows the latest state for each resource, not each change. If a resource were renamed twice, it would only show up once, with its latest name.

* The same resource may appear more than once in a delta feed, for various reasons. You should use the last occurrence you see.

## Error responses

In addition to the resync errors detailed above, see [Error Responses][error-response] for details about how errors are returned.

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Sync changes from the service to your client state.",
  "keywords": "sync,delta,changes,$delta",
  "section": "documentation",
  "suppressions": [],
  "tocPath": "Sites/Get delta"
} -->