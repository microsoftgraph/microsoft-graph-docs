# privilegedApproval: updateApprovalState
Update approval state

### Prerequisites
The following **scopes** are required to execute this API: _Directory.AccessAsUser.All_
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /privilegedApproval/<id>/updateApprovalState

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|approvalDurationInHours|Double||
|approvalState|approvalState||
|approverReason|String||

### Response
If successful, this method returns `200, OK` response code and [privilegedApproval](../resources/privilegedapproval.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "privilegedapproval_updateapprovalstate"
}-->
```http
POST https://graph.microsoft.com/beta/privilegedApproval/<id>/updateApprovalState
Content-type: application/json
Content-length: 105

{
  "approvalDurationInHours": 1,
  "approvalState": {
  },
  "approverReason": "approverReason-value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedApproval"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 193

{
  "id": "id-value",
  "userId": "userId-value",
  "roleId": "roleId-value",
  "approvalType": "approvalType-value",
  "approvalState": "approvalState-value",
  "approvalDurationInHours": 1
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "privilegedApproval: updateApprovalState",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->