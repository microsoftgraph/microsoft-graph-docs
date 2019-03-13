---
title: "List used"
description: "Calculated insight that returns the list of files used with a user."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: apiPageType
---

# List used

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Calculated insight that returns the list of files used with a user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.Read.All, Sites.ReadWrite.All |

## HTTP request
```http
GET /me/insights/used
```
Requesting other user's used documents returns results sorted by 'lastModifiedDateTime' and 'lastAccessedDateTime' is set to 'lastModifiedDateTime'.
```http
GET /users/<id | userPrincipalName>/insights/used
```

## Optional query parameters
This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

You can use the `$filter` query parameter to filter used items. For example, based on Type:

`https://graph.microsoft.com/beta/me/insights/used?$filter=ResourceVisualization/Type eq 'PowerPoint'`

Or based on Container Type:

`https://graph.microsoft.com/beta/me/insights/used?$filter=ResourceVisualization/containerType eq 'OneDriveBusiness'`

See the available Container Types and Types you can filter by in [resourceVisualization](../resources/insights-resourcevisualization.md).


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
GET https://graph.microsoft.com/beta/me/insights/used
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

### Expanding resource
The resource referenced by a used insight can be expanded.
```http
GET https://graph.microsoft.com/beta/me/insights/used/{id}/resource
```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/api/insights-list-used.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
