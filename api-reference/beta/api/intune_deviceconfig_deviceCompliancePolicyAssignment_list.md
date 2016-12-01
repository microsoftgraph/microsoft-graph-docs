# List deviceCompliancePolicyAssignments
List properties and relationships of the [deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyAssignment.md) objects.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceCompliancePolicyAssignments/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a collection of [deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyAssignment.md) objects in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceCompliancePolicyAssignments/
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 164

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceCompliancePolicyAssignment",
      "id": "92dc3fef-3fef-92dc-ef3f-dc92ef3fdc92"
    }
  ]
}
```



