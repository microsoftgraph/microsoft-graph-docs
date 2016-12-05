# List localizedNotificationMessages
List properties and relationships of the [localizedNotificationMessage](../resources/intune_deviceconfig_localizedNotificationMessage.md) objects.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/deviceCompliancePolicies/<id>/scheduledActionsForRule/<id>/scheduledActionConfigurations/<id>/notificationMessageTemplate//localizedNotificationMessages/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a collection of [localizedNotificationMessage](../resources/intune_deviceconfig_localizedNotificationMessage.md) objects in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies/<id>/scheduledActionsForRule/<id>/scheduledActionConfigurations/<id>/notificationMessageTemplate//localizedNotificationMessages/
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 374

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.localizedNotificationMessage",
      "id": "7a777708-7708-7a77-0877-777a0877777a",
      "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
      "locale": "Locale value",
      "subject": "Subject value",
      "messageTemplate": "Message Template value",
      "isDefault": true
    }
  ]
}
```



