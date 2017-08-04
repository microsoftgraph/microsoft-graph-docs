# List shared

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Calculated insight that returns the list of files shared with a user.

## Prerequisites
One of the following **scopes** is required to execute this API: *Sites.Read.All*; *Sites.ReadWrite.All*
## HTTP request
```http
GET /me/insights/shared
```
Request with a 'user id' or 'userPrincipalName' is only accessible by the user, not by anyone else:
```http
GET /users/<id | userPrincipalName>/insights/shared
```

## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.

You can use the `$filter` query parameter to filter shared items. For example, based on Type:

`https://graph.microsoft.com/beta/me/insights/shared?$filter=ResourceVisualization/Type eq 'PowerPoint'`

See the available Container Types and Types you can filter by in [resourceVisualization](../resources/insights_resourceVisualization.md).

You can also retrieve files shared by a specific user. For example, by specifying the `lastshared/sharedby/address` property:

`https://graph.microsoft.com/beta/me/insights/shared?$filter=lastshared/sharedby/address eq 'kellygraham@contoso.com'`

See the [sharingDetail](../resources/insights_sharingdetail.md) complex type.


## Request headers
| Header       |  Value|
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and a list of [shared](../resources/insights_shared.md) items in the response body.
## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/me/insights/shared
```
### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
{
    "value": [
        {   
            "id": "id-value",
            "lastShared" : { 
                "sharedDateTime" : "sharedDateTime-value",  
                "sharingSubject" : "sharingSubject-value",
                "sharingType" : "sharingType-value", 
                "sharedBy" : { 
                    "displayName" : "displayName-value", 
                    "id": "id-value" 
                }
                "sharingReference" : { 
                    "webUrl" : "webUrl-value",
                    "type: "type-value", 
                    "id": "id-value"
                } 
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
```

### Expanding resource
The resource referenced by a shared insight can be expanded.
```http
GET https://graph.microsoft.com/beta/me/insights/shared/{id}/resource
```