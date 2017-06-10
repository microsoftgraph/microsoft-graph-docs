﻿# Get mobileAppGroupAssignment

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Read properties and relationships of the [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /mobileAppGroupAssignments/{mobileAppGroupAssignmentsId}
GET /deviceAppManagement/mobileApps/{mobileAppId}/groupAssignments/{mobileAppGroupAssignmentId}
```

## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/mobileAppGroupAssignments/{mobileAppGroupAssignmentsId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 281

{
  "value": {
    "@odata.type": "#microsoft.graph.mobileAppGroupAssignment",
    "targetGroupId": "Target Group Id value",
    "vpnConfigurationId": "Vpn Configuration Id value",
    "id": "ce4d1a28-1a28-ce4d-281a-4dce281a4dce",
    "installIntent": "notApplicable"
  }
}
```



