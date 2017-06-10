# getUsersWithFlaggedAppRegistration function

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /managedAppRegistrations//getUsersWithFlaggedAppRegistration
GET /users/{usersId}/managedAppRegistrations//getUsersWithFlaggedAppRegistration
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this function returns a `200 OK` response code and a [directoryObject](../resources/intune_mam_directoryobject.md) collection in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/managedAppRegistrations//getUsersWithFlaggedAppRegistration
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 120

[
  {
    "@odata.type": "#microsoft.graph.directoryObject",
    "id": "67d4444d-444d-67d4-4d44-d4674d44d467"
  }
]
```



