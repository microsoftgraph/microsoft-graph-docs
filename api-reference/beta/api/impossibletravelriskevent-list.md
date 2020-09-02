---
title: "List impossibleTravelRiskEvents"
description: "Retrieve a list of impossibletravelriskevent objects."
localization_priority: Normal
doc_type: apiPageType
author: "cloudhandler"
ms.prod: "microsoft-identity-platform"
---

# List impossibleTravelRiskEvents (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!CAUTION]
>The **identityRiskEvents** API is deprecated and will stop returning data on January 10, 2020. For details, see [Deprecation of the IdentityRiskEvents API](https://developer.microsoft.com/office/blogs/deprecatation-of-the-identityriskevents-api/).

Retrieve a list of impossibletravelriskevent objects.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | IdentityRiskEvent.Read.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | IdentityRiskEvent.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /impossibleTravelRiskEvents
```
## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [impossibleTravelRiskEvent](../resources/impossibletravelriskevent.md) objects in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_impossibletravelriskevents"
}-->
```http
GET https://graph.microsoft.com/v1.0/impossibleTravelRiskEvents
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.impossibleTravelRiskEvent",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 313

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.impossibleTravelRiskEvent",
      "closedDateTime": "2016-01-29T20:03:57.7872426Z",
      "createdDateTime": "2016-01-29T00:01:49.126468Z",
      "id": "22e65c1f-909a-42b5-c0d2-075f30e27887-0bfdc7a8-6a16-c33e-7de9-a60a28ae533b-15475553-dbc1-8879-5079-23b1edd25bab",
      "ipAddress": "176.10.104.240",
	  "isAtypicalLocation": true,
      "location": "Bern, CH",
	  "previousIPAddress": "95.31.18.119",
	  "previousLocation": "Moskva, Russia, RU",
	  "previousSigninDateTime": "2016-01-29T00:00:55.3859274Z",
      "riskEventDateTime": "2016-01-29T00:00:56.2255665Z",
      "riskEventStatus": "remediated",
      "riskLevel": "medium",
      "riskType": "ImpossibleTravelRiskEvent",
	  "userAgent": "Mozilla",
      "userDisplayName": "Jon Doe",
      "userId": "0bfdc7a8-6a16-c33e-7de9-a60a28ae533b",
      "userPrincipalName": "jon@contoso.com"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List impossibleTravelRiskEvents",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
