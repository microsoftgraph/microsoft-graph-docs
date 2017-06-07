# List available drives

Retrieve the list of [Drive](../resources/drive.md) resources available for a target [User](../resources/user.md) or [Group](../resources/group.md).
Your app can also request the set of document libraries on the SharePoint root site.

## Prerequisites

One of the following **scopes** is required to execute this API:

* Files.Read
* Files.ReadWrite
* Sites.Read.All

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /drives
GET /me/drives
GET /groups/{id}/drive
```

## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [Drive](../resources/drive.md) objects in the response body.

## Example

##### Request

Here is an example of the request for the user's drives.

<!-- {
  "blockType": "request",
  "name": "get_drives"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/drives
```

##### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.drive",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 579

{
  "value": [
    {
      "id": "b!t18F8ybsHUq1z3LTz8xvZqP8zaSWjkFNhsME-Fepo75dTf9vQKfeRblBZjoSQrd7",
      "driveType": "business",
      "owner": {
          "user": {
              "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
              "displayName": "Ryan Gregg"
          }
      },
      "quota": {
          "deleted": 256938,
          "remaining": 1099447353539,
          "state": "normal",
          "total": 1099511627776
      }
    }
  ]
}
```

## Remarks

Most users will only have a single Drive resource.
Groups and some users may have multiple drive available.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List drives",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Drive/List Drives"
}-->
