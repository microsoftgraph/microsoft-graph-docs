---
author: dkershaw
localization_priority: Normal
ms.prod: identity and access reports
ms.date: 04/25/2019
---

# Credential User Registration Summary

Provides the summary of self-service password reset and multi-factor authentication (MFA) registration for a given tenant. This API provides the current state of how many users in your organization are registered for self-service password reset and multi-factor authentication (MFA) capabilities.


Retrieve the properties and relationships of credentialuserregistrationcount object.

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
GET /reports/credentialsuserregistrationcount
```
## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |


## Response
If successful, this method returns a `200 OK` response code and [credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md) object in the response body.
## Example
### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_credentialuserregistrationcount"
}-->
```http

```
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.credentialUserRegistrationCount"
} -->
```http
GET https://graph.microsoft.com/beta/reports/getCredentialUserRegistrationCount()

HTTP/1.1 200 OK
Content-Type: application/json
{
  "@odata.context":"https://graph.microsoft.com/beta/reports/$metadata#Collection(microsoft.graph.credentialUserRegistrationCount)",
  "value": [
    {
      "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234",
      "totalUserCount" : 23123,
      "userRegistrationCounts" :
      [
        { "userRegistrationStatus":"registered", "userRegistationCount": 23423 },
        { "userRegistrationStatus":"enabled", "userRegistationCount": 4234 },
        { "userRegistrationStatus":"capable", "userRegistationCount": 323 },
        { "userRegistrationStatus":"mfaRegistered", "userRegistationCount": 33 }
      ]
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get credentialUserRegistrationCount",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
