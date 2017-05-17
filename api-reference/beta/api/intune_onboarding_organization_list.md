# List organizations

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

List properties and relationships of the [organization](../resources/intune_onboarding_organization.md) objects.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementServiceConfiguration.Read.All; DeviceManagementServiceConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /organization/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [organization](../resources/intune_onboarding_organization.md) objects in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/organization/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 4595

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.organization",
      "id": "9efe224a-224a-9efe-4a22-fe9e4a22fe9e",
      "mobileDeviceManagementAuthority": "intune",
      "defaultDeviceEnrollmentRestrictions": {
        "@odata.type": "microsoft.graph.defaultDeviceEnrollmentRestrictions",
        "iosRestrictions": {
          "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
          "platformBlocked": true,
          "personalDeviceEnrollmentBlocked": true,
          "osMinimumVersion": "Os Minimum Version value",
          "osMaximumVersion": "Os Maximum Version value"
        },
        "windowsRestrictions": {
          "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
          "platformBlocked": true,
          "personalDeviceEnrollmentBlocked": true,
          "osMinimumVersion": "Os Minimum Version value",
          "osMaximumVersion": "Os Maximum Version value"
        },
        "windowsMobileRestrictions": {
          "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
          "platformBlocked": true,
          "personalDeviceEnrollmentBlocked": true,
          "osMinimumVersion": "Os Minimum Version value",
          "osMaximumVersion": "Os Maximum Version value"
        },
        "androidRestrictions": {
          "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
          "platformBlocked": true,
          "personalDeviceEnrollmentBlocked": true,
          "osMinimumVersion": "Os Minimum Version value",
          "osMaximumVersion": "Os Maximum Version value"
        },
        "androidForWorkRestrictions": {
          "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
          "platformBlocked": true,
          "personalDeviceEnrollmentBlocked": true,
          "osMinimumVersion": "Os Minimum Version value",
          "osMaximumVersion": "Os Maximum Version value"
        },
        "macRestrictions": {
          "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
          "platformBlocked": true,
          "personalDeviceEnrollmentBlocked": true,
          "osMinimumVersion": "Os Minimum Version value",
          "osMaximumVersion": "Os Maximum Version value"
        }
      },
      "defaultDeviceEnrollmentWindowsHelloForBusinessSettings": {
        "@odata.type": "microsoft.graph.defaultDeviceEnrollmentWindowsHelloForBusinessSettings",
        "pinMinimumLength": 0,
        "pinMaximumLength": 0,
        "pinUppercaseLettersUsage": "required",
        "pinLowercaseLettersUsage": "required",
        "pinSpecialCharactersUsage": "required",
        "windowsHelloForBusiness": "enabled",
        "securityDeviceRequired": true,
        "unlockWithBiometricsEnabled": true,
        "mobilePinSignInEnabled": true,
        "pinPreviousBlockCount": 5,
        "pinExpirationInDays": 3,
        "enhancedBiometrics": "enabled"
      },
      "defaultDeviceEnrollmentLimit": 12,
      "intuneBrand": {
        "@odata.type": "microsoft.graph.intuneBrand",
        "displayName": "Display Name value",
        "contactITName": "Contact ITName value",
        "contactITPhoneNumber": "Contact ITPhone Number value",
        "contactITEmailAddress": "Contact ITEmail Address value",
        "contactITNotes": "Contact ITNotes value",
        "privacyUrl": "https://example.com/privacyUrl/",
        "onlineSupportSiteUrl": "https://example.com/onlineSupportSiteUrl/",
        "onlineSupportSiteName": "Online Support Site Name value",
        "themeColor": {
          "@odata.type": "microsoft.graph.rgbColor",
          "r": 1,
          "g": 1,
          "b": 1
        },
        "showLogo": true,
        "lightBackgroundLogo": {
          "@odata.type": "microsoft.graph.mimeContent",
          "type": "Type value",
          "value": "dmFsdWU="
        },
        "darkBackgroundLogo": {
          "@odata.type": "microsoft.graph.mimeContent",
          "type": "Type value",
          "value": "dmFsdWU="
        },
        "showNameNextToLogo": true
      },
      "certificateConnectorSetting": {
        "@odata.type": "microsoft.graph.certificateConnectorSetting",
        "status": 6,
        "certExpiryTime": "2017-01-01T00:00:03.9979674-08:00",
        "enrollmentError": "Enrollment Error value",
        "lastConnectorConnectionTime": "2017-01-01T00:02:50.2393584-08:00",
        "connectorVersion": "Connector Version value",
        "lastUploadVersion": 1
      }
    }
  ]
}
```



