# Create sideLoadingKey
Create a new [sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementServiceConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /organization/<id>/sideLoadingKeys/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a sideLoadingKey object.
The following table shows the properties that are required when you create a sideLoadingKey.

|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|value|String|Not yet documented|
|displayName|String|Not yet documented|
|description|String|Not yet documented|
|totalActivation|Int32|Not yet documented|
|lastUpdatedDateTime|String|Not yet documented|



### Response
If successful, this method returns a `201 Created` response code and a [sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/organization/<id>/sideLoadingKeys/<id>
Content-type: application/json
Content-length: 246

{
  "@odata.type": "#microsoft.graph.sideLoadingKey",
  "value": "Value value",
  "displayName": "Display Name value",
  "description": "Description value",
  "totalActivation": 15,
  "lastUpdatedDateTime": "Last Updated Date Time value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 295

{
  "@odata.type": "#microsoft.graph.sideLoadingKey",
  "id": "21c4a3ff-a3ff-21c4-ffa3-c421ffa3c421",
  "value": "Value value",
  "displayName": "Display Name value",
  "description": "Description value",
  "totalActivation": 15,
  "lastUpdatedDateTime": "Last Updated Date Time value"
}
```



