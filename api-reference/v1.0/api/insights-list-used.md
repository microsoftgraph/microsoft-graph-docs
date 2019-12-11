---
title: "List used"
description: "Calculated insight that returns the list of files used with a user."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: apiPageType
---

# List used

Calculated insight that includes a list of documents the user has modified.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.Read.All, Sites.ReadWrite.All |

## HTTP request
Get a list of documents that the signed-in user has modified:

```http
GET /me/insights/used
```

Get a list of documents that the specified user has modified.

>**Note**: Requesting another user's **used** documents returns results sorted by **lastModifiedDateTime**. **lastAccessedDateTime** is then set to **lastModifiedDateTime**.
```http
GET /users/{id | userPrincipalName}/insights/used
```

Expand the resource referenced by a **used** insight:

```http
GET /me/insights/used/{id}/resource
GET /users/{id | userPrincipalName}/insights/used/{id}/resource
```

## Optional query parameters
This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

You can use the `$filter` query parameter to filter used items. For example, based on **type**:

`https://graph.microsoft.com/v1.0/me/insights/used?$filter=ResourceVisualization/Type eq 'PowerPoint'`

Or based on **containerType**:

`https://graph.microsoft.com/v1.0/me/insights/used?$filter=ResourceVisualization/containerType eq 'OneDriveBusiness'`

See the available container types and types you can filter by in [resourceVisualization](../resources/insights-resourcevisualization.md).


## Request headers
| Header       |  Value|
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [used](../resources/insights-used.md) items in the response body.
## Example

##### Request

Here is an example of the request.
```http
GET https://graph.microsoft.com/v1.0/me/insights/used
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call. 
```http
{
    "value": [
        {   
            "id": "id-value",
            "lastused" : { 
                "lastAccessedDateTime" : "lastAccessedDateTime-value", 
                "lastModifiedDateTime": "lastModifiedDateTime-value" 
            },
            "resourceVisualization": { 
                "title" : "title-value, 
                "type"  : "type-value",
                "mediaType" : "mediaType-value",
                "previewImageUrl" : previewImageUrl-value, 
                "previewText" : "previewText-value", 
                "containerWebUrl" : "containerWebUrl-value", 
                "containerDisplayName" : "containerDisplayName-value", 
                "containerType" : "containerType-value" 
            }, 
            "resourceReference" : { 
                "webUrl" : "webUrl-value", 
                "id": "id-value", 
                "type: "type-value" 
            }
        }
    ]
}
```


