# List trending

Calculated insight that returns the list of items trending around the user.

## Prerequisites
One of the following **scopes** is required to execute this API: *Sites.Read.All*; *Sites.ReadWrite.All*

## HTTP request
```http
GET /me/insights/trending
GET /users/{id | userPrincipalName}/insights/trending
```

## Request headers
| Header       |  Value|
|:-------------|:------|
| Authorization  | Bearer <token>. Required.|
| Accept  | application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a list of [trending](../resources/insights_trending.md) items in the response body. Each item contains visualization properties for displaying the item in your experience.

## Example
#### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/me/insights/trending
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