---
title: "List androidDeviceOwnerGeneralDeviceConfigurations"
description: "List properties and relationships of the androidDeviceOwnerGeneralDeviceConfiguration objects."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# List androidDeviceOwnerGeneralDeviceConfigurations

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration.md) objects.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/deviceConfigurations
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsDomainJoinConfiguration/networkAccessConfigurations
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 7216

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.androidDeviceOwnerGeneralDeviceConfiguration",
      "id": "edad943d-943d-edad-3d94-aded3d94aded",
      "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
      "roleScopeTagIds": [
        "Role Scope Tag Ids value"
      ],
      "supportsScopeTags": true,
      "deviceManagementApplicabilityRuleOsEdition": {
        "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsEdition",
        "osEditionTypes": [
          "windows10EnterpriseN"
        ],
        "name": "Name value",
        "ruleType": "exclude"
      },
      "deviceManagementApplicabilityRuleOsVersion": {
        "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsVersion",
        "minOSVersion": "Min OSVersion value",
        "maxOSVersion": "Max OSVersion value",
        "name": "Name value",
        "ruleType": "exclude"
      },
      "deviceManagementApplicabilityRuleDeviceMode": {
        "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleDeviceMode",
        "deviceMode": "sModeConfiguration",
        "name": "Name value",
        "ruleType": "exclude"
      },
      "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
      "description": "Description value",
      "displayName": "Display Name value",
      "version": 7,
      "accountsBlockModification": true,
      "appsAllowInstallFromUnknownSources": true,
      "appsAutoUpdatePolicy": "userChoice",
      "appsDefaultPermissionPolicy": "prompt",
      "appsRecommendSkippingFirstUseHints": true,
      "bluetoothBlockConfiguration": true,
      "bluetoothBlockContactSharing": true,
      "cameraBlocked": true,
      "cellularBlockWiFiTethering": true,
      "certificateCredentialConfigurationDisabled": true,
      "microsoftLauncherConfigurationEnabled": true,
      "microsoftLauncherCustomWallpaperEnabled": true,
      "microsoftLauncherCustomWallpaperImageUrl": "https://example.com/microsoftLauncherCustomWallpaperImageUrl/",
      "microsoftLauncherCustomWallpaperAllowUserModification": true,
      "microsoftLauncherFeedEnabled": true,
      "microsoftLauncherFeedAllowUserModification": true,
      "microsoftLauncherDockPresenceConfiguration": "show",
      "microsoftLauncherDockPresenceAllowUserModification": true,
      "microsoftLauncherSearchBarPlacementConfiguration": "top",
      "enrollmentProfile": "dedicatedDevice",
      "dataRoamingBlocked": true,
      "dateTimeConfigurationBlocked": true,
      "factoryResetDeviceAdministratorEmails": [
        "Factory Reset Device Administrator Emails value"
      ],
      "factoryResetBlocked": true,
      "globalProxy": {
        "@odata.type": "microsoft.graph.androidDeviceOwnerGlobalProxyAutoConfig",
        "proxyAutoConfigURL": "Proxy Auto Config URL value"
      },
      "googleAccountsBlocked": true,
      "kioskCustomizationDeviceSettingsBlocked": true,
      "kioskCustomizationPowerButtonActionsBlocked": true,
      "kioskCustomizationStatusBar": "notificationsAndSystemInfoEnabled",
      "kioskCustomizationSystemErrorWarnings": true,
      "kioskCustomizationSystemNavigation": "navigationEnabled",
      "kioskModeScreenSaverConfigurationEnabled": true,
      "kioskModeScreenSaverImageUrl": "https://example.com/kioskModeScreenSaverImageUrl/",
      "kioskModeScreenSaverDisplayTimeInSeconds": 8,
      "kioskModeScreenSaverStartDelayInSeconds": 7,
      "kioskModeScreenSaverDetectMediaDisabled": true,
      "kioskModeApps": [
        {
          "@odata.type": "microsoft.graph.appListItem",
          "name": "Name value",
          "publisher": "Publisher value",
          "appStoreUrl": "https://example.com/appStoreUrl/",
          "appId": "App Id value"
        }
      ],
      "kioskModeWallpaperUrl": "https://example.com/kioskModeWallpaperUrl/",
      "kioskModeExitCode": "Kiosk Mode Exit Code value",
      "kioskModeVirtualHomeButtonEnabled": true,
      "kioskModeVirtualHomeButtonType": "swipeUp",
      "kioskModeBluetoothConfigurationEnabled": true,
      "kioskModeWiFiConfigurationEnabled": true,
      "kioskModeFlashlightConfigurationEnabled": true,
      "kioskModeMediaVolumeConfigurationEnabled": true,
      "kioskModeShowDeviceInfo": true,
      "kioskModeManagedSettingsEntryDisabled": true,
      "kioskModeDebugMenuEasyAccessEnabled": true,
      "kioskModeShowAppNotificationBadge": true,
      "kioskModeScreenOrientation": "portrait",
      "kioskModeIconSize": "smallest",
      "kioskModeFolderIcon": "darkSquare",
      "kioskModeWifiAllowedSsids": [
        "Kiosk Mode Wifi Allowed Ssids value"
      ],
      "microphoneForceMute": true,
      "networkEscapeHatchAllowed": true,
      "nfcBlockOutgoingBeam": true,
      "passwordBlockKeyguard": true,
      "passwordBlockKeyguardFeatures": [
        "camera"
      ],
      "passwordExpirationDays": 6,
      "passwordMinimumLength": 5,
      "passwordMinimumLetterCharacters": 15,
      "passwordMinimumLowerCaseCharacters": 2,
      "passwordMinimumNonLetterCharacters": 2,
      "passwordMinimumNumericCharacters": 0,
      "passwordMinimumSymbolCharacters": 15,
      "passwordMinimumUpperCaseCharacters": 2,
      "passwordMinutesOfInactivityBeforeScreenTimeout": 14,
      "passwordPreviousPasswordCountToBlock": 4,
      "passwordRequiredType": "required",
      "passwordSignInFailureCountBeforeFactoryReset": 12,
      "playStoreMode": "allowList",
      "safeBootBlocked": true,
      "screenCaptureBlocked": true,
      "securityAllowDebuggingFeatures": true,
      "securityRequireVerifyApps": true,
      "statusBarBlocked": true,
      "stayOnModes": [
        "ac"
      ],
      "storageAllowUsb": true,
      "storageBlockExternalMedia": true,
      "storageBlockUsbFileTransfer": true,
      "systemUpdateWindowStartMinutesAfterMidnight": 11,
      "systemUpdateWindowEndMinutesAfterMidnight": 9,
      "systemUpdateInstallType": "postpone",
      "systemWindowsBlocked": true,
      "usersBlockAdd": true,
      "usersBlockRemove": true,
      "volumeBlockAdjustment": true,
      "vpnAlwaysOnLockdownMode": true,
      "vpnAlwaysOnPackageIdentifier": "Vpn Always On Package Identifier value",
      "wifiBlockEditConfigurations": true,
      "wifiBlockEditPolicyDefinedConfigurations": true,
      "personalProfileAppsAllowInstallFromUnknownSources": true,
      "personalProfileCameraBlocked": true,
      "personalProfileScreenCaptureBlocked": true,
      "workProfilePasswordExpirationDays": 1,
      "workProfilePasswordMinimumLength": 0,
      "workProfilePasswordMinimumNumericCharacters": 11,
      "workProfilePasswordMinimumNonLetterCharacters": 13,
      "workProfilePasswordMinimumLetterCharacters": 10,
      "workProfilePasswordMinimumLowerCaseCharacters": 13,
      "workProfilePasswordMinimumUpperCaseCharacters": 13,
      "workProfilePasswordMinimumSymbolCharacters": 10,
      "workProfilePasswordPreviousPasswordCountToBlock": 15,
      "workProfilePasswordSignInFailureCountBeforeFactoryReset": 7,
      "workProfilePasswordRequiredType": "required"
    }
  ]
}
```




