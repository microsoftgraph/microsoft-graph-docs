# assign action
Not yet documented
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceConfigurations/<id>/assign
POST /deviceManagement/deviceConfigurations/<id>/groupAssignments/<id>/deviceConfiguration/assign
POST /deviceConfigurationAssignments/<id>/deviceConfiguration/assign
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply JSON representation of the parameters.
The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|---|---|---|
|deviceConfigurationGroupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|** TODO: Add parameter description **|



### Response
If successful, this action returns a `200 OK` response code and a [deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceConfigurationAssignment.md) collection in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/<id>/assign

Content-type: application/json
Content-length: 245

{
  "deviceConfigurationGroupAssignments": [
    {
      "@odata.type": "#microsoft.graph.deviceConfigurationGroupAssignment",
      "id": "561d26c5-26c5-561d-c526-1d56c5261d56",
      "targetGroupId": "Target Group Id value"
    }
  ]
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 134

[
  {
    "@odata.type": "#microsoft.graph.deviceConfigurationAssignment",
    "id": "d59b6342-6342-d59b-4263-9bd542639bd5"
  }
]
```



