# Update deviceComplianceActionItem
Update the properties of a [deviceComplianceActionItem](../resource/deviceComplianceActionItem.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceCompliancePolicies/<id>/scheduledActionsForRule/<id>/scheduledActionConfigurations/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [deviceComplianceActionItem](../resource/deviceComplianceActionItem.md) object.
The following table shows the properties that are required when you create a [deviceComplianceActionItem](../resource/deviceComplianceActionItem.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|gracePeriodHours|Int32|Number of hours to wait till the action will be enforced.|
|actionType|String|What action to take Possible values are: `noAction`, `notification`, `block`, `retire`, `wipe`, `removeResourceAccessProfiles`.|



### Response
If successful, this method returns a `200 OK` response code and an updated [deviceComplianceActionItem](../resource/deviceComplianceActionItem.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies/<id>/scheduledActionsForRule/<id>/scheduledActionConfigurations/<id>
Content-type: application/json
Content-length: 63

{
  "gracePeriodHours": 16,
  "actionType": "notification"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 177

{
  "@odata.type": "#microsoft.graph.deviceComplianceActionItem",
  "id": "e01a1893-1893-e01a-9318-1ae093181ae0",
  "gracePeriodHours": 16,
  "actionType": "notification"
}
```


