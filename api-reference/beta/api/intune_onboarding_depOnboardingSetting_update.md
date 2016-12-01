# Update depOnboardingSetting
Update the properties of a [depOnboardingSetting](../resources/intune_onboarding_depOnboardingSetting.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementServiceConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /organization/<id>/depOnboardingSettings/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [depOnboardingSetting](../resources/intune_onboarding_depOnboardingSetting.md) object.
The following table shows the properties that are required when you create a [depOnboardingSetting](../resources/intune_onboarding_depOnboardingSetting.md).

|Property|Type|Description|
|---|---|---|
|id|String|UUID for the object|
|appleIdentifier|String|The Apple ID used to obtain the current token.|
|tokenExpirationDateTime|DateTimeOffset|When the token will expire.|
|lastModifiedDateTime|DateTimeOffset|When the service was onboarded.|
|lastSuccessfulSyncDateTime|DateTimeOffset|When the service last syned with Intune|
|lastSyncTriggeredDateTime|DateTimeOffset|When Intune last requested a sync.|



### Response
If successful, this method returns a `200 OK` response code and an updated [depOnboardingSetting](../resources/intune_onboarding_depOnboardingSetting.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/organization/<id>/depOnboardingSettings/<id>
Content-type: application/json
Content-length: 320

{
  "appleIdentifier": "Apple Identifier value",
  "tokenExpirationDateTime": "2016-12-31T23:59:54.0590989-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "lastSuccessfulSyncDateTime": "2017-01-01T00:03:28.120883-08:00",
  "lastSyncTriggeredDateTime": "2017-01-01T00:00:02.0916369-08:00"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 428

{
  "@odata.type": "#microsoft.graph.depOnboardingSetting",
  "id": "40342229-2229-4034-2922-344029223440",
  "appleIdentifier": "Apple Identifier value",
  "tokenExpirationDateTime": "2016-12-31T23:59:54.0590989-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "lastSuccessfulSyncDateTime": "2017-01-01T00:03:28.120883-08:00",
  "lastSyncTriggeredDateTime": "2017-01-01T00:00:02.0916369-08:00"
}
```



