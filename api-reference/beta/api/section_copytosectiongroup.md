# section: copyToSectionGroup

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Copies a section to a specific section group.

For Copy operations, you follow an asynchronous calling pattern:  First call the Copy action, and then poll the operation endpoint for the result.

## Prerequisites
One of the following **scopes** is required to execute this API:   
Notes.Create, Notes.ReadWrite, or Notes.ReadWrite.All 
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/onenote/sections/{id}/copyToSectionGroup
POST /users/{id | userPrincipalName}/onenote/sections/{id}/copyToSectionGroup
POST /groups/{id}/onenote/sections/{id}/copyToSectionGroup
POST /sites/{id}/onenote/sections/{id}/copyToSectionGroup
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type | string | `application/json` |

## Request body
In the request body, provide a JSON object that contains the parameters that your operation needs.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|siteCollectionId|String|The id of the SharePoint site to copy to. Use only when copying to an Office 365 team site.|
|siteId|String|The id of the SharePoint web to copy to. Use only when copying to an Office 365 team site.|
|groupId|String|The id of the group to copy to. Use only when copying to an Office 365 group.|
|id|String|Required. The id of the destination section group. |
|renameAs|String|The name of the copy. Defaults to the name of the existing item. |

<!--groupId missing-->
<!--|siteCollectionId|String||
|siteId|String||-->

## Response
If successful, this method returns a `202 Accepted` response code and an `Operation-Location` header. Poll the Operation-Location endpoint to [get the status of the copy operation](onenoteoperation_get.md).

## Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "section_copytosectiongroup"
}-->
```http
POST https://graph.microsoft.com/beta/me/onenote/sections/{id}/copyToSectionGroup
Content-type: application/json
Content-length: 84

{
  "id": "id-value",
  "groupId": "groupId-value",
  "renameAs": "renameAs-value"
}
```

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onenoteOperation"
} -->
```http
HTTP/1.1 202 Accepted
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "section: copyToSectionGroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->