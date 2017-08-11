# Create mdmAppConfigGroupAssignment

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceAppManagement/mobileAppConfigurations/{managedDeviceMobileAppConfigurationId}/groupAssignments/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a mdmAppConfigGroupAssignment object.
The following table shows the properties that are required when you create a mdmAppConfigGroupAssignment.

|Property|Type|Description|
|---|---|---|
|appConfiguration|String|The navigation link to the mdm app Configuration being targeted.|
|targetGroupId|String|The Id of the AAD group we are targeting the mdm app configuration to.|
|id|String|Key of the entity.|

## Response

If successful, this method returns a `201 Created` response code and a [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/mobileAppConfigurations/{managedDeviceMobileAppConfigurationId}/groupAssignments/
Content-type: application/json
Content-length: 164

{
  "@odata.type": "#microsoft.intune_apps_graph.mdmAppConfigGroupAssignment",
  "appConfiguration": "App Configuration value",
  "targetGroupId": "Target Group Id value"
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 213

{
  "@odata.type": "#microsoft.intune_apps_graph.mdmAppConfigGroupAssignment",
  "appConfiguration": "App Configuration value",
  "targetGroupId": "Target Group Id value",
  "id": "347b9b52-9b52-347b-529b-7b34529b7b34"
}
```



