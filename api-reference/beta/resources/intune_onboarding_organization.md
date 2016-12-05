# organization resource type

The organization resource represents an instance of global settings and resources which operate and are provisioned at the tenant-level.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List organizations](../api/intune_onboarding_organization_list.md)|[organization](../resources/intune_onboarding_organization.md) collection|List properties and relationships of the [organization](../resources/intune_onboarding_organization.md) objects.|
|[Get organization](../api/intune_onboarding_organization_get.md)|[organization](../resources/intune_onboarding_organization.md)|Read properties and relationships of the [organization](../resources/intune_onboarding_organization.md) object.|
|[Update organization](../api/intune_onboarding_organization_update.md)|[organization](../resources/intune_onboarding_organization.md)|Update the properties of a [organization](../resources/intune_onboarding_organization.md) object.|
|[downloadApplePushNotificationCertificateSigningRequest function](../api/intune_onboarding_organization_downloadApplePushNotificationCertificateSigningRequest.md)|String|Not yet documented|
|[uploadApplePushNotificationCertificate action](../api/intune_onboarding_organization_uploadApplePushNotificationCertificate.md)|[organization](../resources/intune_onboarding_organization.md)|Not yet documented|
|[setMobileDeviceManagementAuthority action](../api/intune_onboarding_organization_setMobileDeviceManagementAuthority.md)|Int32|Not yet documented|
|[getEncryptionPublicKey function](../api/intune_onboarding_organization_getEncryptionPublicKey.md)|String|Not yet documented|
|[uploadDepToken action](../api/intune_onboarding_organization_uploadDepToken.md)|None|Not yet documented|
|[syncWithAppleDeviceEnrollmentProgram action](../api/intune_onboarding_organization_syncWithAppleDeviceEnrollmentProgram.md)|None|Not yet documented|
|[toggleOnPremisesCertificateConnector action](../api/intune_onboarding_organization_toggleOnPremisesCertificateConnector.md)|Int32|Not yet documented|
|[List depOnboardingSettings](../api/intune_onboarding_organization_list_depOnboardingSetting.md)|[depOnboardingSetting](../resources/intune_onboarding_depOnboardingSetting.md) collection|Get the depOnboardingSettings from the depOnboardingSettings navigation property.|
|[List appleVolumePurchaseProgramTokens](../api/intune_onboarding_organization_list_appleVolumePurchaseProgramToken.md)|[appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md) collection|Get the appleVolumePurchaseProgramTokens from the appleVolumePurchaseProgramTokens navigation property.|
|[List sideLoadingKeys](../api/intune_onboarding_organization_list_sideLoadingKey.md)|[sideLoadingKey](../resources/intune_onboarding_sideLoadingKey.md) collection|Get the sideLoadingKeys from the sideLoadingKeys navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|The GUID for the object.|
|applePushNotificationCertificateSetting|[applePushNotificationCertificateSetting](../resources/intune_onboarding_applePushNotificationCertificateSetting.md)|Apple MDM push certificate setting.|
|mobileDeviceManagementAuthority|String|Mobile device management authority. Possible values are: `unknown`, `intune`, `sccm`, `office365`.|
|defaultDeviceEnrollmentRestrictions|[defaultDeviceEnrollmentRestrictions](../resources/intune_onboarding_defaultDeviceEnrollmentRestrictions.md)|Device enrollment restrictions applied to all users by default|
|defaultDeviceEnrollmentWindowsHelloForBusinessSettings|[defaultDeviceEnrollmentWindowsHelloForBusinessSettings](../resources/intune_onboarding_defaultDeviceEnrollmentWindowsHelloForBusinessSettings.md)|Windows Hello for Business settings applied to all users by default|
|defaultDeviceEnrollmentLimit|Int32|Device enrollment limit applied to all users by default|
|intuneBrand|[intuneBrand](../resources/intune_onboarding_intuneBrand.md)|intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.|
|certificateConnectorSetting|[certificateConnectorSetting](../resources/intune_onboarding_certificateConnectorSetting.md)|Certificate connector setting.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|depOnboardingSettings|[depOnboardingSetting](../resources/intune_onboarding_depOnboardingSetting.md) collection|Intune only supports using 1 DEP token per tenant. This collections will support potential future development of multiple DEP tokens per-tenant.|
|appleVolumePurchaseProgramTokens|[appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md) collection|Not yet documented|
|sideLoadingKeys|[sideLoadingKey](../resources/intune_onboarding_sideLoadingKey.md) collection|Not yet documented|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.organization"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.organization",
  "id": "String (identifier)",
  "applePushNotificationCertificateSetting": {
    "@odata.type": "microsoft.graph.applePushNotificationCertificateSetting",
    "appleIdentifier": "String",
    "topicIdentifier": "String",
    "lastModifiedDateTime": "String (timestamp)",
    "expirationDateTime": "String (timestamp)",
    "certificateUploadStatus": "String",
    "certificateUploadFailureReason": "String"
  },
  "mobileDeviceManagementAuthority": "String",
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
    "pinMinimumLength": 1024,
    "pinMaximumLength": 1024,
    "pinUppercaseLettersUsage": "String",
    "pinLowercaseLettersUsage": "String",
    "pinSpecialCharactersUsage": "String",
    "windowsHelloForBusiness": "String",
    "securityDeviceRequired": true,
    "unlockWithBiometricsEnabled": true,
    "mobilePinSignInEnabled": true,
    "pinPreviousBlockCount": 1024,
    "pinExpirationInDays": 1024,
    "enhancedBiometrics": "String"
  },
  "defaultDeviceEnrollmentLimit": 1024,
  "intuneBrand": {
    "@odata.type": "microsoft.graph.intuneBrand",
    "displayName": "String",
    "contactITName": "String",
    "contactITPhoneNumber": "String",
    "contactITEmailAddress": "String",
    "contactITNotes": "String",
    "privacyUrl": "String",
    "onlineSupportSiteUrl": "String",
    "onlineSupportSiteName": "String",
    "themeColor": {
      "@odata.type": "microsoft.graph.rgbColor",
      "r": 1024,
      "g": 1024,
      "b": 1024
    },
    "showLogo": true,
    "lightBackgroundLogo": {
      "@odata.type": "microsoft.graph.mimeContent",
      "type": "String",
      "value": "binary"
    },
    "darkBackgroundLogo": {
      "@odata.type": "microsoft.graph.mimeContent",
      "type": "String",
      "value": "binary"
    },
    "showNameNextToLogo": true
  },
  "certificateConnectorSetting": {
    "@odata.type": "microsoft.graph.certificateConnectorSetting",
    "status": 1024,
    "certExpiryTime": "String (timestamp)",
    "enrollmentError": "String",
    "lastConnectorConnectionTime": "String (timestamp)",
    "connectorVersion": "String",
    "lastUploadVersion": 1024
  }
}
```



