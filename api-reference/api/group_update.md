# Update group

Update the properties of group object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /groups/<id>
PATCH /me/joinedGroups/<id>
PATCH /users/<id>/joinedGroups/<id>
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accessType|string| Possible values are: `none`, `private`, `secret`, `public`.|
|allowExternalSenders|boolean||
|autoSubscribeNewMembers|boolean||
|description|string||
|displayName|string||
|groupTypes|string||
|isFavorite|boolean||
|isSubscribedByMail|boolean||
|mail|string||
|mailEnabled|boolean||
|mailNickname|string||
|onPremisesLastSyncDateTime|dateTimeOffset||
|onPremisesSecurityIdentifier|string||
|onPremisesSyncEnabled|boolean||
|proxyAddresses|string||
|securityEnabled|boolean||
|unseenCount|int32||
|visibility|string||

### Response
If successful, this method returns a `200 OK` response code and updated [group](../resources/group.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_group"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/groups/<id>
Content-type: application/json
Content-length: 211

{
  "description": "description-value",
  "displayName": "displayName-value",
  "groupTypes": [
    "groupTypes-value"
  ],
  "mail": "mail-value",
  "mailEnabled": true,
  "mailNickname": "mailNickname-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 211

{
  "description": "description-value",
  "displayName": "displayName-value",
  "groupTypes": [
    "groupTypes-value"
  ],
  "mail": "mail-value",
  "mailEnabled": true,
  "mailNickname": "mailNickname-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update group",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->