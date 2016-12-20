# Update taskdetails

Update the properties of taskdetails object.
## Prerequisites
One of the following **permissions** is required to execute this API:
 
Group.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /tasks/{id}/details

```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)"|
| If-Match | string | Value should be set to the ETag of the object |
| Prefer | string | Value should be set to "return=representation" so that the updated object is returned in the response. This is advised so that the client can get the new ETag value of the updated object without doing an additional GET |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|checklist|[checklistItemCollection](../resources/checklistitemcollection.md)|The collection of checklist items on the task.|
|completedBy|String|User id by which the task is completed. |
|description|String|Description of a task. |
|previewType|String|This sets the type of preview that shows up on the task. Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|references|[externalReferenceCollection](../resources/externalreferencecollection.md)|The collection of references on the task. |

## Response
If successful, this method returns a `204 No Content` response code.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_taskdetails"
}-->
```http
PATCH https://graph.microsoft.com/beta/tasks/{id}/details
Content-type: application/json
Content-length: 181
If-Match: W/"JzEtMDAwMDAwMDAwMDAwMDAwOC8yMDE1LTEwLTIyVDE4OjExOjU2LjExMzU1NDYrMDA6MDAn"

{
  "description": "description-value",
  "previewType": "previewType-value",
  "completedBy": "completedBy-value",
  "references": {
  },
  "checklist": {
  }
}
```
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.taskdetails"
} -->
```http
HTTP/1.1 204 No Content
```
To get the updated object, use the `Prefer` header. See Request Headers above.
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update taskdetails",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
