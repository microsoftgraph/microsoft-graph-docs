﻿# organization resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The organization resource represents an instance of global settings and resources which operate and are provisioned at the tenant-level.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List organizations](../api/intune_onboarding_organization_list.md)|[organization](../resources/intune_onboarding_organization.md) collection|List properties and relationships of the [organization](../resources/intune_onboarding_organization.md) objects.|
|[Get organization](../api/intune_onboarding_organization_get.md)|[organization](../resources/intune_onboarding_organization.md)|Read properties and relationships of the [organization](../resources/intune_onboarding_organization.md) object.|
|[Update organization](../api/intune_onboarding_organization_update.md)|[organization](../resources/intune_onboarding_organization.md)|Update the properties of a [organization](../resources/intune_onboarding_organization.md) object.|
|[setMobileDeviceManagementAuthority action](../api/intune_onboarding_organization_setmobiledevicemanagementauthority.md)|Int32|Set mobile device management authority|
|[getEncryptionPublicKey function](../api/intune_onboarding_organization_getencryptionpublickey.md)|String|Not yet documented|
|[uploadDepToken action](../api/intune_onboarding_organization_uploaddeptoken.md)|None|Not yet documented|
|[syncWithAppleDeviceEnrollmentProgram action](../api/intune_onboarding_organization_syncwithappledeviceenrollmentprogram.md)|None|Not yet documented|
|[toggleOnPremisesCertificateConnector action](../api/intune_onboarding_organization_toggleonpremisescertificateconnector.md)|Int32|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object.|
|mobileDeviceManagementAuthority|String|Mobile device management authority. Possible values are: `unknown`, `intune`, `sccm`, `office365`.|
|defaultDeviceEnrollmentRestrictions|[defaultDeviceEnrollmentRestrictions](../resources/intune_onboarding_defaultdeviceenrollmentrestrictions.md)|Device enrollment restrictions applied to all users by default|
|defaultDeviceEnrollmentWindowsHelloForBusinessSettings|[defaultDeviceEnrollmentWindowsHelloForBusinessSettings](../resources/intune_onboarding_defaultdeviceenrollmentwindowshelloforbusinesssettings.md)|Windows Hello for Business settings applied to all users by default|
|defaultDeviceEnrollmentLimit|Int32|Device enrollment limit applied to all users by default|
|certificateConnectorSetting|[certificateConnectorSetting](../resources/intune_onboarding_certificateconnectorsetting.md)|Certificate connector setting.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|depOnboardingSettings|[depOnboardingSetting](../resources/intune_onboarding_deponboardingsetting.md) collection|Intune only supports using 1 DEP token per tenant. This collections will support potential future development of multiple DEP tokens per-tenant.|
|appleVolumePurchaseProgramTokens|[appleVolumePurchaseProgramToken](../resources/intune_onboarding_applevolumepurchaseprogramtoken.md) collection|List of Vpp tokens for this organization.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.organization"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organization",
  "id": "String (identifier)",
  "mobileDeviceManagementAuthority": "String",
  "defaultDeviceEnrollmentRestrictions": {
    "@odata.type": "microsoft.graph.defaultDeviceEnrollmentRestrictions",
    "iosRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true,
      "osMinimumVersion": "String",
      "osMaximumVersion": "String"
    },
    "windowsRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true,
      "osMinimumVersion": "String",
      "osMaximumVersion": "String"
    },
    "windowsMobileRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true,
      "osMinimumVersion": "String",
      "osMaximumVersion": "String"
    },
    "androidRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true,
      "osMinimumVersion": "String",
      "osMaximumVersion": "String"
    },
    "androidForWorkRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true,
      "osMinimumVersion": "String",
      "osMaximumVersion": "String"
    },
    "macRestrictions": {
      "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions",
      "platformBlocked": true,
      "personalDeviceEnrollmentBlocked": true,
      "osMinimumVersion": "String",
      "osMaximumVersion": "String"
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



