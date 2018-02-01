# Create androidForWorkEnrollmentProfile

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [androidForWorkEnrollmentProfile](../resources/intune_androidforwork_androidforworkenrollmentprofile.md) object.
## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/androidForWorkEnrollmentProfiles
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the androidForWorkEnrollmentProfile object.

The following table shows the properties that are required when you create the androidForWorkEnrollmentProfile.

|Property|Type|Description|
|:---|:---|:---|
|accountId|String|Tenant GUID the enrollment profile belongs to.|
|id|String|Unique GUID for the enrollment profile.|
|name|String|(Deprecated) Display name for the enrollment profile.|
|displayName|String|Display name for the enrollment profile.|
|description|String|Description for the enrollment profile.|
|createdDateTime|DateTimeOffset|Date time the enrollment profile was created.|
|modifiedDateTime|DateTimeOffset|(Deprecated) Date time the enrollment profile was last modified.|
|lastModifiedDateTime|DateTimeOffset|Date time the enrollment profile was last modified.|
|tokenValue|String|Value of the most recently created token for this enrollment profile.|
|tokenExpirationDateTime|DateTimeOffset|Date time the most recently created token will expire.|
|totalEnrollmentCount|Int32|(Deprecated) Total number of Android devices that have enrolled using this enrollment profile.|
|enrolledDeviceCount|Int32|Total number of Android devices that have enrolled using this enrollment profile.|
|qrCode|String|(Deprecated) String used to generate a QR code for the token.|
|qrCodeContent|String|String used to generate a QR code for the token.|
|qrCodeImage|[mimeContent](../resources/intune_androidforwork_mimecontent.md)|String used to generate a QR code for the token.|



## Response
If successful, this method returns a `201 Created` response code and a [androidForWorkEnrollmentProfile](../resources/intune_androidforwork_androidforworkenrollmentprofile.md) object in the response body.

## Example
### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/androidForWorkEnrollmentProfiles
Content-type: application/json
Content-length: 645

{
  "@odata.type": "#microsoft.graph.androidForWorkEnrollmentProfile",
  "accountId": "Account Id value",
  "name": "Name value",
  "displayName": "Display Name value",
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "tokenValue": "Token Value value",
  "tokenExpirationDateTime": "2016-12-31T23:59:54.0590989-08:00",
  "totalEnrollmentCount": 4,
  "enrolledDeviceCount": 3,
  "qrCode": "Qr Code value",
  "qrCodeContent": "Qr Code Content value",
  "qrCodeImage": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "Type value",
    "value": "dmFsdWU="
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 813

{
  "@odata.type": "#microsoft.graph.androidForWorkEnrollmentProfile",
  "accountId": "Account Id value",
  "id": "e6742553-2553-e674-5325-74e6532574e6",
  "name": "Name value",
  "displayName": "Display Name value",
  "description": "Description value",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "modifiedDateTime": "2017-01-01T00:00:22.8983556-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "tokenValue": "Token Value value",
  "tokenExpirationDateTime": "2016-12-31T23:59:54.0590989-08:00",
  "totalEnrollmentCount": 4,
  "enrolledDeviceCount": 3,
  "qrCode": "Qr Code value",
  "qrCodeContent": "Qr Code Content value",
  "qrCodeImage": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "Type value",
    "value": "dmFsdWU="
  }
}
```



