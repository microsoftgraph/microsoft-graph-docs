# syncApps action

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Prerequisites
One of the following **scopes** is required to execute this API:

** DeviceManagementServiceConfiguration.ReadWrite.All **
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /organization/{organizationId}/appleVolumePurchaseProgramTokens/{appleVolumePurchaseProgramTokenId}/syncApps
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this action returns a `200 OK` response code and a [appleVolumePurchaseProgramToken](../resources/intune_onboarding_applevolumepurchaseprogramtoken.md) in the response body.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/organization/{organizationId}/appleVolumePurchaseProgramTokens/{appleVolumePurchaseProgramTokenId}/syncApps
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 530

{
  "@odata.type": "#microsoft.graph.appleVolumePurchaseProgramToken",
  "id": "7284da05-da05-7284-05da-847205da8472",
  "organizationName": "Organization Name value",
  "volumePurchaseProgramTokenAccountType": "education",
  "appleId": "Apple Id value",
  "expirationDateTime": "2016-12-31T23:57:57.2481234-08:00",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
  "token": "Token value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "state": "valid",
  "lastSyncStatus": "inProgress"
}
```



