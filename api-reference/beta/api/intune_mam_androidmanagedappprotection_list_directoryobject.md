# List directoryObjects> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.
Get the directoryObjects from the targetedSecurityGroups navigation property.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /managedAppPolicies/{id}/targetedSecurityGroups/
GET /managedAppPolicies/{id}/microsoft.graph.targetedManagedAppProtection/targetedSecurityGroups/
GET /managedAppPolicies/{id}/microsoft.graph.targetedManagedAppConfiguration/targetedSecurityGroups/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/intune_mam_directoryobject.md) objects in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/managedAppPolicies/{id}/targetedSecurityGroups/
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 147

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.directoryObject",
      "id": "67d4444d-444d-67d4-4d44-d4674d44d467"
    }
  ]
}
```



