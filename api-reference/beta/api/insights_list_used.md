# List used

Calculated insight that returns the list of files used with a user.

## Prerequisites
One of the following **scopes** is required to execute this API: *Sites.Read.All*; *Sites.ReadWrite.All*
## HTTP request
```http
GET /me/insights/used
```
Requesting other user's used documents returns results sorted by 'lastModifiedDateTime' and 'lastAccessedDateTime' is set to 'lastModifiedDateTime'.
```http
GET /users/<id | userPrincipalName>/insights/used
```

## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.

For example, you can use the `$filter` query parameter to filter used items based on the Container Type:

`https://graph.microsoft.com/beta/me/insights/used?$filter=ResourceVisualization/ContainerType eq 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'`

See the available Container Types, Types, and MediaTypes you can filter by in [resourceVisualization](../resources/insights_resourceVisualization.md).


## Request headers
| Header       |  Value|
|:-------------|:------|
| Authorization  | Bearer <token>. Required.|
| Accept  | application/json|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and a list of [used](../resources/insights_used.md) items in the response body.
## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/me/insights/used
```
### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call. See an example un-truncated response at the bottom of the page.
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
```

### Expanding resource
The resource referenced by a used insight can be expanded.
```http
GET https://graph.microsoft.com/beta/me/insights/used/{id}/resource
```