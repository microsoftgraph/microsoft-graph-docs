# Get channel

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of channel object.
## Prerequisites
One of the following **scopes** is required to execute this API: 
*Group.ReadWrite.All; Group.Read.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /groups/{id}/channels/{id}

```
## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [channel](../resources/channel.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_channel"
}-->
```http
GET https://graph.microsoft.com/beta/groups/{id}/channels/{id}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.channel"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 201

{
    "description": "description-value"
    "displayName": "display-name-value"
    "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get channel",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
