# group: checkMemberGroups
Check for membership in the specified list of groups. Returns from the list those groups of which 
the specified group has a direct or transitive membership. 

You can check up to a maximum of 20 groups per request. This function supports Office 365 and other 
types of groups provisioned in Azure AD. Note that Office 365 Groups cannot contain groups. So membership 
in an Office 365 Group is always direct. 

### Prerequisites
One of the following **scopes** is required to execute this API:
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/<id>/microsoft.graph.checkMemberGroups
```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|groupIds|String|An array of group ids|

### Response
If successful, this method returns `200, OK` response code and String collection object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "group_checkmembergroups"
}-->
```http
POST https://graph.microsoft.com/beta/groups/<id>/microsoft.graph.checkMemberGroups
Content-type: application/json
Content-length: 44

{
  "groupIds": [
    "groupIds-value"
  ]
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
  "description": "group: checkMemberGroups",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
