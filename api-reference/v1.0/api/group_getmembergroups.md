# group: getMemberGroups
Return all the groups that the specified group is a member of. The check is transitive, unlike reading the 
[memberOf](../api/group_list_memberof.md) navigation 
property, which returns only the groups that the group is a direct member of.

This function supports Office 365 and other types of groups provisioned in Azure AD. The maximum number of groups each 
request can return is 2046. Note that Office 365 Groups cannot contain groups. So membership in an Office 365 Group is 
always direct.

## Prerequisites
One of the following **scopes** is required to execute this API: *Group.Read.All; Directory.Read.All; Directory.ReadWrite.All; Directory.AccessAsUser.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/getMemberGroups
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|securityEnabledOnly|Boolean|Set to **false**. Returning only security-enabled groups is supported for users only.|

## Response

If successful, this method returns `200, OK` response code and String collection in the response body that contains the IDs of the groups that the group is a member of.

## Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "group_getmembergroups"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups/{id}/getMemberGroups
Content-type: application/json
Content-length: 33

{
  "securityEnabledOnly": false
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 39

{
  "value": [
    "string-value"
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group: getMemberGroups",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
