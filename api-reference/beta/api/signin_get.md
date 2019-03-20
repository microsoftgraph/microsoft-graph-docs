# Get signIn
Retrieves the Azure AD user sign-ins for your tenant. Sign-ins that are interactive in nature (where a username/password is passed as part of authorization token) and successful federated sign-ins are currently included in the sign-in logs.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AuditLog.Read.All |
|Delegated (personal Microsoft account) | Not supported   |
|Application | AuditLog.Read.All | 

In addition, apps must be [properly registered](https://docs.microsoft.com/azure/active-directory/active-directory-reporting-api-prerequisites-azure-portal) to Azure AD.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /auditLogs/signIns/{id}
```
## Optional query parameters
This method supports the following OData Query Parameters to help customize the response. Check [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) for how to use these parameters.

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
		"id":"b01b1726-0147-425e-a7f7-21f252050400",
  		"createdDateTime":"2018-11-06T18:48:33.8527147Z",
  		"userDisplayName":"Jon Doe",
 		 "userPrincipalName":"admin@aad171.ccsctp.net",
 		 "userId":"d7cc485d-2c1b-422c-98fd-5ce52859a4a3",
  		"appId":"c44b4083-3bb0-49c1-b47d-974e53cbdf3c",
 		 "appDisplayName":"Azure Portal",
 		 "ipAddress":"207.254.19.10",
 		 "clientAppUsed":"Browser",
  		"mfaDetail":null,
 		 "correlationId":"65dd87ce-2183-419e-81a9-d6e20379bcc2",
 		 "conditionalAccessStatus":"notApplied",
  		"originalRequestId":null,
  		"isInteractive":true,
  		"tokenIssuerName":null,
  		"tokenIssuerType":"AzureAD",
  		"processingTimeInMilliseconds":0,
  		"riskDetail":"none",
  		"riskLevelAggregated":"none",
  		"riskLevelDuringSignIn":"none",
  		"riskState":"none",
  		"riskEventTypes":[

 		],
  		"resourceDisplayName":"windows azure service management api",
 		"resourceId":"797f4846-ba00-4fd7-ba43-dac1f8f63013",
  		"authenticationMethodsUsed":[

  		],
  		"status":{
    		"errorCode":50140,
    		"failureReason":"This error occurred due to 'Keep me signed in' interrupt when the user was signing-in.",
    		"additionalDetails":null
  		},
  		"deviceDetail":{
    		"deviceId":null,
    		"displayName":null,
    		"operatingSystem":"Windows 7",
    		"browser":"Chrome 63.0.3239",
    		"isCompliant":null,
    		"isManaged":null,
    		"trustType":null
  		},
  		"location":{
    		"city":"Lithia Springs",
    		"state":"Georgia",
    		"countryOrRegion":"US",
    		"geoCoordinates":{
      			"altitude":null,
      			"latitude":33.7930908203125,
      			"longitude":-84.445358276367188
    		}
  		},
  		"appliedConditionalAccessPolicies":[
    		{
      		"id":"6551c58c-e5da-4036-a6ea-c2c3fad264f1",
      		"displayName":"New Name here4",
      		"enforcedGrantControls":[
        		"Mfa",
        		"RequireCompliantDevice"
      		],
      		"enforcedSessionControls":[

      		],
      		"result":"notApplied"
    		},
    		{
      		"id":"b645a140-20fe-4ce0-a724-18ab201e9026",
      		"displayName":"PipelineTest4",
      		"enforcedGrantControls":[

      		],
      		"enforcedSessionControls":[

      		],
      		"result":"notEnabled"
    		}
  		],
  		"authenticationProcessingDetails":[

  		],
  		"networkLocationDetails":[

  		]
		}
	
	]
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