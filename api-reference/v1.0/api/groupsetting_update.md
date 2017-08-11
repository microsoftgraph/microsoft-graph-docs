# Update a group setting

Update the properties of a specific group setting object.

## Prerequisites

One of the following **scopes** is required to execute this API: *Directory.ReadWrite.All* or *Directory.AccessAsUser.All*

> Note: Only tenant admins have permissions to perform create, update, and delete operations.

## HTTP request
<!-- { "blockType": "ignored" } -->

Update a tenant-wide or group specific setting.

```http
PATCH /groupSettings/{id}
PATCH /groups/{id}/settings/{id}
```
## Optional request headers
| Name | Description |
|:-----------|:-----------|
| Authorization  | Bearer {token}. Required. |
| Content-Type	| application/json	|

## Request body
In the request body, supply the values for relevant fields that should be updated. 

| Property | Type | Description |
|:---------------|:--------|:----------|
| values | settingValue | The updated set of values.  NOTE: You must supply the entire collection set. You cannot update a single set of values. |

## Response

If successful, this method returns a `204 OK` response code and updated [groupSetting](../resources/groupsetting.md) object in the response body.

## Example
##### Request
<!-- {
  "blockType": "request",
  "name": "update_groupsetting"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/groupSettings/{id}
Content-type: application/json
Content-length: 173

{
  "displayName": "displayName-value",
  "templateId": "templateId-value",
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
  "@odata.type": "microsoft.graph.groupSetting"
} -->
```http
HTTP/1.1 204 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update groupSetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->