# List mobileAppIdentifierDeployments

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

List properties and relationships of the [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) objects.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceAppManagement/iosManagedAppProtections/{iosManagedAppProtectionId}/mobileAppIdentifierDeployments/
GET /deviceAppManagement/androidManagedAppProtections/{androidManagedAppProtectionId}/mobileAppIdentifierDeployments/
GET /deviceAppManagement/defaultManagedAppProtections/{defaultManagedAppProtectionId}/mobileAppIdentifierDeployments/
GET /deviceAppManagement/targetedManagedAppConfigurations/{targetedManagedAppConfigurationId}/mobileAppIdentifierDeployments/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) objects in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceAppManagement/iosManagedAppProtections/{iosManagedAppProtectionId}/mobileAppIdentifierDeployments/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 300

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.mobileAppIdentifierDeployment",
      "mobileAppIdentifier": {
        "@odata.type": "microsoft.graph.mobileAppIdentifier"
      },
      "id": "5a77f582-f582-5a77-82f5-775a82f5775a",
      "version": "Version value"
    }
  ]
}
```



