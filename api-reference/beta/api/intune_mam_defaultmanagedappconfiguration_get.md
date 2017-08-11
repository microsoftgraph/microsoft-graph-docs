# Get defaultManagedAppConfiguration

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Read properties and relationships of the [defaultManagedAppConfiguration](../resources/intune_mam_defaultmanagedappconfiguration.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /managedAppPolicies/{managedAppPoliciesId}
GET /managedAppRegistrations/{managedAppRegistrationsId}/appliedPolicies/{managedAppPolicyId}
GET /managedAppRegistrations/{managedAppRegistrationsId}/intendedPolicies/{managedAppPolicyId}
```

## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.
## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [defaultManagedAppConfiguration](../resources/intune_mam_defaultmanagedappconfiguration.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/managedAppPolicies/{managedAppPoliciesId}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 647

{
  "value": {
    "@odata.type": "#microsoft.graph.defaultManagedAppConfiguration",
    "displayName": "Display Name value",
    "description": "Description value",
    "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
    "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
    "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
    "deployedAppCount": 0,
    "id": "6f83d45c-d45c-6f83-5cd4-836f5cd4836f",
    "version": "Version value",
    "customSettings": [
      {
        "@odata.type": "microsoft.graph.keyValuePair",
        "name": "Name value",
        "value": "Value value"
      }
    ]
  }
}
```



