# Create windows10GeneralConfiguration

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [windows10GeneralConfiguration](../resources/intune_deviceconfig_windows10generalconfiguration.md) object.
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
POST /deviceManagement/deviceConfigurations
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the windows10GeneralConfiguration object.

The following table shows the properties that are required when you create the windows10GeneralConfiguration.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|enterpriseCloudPrintDiscoveryEndPoint|String|Endpoint for discovering cloud printers.|
|enterpriseCloudPrintOAuthAuthority|String|Authentication endpoint for acquiring OAuth tokens.|
|enterpriseCloudPrintOAuthClientIdentifier|String|GUID of a client application authorized to retrieve OAuth tokens from the OAuth Authority.|
|enterpriseCloudPrintResourceIdentifier|String|OAuth resource URI for print service as configured in the Azure portal.|
|enterpriseCloudPrintDiscoveryMaxLimit|Int32|Maximum number of printers that should be queried from a discovery endpoint. This is a mobile only setting. Valid values 1 to 65535|
|enterpriseCloudPrintMopriaDiscoveryResourceIdentifier|String|OAuth resource URI for printer discovery service as configured in Azure portal.|
|searchBlockDiacritics|Boolean|Specifies if search can use diacritics.|
|searchDisableAutoLanguageDetection|Boolean|Specifies whether to use automatic language detection when indexing content and properties.|
|searchDisableIndexingEncryptedItems|Boolean|Indicates whether or not to block indexing of WIP-protected items to prevent them from appearing in search results for Cortana or Explorer.|
|searchEnableRemoteQueries|Boolean|Indicates whether or not to block remote queries of this computer’s index.|
|searchDisableIndexerBackoff|Boolean|Indicates whether or not to disable the search indexer backoff feature.|
|searchDisableIndexingRemovableDrive|Boolean|Indicates whether or not to allow users to add locations on removable drives to libraries and to be indexed.|
|searchEnableAutomaticIndexSizeManangement|Boolean|Specifies minimum amount of hard drive space on the same drive as the index location before indexing stops.|
|diagnosticsDataSubmissionMode|[diagnosticDataSubmissionMode](../resources/intune_deviceconfig_diagnosticdatasubmissionmode.md)|Gets or sets a value allowing the device to send diagnostic and usage telemetry data, such as Watson. Possible values are: `userDefined`, `none`, `basic`, `enhanced`, `full`.|
|oneDriveDisableFileSync|Boolean|Gets or sets a value allowing IT admins to prevent apps and features from working with files on OneDrive.|
|smartScreenEnableAppInstallControl|Boolean|Allows IT Admins to control whether users are allowed to install apps from places other than the Store.|
|personalizationDesktopImageUrl|String|A http or https Url to a jpg, jpeg or png image that needs to be downloaded and used as the Desktop Image or a file Url to a local image on the file system that needs to used as the Desktop Image.|
|personalizationLockScreenImageUrl|String|A http or https Url to a jpg, jpeg or png image that neeeds to be downloaded and used as the Lock Screen Image or a file Url to a local image on the file system that needs to be used as the Lock Screen Image.|
|bluetoothAllowedServices|String collection|Specify a list of allowed Bluetooth services and profiles in hex formatted strings.|
|bluetoothBlockAdvertising|Boolean|Whether or not to Block the user from using bluetooth advertising.|
|bluetoothBlockDiscoverableMode|Boolean|Whether or not to Block the user from using bluetooth discoverable mode.|
|bluetoothBlockPrePairing|Boolean|Whether or not to block specific bundled Bluetooth peripherals to automatically pair with the host device.|
|edgeBlockAutofill|Boolean|Indicates whether or not to block auto fill.|
|edgeBlocked|Boolean|Indicates whether or not to Block the user from using the Edge browser.|
|edgeCookiePolicy|[edgeCookiePolicy](../resources/intune_deviceconfig_edgecookiepolicy.md)|Indicates which cookies to block in the Edge browser. Possible values are: `userDefined`, `allow`, `blockThirdParty`, `blockAll`.|
|edgeBlockDeveloperTools|Boolean|Indicates whether or not to block developer tools in the Edge browser.|
|edgeBlockSendingDoNotTrackHeader|Boolean|Indicates whether or not to Block the user from sending the do not track header.|
|edgeBlockExtensions|Boolean|Indicates whether or not to block extensions in the Edge browser.|
|edgeBlockInPrivateBrowsing|Boolean|Indicates whether or not to block InPrivate browsing on corporate networks, in the Edge browser.|
|edgeBlockJavaScript|Boolean|Indicates whether or not to Block the user from using JavaScript.|
|edgeBlockPasswordManager|Boolean|Indicates whether or not to Block password manager.|
|edgeBlockAddressBarDropdown|Boolean|Block the address bar dropdown functionality in Microsoft Edge. Disable this settings to minimize network connections from Microsoft Edge to Microsoft services.|
|edgeBlockCompatibilityList|Boolean|Block Microsoft compatibility list in Microsoft Edge. This list from Microsoft helps Edge properly display sites with known compatibility issues.|
|edgeClearBrowsingDataOnExit|Boolean|Clear browsing data on exiting Microsoft Edge.|
|edgeAllowStartPagesModification|Boolean|Allow users to change Start pages on Edge. Use the EdgeHomepageUrls to specify the Start pages that the user would see by default when they open Edge.|
|edgeDisableFirstRunPage|Boolean|Block the Microsoft web page that opens on the first use of Microsoft Edge. This policy allows enterprises, like those enrolled in zero emissions configurations, to block this page.|
|edgeBlockLiveTileDataCollection|Boolean|Block the collection of information by Microsoft for live tile creation when users pin a site to Start from Microsoft Edge.|
|edgeSyncFavoritesWithInternetExplorer|Boolean|Enable favorites sync between Internet Explorer and Microsoft Edge. Additions, deletions, modifications and order changes to favorites are shared between browsers.|
|cellularBlockDataWhenRoaming|Boolean|Whether or not to Block the user from using data over cellular while roaming.|
|cellularBlockVpn|Boolean|Whether or not to Block the user from using VPN over cellular.|
|cellularBlockVpnWhenRoaming|Boolean|Whether or not to Block the user from using VPN when roaming over cellular.|
|defenderBlockEndUserAccess|Boolean|Whether or not to block end user access to Defender.|
|defenderDaysBeforeDeletingQuarantinedMalware|Int32|Number of days before deleting quarantined malware. Valid values 0 to 90|
|defenderDetectedMalwareActions|[defenderDetectedMalwareActions](../resources/intune_deviceconfig_defenderdetectedmalwareactions.md)|Gets or sets Defender’s actions to take on detected Malware per threat level.|
|defenderSystemScanSchedule|[weeklySchedule](../resources/intune_deviceconfig_weeklyschedule.md)|Defender day of the week for the system scan. Possible values are: `userDefined`, `everyday`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`.|
|defenderFilesAndFoldersToExclude|String collection|Files and folder to exclude from scans and real time protection.|
|defenderFileExtensionsToExclude|String collection|File extensions to exclude from scans and real time protection.|
|defenderScanMaxCpu|Int32|Max CPU usage percentage during scan. Valid values 0 to 100|
|defenderMonitorFileActivity|[defenderMonitorFileActivity](../resources/intune_deviceconfig_defendermonitorfileactivity.md)|Value for monitoring file activity. Possible values are: `userDefined`, `disable`, `monitorAllFiles`, `monitorIncomingFilesOnly`, `monitorOutgoingFilesOnly`.|
|defenderProcessesToExclude|String collection|Processes to exclude from scans and real time protection.|
|defenderPromptForSampleSubmission|[defenderPromptForSampleSubmission](../resources/intune_deviceconfig_defenderpromptforsamplesubmission.md)|The configuration for how to prompt user for sample submission. Possible values are: `userDefined`, `alwaysPrompt`, `promptBeforeSendingPersonalData`, `neverSendData`, `sendAllDataWithoutPrompting`.|
|defenderRequireBehaviorMonitoring|Boolean|Indicates whether or not to require behavior monitoring.|
|defenderRequireCloudProtection|Boolean|Indicates whether or not to require cloud protection.|
|defenderRequireNetworkInspectionSystem|Boolean|Indicates whether or not to require network inspection system.|
|defenderRequireRealTimeMonitoring|Boolean|Indicates whether or not to require real time monitoring.|
|defenderScanArchiveFiles|Boolean|Indicates whether or not to scan archive files.|
|defenderScanDownloads|Boolean|Indicates whether or not to scan downloads.|
|defenderScanNetworkFiles|Boolean|Indicates whether or not to scan files opened from a network folder.|
|defenderScanIncomingMail|Boolean|Indicates whether or not to scan incoming mail messages.|
|defenderScanMappedNetworkDrivesDuringFullScan|Boolean|Indicates whether or not to scan mapped network drives during full scan.|
|defenderScanRemovableDrivesDuringFullScan|Boolean|Indicates whether or not to scan removable drives during full scan.|
|defenderScanScriptsLoadedInInternetExplorer|Boolean|Indicates whether or not to scan scripts loaded in Internet Explorer browser.|
|defenderSignatureUpdateIntervalInHours|Int32|The signature update interval in hours. Specify 0 not to check. Valid values 0 to 24|
|defenderScanType|[defenderScanType](../resources/intune_deviceconfig_defenderscantype.md)|The defender system scan type. Possible values are: `userDefined`, `disabled`, `quick`, `full`.|
|defenderScheduledScanTime|TimeOfDay|The defender time for the system scan.|
|defenderScheduledQuickScanTime|TimeOfDay|The time to perform a daily quick scan.|
|defenderCloudBlockLevel|[defenderCloudBlockLevelType](../resources/intune_deviceconfig_defendercloudblockleveltype.md)|Specifies the level of cloud-delivered protection. Possible values are: `notConfigured`, `high`, `highPlus`, `zeroTolerance`.|
|lockScreenAllowTimeoutConfiguration|Boolean|Specify whether to show a user-configurable setting to control the screen timeout while on the lock screen of Windows 10 Mobile devices. If this policy is set to Allow, the value set by lockScreenTimeoutInSeconds is ignored.|
|lockScreenBlockActionCenterNotifications|Boolean|Indicates whether or not to block action center notifications over lock screen.|
|lockScreenBlockCortana|Boolean|Indicates whether or not the user can interact with Cortana using speech while the system is locked.|
|lockScreenBlockToastNotifications|Boolean|Indicates whether to allow toast notifications above the device lock screen.|
|lockScreenTimeoutInSeconds|Int32|Set the duration (in seconds) from the screen locking to the screen turning off for Windows 10 Mobile devices. Supported values are 11-1800. Valid values 11 to 1800|
|passwordBlockSimple|Boolean|Specify whether PINs or passwords such as "1111" or "1234" are allowed. For Windows 10 desktops, it also controls the use of picture passwords.|
|passwordExpirationDays|Int32|The password expiration in days. Valid values 0 to 730|
|passwordMinimumLength|Int32|The minimum password length. Valid values 4 to 16|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|The minutes of inactivity before the screen times out.|
|passwordMinimumCharacterSetCount|Int32|The number of character sets required in the password.|
|passwordPreviousPasswordBlockCount|Int32|The number of previous passwords to prevent reuse of. Valid values 0 to 50|
|passwordRequired|Boolean|Indicates whether or not to require the user to have a password.|
|passwordRequireWhenResumeFromIdleState|Boolean|Indicates whether or not to require a password upon resuming from an idle state.|
|passwordRequiredType|[requiredPasswordType](../resources/intune_deviceconfig_requiredpasswordtype.md)|The required password type. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordSignInFailureCountBeforeFactoryReset|Int32|The number of sign in failures before factory reset. Valid values 0 to 999|
|privacyAdvertisingId|[stateManagementSetting](../resources/intune_deviceconfig_statemanagementsetting.md)|Enables or disables the use of advertising ID. Added in Windows 10, version 1607. Possible values are: `notConfigured`, `blocked`, `allowed`.|
|privacyAutoAcceptPairingAndConsentPrompts|Boolean|Indicates whether or not to allow the automatic acceptance of the pairing and privacy user consent dialog when launching apps.|
|privacyBlockInputPersonalization|Boolean|Indicates whether or not to block the usage of cloud based speech services for Cortana, Dictation, or Store applications.|
|startBlockUnpinningAppsFromTaskbar|Boolean|Indicates whether or not to block the user from unpinning apps from taskbar.|
|startMenuAppListVisibility|[windowsStartMenuAppListVisibilityType](../resources/intune_deviceconfig_windowsstartmenuapplistvisibilitytype.md)|Setting the value of this collapses the app list, removes the app list entirely, or disables the corresponding toggle in the Settings app. Possible values are: `userDefined`, `collapse`, `remove`, `disableSettingsApp`.|
|startMenuHideChangeAccountSettings|Boolean|Enabling this policy hides the change account setting from appearing in the user tile in the start menu.|
|startMenuHideFrequentlyUsedApps|Boolean|Enabling this policy hides the most used apps from appearing on the start menu and disables the corresponding toggle in the Settings app.|
|startMenuHideHibernate|Boolean|Enabling this policy hides hibernate from appearing in the power button in the start menu.|
|startMenuHideLock|Boolean|Enabling this policy hides lock from appearing in the user tile in the start menu.|
|startMenuHidePowerButton|Boolean|Enabling this policy hides the power button from appearing in the start menu.|
|startMenuHideRecentJumpLists|Boolean|Enabling this policy hides recent jump lists from appearing on the start menu/taskbar and disables the corresponding toggle in the Settings app.|
|startMenuHideRecentlyAddedApps|Boolean|Enabling this policy hides recently added apps from appearing on the start menu and disables the corresponding toggle in the Settings app.|
|startMenuHideRestartOptions|Boolean|Enabling this policy hides “Restart/Update and Restart” from appearing in the power button in the start menu.|
|startMenuHideShutDown|Boolean|Enabling this policy hides shut down/update and shut down from appearing in the power button in the start menu.|
|startMenuHideSignOut|Boolean|Enabling this policy hides sign out from appearing in the user tile in the start menu.|
|startMenuHideSleep|Boolean|Enabling this policy hides sleep from appearing in the power button in the start menu.|
|startMenuHideSwitchAccount|Boolean|Enabling this policy hides switch account from appearing in the user tile in the start menu.|
|startMenuHideUserTile|Boolean|Enabling this policy hides the user tile from appearing in the start menu.|
|startMenuLayoutEdgeAssetsXml|Binary|This policy setting allows you to import Edge assets to be used with startMenuLayoutXml policy. Start layout can contain secondary tile from Edge app which looks for Edge local asset file. Edge local asset would not exist and cause Edge secondary tile to appear empty in this case. This policy only gets applied when startMenuLayoutXml policy is modified. The value should be a UTF-8 Base64 encoded byte array.|
|startMenuLayoutXml|Binary|Allows admins to override the default Start menu layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in a UTF8 encoded byte array format.|
|startMenuMode|[windowsStartMenuModeType](../resources/intune_deviceconfig_windowsstartmenumodetype.md)|Allows admins to decide how the Start menu is displayed. Possible values are: `userDefined`, `fullScreen`, `nonFullScreen`.|
|startMenuPinnedFolderDocuments|[visibilitySetting](../resources/intune_deviceconfig_visibilitysetting.md)|Enforces the visibility (Show/Hide) of the Documents folder shortcut on the Start menu. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderDownloads|[visibilitySetting](../resources/intune_deviceconfig_visibilitysetting.md)|Enforces the visibility (Show/Hide) of the Downloads folder shortcut on the Start menu. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderFileExplorer|[visibilitySetting](../resources/intune_deviceconfig_visibilitysetting.md)|Enforces the visibility (Show/Hide) of the FileExplorer shortcut on the Start menu. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderHomeGroup|[visibilitySetting](../resources/intune_deviceconfig_visibilitysetting.md)|Enforces the visibility (Show/Hide) of the HomeGroup folder shortcut on the Start menu. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderMusic|[visibilitySetting](../resources/intune_deviceconfig_visibilitysetting.md)|Enforces the visibility (Show/Hide) of the Music folder shortcut on the Start menu. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderNetwork|[visibilitySetting](../resources/intune_deviceconfig_visibilitysetting.md)|Enforces the visibility (Show/Hide) of the Network folder shortcut on the Start menu. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderPersonalFolder|[visibilitySetting](../resources/intune_deviceconfig_visibilitysetting.md)|Enforces the visibility (Show/Hide) of the PersonalFolder shortcut on the Start menu. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderPictures|[visibilitySetting](../resources/intune_deviceconfig_visibilitysetting.md)|Enforces the visibility (Show/Hide) of the Pictures folder shortcut on the Start menu. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderSettings|[visibilitySetting](../resources/intune_deviceconfig_visibilitysetting.md)|Enforces the visibility (Show/Hide) of the Settings folder shortcut on the Start menu. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderVideos|[visibilitySetting](../resources/intune_deviceconfig_visibilitysetting.md)|Enforces the visibility (Show/Hide) of the Videos folder shortcut on the Start menu. Possible values are: `notConfigured`, `hide`, `show`.|
|settingsBlockSettingsApp|Boolean|Indicates whether or not to block access to Settings app.|
|settingsBlockSystemPage|Boolean|Indicates whether or not to block access to System in Settings app.|
|settingsBlockDevicesPage|Boolean|Indicates whether or not to block access to Devices in Settings app.|
|settingsBlockNetworkInternetPage|Boolean|Indicates whether or not to block access to Network & Internet in Settings app.|
|settingsBlockPersonalizationPage|Boolean|Indicates whether or not to block access to Personalization in Settings app.|
|settingsBlockAccountsPage|Boolean|Indicates whether or not to block access to Accounts in Settings app.|
|settingsBlockTimeLanguagePage|Boolean|Indicates whether or not to block access to Time & Language in Settings app.|
|settingsBlockEaseOfAccessPage|Boolean|Indicates whether or not to block access to Ease of Access in Settings app.|
|settingsBlockPrivacyPage|Boolean|Indicates whether or not to block access to Privacy in Settings app.|
|settingsBlockUpdateSecurityPage|Boolean|Indicates whether or not to block access to Update & Security in Settings app.|
|settingsBlockAppsPage|Boolean|Indicates whether or not to block access to Apps in Settings app.|
|settingsBlockGamingPage|Boolean|Indicates whether or not to block access to Gaming in Settings app.|
|windowsSpotlightBlockConsumerSpecificFeatures|Boolean|Allows IT admins to block experiences that are typically for consumers only, such as Start suggestions, Membership notifications, Post-OOBE app install and redirect tiles.|
|windowsSpotlightBlocked|Boolean|Allows IT admins to turn off all Windows Spotlight features|
|windowsSpotlightBlockOnActionCenter|Boolean|Block suggestions from Microsoft that show after each OS clean install, upgrade or in an on-going basis to introduce users to what is new or changed|
|windowsSpotlightBlockTailoredExperiences|Boolean|Block personalized content in Windows spotlight based on user’s device usage.|
|windowsSpotlightBlockThirdPartyNotifications|Boolean|Block third party content delivered via Windows Spotlight|
|windowsSpotlightBlockWelcomeExperience|Boolean|Block Windows Spotlight Windows welcome experience|
|windowsSpotlightBlockWindowsTips|Boolean|Allows IT admins to turn off the popup of Windows Tips.|
|windowsSpotlightConfigureOnLockScreen|[windowsSpotlightEnablementSettings](../resources/intune_deviceconfig_windowsspotlightenablementsettings.md)|Specifies the type of Spotlight. Possible values are: `notConfigured`, `disabled`, `enabled`.|
|networkProxyApplySettingsDeviceWide|Boolean|If set, proxy settings will be applied to all processes and accounts in the device. Otherwise, it will be applied to the user account that’s enrolled into MDM.|
|networkProxyDisableAutoDetect|Boolean|Disable automatic detection of settings. If enabled, the system will try to find the path to a proxy auto-config (PAC) script.|
|networkProxyAutomaticConfigurationUrl|String|Address to the proxy auto-config (PAC) script you want to use.|
|networkProxyServer|[windows10NetworkProxyServer](../resources/intune_deviceconfig_windows10networkproxyserver.md)|Specifies manual proxy server settings.|
|accountsBlockAddingNonMicrosoftAccountEmail|Boolean|Indicates whether or not to Block the user from adding email accounts to the device that are not associated with a Microsoft account.|
|antiTheftModeBlocked|Boolean|Indicates whether or not to block the user from selecting an AntiTheft mode preference (Windows 10 Mobile only).|
|bluetoothBlocked|Boolean|Whether or not to Block the user from using bluetooth.|
|cameraBlocked|Boolean|Whether or not to Block the user from accessing the camera of the device.|
|connectedDevicesServiceBlocked|Boolean|Whether or not to block Connected Devices Service which enables discovery and connection to other devices, remote messaging, remote app sessions and other cross-device experiences.|
|certificatesBlockManualRootCertificateInstallation|Boolean|Whether or not to Block the user from doing manual root certificate installation.|
|copyPasteBlocked|Boolean|Whether or not to Block the user from using copy paste.|
|cortanaBlocked|Boolean|Whether or not to Block the user from using Cortana.|
|deviceManagementBlockFactoryResetOnMobile|Boolean|Indicates whether or not to Block the user from resetting their phone.|
|deviceManagementBlockManualUnenroll|Boolean|Indicates whether or not to Block the user from doing manual un-enrollment from device management.|
|safeSearchFilter|[safeSearchFilterType](../resources/intune_deviceconfig_safesearchfiltertype.md)|Specifies what filter level of safe search is required. Possible values are: `userDefined`, `strict`, `moderate`.|
|edgeBlockPopups|Boolean|Indicates whether or not to block popups.|
|edgeBlockSearchSuggestions|Boolean|Indicates whether or not to Block the user from using the search suggestions in the address bar.|
|edgeBlockSendingIntranetTrafficToInternetExplorer|Boolean|Indicates whether or not to Block the user from sending Intranet traffic to Internet Explorer from Edge.|
|edgeRequireSmartScreen|Boolean|Indicates whether or not to Require the user to use the smart screen filter.|
|edgeEnterpriseModeSiteListLocation|String|Indicates the enterprise mode site list location. Could be a local file, local network or http location.|
|edgeFirstRunUrl|String|The first run URL for when Edge browser is opened for the first time.|
|edgeSearchEngine|[edgeSearchEngineBase](../resources/intune_deviceconfig_edgesearchenginebase.md)|Allows IT admins to set a default search engine for MDM-Controlled devices. Users can override this and change their default search engine provided the AllowSearchEngineCustomization policy is not set.|
|edgeHomepageUrls|String collection|The list of URLs for homepages shodwn on MDM-enrolled devices on Edge browser.|
|edgeBlockAccessToAboutFlags|Boolean|Indicates whether or not to prevent access to about flags on Edge browser.|
|smartScreenBlockPromptOverride|Boolean|Indicates whether or not users can override SmartScreen Filter warnings about potentially malicious websites.|
|smartScreenBlockPromptOverrideForFiles|Boolean|Indicates whether or not users can override the SmartScreen Filter warnings about downloading unverified files|
|webRtcBlockLocalhostIpAddress|Boolean|Indicates whether or not user's localhost IP address is displayed while making phone calls using the WebRTC|
|internetSharingBlocked|Boolean|Indicates whether or not to Block the user from using internet sharing.|
|settingsBlockAddProvisioningPackage|Boolean|Indicates whether or not to block the user from installing provisioning packages.|
|settingsBlockRemoveProvisioningPackage|Boolean|Indicates whether or not to block the runtime configuration agent from removing provisioning packages.|
|settingsBlockChangeSystemTime|Boolean|Indicates whether or not to block the user from changing date and time settings.|
|settingsBlockEditDeviceName|Boolean|Indicates whether or not to block the user from editing the device name.|
|settingsBlockChangeRegion|Boolean|Indicates whether or not to block the user from changing the region settings.|
|settingsBlockChangeLanguage|Boolean|Indicates whether or not to block the user from changing the language settings.|
|settingsBlockChangePowerSleep|Boolean|Indicates whether or not to block the user from changing power and sleep settings.|
|locationServicesBlocked|Boolean|Indicates whether or not to Block the user from location services.|
|microsoftAccountBlocked|Boolean|Indicates whether or not to Block a Microsoft account.|
|microsoftAccountBlockSettingsSync|Boolean|Indicates whether or not to Block Microsoft account settings sync.|
|nfcBlocked|Boolean|Indicates whether or not to Block the user from using near field communication.|
|resetProtectionModeBlocked|Boolean|Indicates whether or not to Block the user from reset protection mode.|
|screenCaptureBlocked|Boolean|Indicates whether or not to Block the user from taking Screenshots.|
|storageBlockRemovableStorage|Boolean|Indicates whether or not to Block the user from using removable storage.|
|storageRequireMobileDeviceEncryption|Boolean|Indicating whether or not to require encryption on a mobile device.|
|usbBlocked|Boolean|Indicates whether or not to Block the user from USB connection.|
|voiceRecordingBlocked|Boolean|Indicates whether or not to Block the user from voice recording.|
|wiFiBlockAutomaticConnectHotspots|Boolean|Indicating whether or not to block automatically connecting to Wi-Fi hotspots. Has no impact if Wi-Fi is blocked.|
|wiFiBlocked|Boolean|Indicates whether or not to Block the user from using Wi-Fi.|
|wiFiBlockManualConfiguration|Boolean|Indicates whether or not to Block the user from using Wi-Fi manual configuration.|
|wiFiScanInterval|Int32|Specify how often devices scan for Wi-Fi networks. Supported values are 1-500, where 100 = default, and 500 = low frequency. Valid values 1 to 500|
|wirelessDisplayBlockProjectionToThisDevice|Boolean|Indicates whether or not to allow other devices from discovering this PC for projection.|
|wirelessDisplayBlockUserInputFromReceiver|Boolean|Indicates whether or not to allow user input from wireless display receiver.|
|wirelessDisplayRequirePinForPairing|Boolean|Indicates whether or not to require a PIN for new devices to initiate pairing.|
|windowsStoreBlocked|Boolean|Indicates whether or not to Block the user from using the Windows store.|
|appsAllowTrustedAppsSideloading|[stateManagementSetting](../resources/intune_deviceconfig_statemanagementsetting.md)|Indicates whether apps from AppX packages signed with a trusted certificate can be side loaded. Possible values are: `notConfigured`, `blocked`, `allowed`.|
|windowsStoreBlockAutoUpdate|Boolean|Indicates whether or not to block automatic update of apps from Windows Store.|
|developerUnlockSetting|[stateManagementSetting](../resources/intune_deviceconfig_statemanagementsetting.md)|Indicates whether or not to allow developer unlock. Possible values are: `notConfigured`, `blocked`, `allowed`.|
|sharedUserAppDataAllowed|Boolean|Indicates whether or not to block multiple users of the same app to share data.|
|appsBlockWindowsStoreOriginatedApps|Boolean|Indicates whether or not to disable the launch of all apps from Windows Store that came pre-installed or were downloaded.|
|windowsStoreEnablePrivateStoreOnly|Boolean|Indicates whether or not to enable Private Store Only.|
|storageRestrictAppDataToSystemVolume|Boolean|Indicates whether application data is restricted to the system drive.|
|storageRestrictAppInstallToSystemVolume|Boolean|Indicates whether the installation of applications is restricted to the system drive.|
|gameDvrBlocked|Boolean|Indicates whether or not to block DVR and broadcasting.|
|experienceBlockDeviceDiscovery|Boolean|Indicates whether or not to enable device discovery UX.|
|experienceBlockErrorDialogWhenNoSIM|Boolean|Indicates whether or not to allow the error dialog from displaying if no SIM card is detected.|
|experienceBlockTaskSwitcher|Boolean|Indicates whether or not to enable task switching on the device.|
|logonBlockFastUserSwitching|Boolean|Disables the ability to quickly switch between users that are logged on simultaneously without logging off.|



## Response
If successful, this method returns a `201 Created` response code and a [windows10GeneralConfiguration](../resources/intune_deviceconfig_windows10generalconfiguration.md) object in the response body.

## Example
### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/v1.0/deviceManagement/deviceConfigurations
Content-type: application/json
Content-length: 9767

{
  "@odata.type": "#microsoft.graph.windows10GeneralConfiguration",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "enterpriseCloudPrintDiscoveryEndPoint": "Enterprise Cloud Print Discovery End Point value",
  "enterpriseCloudPrintOAuthAuthority": "Enterprise Cloud Print OAuth Authority value",
  "enterpriseCloudPrintOAuthClientIdentifier": "Enterprise Cloud Print OAuth Client Identifier value",
  "enterpriseCloudPrintResourceIdentifier": "Enterprise Cloud Print Resource Identifier value",
  "enterpriseCloudPrintDiscoveryMaxLimit": 5,
  "enterpriseCloudPrintMopriaDiscoveryResourceIdentifier": "Enterprise Cloud Print Mopria Discovery Resource Identifier value",
  "searchBlockDiacritics": true,
  "searchDisableAutoLanguageDetection": true,
  "searchDisableIndexingEncryptedItems": true,
  "searchEnableRemoteQueries": true,
  "searchDisableIndexerBackoff": true,
  "searchDisableIndexingRemovableDrive": true,
  "searchEnableAutomaticIndexSizeManangement": true,
  "diagnosticsDataSubmissionMode": "none",
  "oneDriveDisableFileSync": true,
  "smartScreenEnableAppInstallControl": true,
  "personalizationDesktopImageUrl": "https://example.com/personalizationDesktopImageUrl/",
  "personalizationLockScreenImageUrl": "https://example.com/personalizationLockScreenImageUrl/",
  "bluetoothAllowedServices": [
    "Bluetooth Allowed Services value"
  ],
  "bluetoothBlockAdvertising": true,
  "bluetoothBlockDiscoverableMode": true,
  "bluetoothBlockPrePairing": true,
  "edgeBlockAutofill": true,
  "edgeBlocked": true,
  "edgeCookiePolicy": "allow",
  "edgeBlockDeveloperTools": true,
  "edgeBlockSendingDoNotTrackHeader": true,
  "edgeBlockExtensions": true,
  "edgeBlockInPrivateBrowsing": true,
  "edgeBlockJavaScript": true,
  "edgeBlockPasswordManager": true,
  "edgeBlockAddressBarDropdown": true,
  "edgeBlockCompatibilityList": true,
  "edgeClearBrowsingDataOnExit": true,
  "edgeAllowStartPagesModification": true,
  "edgeDisableFirstRunPage": true,
  "edgeBlockLiveTileDataCollection": true,
  "edgeSyncFavoritesWithInternetExplorer": true,
  "cellularBlockDataWhenRoaming": true,
  "cellularBlockVpn": true,
  "cellularBlockVpnWhenRoaming": true,
  "defenderBlockEndUserAccess": true,
  "defenderDaysBeforeDeletingQuarantinedMalware": 12,
  "defenderDetectedMalwareActions": {
    "@odata.type": "microsoft.graph.defenderDetectedMalwareActions",
    "lowSeverity": "clean",
    "moderateSeverity": "clean",
    "highSeverity": "clean",
    "severeSeverity": "clean"
  },
  "defenderSystemScanSchedule": "everyday",
  "defenderFilesAndFoldersToExclude": [
    "Defender Files And Folders To Exclude value"
  ],
  "defenderFileExtensionsToExclude": [
    "Defender File Extensions To Exclude value"
  ],
  "defenderScanMaxCpu": 2,
  "defenderMonitorFileActivity": "disable",
  "defenderProcessesToExclude": [
    "Defender Processes To Exclude value"
  ],
  "defenderPromptForSampleSubmission": "alwaysPrompt",
  "defenderRequireBehaviorMonitoring": true,
  "defenderRequireCloudProtection": true,
  "defenderRequireNetworkInspectionSystem": true,
  "defenderRequireRealTimeMonitoring": true,
  "defenderScanArchiveFiles": true,
  "defenderScanDownloads": true,
  "defenderScanNetworkFiles": true,
  "defenderScanIncomingMail": true,
  "defenderScanMappedNetworkDrivesDuringFullScan": true,
  "defenderScanRemovableDrivesDuringFullScan": true,
  "defenderScanScriptsLoadedInInternetExplorer": true,
  "defenderSignatureUpdateIntervalInHours": 6,
  "defenderScanType": "disabled",
  "defenderScheduledScanTime": "11:59:10.9990000",
  "defenderScheduledQuickScanTime": "11:58:49.3840000",
  "defenderCloudBlockLevel": "high",
  "lockScreenAllowTimeoutConfiguration": true,
  "lockScreenBlockActionCenterNotifications": true,
  "lockScreenBlockCortana": true,
  "lockScreenBlockToastNotifications": true,
  "lockScreenTimeoutInSeconds": 10,
  "passwordBlockSimple": true,
  "passwordExpirationDays": 6,
  "passwordMinimumLength": 5,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 14,
  "passwordMinimumCharacterSetCount": 0,
  "passwordPreviousPasswordBlockCount": 2,
  "passwordRequired": true,
  "passwordRequireWhenResumeFromIdleState": true,
  "passwordRequiredType": "alphanumeric",
  "passwordSignInFailureCountBeforeFactoryReset": 12,
  "privacyAdvertisingId": "blocked",
  "privacyAutoAcceptPairingAndConsentPrompts": true,
  "privacyBlockInputPersonalization": true,
  "startBlockUnpinningAppsFromTaskbar": true,
  "startMenuAppListVisibility": "collapse",
  "startMenuHideChangeAccountSettings": true,
  "startMenuHideFrequentlyUsedApps": true,
  "startMenuHideHibernate": true,
  "startMenuHideLock": true,
  "startMenuHidePowerButton": true,
  "startMenuHideRecentJumpLists": true,
  "startMenuHideRecentlyAddedApps": true,
  "startMenuHideRestartOptions": true,
  "startMenuHideShutDown": true,
  "startMenuHideSignOut": true,
  "startMenuHideSleep": true,
  "startMenuHideSwitchAccount": true,
  "startMenuHideUserTile": true,
  "startMenuLayoutEdgeAssetsXml": "c3RhcnRNZW51TGF5b3V0RWRnZUFzc2V0c1htbA==",
  "startMenuLayoutXml": "c3RhcnRNZW51TGF5b3V0WG1s",
  "startMenuMode": "fullScreen",
  "startMenuPinnedFolderDocuments": "hide",
  "startMenuPinnedFolderDownloads": "hide",
  "startMenuPinnedFolderFileExplorer": "hide",
  "startMenuPinnedFolderHomeGroup": "hide",
  "startMenuPinnedFolderMusic": "hide",
  "startMenuPinnedFolderNetwork": "hide",
  "startMenuPinnedFolderPersonalFolder": "hide",
  "startMenuPinnedFolderPictures": "hide",
  "startMenuPinnedFolderSettings": "hide",
  "startMenuPinnedFolderVideos": "hide",
  "settingsBlockSettingsApp": true,
  "settingsBlockSystemPage": true,
  "settingsBlockDevicesPage": true,
  "settingsBlockNetworkInternetPage": true,
  "settingsBlockPersonalizationPage": true,
  "settingsBlockAccountsPage": true,
  "settingsBlockTimeLanguagePage": true,
  "settingsBlockEaseOfAccessPage": true,
  "settingsBlockPrivacyPage": true,
  "settingsBlockUpdateSecurityPage": true,
  "settingsBlockAppsPage": true,
  "settingsBlockGamingPage": true,
  "windowsSpotlightBlockConsumerSpecificFeatures": true,
  "windowsSpotlightBlocked": true,
  "windowsSpotlightBlockOnActionCenter": true,
  "windowsSpotlightBlockTailoredExperiences": true,
  "windowsSpotlightBlockThirdPartyNotifications": true,
  "windowsSpotlightBlockWelcomeExperience": true,
  "windowsSpotlightBlockWindowsTips": true,
  "windowsSpotlightConfigureOnLockScreen": "disabled",
  "networkProxyApplySettingsDeviceWide": true,
  "networkProxyDisableAutoDetect": true,
  "networkProxyAutomaticConfigurationUrl": "https://example.com/networkProxyAutomaticConfigurationUrl/",
  "networkProxyServer": {
    "@odata.type": "microsoft.graph.windows10NetworkProxyServer",
    "address": "Address value",
    "exceptions": [
      "Exceptions value"
    ],
    "useForLocalAddresses": true
  },
  "accountsBlockAddingNonMicrosoftAccountEmail": true,
  "antiTheftModeBlocked": true,
  "bluetoothBlocked": true,
  "cameraBlocked": true,
  "connectedDevicesServiceBlocked": true,
  "certificatesBlockManualRootCertificateInstallation": true,
  "copyPasteBlocked": true,
  "cortanaBlocked": true,
  "deviceManagementBlockFactoryResetOnMobile": true,
  "deviceManagementBlockManualUnenroll": true,
  "safeSearchFilter": "strict",
  "edgeBlockPopups": true,
  "edgeBlockSearchSuggestions": true,
  "edgeBlockSendingIntranetTrafficToInternetExplorer": true,
  "edgeRequireSmartScreen": true,
  "edgeEnterpriseModeSiteListLocation": "Edge Enterprise Mode Site List Location value",
  "edgeFirstRunUrl": "https://example.com/edgeFirstRunUrl/",
  "edgeSearchEngine": {
    "@odata.type": "microsoft.graph.edgeSearchEngineBase"
  },
  "edgeHomepageUrls": [
    "Edge Homepage Urls value"
  ],
  "edgeBlockAccessToAboutFlags": true,
  "smartScreenBlockPromptOverride": true,
  "smartScreenBlockPromptOverrideForFiles": true,
  "webRtcBlockLocalhostIpAddress": true,
  "internetSharingBlocked": true,
  "settingsBlockAddProvisioningPackage": true,
  "settingsBlockRemoveProvisioningPackage": true,
  "settingsBlockChangeSystemTime": true,
  "settingsBlockEditDeviceName": true,
  "settingsBlockChangeRegion": true,
  "settingsBlockChangeLanguage": true,
  "settingsBlockChangePowerSleep": true,
  "locationServicesBlocked": true,
  "microsoftAccountBlocked": true,
  "microsoftAccountBlockSettingsSync": true,
  "nfcBlocked": true,
  "resetProtectionModeBlocked": true,
  "screenCaptureBlocked": true,
  "storageBlockRemovableStorage": true,
  "storageRequireMobileDeviceEncryption": true,
  "usbBlocked": true,
  "voiceRecordingBlocked": true,
  "wiFiBlockAutomaticConnectHotspots": true,
  "wiFiBlocked": true,
  "wiFiBlockManualConfiguration": true,
  "wiFiScanInterval": 0,
  "wirelessDisplayBlockProjectionToThisDevice": true,
  "wirelessDisplayBlockUserInputFromReceiver": true,
  "wirelessDisplayRequirePinForPairing": true,
  "windowsStoreBlocked": true,
  "appsAllowTrustedAppsSideloading": "blocked",
  "windowsStoreBlockAutoUpdate": true,
  "developerUnlockSetting": "blocked",
  "sharedUserAppDataAllowed": true,
  "appsBlockWindowsStoreOriginatedApps": true,
  "windowsStoreEnablePrivateStoreOnly": true,
  "storageRestrictAppDataToSystemVolume": true,
  "storageRestrictAppInstallToSystemVolume": true,
  "gameDvrBlocked": true,
  "experienceBlockDeviceDiscovery": true,
  "experienceBlockErrorDialogWhenNoSIM": true,
  "experienceBlockTaskSwitcher": true,
  "logonBlockFastUserSwitching": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 9875

{
  "@odata.type": "#microsoft.graph.windows10GeneralConfiguration",
  "id": "a4235d71-5d71-a423-715d-23a4715d23a4",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "enterpriseCloudPrintDiscoveryEndPoint": "Enterprise Cloud Print Discovery End Point value",
  "enterpriseCloudPrintOAuthAuthority": "Enterprise Cloud Print OAuth Authority value",
  "enterpriseCloudPrintOAuthClientIdentifier": "Enterprise Cloud Print OAuth Client Identifier value",
  "enterpriseCloudPrintResourceIdentifier": "Enterprise Cloud Print Resource Identifier value",
  "enterpriseCloudPrintDiscoveryMaxLimit": 5,
  "enterpriseCloudPrintMopriaDiscoveryResourceIdentifier": "Enterprise Cloud Print Mopria Discovery Resource Identifier value",
  "searchBlockDiacritics": true,
  "searchDisableAutoLanguageDetection": true,
  "searchDisableIndexingEncryptedItems": true,
  "searchEnableRemoteQueries": true,
  "searchDisableIndexerBackoff": true,
  "searchDisableIndexingRemovableDrive": true,
  "searchEnableAutomaticIndexSizeManangement": true,
  "diagnosticsDataSubmissionMode": "none",
  "oneDriveDisableFileSync": true,
  "smartScreenEnableAppInstallControl": true,
  "personalizationDesktopImageUrl": "https://example.com/personalizationDesktopImageUrl/",
  "personalizationLockScreenImageUrl": "https://example.com/personalizationLockScreenImageUrl/",
  "bluetoothAllowedServices": [
    "Bluetooth Allowed Services value"
  ],
  "bluetoothBlockAdvertising": true,
  "bluetoothBlockDiscoverableMode": true,
  "bluetoothBlockPrePairing": true,
  "edgeBlockAutofill": true,
  "edgeBlocked": true,
  "edgeCookiePolicy": "allow",
  "edgeBlockDeveloperTools": true,
  "edgeBlockSendingDoNotTrackHeader": true,
  "edgeBlockExtensions": true,
  "edgeBlockInPrivateBrowsing": true,
  "edgeBlockJavaScript": true,
  "edgeBlockPasswordManager": true,
  "edgeBlockAddressBarDropdown": true,
  "edgeBlockCompatibilityList": true,
  "edgeClearBrowsingDataOnExit": true,
  "edgeAllowStartPagesModification": true,
  "edgeDisableFirstRunPage": true,
  "edgeBlockLiveTileDataCollection": true,
  "edgeSyncFavoritesWithInternetExplorer": true,
  "cellularBlockDataWhenRoaming": true,
  "cellularBlockVpn": true,
  "cellularBlockVpnWhenRoaming": true,
  "defenderBlockEndUserAccess": true,
  "defenderDaysBeforeDeletingQuarantinedMalware": 12,
  "defenderDetectedMalwareActions": {
    "@odata.type": "microsoft.graph.defenderDetectedMalwareActions",
    "lowSeverity": "clean",
    "moderateSeverity": "clean",
    "highSeverity": "clean",
    "severeSeverity": "clean"
  },
  "defenderSystemScanSchedule": "everyday",
  "defenderFilesAndFoldersToExclude": [
    "Defender Files And Folders To Exclude value"
  ],
  "defenderFileExtensionsToExclude": [
    "Defender File Extensions To Exclude value"
  ],
  "defenderScanMaxCpu": 2,
  "defenderMonitorFileActivity": "disable",
  "defenderProcessesToExclude": [
    "Defender Processes To Exclude value"
  ],
  "defenderPromptForSampleSubmission": "alwaysPrompt",
  "defenderRequireBehaviorMonitoring": true,
  "defenderRequireCloudProtection": true,
  "defenderRequireNetworkInspectionSystem": true,
  "defenderRequireRealTimeMonitoring": true,
  "defenderScanArchiveFiles": true,
  "defenderScanDownloads": true,
  "defenderScanNetworkFiles": true,
  "defenderScanIncomingMail": true,
  "defenderScanMappedNetworkDrivesDuringFullScan": true,
  "defenderScanRemovableDrivesDuringFullScan": true,
  "defenderScanScriptsLoadedInInternetExplorer": true,
  "defenderSignatureUpdateIntervalInHours": 6,
  "defenderScanType": "disabled",
  "defenderScheduledScanTime": "11:59:10.9990000",
  "defenderScheduledQuickScanTime": "11:58:49.3840000",
  "defenderCloudBlockLevel": "high",
  "lockScreenAllowTimeoutConfiguration": true,
  "lockScreenBlockActionCenterNotifications": true,
  "lockScreenBlockCortana": true,
  "lockScreenBlockToastNotifications": true,
  "lockScreenTimeoutInSeconds": 10,
  "passwordBlockSimple": true,
  "passwordExpirationDays": 6,
  "passwordMinimumLength": 5,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 14,
  "passwordMinimumCharacterSetCount": 0,
  "passwordPreviousPasswordBlockCount": 2,
  "passwordRequired": true,
  "passwordRequireWhenResumeFromIdleState": true,
  "passwordRequiredType": "alphanumeric",
  "passwordSignInFailureCountBeforeFactoryReset": 12,
  "privacyAdvertisingId": "blocked",
  "privacyAutoAcceptPairingAndConsentPrompts": true,
  "privacyBlockInputPersonalization": true,
  "startBlockUnpinningAppsFromTaskbar": true,
  "startMenuAppListVisibility": "collapse",
  "startMenuHideChangeAccountSettings": true,
  "startMenuHideFrequentlyUsedApps": true,
  "startMenuHideHibernate": true,
  "startMenuHideLock": true,
  "startMenuHidePowerButton": true,
  "startMenuHideRecentJumpLists": true,
  "startMenuHideRecentlyAddedApps": true,
  "startMenuHideRestartOptions": true,
  "startMenuHideShutDown": true,
  "startMenuHideSignOut": true,
  "startMenuHideSleep": true,
  "startMenuHideSwitchAccount": true,
  "startMenuHideUserTile": true,
  "startMenuLayoutEdgeAssetsXml": "c3RhcnRNZW51TGF5b3V0RWRnZUFzc2V0c1htbA==",
  "startMenuLayoutXml": "c3RhcnRNZW51TGF5b3V0WG1s",
  "startMenuMode": "fullScreen",
  "startMenuPinnedFolderDocuments": "hide",
  "startMenuPinnedFolderDownloads": "hide",
  "startMenuPinnedFolderFileExplorer": "hide",
  "startMenuPinnedFolderHomeGroup": "hide",
  "startMenuPinnedFolderMusic": "hide",
  "startMenuPinnedFolderNetwork": "hide",
  "startMenuPinnedFolderPersonalFolder": "hide",
  "startMenuPinnedFolderPictures": "hide",
  "startMenuPinnedFolderSettings": "hide",
  "startMenuPinnedFolderVideos": "hide",
  "settingsBlockSettingsApp": true,
  "settingsBlockSystemPage": true,
  "settingsBlockDevicesPage": true,
  "settingsBlockNetworkInternetPage": true,
  "settingsBlockPersonalizationPage": true,
  "settingsBlockAccountsPage": true,
  "settingsBlockTimeLanguagePage": true,
  "settingsBlockEaseOfAccessPage": true,
  "settingsBlockPrivacyPage": true,
  "settingsBlockUpdateSecurityPage": true,
  "settingsBlockAppsPage": true,
  "settingsBlockGamingPage": true,
  "windowsSpotlightBlockConsumerSpecificFeatures": true,
  "windowsSpotlightBlocked": true,
  "windowsSpotlightBlockOnActionCenter": true,
  "windowsSpotlightBlockTailoredExperiences": true,
  "windowsSpotlightBlockThirdPartyNotifications": true,
  "windowsSpotlightBlockWelcomeExperience": true,
  "windowsSpotlightBlockWindowsTips": true,
  "windowsSpotlightConfigureOnLockScreen": "disabled",
  "networkProxyApplySettingsDeviceWide": true,
  "networkProxyDisableAutoDetect": true,
  "networkProxyAutomaticConfigurationUrl": "https://example.com/networkProxyAutomaticConfigurationUrl/",
  "networkProxyServer": {
    "@odata.type": "microsoft.graph.windows10NetworkProxyServer",
    "address": "Address value",
    "exceptions": [
      "Exceptions value"
    ],
    "useForLocalAddresses": true
  },
  "accountsBlockAddingNonMicrosoftAccountEmail": true,
  "antiTheftModeBlocked": true,
  "bluetoothBlocked": true,
  "cameraBlocked": true,
  "connectedDevicesServiceBlocked": true,
  "certificatesBlockManualRootCertificateInstallation": true,
  "copyPasteBlocked": true,
  "cortanaBlocked": true,
  "deviceManagementBlockFactoryResetOnMobile": true,
  "deviceManagementBlockManualUnenroll": true,
  "safeSearchFilter": "strict",
  "edgeBlockPopups": true,
  "edgeBlockSearchSuggestions": true,
  "edgeBlockSendingIntranetTrafficToInternetExplorer": true,
  "edgeRequireSmartScreen": true,
  "edgeEnterpriseModeSiteListLocation": "Edge Enterprise Mode Site List Location value",
  "edgeFirstRunUrl": "https://example.com/edgeFirstRunUrl/",
  "edgeSearchEngine": {
    "@odata.type": "microsoft.graph.edgeSearchEngineBase"
  },
  "edgeHomepageUrls": [
    "Edge Homepage Urls value"
  ],
  "edgeBlockAccessToAboutFlags": true,
  "smartScreenBlockPromptOverride": true,
  "smartScreenBlockPromptOverrideForFiles": true,
  "webRtcBlockLocalhostIpAddress": true,
  "internetSharingBlocked": true,
  "settingsBlockAddProvisioningPackage": true,
  "settingsBlockRemoveProvisioningPackage": true,
  "settingsBlockChangeSystemTime": true,
  "settingsBlockEditDeviceName": true,
  "settingsBlockChangeRegion": true,
  "settingsBlockChangeLanguage": true,
  "settingsBlockChangePowerSleep": true,
  "locationServicesBlocked": true,
  "microsoftAccountBlocked": true,
  "microsoftAccountBlockSettingsSync": true,
  "nfcBlocked": true,
  "resetProtectionModeBlocked": true,
  "screenCaptureBlocked": true,
  "storageBlockRemovableStorage": true,
  "storageRequireMobileDeviceEncryption": true,
  "usbBlocked": true,
  "voiceRecordingBlocked": true,
  "wiFiBlockAutomaticConnectHotspots": true,
  "wiFiBlocked": true,
  "wiFiBlockManualConfiguration": true,
  "wiFiScanInterval": 0,
  "wirelessDisplayBlockProjectionToThisDevice": true,
  "wirelessDisplayBlockUserInputFromReceiver": true,
  "wirelessDisplayRequirePinForPairing": true,
  "windowsStoreBlocked": true,
  "appsAllowTrustedAppsSideloading": "blocked",
  "windowsStoreBlockAutoUpdate": true,
  "developerUnlockSetting": "blocked",
  "sharedUserAppDataAllowed": true,
  "appsBlockWindowsStoreOriginatedApps": true,
  "windowsStoreEnablePrivateStoreOnly": true,
  "storageRestrictAppDataToSystemVolume": true,
  "storageRestrictAppInstallToSystemVolume": true,
  "gameDvrBlocked": true,
  "experienceBlockDeviceDiscovery": true,
  "experienceBlockErrorDialogWhenNoSIM": true,
  "experienceBlockTaskSwitcher": true,
  "logonBlockFastUserSwitching": true
}
```



