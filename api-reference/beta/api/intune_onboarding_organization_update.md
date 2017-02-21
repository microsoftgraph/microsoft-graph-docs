# Update organization

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [organization](../resources/intune_onboarding_organization.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementServiceConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /organization/{organizationId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [organization](../resources/intune_onboarding_organization.md) object.
The following table shows the properties that are required when you create a [organization](../resources/intune_onboarding_organization.md).

|Property|Type|Description|
|---|---|---|
|id|String|The GUID for the object.|
|applePushNotificationCertificateSetting|[applePushNotificationCertificateSetting](../resources/intune_onboarding_applepushnotificationcertificatesetting.md)|Apple MDM push certificate setting.|
|mobileDeviceManagementAuthority|String|Mobile device management authority. Possible values are: `unknown`, `intune`, `sccm`, `office365`.|
|defaultDeviceEnrollmentRestrictions|[defaultDeviceEnrollmentRestrictions](../resources/intune_onboarding_defaultdeviceenrollmentrestrictions.md)|Device enrollment restrictions applied to all users by default|
|defaultDeviceEnrollmentWindowsHelloForBusinessSettings|[defaultDeviceEnrollmentWindowsHelloForBusinessSettings](../resources/intune_onboarding_defaultdeviceenrollmentwindowshelloforbusinesssettings.md)|Windows Hello for Business settings applied to all users by default|
|defaultDeviceEnrollmentLimit|Int32|Device enrollment limit applied to all users by default|
|intuneBrand|[intuneBrand](../resources/intune_onboarding_intunebrand.md)|intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.|
|certificateConnectorSetting|[certificateConnectorSetting](../resources/intune_onboarding_certificateconnectorsetting.md)|Certificate connector setting.|



## Response
If successful, this method returns a `200 OK` response code and an updated [organization](../resources/intune_onboarding_organization.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/organization/{organizationId}
Content-type: application/json
Content-length: 3703

{
  "applePushNotificationCertificateSetting": {
    "@odata.type": "microsoft.graph.applePushNotificationCertificateSetting",
    "appleIdentifier": "Apple Identifier value",
    "topicIdentifier": "Topic Identifier value",
    "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
    "expirationDateTime": "2016-12-31T23:57:57.2481234-08:00",
    "certificateUploadStatus": "Certificate Upload Status value",
    "certificateUploadFailureReason": "Certificate Upload Failure Reason value"
  },
  "mobileDeviceManagementAuthority": "intune",
  "defaultDeviceEnrollmentRestrictions": {
    "@odata.type": "microsoft.graph.defaultDeviceEnrollmentRestrictions",
    "iosRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true
    },
    "windowsRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true
    },
    "windowsMobileRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true
    },
    "androidRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true
    },
    "macRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true
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
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 3803

{
  "@odata.type": "#microsoft.graph.organization",
  "id": "9efe224a-224a-9efe-4a22-fe9e4a22fe9e",
  "applePushNotificationCertificateSetting": {
    "@odata.type": "microsoft.graph.applePushNotificationCertificateSetting",
    "appleIdentifier": "Apple Identifier value",
    "topicIdentifier": "Topic Identifier value",
    "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
    "expirationDateTime": "2016-12-31T23:57:57.2481234-08:00",
    "certificateUploadStatus": "Certificate Upload Status value",
    "certificateUploadFailureReason": "Certificate Upload Failure Reason value"
  },
  "mobileDeviceManagementAuthority": "intune",
  "defaultDeviceEnrollmentRestrictions": {
    "@odata.type": "microsoft.graph.defaultDeviceEnrollmentRestrictions",
    "iosRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true
    },
    "windowsRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true
    },
    "windowsMobileRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true
    },
    "androidRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true
    },
    "macRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true
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
```



