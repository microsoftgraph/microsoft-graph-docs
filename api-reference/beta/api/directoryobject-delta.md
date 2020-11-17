---
title: "directoryObject: delta"
description: "Get newly created, updated, or deleted directory objects of the following types: user, group and organizational contact, in a single delta query. See Track changes for details."
localization_priority: Normal
author: "keylimesoda"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# directoryObject: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get newly created, updated, or deleted directory objects of the following types: [user](../resources/user.md), [group](../resources/group.md) and [organizational contact](../resources/orgcontact.md), in a single delta query. See [change tracking](/graph/delta-query-overview) for details.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.Read.All, Directory.AccessAsUser.All  |
|Delegated (personal Microsoft account) | Not supported.  |
|Application | Directory.Read.All, Directory.ReadWrite.All |

## HTTP request

To begin tracking changes, you make a request including the delta function on the directoryObjects resource.

<!-- { "blockType": "ignored" } -->

```http
GET /directoryObjects/delta
```

## Query parameters

Tracking changes incurs a round of one or more **delta** function calls. If you use any query parameter (other than `$deltatoken` and `$skiptoken`), you must specify it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters into the token portion of the `nextLink` or `deltaLink` URL provided in the response.

You only need to specify any desired query parameters once upfront.

In subsequent requests, copy and apply the `nextLink` or `deltaLink` URL from the previous response, as that URL already includes the encoded, desired parameters.

| Query parameter | Type |Description|
|:---------------|:--------|:----------|
| $deltatoken | string | A [state token](/graph/delta-query-overview) returned in the `deltaLink` URL of the previous **delta** function call for the same user collection, indicating the completion of that round of change tracking. Save and apply the entire `deltaLink` URL including this token in the first request of the next round of change tracking for that collection.|
| $skiptoken | string | A [state token](/graph/delta-query-overview) returned in the `nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same user collection. |

### OData query parameters

This method supports optional OData Query Parameters to help customize the response.

- You can use `$filter` with the special `isOf` operator to filter a subset of types derived from directoryObject.
  - You can combine multiple expressions using an `or`, which allows you to have a single delta query tracking multiple types. See the [third example](#request-3) for details.

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;token&gt;|
| Content-Type  | application/json |
| Prefer | return=minimal <br><br>Specifying this header with a request that uses a `deltaLink` would return only the object properties that have changed since the last round. Optional. |

## Request body

Do not supply a request body for this method.

### Response

If successful, this method returns `200 OK` response code and [user](../resources/directoryobject.md) collection object in the response body. The response also includes a `nextLink` URL or a `deltaLink` URL.

- If a `nextLink` URL is returned:
  - This indicates there are additional pages of data to be retrieved in the session. The application continues making requests using the `nextLink` URL until a `deltaLink` URL is included in the response.
  - The response includes the same set of properties as in the initial delta query request. This allows you to capture the full current state of the objects when initiating the delta cycle.

- If a `deltaLink` URL is returned:
  - This indicates there is no more data about the existing state of the resource to be returned. Save and use the `deltaLink` URL to learn about changes to the resource in the next round.
  - You have a choice to specify the `Prefer:return=minimal` header, to include in the response values for only the properties that have changed since the time the `deltaLink` was issued.

#### Default: return the same properties as initial delta request

By default, requests using a `deltaLink` or `nextLink` return the same properties as selected in the initial delta query in the following ways:

- If the property has changed, the new value is included in the response. This includes properties being set to null value.
- If the property has not changed, the old value is included in the response.
- If the property has never been set before it will not be included in the response at all.


> **Note:** With this behavior, by looking at the response it is not possible to tell whether a property is changing or not. Also, the delta responses tend to be large because they contain all property values.

#### Alternative: return only the changed properties

Adding an optional request header - `prefer:return=minimal` - results in the following behavior:

- If the property has changed, the new value is included in the response. This includes properties being set to null value.
- If the property has not changed, the property is not included in the response at all. (Different from the default behavior.)

> **Note:** The header can be added to a `deltaLink` request at any point in time in the delta cycle. The header only affects the set of properties included in the response and it does not affect how the delta query is executed.

## Example

### Request 1

The following is an example of the request. There is no `$select` parameter, so a default set of properties is tracked and returned.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "directory_object_delta"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/directoryObjects/delta
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/directory-object-delta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directory-object-delta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/directory-object-delta-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directory-object-delta-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response 1

The following is an example of the response when using `deltaLink` obtained from the query initialization. No `isOf` filter has been used, so all types derived from directoryObject are returned.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "@odata.nextLink":"https://graph.microsoft.com/beta/directoryObjects/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "01754bb5-89de-4003-be72-9106a9fb16f2",
      "deletedDateTime": null,
      "accountEnabled": true,
      "ageGroup": null,
      "city": null,
      "companyName": null,
      "consentProvidedForMinor": null,
      "country": null,
      "createdDateTime": null,
      "department": null,
      "displayName": "John Smith",
      "givenName": null,
      "jobTitle": null
    },
    {
      "@odata.type": "#microsoft.graph.group",
      "id": "cf33844a-b6f8-4d4d-84f4-54e8d45094f0",
      "deletedDateTime": null,
      "classification": null,
      "createdDateTime": "2018-06-20T16:50:09Z",
      "description": null,
      "displayName": "testgp"
    },
    {
      "@odata.type": "#microsoft.graph.orgContact",
      "id": "8f301319-4b4e-493f-8067-bce1dec76e7a",
      "businessPhones": ["string"],
      "city": "string",
      "companyName": "string",
      "country": "string",
      "department": "string",
      "displayName": "string",
      "givenName": "string",      
      "jobTitle": "string"
    }
  ]
}
```

### Request 2

The next example shows the use of the alternative minimal response behavior:

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "directoryObject_delta"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/directoryObjects/delta
Prefer: return=minimal
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/directoryobject-delta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directoryobject-delta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/directoryobject-delta-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directoryobject-delta-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response 2

The following is an example of the response when using `deltaLink` obtained from the query initialization. Note only the properties that have actually changed are returned.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "@odata.nextLink":"https://graph.microsoft.com/beta/directoryObjects/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "01754bb5-89de-4003-be72-9106a9fb16f2",
      "displayName": "John Smith"
    },
    {
      "@odata.type": "#microsoft.graph.group",
      "id": "cf33844a-b6f8-4d4d-84f4-54e8d45094f0",
      "description": null,
      "displayName": "testgp"
    },
    {
      "@odata.type": "#microsoft.graph.orgContact",
      "id": "8f301319-4b4e-493f-8067-bce1dec76e7a",
      "businessPhones": "12345"
    }
  ]
}
```

### Request 3

The next example shows the initial request using the `isOf` operator to filter out only user and group entities:

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "directoryobject_delta"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/directoryObjects/delta?$filter=isOf('Microsoft.Graph.User')+or+isOf('Microsoft.Graph.Group')
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/directoryobject-delta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directoryobject-delta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/directoryobject-delta-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directoryobject-delta-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response 3

The following is an example of the response when using `deltaLink` obtained from the query initialization. Note that only user and group objects are returned:

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "@odata.nextLink":"https://graph.microsoft.com/beta/directoryObjects/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "01754bb5-89de-4003-be72-9106a9fb16f2",
      "deletedDateTime": null,
      "accountEnabled": true,
      "ageGroup": null,
      "city": null,
      "companyName": null,
      "consentProvidedForMinor": null,
      "country": null,
      "createdDateTime": null,
      "department": null,
      "displayName": "John Smith",
      "givenName": null,
      "jobTitle": null
    },
    {
      "@odata.type": "#microsoft.graph.group",
      "id": "cf33844a-b6f8-4d4d-84f4-54e8d45094f0",
      "deletedDateTime": null,
      "classification": null,
      "createdDateTime": "2018-06-20T16:50:09Z",
      "description": null,
      "displayName": "testgp"
    }
  ]
}
```

- [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview).
- [Get incremental changes for users](/graph/delta-query-users).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "user: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


