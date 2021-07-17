---
title: "Get deviceRegistrationPolicy"
description: "Read the properties and relationships of a deviceRegistrationPolicy object."
author: "spunukol"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: apiPageType
---
# Get deviceRegistrationPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object. Represents deviceRegistrationPolicy quota restrictions, additional authentication and authorization policies to register device identities to your organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| Policy.ReadWrite.DeviceConfiguration|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

>**Note:**: For delegated permissions to allow apps to get deviceRegistrationPolicy on behalf of the signed-in user, the tenant administrator must have assigned the user one of the following roles:
* Global administrator
* Cloud device administrator
* Global reader

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/deviceRegistrationPolicy
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_deviceregistrationpolicy"
}
-->
``` http
GET https://graph.microsoft.com/policies/deviceRegistrationPolicy
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.deviceRegistrationPolicy.deviceRegistrationPolicy"
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
