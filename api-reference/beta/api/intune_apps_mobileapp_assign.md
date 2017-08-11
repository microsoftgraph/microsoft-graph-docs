# assign action

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceAppManagement/mobileApps/{mobileAppId}assign
POST /deviceAppManagement/mobileApps/{mobileAppId}/userStatuses/{userAppInstallStatusId}/app/assign
POST /deviceAppManagement/mobileApps/{mobileAppId}/deviceStatuses/{mobileAppInstallStatusId}/app/assign
POST /deviceAppManagement/mobileApps/{mobileAppId}/groupAssignments/{mobileAppGroupAssignmentId}/app/assign
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply JSON representation of the parameters.
The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|---|---|---|
|mobileAppGroupAssignments|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) collection|Not yet documented|

## Response

If successful, this action returns a `204 No Content` response code.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/{mobileAppId}assign

Content-type: application/json
Content-length: 325

{
  "mobileAppGroupAssignments": [
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

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```



