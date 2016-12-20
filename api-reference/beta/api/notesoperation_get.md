# Get notesOperation


Get the status of a long-running OneNote operation. This applies to operations that return the **Operation-Location** header in the response, such as `CopyNotebook`, `CopyToNotebook`, `CopyToSectionGroup`, `and CopyToSection`.   

You can poll the Operation-Location endpoint until the `status` property returns `completed` or `failed`. 

If the status is `completed`, the `resourceLocation` property contains the resource endpoint URI. 

If the status is `failed`, the error and `@api.diagnostics` properties provide error information.

## Prerequisites
One of the following **permissions** is required to execute this API:  
Notes.Read, Notes.ReadWrite.CreatedByApp, Notes.ReadWrite, Notes.Read.All, or Notes.ReadWrite.All  
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/notes/operations/{id}
GET /users/{id | userPrincipalName}/notes/operations/{id}
GET /groups/{id}/notes/operations/{id}
```
## Optional query parameters
None.

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | `Bearer <token>` A valid OAuth token provided to the app based on the user credentials and the user having authorized access. |
| Accept | string | `application/json` | 

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [notesOperation](../resources/notesoperation.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_notesoperation"
}-->
```http
GET https://graph.microsoft.com/beta/me/notes/operations/{id}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.notesoperation"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 215

{
  "id": "id-value",
  "status": "status-value",
  "createdDateTime": "2016-10-19T10:37:00Z",
  "lastActionDateTime": "2016-10-19T10:37:00Z",
  "resourceLocation": "resourceLocation-value",
  "resourceId": "resourceId-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get notesOperation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->