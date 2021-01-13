---
title: "managedAppProtection resource type"
description: "Policy used to configure detailed management settings for a specified set of apps"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# managedAppProtection resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Policy used to configure detailed management settings for a specified set of apps


Inherits from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAppProtections](../api/intune-mam-managedappprotection-list.md)|[managedAppProtection](../resources/intune-mam-managedappprotection.md) collection|List properties and relationships of the [managedAppProtection](../resources/intune-mam-managedappprotection.md) objects.|
|[Get managedAppProtection](../api/intune-mam-managedappprotection-get.md)|[managedAppProtection](../resources/intune-mam-managedappprotection.md)|Read properties and relationships of the [managedAppProtection](../resources/intune-mam-managedappprotection.md) object.|
|[targetApps action](../api/intune-mam-managedappprotection-targetapps.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|createdDateTime|DateTimeOffset|The date and time the policy was created. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|lastModifiedDateTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|periodOfflineBeforeAccessCheck|Duration|The period after which access is checked when the device is not connected to the internet.|
|periodOnlineBeforeAccessCheck|Duration|The period after which access is checked when the device is connected to the internet.|
|allowedInboundDataTransferSources|[managedAppDataTransferLevel](../resources/intune-mam-managedappdatatransferlevel.md)|Sources from which data is allowed to be transferred. Possible values are: `allApps`, `managedApps`, `none`.|
|allowedOutboundDataTransferDestinations|[managedAppDataTransferLevel](../resources/intune-mam-managedappdatatransferlevel.md)|Destinations to which data is allowed to be transferred. Possible values are: `allApps`, `managedApps`, `none`.|
|organizationalCredentialsRequired|Boolean|Indicates whether organizational credentials are required for app use.|
|allowedOutboundClipboardSharingLevel|[managedAppClipboardSharingLevel](../resources/intune-mam-managedappclipboardsharinglevel.md)|The level to which the clipboard may be shared between apps on the managed device. Possible values are: `allApps`, `managedAppsWithPasteIn`, `managedApps`, `blocked`.|
|dataBackupBlocked|Boolean|Indicates whether the backup of a managed app's data is blocked.|
|deviceComplianceRequired|Boolean|Indicates whether device compliance is required.|
|managedBrowserToOpenLinksRequired|Boolean|Indicates whether internet links should be opened in the managed browser app, or any custom browser specified by CustomBrowserProtocol (for iOS) or CustomBrowserPackageId/CustomBrowserDisplayName (for Android)|
|saveAsBlocked|Boolean|Indicates whether users may use the "Save As" menu item to save a copy of protected files.|
|periodOfflineBeforeWipeIsEnforced|Duration|The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped.|
|pinRequired|Boolean|Indicates whether an app-level pin is required.|
|maximumPinRetries|Int32|Maximum number of incorrect pin retry attempts before the managed app is either blocked or wiped.|
|simplePinBlocked|Boolean|Indicates whether simplePin is blocked.|
|minimumPinLength|Int32|Minimum pin length required for an app-level pin if PinRequired is set to True|
|pinCharacterSet|[managedAppPinCharacterSet](../resources/intune-mam-managedapppincharacterset.md)|Character set which may be used for an app-level pin if PinRequired is set to True. Possible values are: `numeric`, `alphanumericAndSymbol`.|
|periodBeforePinReset|Duration|TimePeriod before the all-level pin must be reset if PinRequired is set to True.|
|allowedDataStorageLocations|[managedAppDataStorageLocation](../resources/intune-mam-managedappdatastoragelocation.md) collection|Data storage locations where a user may store managed data.|
|contactSyncBlocked|Boolean|Indicates whether contacts can be synced to the user's device.|
|printBlocked|Boolean|Indicates whether printing is allowed from managed apps.|
|fingerprintBlocked|Boolean|Indicates whether use of the fingerprint reader is allowed in place of a pin if PinRequired is set to True.|
|disableAppPinIfDevicePinIsSet|Boolean|Indicates whether use of the app pin is required if the device pin is set.|
|minimumRequiredOsVersion|String|Versions less than the specified version will block the managed app from accessing company data.|
|minimumWarningOsVersion|String|Versions less than the specified version will result in warning message on the managed app from accessing company data.|
|minimumRequiredAppVersion|String|Versions less than the specified version will block the managed app from accessing company data.|
|minimumWarningAppVersion|String|Versions less than the specified version will result in warning message on the managed app.|
|minimumWipeOsVersion|String|Versions less than or equal to the specified version will wipe the managed app and the associated company data.|
|minimumWipeAppVersion|String|Versions less than or equal to the specified version will wipe the managed app and the associated company data.|
|appActionIfDeviceComplianceRequired|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either block or wipe, when the device is either rooted or jailbroken, if DeviceComplianceRequired is set to true. Possible values are: `block`, `wipe`, `warn`.|
|appActionIfMaximumPinRetriesExceeded|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either block or wipe, based on maximum number of incorrect pin retry attempts. Possible values are: `block`, `wipe`, `warn`.|
|pinRequiredInsteadOfBiometricTimeout|Duration|Timeout in minutes for an app pin instead of non biometrics passcode|
|allowedOutboundClipboardSharingExceptionLength|Int32|Specify the number of characters that may be cut or copied from Org data and accounts to any application. This setting overrides the AllowedOutboundClipboardSharingLevel restriction. Default value of '0' means no exception is allowed.|
|notificationRestriction|[managedAppNotificationRestriction](../resources/intune-mam-managedappnotificationrestriction.md)|Specify app notification restriction. Possible values are: `allow`, `blockOrganizationalData`, `block`.|
|previousPinBlockCount|Int32|Requires a pin to be unique from the number specified in this property.|
|managedBrowser|[managedBrowserType](../resources/intune-mam-managedbrowsertype.md)|Indicates in which managed browser(s) that internet links should be opened. When this property is configured, ManagedBrowserToOpenLinksRequired should be true. Possible values are: `notConfigured`, `microsoftEdge`.|
|maximumAllowedDeviceThreatLevel|[managedAppDeviceThreatLevel](../resources/intune-mam-managedappdevicethreatlevel.md)|Maximum allowed device threat level, as reported by the MTD app. Possible values are: `notConfigured`, `secured`, `low`, `medium`, `high`.|
|mobileThreatDefenseRemediationAction|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Determines what action to take if the mobile threat defense threat threshold isn't met. Warn isn't a supported value for this property. Possible values are: `block`, `wipe`, `warn`.|
|blockDataIngestionIntoOrganizationDocuments|Boolean|Indicates whether a user can bring data into org documents.|
|allowedDataIngestionLocations|[managedAppDataIngestionLocation](../resources/intune-mam-managedappdataingestionlocation.md) collection|Data storage locations where a user may store managed data.|
|appActionIfUnableToAuthenticateUser|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|If set, it will specify what action to take in the case where the user is unable to checkin because their authentication token is invalid. This happens when the user is deleted or disabled in AAD. Possible values are: `block`, `wipe`, `warn`.|
|dialerRestrictionLevel|[managedAppPhoneNumberRedirectLevel](../resources/intune-mam-managedappphonenumberredirectlevel.md)|The classes of dialer apps that are allowed to click-to-open a phone number. Possible values are: `allApps`, `managedApps`, `customApp`, `blocked`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppProtection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppProtection",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "id": "String (identifier)",
  "version": "String",
  "periodOfflineBeforeAccessCheck": "String (duration)",
  "periodOnlineBeforeAccessCheck": "String (duration)",
  "allowedInboundDataTransferSources": "String",
  "allowedOutboundDataTransferDestinations": "String",
  "organizationalCredentialsRequired": true,
  "allowedOutboundClipboardSharingLevel": "String",
  "dataBackupBlocked": true,
  "deviceComplianceRequired": true,
  "managedBrowserToOpenLinksRequired": true,
  "saveAsBlocked": true,
  "periodOfflineBeforeWipeIsEnforced": "String (duration)",
  "pinRequired": true,
  "maximumPinRetries": 1024,
  "simplePinBlocked": true,
  "minimumPinLength": 1024,
  "pinCharacterSet": "String",
  "periodBeforePinReset": "String (duration)",
  "allowedDataStorageLocations": [
    "String"
  ],
  "contactSyncBlocked": true,
  "printBlocked": true,
  "fingerprintBlocked": true,
  "disableAppPinIfDevicePinIsSet": true,
  "minimumRequiredOsVersion": "String",
  "minimumWarningOsVersion": "String",
  "minimumRequiredAppVersion": "String",
  "minimumWarningAppVersion": "String",
  "minimumWipeOsVersion": "String",
  "minimumWipeAppVersion": "String",
  "appActionIfDeviceComplianceRequired": "String",
  "appActionIfMaximumPinRetriesExceeded": "String",
  "pinRequiredInsteadOfBiometricTimeout": "String (duration)",
  "allowedOutboundClipboardSharingExceptionLength": 1024,
  "notificationRestriction": "String",
  "previousPinBlockCount": 1024,
  "managedBrowser": "String",
  "maximumAllowedDeviceThreatLevel": "String",
  "mobileThreatDefenseRemediationAction": "String",
  "blockDataIngestionIntoOrganizationDocuments": true,
  "allowedDataIngestionLocations": [
    "String"
  ],
  "appActionIfUnableToAuthenticateUser": "String",
  "dialerRestrictionLevel": "String"
}
```




