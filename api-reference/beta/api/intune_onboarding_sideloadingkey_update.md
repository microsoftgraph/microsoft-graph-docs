# Update sideLoadingKey> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.
Update the properties of a [sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementServiceConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /organization/{id}/sideLoadingKeys/{id}
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md) object.
The following table shows the properties that are required when you create a [sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md).

|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|value|String|Not yet documented|
|displayName|String|Not yet documented|
|description|String|Not yet documented|
|totalActivation|Int32|Not yet documented|
|lastUpdatedDateTime|String|Not yet documented|



### Response
If successful, this method returns a `200 OK` response code and an updated [sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/organization/{id}/sideLoadingKeys/{id}
Content-type: application/json
Content-length: 193

{
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
HTTP/1.1 200 OK
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



