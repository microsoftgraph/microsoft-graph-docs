# Update remoteActionAudit
Update the properties of a [remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementManagedDevices.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/remoteActionAudits/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md) object.
The following table shows the properties that are required when you create a [remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md).

|Property|Type|Description|
|---|---|---|
|id|String|Report Id.|
|deviceDisplayName|String|Intune device name.|
|userName|String|User who initiated the device action, format is UPN.|
|action|String|The action name. Possible values are: `unknown`, `factoryReset`, `removeCompanyData`, `resetPasscode`, `remoteLock`, `enableLostMode`, `disableLostMode`, `locateDevice`, `rebootNow`.|
|requestDateTime|DateTimeOffset|Time when the action was issued, given in UTC.|



### Response
If successful, this method returns a `200 OK` response code and an updated [remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/remoteActionAudits/<id>
Content-type: application/json
Content-length: 178

{
  "deviceDisplayName": "Device Display Name value",
  "userName": "User Name value",
  "action": "factoryReset",
  "requestDateTime": "2017-01-01T00:03:07.1589002-08:00"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 283

{
  "@odata.type": "#microsoft.graph.remoteActionAudit",
  "id": "477f8d24-8d24-477f-248d-7f47248d7f47",
  "deviceDisplayName": "Device Display Name value",
  "userName": "User Name value",
  "action": "factoryReset",
  "requestDateTime": "2017-01-01T00:03:07.1589002-08:00"
}
```



