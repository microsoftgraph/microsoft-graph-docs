---
title: "List trending"
description: "Calculated insight that returns the list of items trending around the user."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: apiPageType
---

# List trending

Calculated insight that includes a list of documents trending around the user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.Read.All, Sites.ReadWrite.All |

## HTTP request
Get a list of documents trending around the signed-in user or specified user:

```http
GET /me/insights/trending
GET /users/{id | userPrincipalName}/insights/trending
```

Expand the resource referenced by a **trending** insight:

```http
GET /me/insights/trending/{id}/resource
GET /users/{id | userPrincipalName}/insights/trending/{id}/resource
```

## Optional query parameters
This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

You can use the `$filter` query parameter to filter trending items. For example, based on **type**:

`https://graph.microsoft.com/v1.0/me/insights/trending?$filter=ResourceVisualization/type eq 'PowerPoint'`

Or based on **containerType**:

`https://graph.microsoft.com/v1.0/me/insights/trending?$filter=ResourceVisualization/containerType eq 'OneDriveBusiness'`

See the available container types and types you can filter by in [resourceVisualization](../resources/insights-resourcevisualization.md).


## Request headers
| Header       |  Value|
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [trending](../resources/insights-trending.md) items in the response body. Each item contains visualization properties for displaying the item in your experience.

## Example
#### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/v1.0/me/insights/trending
```
#### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call. See an example un-truncated response at the bottom of the page.
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 801

{
    "value": [
        {
            "id": "id-value",
            "weight": "weight-value",
            "resourceVisualization": {
                "title": "title-value",
                "type": "type-value",
                "mediaType": "mediaType-value",
                "previewImageUrl": "previewImageUrl-value",
                "previewText": "previewText-value",
                "containerWebUrl": "containerWebUrl-value",
                "containerDisplayName": "containerDisplayName-value",
                "containerType": "containerType-value"
            },
            "resourceReference": {
                "webUrl": "webUrl-value",
                "id": "id-value",
                "type": "type-value"
            }
        }
    ]
}
```


