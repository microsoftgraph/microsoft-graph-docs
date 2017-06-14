# Create outlookTaskFolder

Create an Outlook task folder under a specified [outlookTaskGroup](../resources/outlooktaskgroup.md).
### Prerequisites
The following **scopes** are required to execute this API: _Tasks.ReadWrite_
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{id|userPrincipalName}/outlook/taskGroups/{id}/taskFolders

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required.|


### Request body
In the request body, supply a JSON representation of [outlookTaskFolder](../resources/outlooktaskfolder.md) object.


### Response
If successful, this method returns `201, Created` response code and [outlookTaskFolder](../resources/outlooktaskfolder.md) object in the response body.

### Example
##### Request
The following example creates a task folder called `Cooking` in the specified task group.
<!-- {
  "blockType": "request",
  "name": "create_outlooktaskfolder_from_outlooktaskgroup"
}-->
```http
POST https://graph.microsoft.com/beta/me/taskgroups('AAMkADIyAAAhrbe-AAA')/taskfolders 

Content-type: application/json
Content-length: 131

{
  "name": "Cooking"
}
```
In the request body, supply a JSON representation of [outlookTaskFolder](../resources/outlooktaskfolder.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.outlookTaskFolder"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 151

{
  "id": "AAMkADIyAAAhrbPXAAA=",
  "changeKey": "hmM7Eb/jgEec8l3+gkJEawAAIbAOlA==",
  "isDefaultFolder": false,
  "name": "Cooking",
  "parentGroupKey": "63d640cf-946f-4734-9c29-60dda7b76acb"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create outlookTaskFolder",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->