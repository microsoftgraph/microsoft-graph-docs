---
title: "Get authenticationMethodsPolicy"
description: "Read the properties and relationships of an authenticationMethodsPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get authenticationMethodsPolicy
Namespace: microsoft.graph

Read the properties and relationships of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policyRoot/authenticationMethodsPolicy
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_authenticationmethodspolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/policyRoot/authenticationMethodsPolicy
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.authMethodPolicy.authenticationMethodsPolicy"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.authMethodPolicy.authenticationMethodsPolicy",
    "id": "0abc7408-7408-0abc-0874-bc0a0874bc0a",
    "displayName": "String",
    "description": "String",
    "lastModifiedDateTime": "String (timestamp)",
    "policyVersion": "String",
    "convergedPolicyTargetGroup": "String",
    "registrationAndResetTargets": [
      {
        "@odata.type": "microsoft.graph.registrationAndResetTarget"
      }
    ],
    "registrationEnforcement": {
      "@odata.type": "microsoft.graph.registrationEnforcement"
    },
    "reconfirmationInDays": "Integer"
  }
}
```

