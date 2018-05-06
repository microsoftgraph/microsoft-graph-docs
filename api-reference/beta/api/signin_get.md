# Get signIn
Retrieves the Azure AD user sign-ins for your tenant. Sign-ins that are interactive in nature (where a username/password is passed as part of auth token) and successful federated sign-ins are currently included in the sign-in logs.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AuditLog.Read.All |
|Delegated (personal Microsoft account) | Not supported   |
|Application | AuditLog.Read.All | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /auditLogs/signIns/{id}
```
## Optional query parameters
This method supports the following OData Query Parameters to help customize the response. Check [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) for how to use these parameters.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [signIn](../resources/signin.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "reque|location/city| eq, startswith|
st",
  "name": "get_signin"
}-->
```http
GET https://graph.microsoft.com/beta/auditLogs/signIns/{id}
```
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signIn"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 211
```
```json
{
	"@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/signIns",
	"value": [{
		"id": "id",
		"createdDateTime": "2018-01-09T21:17:21.5077253Z",
		"userDisplayName": "Bill G",
		"userPrincipalName": "billg@microsoft.com",
		"userId": "bbb3b4b5-e6e6-f7f5-f7f5-090805040302",
		"appId": "d3590ed6-52b3-4102-aeff-aad2292ab01c",
		"appDisplayName": "Azure",
		"ipAddress": "111.11.23.546",
		"status": {
			"errorCode": 0,
			"failureReason": null,
			"additionalDetails": "SignIn Success & CA Sucess"
		},
		"clientAppUsed": null,
		"deviceDetail": {
			"deviceId": "34390ed6-52b3-4102-aeff-aad2292abac3",
			"displayName": "DeviceName",
			"operatingSystem": "Windows 10",
			"browser": "Rich Client v1.0.2016.0",
			"isCompliant": true,
			"isManaged": true,
			"trustType": ""
		},
		"location": {
			"city": "Redmond",
			"state": "WA",
			"countryOrRegion": "USA",
			"geoCoordinates": {
				"altitude": 41.589,
				"latitude": 41.589,
				"longitude": -93.6151
			}
		},
		"mfaDetail": {
			"mfaAuthMethod": "Phone Auth",
			"mfaAuthDetail": null
		},
		"correlationId": "17444d3c-563d-4b08-ac20-815892b87e42",
		"conditionalAccessApplied": true,
		"conditionalAccessPolicies": [{
			"id": "26490ed6-52b3-4102-aeff-aad2292abacf",
			"displayName": "capPolicy",
			"enforcedAccessControls": ["MFA", "TOU"],
			"enforcedSessionControls": ["CloudAppSecurity"],
			"result": "success"
		}],
		"isRisky": false,
		"riskLevel": "low"
	}]
}

```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get signIn",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->