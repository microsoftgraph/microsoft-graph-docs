# List taskFolders

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get all the Outlook task folders in the user's mailbox.
## Prerequisites
The following **scopes** are required to execute this API: _Tasks.Read_
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/{id|userPrincipalName}/outlook/taskFolders
```
## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [outlookTaskFolder](../resources/outlooktaskfolder.md) objects in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_taskfolders"
}-->
```http
GET https://graph.microsoft.com/beta/me/outlook/taskFolders
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.outlookTaskFolder",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 200

{
  "value": [
   {
      "id": "AAMkADIyAAAAABrJAAA=",
      "changeKey": "hmM7Eb/jgEec8l3+gkJEawAAAAAeAA==",
      "isDefaultFolder": false,
      "name": "Monthly tasks",
      "parentGroupKey": "0006f0b7-0000-0000-c000-000000000046"
    },
    {
      "id": "AAMkADIyAAAAAAESAAA=",
      "changeKey": "hmM7Eb/jgEec8l3+gkJEawAAAAAAPA==",
      "isDefaultFolder": true,
      "name": "Tasks",
      "parentGroupKey": "0006f0b7-0000-0000-c000-000000000046"
    }

  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List TaskFolders",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->