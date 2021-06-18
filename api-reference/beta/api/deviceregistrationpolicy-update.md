---
title: "Update deviceRegistrationPolicy"
description: "Update the properties of a deviceRegistrationPolicy object."
author: "spunukol"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: apiPageType
---
# Update deviceRegistrationPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object. Represents deviceRegistrationPolicy quota restrictions, additional authentication and authorization policies to register device identities to your organization.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.DeviceConfiguration|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

>**Note:**: For delegated permissions to allow apps to update deviceRegistrationPolicy on behalf of the signed-in user, the tenant administrator must have assigned the user one of the following roles:
* Global administrator
* Cloud device administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /policies/deviceRegistrationPolicy
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object.

The following table shows the properties that are required when you update the [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String| This string is read-only and is always set to `deviceRegistrationPolicy`. |
|displayName|String| This string is read-only and is always set to `Device Registration Policy`. |
|description|String| This string is read-only and is always set to `Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks`. |
|userDeviceQuota|Int32|Specifies the maximum number of devices that a user can have within your organization before blocking new device registrations. Required.|
|multiFactorAuthConfiguration|multiFactorAuthConfiguration|Specifies the authentication policy for a user to complete registration using Azure AD Join or Azure AD registered within your organization. Possible values are: `notRequired` or `required`. Required.|
|azureADRegistration|[azureADRegistrationPolicy](../resources/azureadregistrationpolicy.md)|Specifies the authorization policy for controlling registration of new devices using Azure AD registration within your organization. Required. For more information, see [What is a device identity?](/azure/active-directory/devices/overview). If Intune is enabled this property cannot be modified.|
|azureADJoin|[azureAdJoinPolicy](../resources/azureadjoinpolicy.md)|Specifies the authorization policy for controlling registration of new devices using Azure AD Join within your organization. Required. For more information, see [What is a device identity?](/azure/active-directory/devices/overview).|

## Response

If successful, this method returns a `200 OK` response code and an updated [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_deviceregistrationpolicy"
}
-->
``` http
PUT https://graph.microsoft.com/beta/deviceRegistrationPolicy
Content-Type: application/json

{
    "id": "deviceRegistrationPolicy",
    "displayName": "Device Registration Policy",
    "description": "Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks",
    "userDeviceQuota": 50,
    "multiFactorAuthConfiguration": "0",
    "azureADRegistration": {
        "appliesTo": "1",
        "isAdminConfigurable": false,
        "allowedUsers": [],
        "allowedGroups": []
    },
    "azureADJoin": {
        "appliesTo": "1",
        "isAdminConfigurable": true,
        "allowedUsers": [],
        "allowedGroups": []
    }
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#deviceRegistrationPolicy",
    "id": "deviceRegistrationPolicy",
    "displayName": "Device Registration Policy",
    "description": "Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks",
    "userDeviceQuota": 50,
    "multiFactorAuthConfiguration": "0",
    "azureADRegistration": {
        "appliesTo": "1",
        "isAdminConfigurable": false,
        "allowedUsers": [],
        "allowedGroups": []
    },
    "azureADJoin": {
        "appliesTo": "1",
        "isAdminConfigurable": true,
        "allowedUsers": [],
        "allowedGroups": []
    }
}
```
