# List leakedCredentialsRiskEvents

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve a list of leakedcredentialsriskevent objects.
## Prerequisites
The following **scopes** are required to execute this API:
*IdentityRiskEvent.Read.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /leakedCredentialsRiskEvents
```
## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [leakedCredentialsRiskEvent](../resources/leakedcredentialsriskevent.md) objects in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_leakedcredentialsriskevents"
}-->
```http
GET https://graph.microsoft.com/v1.0/leakedCredentialsRiskEvents
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.leakedCredentialsRiskEvent",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 304

{
  "value":
  [
	{
	  "closedDateTime": null,
	  "createdDateTime": "2016-01-29T00:01:49.126468Z",
	  "id": "8c793a18-c86a-b5f9-7d9a-b3d024f33eee-278dc452-4163-dbc6-84eb-a050c37fc931-1a01abd3-b87a-cece-3f4d-c788b055c182",
	  "riskEventDateTime": "2016-01-29T00:00:56.2255665Z",
	  "riskEventStatus": "active",
	  "riskLevel": "high",
	  "riskType": "LeakedCredentialsRiskEvent",
	  "userDisplayName": "Jon Doe",
	  "userId": "278dc452-4163-dbc6-84eb-a050c37fc931",
	  "userPrincipalName": "jon@contoso.com"
	}
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List leakedCredentialsRiskEvents",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
