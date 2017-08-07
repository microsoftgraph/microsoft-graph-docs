# Update a directory setting

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update the properties of a specific directory setting object.

> **Note**: The /beta version of this API is only applies to groups. The /v1.0 version of this API has been renamed to *Update groupSettings*.

## Prerequisites
The following **scopes** are required to execute this API: *Directory.ReadWrite.All* or *Directory.AccessAsUser.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
Update a tenant-wide or group specific setting.
```http
PATCH /settings/{id}
PATCH /groups/{id}/settings/{id}
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {token}. Required.|

## Request body
In the request body, supply the values for relevant fields that should be updated. 

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| values | settingValue | The updated set of values.  NOTE: You must supply the entire collection set. You cannot update a single set of values. |

## Response
If successful, this method returns a `204 OK` response code.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_directorysetting"
}-->
```http
PATCH https://graph.microsoft.com/beta/settings/{id}
Content-type: application/json
Content-length: 178

{
  "values": [
    {
      "name": "name-value",
      "value": "value-value"
    }
  ]
}
```
##### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directorysetting"
} -->
```http
HTTP/1.1 204 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update directorysetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->