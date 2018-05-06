# Create section

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Create a new [section](../resources/section.md) in the specified notebook.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Notes.Create, Notes.ReadWrite, Notes.ReadWrite.All    |
|Delegated (personal Microsoft account) | Notes.Create, Notes.ReadWrite    |
|Application | Notes.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/onenote/notebooks/{id}/sections
POST /users/{id | userPrincipalName}/onenote/notebooks/{id}/sections
POST /groups/{id}/onenote/notebooks/{id}/sections
POST /sites/{id}/onenote/notebooks/{id}/sections
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type | string | `application/json` |

## Request body
In the request body, supply a name for the section.

Within the same hierarchy level, section names must be unique. The name cannot contain more than 50 characters or contain the following characters:  ?*\/:<>|&#''%~

## Response

If successful, this method returns a `201 Created` response code and a [section](../resources/section.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_section_from_notebook"
}-->
```http
POST https://graph.microsoft.com/beta/me/onenote/notebooks/{id}/sections
Content-type: application/json
Content-length: 27

{
  "displayName": "Section name"
}
```
##### Response
Here is an example of the response. Note: The response object shown here is truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onenoteSection"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 272

{
  "isDefault": true,
  "pagesUrl": "pagesUrl-value",
  "displayName": "name-value",
  "id": "8fcb5dbc-d5aa-4681-8e31-b001d5168d79",
  "createdBy": {
    "user": {
      "id": "id-value",
      "displayName": "displayName-value"
    }
  },
  "lastModifiedBy": {
    "user": {
      "id": "id-value",
      "displayName": "displayName-value"
    }
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Section",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
