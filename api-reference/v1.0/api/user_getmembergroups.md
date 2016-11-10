# user: getMemberGroups
Return all the groups that the user is a member of. The check is transitive, unlike reading the 
[memberOf](../api/user_list_memberof.md) navigation property, which returns only the groups that the user is a direct member of.

This function supports Office 365 and other types of groups provisioned in Azure AD. The maximum number of groups each 
request can return is 2046. Note that Office 365 Groups cannot contain groups. So membership in an Office 365 Group is 
always direct.

## Prerequisites
One of the following **scopes** is required to execute this API:
*User.Read; User.ReadWrite; User.Read.All; User.ReadWrite.All; Directory.Read.All; Directory.ReadWrite.All; Directory.AccessAsUser.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<id | userPrincipalName>/getMemberGroups
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer <token>. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|securityEnabledOnly|Boolean|**true** to specify that only security groups that the user is a member of should be returned; **false** to specify that all groups that the user is a member of should be returned. Note: The function can only be called on a user if the parameter is **true**.|

## Response
If successful, this method returns `200, OK` response code and String collection in the response body that contains the IDs of the groups that the user is a member of.

## Example

##### Request
<!-- {
  "blockType": "request",
  "name": "user_getmembergroups"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/getMemberGroups
Content-type: application/json

{
  "securityEnabledOnly": true
}
```

##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    "fee2c45b-915a-4a64-b130-f4eb9e75525e",
    "e0c3beaf-eeb4-43d8-abc5-94f037a65697"
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user: getMemberGroups",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
