# List mobileAppVppGroupAssignments

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

List properties and relationships of the [mobileAppVppGroupAssignment](../resources/intune_apps_mobileappvppgroupassignment.md) objects.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /mobileAppGroupAssignments/
GET /deviceAppManagement/mobileApps/{mobileAppId}/groupAssignments/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [mobileAppVppGroupAssignment](../resources/intune_apps_mobileappvppgroupassignment.md) objects in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/mobileAppGroupAssignments/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 284

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.mobileAppVppGroupAssignment",
      "targetGroupId": "Target Group Id value",
      "id": "89a8674a-674a-89a8-4a67-a8894a67a889",
      "installIntent": "notApplicable",
      "useDeviceLicensing": true
    }
  ]
}
```



