# privilegedRole: selfActivate
Activate the role that is assigned to the requestor.

## Prerequisites
The following **scopes** are required to execute this API: _Directory.AccessAsUser.All_

The requestor can only call ```selfActivate``` for the role that is assigned to him.
 
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /privilegedRoles/{id}/selfActivate
```

Note that ``<id>`` is the target role id.
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required.|

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|reason|string|Optional. Description about the reason for this role activation.|
|duration|string|Optional. Valid values could be ```min``` (minimal activation duration), ```default``` (default activation duration for the role), or a double value to specify how many hours is the activation. The specified duration cannot be longer than the role's activation duration from the role setting. |
|ticketNumber|string|Optional. The ticket number that is used to tracking this role activation.|
|ticketSystem|string|Optional. The ticket system.|

## Response
If successful, this method returns `200, OK` response code and [privilegedRoleAssignment](../resources/privilegedroleassignment.md) object in the response body.

## Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "privilegedrole_selfactivate"
}-->
```http
POST https://graph.microsoft.com/beta/privilegedRoles/{id}/selfActivate
Content-type: application/json
Content-length: 142

{
  "reason": "reason-value",
  "duration": "duration-value",
  "ticketNumber": "ticketNumber-value",
  "ticketSystem": "ticketSystem-value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedRoleAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 184

{
  "id": "id-value",
  "userId": "userId-value",
  "roleId": "roleId-value",
  "isElevated": true,
  "expirationDateTime": "2016-10-19T10:37:00Z",
  "resultMessage": "resultMessage-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "privilegedRole: selfActivate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->