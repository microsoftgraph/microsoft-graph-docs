---
author: dkershaw
localization_priority: Normal
ms.prod: identity and access reports
ms.date: 04/25/2019
---
# Credential Usage Summary
Provides the summary of self-service password reset usage for a given tenant. This API provides the current state of how many users in your organization are using self-service password reset capabilities

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     |Reports.Read.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            |Reports.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /reports/credentialUsageSummary

```
## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
| Name      |Description|Example|Supported Operators
|:----------|:----------|:-------|:-------------------|
|feature|	Filter by type of usage data you want (registration vs.reset)|	/reports/userCredentialUsageDetails?$filter=feature eq Microsoft.AAD.Reporting.featureType'registration'|eq|
|userDisplayName|Filter by UserName|/reports/userCredentialUsageDetails?$filter=userDisplayName eq 'ABCD'|Eq, startswith(), orderby. Support case insensitive|
|userPrincipalName|	Filter by User Principal Name|	/reports/userCredentialUsageDetails?$filter=userPrincipalNameeq 'ABCD' |	Eq, startswith(), orderby. Support case insensitive|
|isSuccess|	Filter by status of the activity|	/reports/userCredentialUsageDetails?$filter=isSuccess eq true	|	Eq, orderby|
|authMethod	 |Filter by the authentication methods using during registration|	/reports/userCredentialUsageDetails?$filter=authMethod eq Microsoft.AAD.Reporting.authMethodsType'email'	|Eq, orderby|
|failureReason	|Filter by failure reason (if the activity has failed)|	/reports/userCredentialUsageDetails?$filter=failureReason eq 'ABCD'|Eq, startswith(), orderby. Support case insensitive|

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Response

If successful, this method returns a `200 OK` response code and [credentialUsageSummary](../resources/credentialusagesummary.md) object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_credentialusagesummary"
}-->

```http

GET https://graph.microsoft.com/beta/reports/getCredentialUsageSummary(period='D30')?$filter=feature eq 'registration'

```

### Response

The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.credentialUsageSummary"
} -->

```http

HTTP/1.1 200 OK
Content-Type: application/json
{
  "@odata.context":"https://graph.microsoft.com/beta/reports/$metadata#Collection(microsoft.graph.getCredentialUsageSummary)",
  "value":[
    {
      "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234"
      "feature":"registration",
      "successfulActivityCount":"12345",
      "failureActivityCount": "123",
      "authMethod": "email"
    },
  ]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get credentialUsageSummary",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
