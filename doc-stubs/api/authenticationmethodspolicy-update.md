---
title: "Update authenticationMethodsPolicy"
description: "Update the properties of an authenticationMethodsPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update authenticationMethodsPolicy
Namespace: microsoft.graph

Update the properties of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.

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
PATCH /authenticationMethodsPolicy
PATCH /policyRoot/authenticationMethodsPolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.

The following table shows the properties that are required when you create the [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|policyVersion|String|**TODO: Add Description**|
|convergedPolicyTargetGroup|String|**TODO: Add Description**|
|registrationAndResetTargets|[registrationAndResetTarget](../resources/registrationandresettarget.md) collection|**TODO: Add Description**|
|registrationEnforcement|[registrationEnforcement](../resources/registrationenforcement.md)|**TODO: Add Description**|
|reconfirmationInDays|Int32|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_authenticationmethodspolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/authenticationMethodsPolicy
Content-Type: application/json
Content-length: 459

{
  "@odata.type": "#microsoft.graph.authenticationMethodsPolicy",
  "displayName": "String",
  "description": "String",
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
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.authenticationMethodsPolicy",
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
```

