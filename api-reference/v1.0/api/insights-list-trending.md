---
title: "List trending"
description: "Calculated insight that returns the list of items trending around the user."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: apiPageType
---

# List trending

Namespace: microsoft.graph

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
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

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
Here is an example of the response. Note: The response object shown here might be shortened for readability. See an example un-truncated response at the bottom of the page.
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "AWMiSOpKHlJCpP_ZoVJQXi9ees4wFhDQQqF55Pm5DlaMzvtd2zra4UWSTEvpTldvb6EhQ289G4BAsxnrajQyjW1jIkjqSh5SQqT_2aFSUF4vBQ",
            "weight": "0.1583399742569597",
            "resourceVisualization": {
                "title": "LiveCaptions",
                "type": "Image",
                "mediaType": "application/octet-stream",
                "previewImageUrl": "https://contoso.sharepoint.com/_api/v2.0/drives/b!YyJI6koeUkKk_9mhUlBeL156zjAWENBCoXnk-bkOVozO-13bOtrhRZJMS-lOV29v/items/01H273TR5BEFBW6PI3QBALGGPLNI2DFDLN/thumbnails/0/small/thumbnailContent",
                "previewText": "",
                "containerWebUrl": "https://contoso.sharepoint.com/sites/Mark8ProjectTeam/Shared Documents/Go to Market Plan",
                "containerDisplayName": "Mark 8 Project Team",
                "containerType": "Site"
            },
            "resourceReference": {
                "webUrl": "https://contoso.sharepoint.com/sites/Mark8ProjectTeam/Shared%20Documents/Go%20to%20Market%20Plan/LiveCaptions.gif",
                "id": "drives/b!YyJI6koeUkKk_9mhUlBeL156zjAWENBCoXnk-bkOVozO-13bOtrhRZJMS-lOV29v/items/01H273TR5BEFBW6PI3QBALGGPLNI2DFDLN",
                "type": "microsoft.graph.driveItem"
            }
        }
    ]
}
```
