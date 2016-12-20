# Update mdmAppConfigGroupAssignment
Update the properties of a [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) object.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /appConfigurationGroupAssignments/{id}
PATCH /iosMobileAppConfigurations/{id}/groupAssignments/{id}
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) object.
The following table shows the properties that are required when you create a [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md).

|Property|Type|Description|
|---|---|---|
|appConfiguration|String|The navigation link to the mdm app Configuration being targeted.|
|targetGroupId|String|The Id of the AAD group we are targeting the mdm app configuration to.|
|id|String|Key of the entity.|



### Response
If successful, this method returns a `200 OK` response code and an updated [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/appConfigurationGroupAssignments/{id}
Content-type: application/json
Content-length: 98

{
  "appConfiguration": "App Configuration value",
  "targetGroupId": "Target Group Id value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 213

{
  "@odata.type": "#microsoft.intune_apps_graph.mdmAppConfigGroupAssignment",
  "appConfiguration": "App Configuration value",
  "targetGroupId": "Target Group Id value",
  "id": "347b9b52-9b52-347b-529b-7b34529b7b34"
}
```



