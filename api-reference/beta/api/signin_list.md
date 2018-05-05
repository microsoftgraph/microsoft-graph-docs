# List signIns

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
GET auditLogs/signIns
```
## Optional query parameters
This method supports the following OData Query Parameters to help customize the response. Check [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) for how to use these parameters.

|Name     |Description                            |Example|
|:--------------------|----------------|------------------------------------------------------------------------|
|[$filter](https://developer.microsoft.com/en-us/graph/docs/concepts/query_parameters#filter-parameter)|Filters results (rows). |/`auditLogs/signIns?&$filter=createdDateTime le 2018-01-24`
|[$top](https://developer.microsoft.com/en-us/graph/docs/concepts/query_parameters#top-parameter)|Sets the page size of results.|`/auditLogs/signIns?$top=1`|
|[$skiptoken](https://developer.microsoft.com/en-us/graph/docs/concepts/query_parameters#skiptoken-parameter)|Retrieves the next page of results from result sets that span multiple pages.|`auditLogs/signIns?$skiptoken=01fa0e77c60c2d3d63226c8e3294c860__1`|

### List of attributes supported by $filter parameter
|Attribute Name |Supported operators|
|:----------------|:------|
|id|eq|
|userId|eq|
|appId|eq|
|createdDateTime| eq, le, ge|
|userDisplayName| eq, startswith|
|userPrincipalName| eq, startswith|
|appDisplayName| eq, startswith|
|ipAddress| eq, startswith|
|location/city| eq, startswith|
|location/state| eq, startswith|
|location/countryOrRegion| eq, startswith|
|status/errorCode|eq|
|initiatedBy/user/id|eq|
|initiatedBy/user/displayName| eq|
|initiatedBy/user/userPrincipalName| eq, startswith|
|clientAppUsed| eq|
|conditionalAccessStatus | eq|
|deviceDetails/browser| eq, startswith|
|deviceDetails/operatingSystem| eq, startswith|
|correlationId| eq|
|isRisky| eq|


## Response
If successful, this method returns a `200 OK` response code and collection of [signIn](../resources/signin.md) objects in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_signins"
}-->
```http
GET https://graph.microsoft.com/beta/auditLogs/signIns
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signIn",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 264
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
  "description": "List signIns",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->