# List shared

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

For example, you can use the `$filter` query parameter to filter shared items based on the Container Type:

`https://graph.microsoft.com/beta/me/insights/shared?$filter=ResourceVisualization/ContainerType eq 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'`

See the available Container Types, Types, and MediaTypes you can filter by in [resourceVisualization](../resources/insights_resourceVisualization.md).


## Request headers
| Header       |  Value|
|:-------------|:------|
| Authorization  | Bearer <token>. Required.|
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
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call. See an example un-truncated response at the bottom of the page.
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