# Create deviceComplianceScheduledActionForRule
Create a new [deviceComplianceScheduledActionForRule](../resource/deviceComplianceScheduledActionForRule.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceCompliancePolicies/<id>/scheduledActionsForRule/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a deviceComplianceScheduledActionForRule object.
The following table shows the properties that are required when you create a deviceComplianceScheduledActionForRule.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|



### Response
If successful, this method returns a `201 Created` response code and a [deviceComplianceScheduledActionForRule](../resource/deviceComplianceScheduledActionForRule.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies/<id>/scheduledActionsForRule/<id>
Content-type: application/json
Content-length: 80

{
  "@odata.type": "#microsoft.graph.deviceComplianceScheduledActionForRule"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 129

{
  "@odata.type": "#microsoft.graph.deviceComplianceScheduledActionForRule",
  "id": "f0075d5e-5d5e-f007-5e5d-07f05e5d07f0"
}
```


