---
title: "List authenticationMethodsPolicies"
description: "Get a list of the authenticationMethodsPolicy objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List authenticationMethodsPolicies
Namespace: microsoft.graph

Get a list of the [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) objects and their properties.

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
GET ** Collection URI for microsoft.authMethodPolicy.authenticationMethodsPolicy not found
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

If successful, this method returns a `200 OK` response code and a collection of [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_authenticationmethodspolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.authMethodPolicy.authenticationMethodsPolicy not found
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.authMethodPolicy.authenticationMethodsPolicy)"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
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
  ]
}
```

