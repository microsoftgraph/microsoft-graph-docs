---
title: "Update mobileDeviceManagementPolicy"
description: "Update the properties of a mobile device management object."
author: "ravennMSFT"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: apiPageType
---

# Update mobileDeviceManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.All|
|Delegated (personal Microsoft account) | Not supported.|
|Application | Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /policies/mobileDeviceManagementPolicies/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.

In the request body, supply the values for fields listed below that should be updated. **Note:** You cannot use `PATCH` operation for `appliesTo` with the other properties.

|Property|Type|Description|
|:---|:---|:---|
|appliesTo|policyScope|Determines the groups this policy setting applies to. Possible values are: `none`, `all`, `selected` **Important:** `selected` cannot be used when specifying this property. Use [includedGroups](../api/mobiledevicemanagementpolicies-post-includedgroups.md) to add specific groups. Using `all` will remove any existing groups.|
|complianceUrl|String|Compliance URL of the mobility management application|
|discoveryUrl|String|Discovery URL of the mobility management application|
|termsOfUseUrl|String|Terms of Use URL of the mobility management application|

## Response

If successful, this method returns a `200 OK` response code and an updated [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_mobilitymanagementpolicy"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/policies/mobileDeviceManagementPolicies/ab90bacf-55a3-4a3e-839a-aa4b74e4f020
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mobilityManagementPolicy",
  "complianceUrl": "https://portal.uem.contoso.com/?portalAction=Compliance",
  "discoveryUrl": "https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc",
  "termsOfUseUrl": "https://portal.uem.contoso.com/TermsofUse.aspx"
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
