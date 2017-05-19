# Update deviceConfigurationGroupAssignment
Update the properties of a [deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceConfigurations/<id>/groupAssignments/<id>
PATCH /deviceConfigurationGroupAssignment/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) object.
The following table shows the properties that are required when you create a [deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfigurationAssignment](deviceConfigurationAssignment.md).|
|targetGroupId|String|The Id of the AAD group we are targeting the device configuration to.|



### Response
If successful, this method returns a `200 OK` response code and an updated [deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/<id>/groupAssignments/<id>
Content-type: application/json
Content-length: 48

{
  "targetGroupId": "Target Group Id value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 170

{
  "@odata.type": "#microsoft.graph.deviceConfigurationGroupAssignment",
  "id": "561d26c5-26c5-561d-c526-1d56c5261d56",
  "targetGroupId": "Target Group Id value"
}
```


