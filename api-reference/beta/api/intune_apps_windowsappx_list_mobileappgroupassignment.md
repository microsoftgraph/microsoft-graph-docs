# List mobileAppGroupAssignments

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Get the mobileAppGroupAssignments from the groupAssignments navigation property.
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
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) objects in the response body.

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
Content-Length: 305

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.mobileAppGroupAssignment",
      "targetGroupId": "Target Group Id value",
      "vpnConfigurationId": "Vpn Configuration Id value",
      "id": "ce4d1a28-1a28-ce4d-281a-4dce281a4dce",
      "installIntent": "notApplicable"
    }
  ]
}
```



