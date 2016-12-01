# Create mdmAppConfigGroupAssignment
Create a new [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmAppConfigGroupAssignment.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /iosMobileAppConfigurations/<id>/groupAssignments/<id>
POST /appConfigurationGroupAssignments/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a mdmAppConfigGroupAssignment object.
The following table shows the properties that are required when you create a mdmAppConfigGroupAssignment.

|Property|Type|Description|
|---|---|---|
|appConfiguration|String|The navigation link to the mdm app Configuration being targeted.|
|targetGroupId|String|The Id of the AAD group we are targeting the mdm app configuration to.|
|id|String|Key of the entity.|



### Response
If successful, this method returns a `201 Created` response code and a [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmAppConfigGroupAssignment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/iosMobileAppConfigurations/<id>/groupAssignments/<id>
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



