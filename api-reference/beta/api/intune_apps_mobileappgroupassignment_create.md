# Create mobileAppGroupAssignment

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceAppManagement/mobileApps/{mobileAppId}/groupAssignments/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a mobileAppGroupAssignment object.
The following table shows the properties that are required when you create a mobileAppGroupAssignment.

|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the mobile app to.|
|vpnConfigurationId|String|The Id of the Vpn Profile to apply for this app.|
|id|String|Key of the entity.|
|installIntent|String|The install intent defined by the admin. Possible values are: `available`, `notApplicable`, `required`, `uninstall`, `availableWithoutEnrollment`.|



## Response
If successful, this method returns a `201 Created` response code and a [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/{mobileAppId}/groupAssignments/
Content-type: application/json
Content-length: 203

{
  "@odata.type": "#microsoft.graph.mobileAppGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "vpnConfigurationId": "Vpn Configuration Id value",
  "installIntent": "notApplicable"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 252

{
  "@odata.type": "#microsoft.graph.mobileAppGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "vpnConfigurationId": "Vpn Configuration Id value",
  "id": "ce4d1a28-1a28-ce4d-281a-4dce281a4dce",
  "installIntent": "notApplicable"
}
```



