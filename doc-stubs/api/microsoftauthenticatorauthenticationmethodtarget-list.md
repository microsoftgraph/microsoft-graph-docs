---
title: "List microsoftAuthenticatorAuthenticationMethodTargets"
description: "Get a list of the microsoftAuthenticatorAuthenticationMethodTarget objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List microsoftAuthenticatorAuthenticationMethodTargets
Namespace: microsoft.graph

Get a list of the [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) objects and their properties.

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
GET /microsoftAuthenticatorAuthenticationMethodConfiguration/includeTargets
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

If successful, this method returns a `200 OK` response code and a collection of [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_microsoftauthenticatorauthenticationmethodtarget"
}
-->
``` http
GET https://graph.microsoft.com/beta/microsoftAuthenticatorAuthenticationMethodConfiguration/includeTargets
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.authMethodPolicy.microsoftAuthenticatorAuthenticationMethodTarget)"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "#microsoft.authMethodPolicy.microsoftAuthenticatorAuthenticationMethodTarget",
      "targetType": "String",
      "id": "a123484f-484f-a123-4f48-23a14f4823a1",
      "isRegistrationRequired": "Boolean",
      "useForSignIn": "Boolean",
      "shownContext": "String",
      "isNumberMatchingRequired": "Boolean"
    }
  ]
}
```

