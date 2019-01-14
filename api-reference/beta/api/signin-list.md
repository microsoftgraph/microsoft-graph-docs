---
title: "List signIns"
description: "Retrieves the Azure AD user sign-ins for your tenant. Sign-ins that are interactive in nature (where a username/password is passed as part of authorization token) and successful federated sign-ins are currently included in the sign-in logs.  The most recent signIns are returned first."
localization_priority: Priority
---

# List signIns

Retrieves the Azure AD user sign-ins for your tenant. Sign-ins that are interactive in nature (where a username/password is passed as part of authorization token) and successful federated sign-ins are currently included in the sign-in logs.  The most recent signIns are returned first.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AuditLog.Read.All |
|Delegated (personal Microsoft account) | Not supported   |
|Application | AuditLog.Read.All | 

In addition, apps must be [properly registered](https://docs.microsoft.com/azure/active-directory/active-directory-reporting-api-prerequisites-azure-portal) to Azure AD.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET auditLogs/signIns
```
## Optional query parameters
This method supports the following OData Query Parameters to help customize the response. Check [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) for how to use these parameters.

|Name     |Description                            |Example|
|:--------------------|----------------|------------------------------------------------------------------------|
|[$filter](https://developer.microsoft.com/graph/docs/concepts/query_parameters#filter-parameter)|Filters results (rows). |`/auditLogs/signIns?&$filter=createdDateTime le 2018-01-24`
|[$top](https://developer.microsoft.com/graph/docs/concepts/query_parameters#top-parameter)|Sets the page size of results.|`/auditLogs/signIns?$top=1`|
|[$skiptoken](https://developer.microsoft.com/graph/docs/concepts/query_parameters#skiptoken-parameter)|Retrieves the next page of results from result sets that span multiple pages.|`/auditLogs/signIns?$skiptoken=01fa0e77c60c2d3d63226c8e3294c860__1`|

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
|deviceDetail/browser| eq, startswith|
|deviceDetail/operatingSystem| eq, startswith|
|correlationId| eq|
|riskDetail| eq|
|riskLevelAggregated| eq|
|riskLevelDuringSignIn| eq|
|riskEventTypes| eq|
|riskState| eq|
|originalRequestId| eq|
|tokenIssuerName| eq|
|tokenIssuerType| eq|
|resourceDisplayName| eq|
|resourceId| eq|


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
  "description": "List signIns",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
