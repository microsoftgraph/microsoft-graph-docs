# Get deviceAppManagement

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Read properties and relationships of the [deviceAppManagement](../resources/intune_onboarding_deviceappmanagement.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementServiceConfig.ReadWrite.All; DeviceManagementManagedDevices.Read.All; DeviceManagementServiceConfig.Read.All; DeviceManagementManagedDevices.ReadWrite.All; DeviceManagementApps.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceAppManagement
```

## Optional query parameters
This method supports the [OData Query Parameters](https://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.
## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [deviceAppManagement](../resources/intune_onboarding_deviceappmanagement.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceAppManagement
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 463

{
  "value": {
    "@odata.type": "#microsoft.graph.deviceAppManagement",
    "id": "bbb801a3-01a3-bbb8-a301-b8bba301b8bb",
    "windowsStoreForBusinessLastSuccessfulSyncDateTime": "2017-01-01T00:02:28.7069473-08:00",
    "isEnabledForWindowsStoreForBusiness": true,
    "windowsStoreForBusinessLanguage": "Windows Store For Business Language value",
    "windowsStoreForBusinessLastCompletedApplicationSyncTime": "2016-12-31T23:56:31.025453-08:00"
  }
}
```



