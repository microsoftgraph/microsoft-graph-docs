# getEffectivePermissions function

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

Read effective permissions for the [resourceOperation](../resources/intune_rbac_resourceoperation.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementRBAC.ReadWrite.All; DeviceManagementRBAC.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/resourceOperations//getEffectivePermissions
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a String collection in the response body.

## Example

##### Request

Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/resourceOperations//getEffectivePermissions
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 41

[
  "Get Effective Permissions value"
]
```
