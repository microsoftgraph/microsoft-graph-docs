# List mobileThreatDefenseConnectors

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Get the mobileThreatDefenseConnectors from the mobileThreatDefenseConnectors navigation property.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementManagedDevices.Read.All; DeviceManagementManagedDevices.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/mobileThreatDefenseConnectors/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [mobileThreatDefenseConnector](../resources/intune_onboarding_mobilethreatdefenseconnector.md) objects in the response body.

## Example

##### Request

Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/mobileThreatDefenseConnectors/
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 536

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.mobileThreatDefenseConnector",
      "id": "e4bede14-de14-e4be-14de-bee414debee4",
      "lastHeartbeatDateTime": "2016-12-31T23:59:37.9174975-08:00",
      "partnerState": "available",
      "androidEnabled": true,
      "androidDeviceBlockedOnMissingPartnerData": true,
      "iosDeviceBlockedOnMissingPartnerData": true,
      "partnerUnsupportedOsVersionBlocked": true,
      "iosEnabled": true,
      "partnerUnresponsivenessThresholdInDays": 6
    }
  ]
}
```



