---
title: "Update fido2AuthenticationMethodConfiguration"
description: "Update the properties of a fido2AuthenticationMethodConfiguration object."
author: "mmcla"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# Update fido2AuthenticationMethodConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) object, which represents the FIDO2 Security Keys authentication method policy for the Azure AD tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

For delegated scenarios, the administrator needs the following [role](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

* Global admin


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/fido2
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of a [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) object with the values of fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

For the list of properties that can be updated, see [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md).

>**Note:** The `@odata.type` property with a value of `#microsoft.graph.fido2AuthenticationMethodConfiguration` must be included in the body.


## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_fido2authenticationmethodconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/fido2
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.fido2AuthenticationMethodConfiguration",
    "state": "enabled",
    "isAttestationEnforced": "true"
}
```


### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

