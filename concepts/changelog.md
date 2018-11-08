# Changelog for Microsoft Graph

This changelog covers what's changed in Microsoft Graph, including the v1.0 and beta endpoint Microsoft Graph APIs.

For details about known issues with Microsoft Graph APIs, see [Known issues](known_issues.md).

## October 2018

### Delta query

| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Change      | v1.0 and beta   | Alternative behavior to return changed properties only in JSON response for [users](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/user_delta) and [groups](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/group_delta). |


### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the **licenseAssignmentStates** property to the [User](../api-reference/beta/resources/user.md) entity for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|
| Addition | Beta | Added the **licenseAssignmentState** resource for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|
| Addition | Beta | Added the **assignedLicenses**, **licenseProcessingState**, **hasMembersWithLicenseErrors** and **membersWithLicenseErrors** properties to [Group](/api-reference/beta/resources/group.md) entity for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|


### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[intuneBrandingProfile](/api-reference/beta/resources/intune_wip_intunebrandingprofile.md)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceAndAppManagementAssignedRoleIds](/api-reference/beta/resources/intune_rbac_deviceandappmanagementassignedroleids.md)<br/>|
|Addition|beta|Added new enum types:<br/>[applicationGuardEnabledOptions](/api-reference/beta/resources/intune_deviceconfig_applicationguardenabledoptions.md)<br/>[autoRestartNotificationDismissalMethod](/api-reference/beta/resources/intune_deviceconfig_autorestartnotificationdismissalmethod.md)<br/>[meteredConnectionLimitType](/api-reference/beta/resources/intune_deviceconfig_meteredconnectionlimittype.md)<br/>|
|Addition|beta|Added the [enableLegacyPcManagement](/api-reference/beta/api/intune_deviceconfig_devicemanagement_enablelegacypcmanagement.md) action on [deviceManagement](/api-reference/beta/resources/intune_androidforwork_devicemanagement.md) |
|Addition|beta|Added the [extendFeatureUpdatesPause](/api-reference/beta/api/intune_deviceconfig_windowsupdateforbusinessconfiguration_extendfeatureupdatespause.md) action on [windowsUpdateForBusinessConfiguration](/api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) |
|Addition|beta|Added the [extendQualityUpdatesPause](/api-reference/beta/api/intune_deviceconfig_windowsupdateforbusinessconfiguration_extendqualityupdatespause.md) action on [windowsUpdateForBusinessConfiguration](/api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) |
|Addition|beta|Added the [unassignUserFromDevice](/api-reference/beta/api/intune_enrollment_windowsautopilotdeviceidentity_unassignuserfromdevice.md) action on [windowsAutopilotDeviceIdentity](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeviceidentity.md) |
|Addition|beta|Added the [getAssignedRoleIdsForLoggedInUser](/api-reference/beta/api/intune_rbac_devicemanagement_getassignedroleidsforloggedinuser.md) function on [deviceManagement](/api-reference/beta/resources/intune_androidforwork_devicemanagement.md) |
|Addition|beta|Added the [getManagedDevicesWithAppFailures](/api-reference/beta/api/intune_troubleshooting_user_getmanageddeviceswithappfailures.md) function on [user](/api-reference/beta/resources/intune_devices_user.md) |
|Addition|beta|Added the [managedDeviceEnrollmentAbandonmentSummary](/api-reference/beta/api/intune_troubleshooting_reportroot_manageddeviceenrollmentabandonmentsummary.md) function on [reportRoot](/api-reference/beta/resources/intune_deviceconfig_reportroot.md) |
|Addition|beta|Added the [managedDeviceEnrollmentAbandonmentDetails](/api-reference/beta/api/intune_troubleshooting_reportroot_manageddeviceenrollmentabandonmentdetails.md) function on [reportRoot](/api-reference/beta/resources/intune_deviceconfig_reportroot.md) |
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidForWorkCertificateProfileBase](/api-reference/beta/resources/intune_deviceconfig_androidforworkcertificateprofilebase.md) entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidForWorkPkcsCertificateProfile](/api-reference/beta/resources/intune_deviceconfig_androidforworkpkcscertificateprofile.md) entity|
|Addition|beta|Added the **certificateStore**, **customSubjectAlternativeNames** and **subjectAlternativeNameType** properties to the [androidForWorkScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkscepcertificateprofile.md) entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidWorkProfileCertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md) entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidWorkProfilePkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilepkcscertificateprofile.md) entity|
|Addition|beta|Added the **certificateStore**, **customSubjectAlternativeNames** and **subjectAlternativeNameType** properties to the [androidWorkProfileScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md) entity|
|Addition|beta|Added the **legacyPcManangementEnabled** property to the [deviceManagement](/api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Deletion|beta|Removed the **pinRequiredOnLaunchInsteadOfBiometric** property from the [managedAppProtection](/api-reference/beta/resources/intune_mam_managedappprotection.md) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [managedDeviceMobileAppConfiguration](/api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) entity|
|Addition|beta|Added the **applicationGuardEnabledOptions** property to the [windows10EndpointProtectionConfiguration](/api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity|
|Addition|beta|Added the **selectedMobileAppIds** property to the [windows10EnrollmentCompletionPageConfiguration](/api-reference/beta/resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md) entity|
|Addition|beta|Added the **engagedRestartDeadlineInDays**, **engagedRestartSnoozeScheduleInDays**, **engagedRestartTransitionScheduleInDays**, **autoRestartNotificationDismissal**, **scheduleRestartWarningInHours** and **scheduleImminentRestartWarningInMinutes** properties to the [windowsUpdateForBusinessConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) entity|
|Addition|beta|Added the **preSharedKey** and **meteredConnectionLimit** properties to the [windowsWifiConfiguration](/api-reference/beta/resources/intune_deviceconfig_windowswificonfiguration.md) entity|
|Addition|beta|Added the **intuneBrandingProfiles** navigation property to the [deviceManagement](/api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Addition|beta|Added the **v6_0**, **v7_0**, **v7_1**, **v8_0**, **v8_1** and **v9_0** properties to the [androidMinimumOperatingSystem](../api-reference/beta/resources/intune_apps_androidminimumoperatingsystem.md) complex type|
|Addition|beta|Added the **v12_0** property to the [iosMinimumOperatingSystem](../api-reference/beta/resources/intune_apps_iosminimumoperatingsystem.md) complex type|
|Deletion|beta|Removed the **runAsLoggedOnUser** property from the [win32LobAppPowerShellScriptDetection](/api-reference/beta/resources/intune_apps_win32lobapppowershellscriptdetection.md) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [osVersionCount](/api-reference/beta/resources/intune_devices_osversioncount.md) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareCategoryCount](/api-reference/beta/resources/intune_devices_windowsmalwarecategorycount.md) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareExecutionStateCount](/api-reference/beta/resources/intune_devices_windowsmalwareexecutionstatecount.md) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareNameCount](/api-reference/beta/resources/intune_devices_windowsmalwarenamecount.md) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareStateCount](/api-reference/beta/resources/intune_devices_windowsmalwarestatecount.md) complex type|

### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added application permissions support to [archive team](/api-reference/beta/api/team_archive.md) and [unarchive team](../api-reference/beta/api/team_unarchive.md) APIs.|

### Outlook calendar

| Change type | Version | Description |
| :---------- | :-------| :---------- |
| Change      | Beta    | Removed he `iCalUid` property from the [event resource](/api-reference/beta/resources/event.md) and added the `uid` property to the `event` resource. The `uid` property serves the same purpose as the removed `iCalUid` property. |
| Addition    | Beta    | Added the [translateExchangeIds](/api-reference/beta/api/user_translateexchangeids.md) function to translate identifiers of Outlook-related resources between formats. |

### Outlook contacts

| Change type | Version | Description |
| :---------- | :-------| :---------- |
| Addition    | Beta    | Added the [translateExchangeIds](/api-reference/beta/api/user_translateexchangeids.md) function to translate identifiers of Outlook-related resources between formats. |
| Removal         | v1.0        | This is a correction to the documentation: removed the **flag** property from the [contact](../api-reference/v1.0/resources/contact.md) entity topic. The property was never made available in the **contact** entity.|

### Outlook mail

| Change type | Version | Description |
| :---------- | :-------| :---------- |
| Addition    | Beta    | Added the [translateExchangeIds](/api-reference/beta/api/user_translateexchangeids.md) function to translate identifiers of Outlook-related resources between formats. |

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the **Site ID** property to [getSharePointSiteUsageDetail](/api-reference/v1.0/api/reportroot_getsharepointsiteusagedetail.md). |

### Synchronization APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added **readOnly** property to [directorydefinition](../api-reference/beta/resources/synchronization_directorydefinition.md) to inform clients clients if a directory definition can be altered.|


## September 2018

### Calls and online meetings API

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | The [application](/api-reference/beta/resources/application.md) resource was updated to add a calls collection. |
| Change          | Beta        | The [operation](/api-reference/beta/resources/operation.md) resource was updated to support long-running calls and meetings APIs. |
| Addition        | Beta        | Added the [call](/api-reference/beta/resources/call.md) resource for managing audio/video calls (initially, in Microsoft Teams), including APIs for [creating calls](/api-reference/beta/api/application_post_calls.md), [retrieving a a call](../api-reference/beta/api/call_get.md), [deleting (hanging up) a call](/api-reference/beta/api/call_delete.md), [answering a call](../api-reference/beta/api/call_answer.md), [rejecting a call](/api-reference/beta/api/call_reject.md), [redirecting a call](../api-reference/beta/api/call_redirect.md), and [transferring a call](/api-reference/beta/api/call_transfer.md). We've also added APIs to support [IVR scenarios](/api-reference/beta/resources/calls-api-ivr-overview): [playing a prompt](../api-reference/beta/api/call_playprompt.md), [recording a call](/api-reference/beta/api/call_record.md), [cancel media processing](../api-reference/beta/api/call_cancelmediaprocessing.md), and [subscribing to touch tone notifications](/api-reference/beta/api/call_subscribetotone.md). |
| Addition        | Beta        | Added the [participant](../api-reference/beta/resources/call.md) resource and APIs for managing the participants in audio/video calls and meetings, including [retrieving a participant object](/api-reference/beta/api/participant_get.md), [configuring the audio mixer for a participant](../api-reference/beta/api/participant_configuremixer.md), muting [one](../api-reference/beta/api/participant_mute.md) or [all](/api-reference/beta/api/participant_muteall.md) of the participants, [retrieving a list of the participants](../api-reference/beta/api/call_list_participants.md) in a call/meeting, and [inviting participants](/api-reference/beta/api/participant_invite.md) to a call/meeting. |
| Addition        | Beta        | Added APIs for applications to manage and participate in calls and meetings, including the ability to [share content](../api-reference/beta/api/call_changescreensharingrole.md), [mute and unmute itself](../api-reference/beta/api/call_unmute.md), and [update the metadata associated with a call](../api-reference/beta/api/call_updatemetadata.md). |
| Addition        | Beta        | Added the [audio routing group](../api-reference/beta/resources/audioroutinggroup.md) resource and APIs for managing private audio routes between participants in a multiparty conversation, including [creating audio routing groups](../api-reference/beta/api/call_post_audioroutinggroups.md), [retrieving a list of them](../api-reference/beta/api/audioroutinggroup_get.md), and [updating](../api-reference/beta/api/audioroutinggroup_update.md) and [deleting](../api-reference/beta/api/audioroutinggroup_delete.md) them. |
| Addition        | Beta        | Added the [online meeting](../api-reference/beta/resources/audioroutinggroup.md) resource and APIs for managing Microsoft Teams online meetings. Initially, there is only one API for online meetings, to [retrieve an online meeting object](../api-reference/beta/api/onlinemeeting_get.md). A related resource for the [audio conference information](../api-reference/beta/resources/audioconferencing.md) associated with a meeting (e.g. dial-in URL, passcodes, and phone numbers) was also added. |
| Addition        | Beta        | Many of the calls and meetings APIs take time to complete, so resources for these long-running operations were added: [calling-specific operations](../api-reference/beta/resources/commsoperation.md), [playing audio prompts](../api-reference/beta/resources/playpromptoperation.md), and [recording](../api-reference/beta/resources/recordoperation.md).  |

### Dynamics 365 Business Central API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added financials APIs for Dynamics 365 Business Central. For details, see the [Financials API reference](../api-reference/beta/resources/dynamics_graph_reference.md)

### Microsoft Graph data connect

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition         | Not applicable| Introduced the ability to access Office 365 data in bulk. For details, see [Microsoft Graph data connect (preview)](data-connect-overview.md).|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added the [assign](../api-reference/v1.0/api/intune_apps_manageddevicemobileappconfiguration_assign.md) action on [managedDeviceMobileAppConfiguration](../api-reference/v1.0/resources/intune_apps_manageddevicemobileappconfiguration.md) |
|Addition|beta|Added new entities:<br/>[officeClientConfiguration](../api-reference/beta/resources/intune_cirrus_officeclientconfiguration.md)<br/>[officeClientConfigurationAssignment](../api-reference/beta/resources/intune_cirrus_officeclientconfigurationassignment.md)<br/>[officeConfiguration](../api-reference/beta/resources/intune_cirrus_officeconfiguration.md)<br/>[windowsOfficeClientConfiguration](../api-reference/beta/resources/intune_cirrus_windowsofficeclientconfiguration.md)<br/>[windowsOfficeClientSecurityConfiguration](../api-reference/beta/resources/intune_cirrus_windowsofficeclientsecurityconfiguration.md)<br/>|
|Addition|beta|Added new complex types:<br/>[officeClientCheckinStatus](../api-reference/beta/resources/intune_cirrus_officeclientcheckinstatus.md)<br/>[officeConfigurationAssignmentTarget](../api-reference/beta/resources/intune_cirrus_officeconfigurationassignmenttarget.md)<br/>[officeConfigurationGroupAssignmentTarget](../api-reference/beta/resources/intune_cirrus_officeconfigurationgroupassignmenttarget.md)<br/>[officeUserCheckinSummary](../api-reference/beta/resources/intune_cirrus_officeusercheckinsummary.md)<br/>|
|Addition|beta|Added the [assign](../api-reference/beta/api/intune_cirrus_officeclientconfiguration_assign.md) action on [officeClientConfiguration](../api-reference/beta/resources/intune_cirrus_officeclientconfiguration.md) |
|Addition|beta|Added the **updatePrioritie** action on [officeClientConfiguration](../api-reference/beta/resources/intune_cirrus_officeclientconfiguration.md) collection |
|Addition|beta|Added new entities:<br/>[deviceConfigurationConflictSummary](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationconflictsummary.md)<br/>[importedWindowsAutopilotDeviceIdentityUpload](../api-reference/beta/resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md)<br/>[win32LobApp](../api-reference/beta/resources/intune_apps_win32lobapp.md)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceConfigurationTargetedUserAndDevice](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationtargeteduseranddevice.md)<br/>[win32LobAppDetection](../api-reference/beta/resources/intune_apps_win32lobappdetection.md)<br/>[win32LobAppFileSystemDetection](../api-reference/beta/resources/intune_apps_win32lobappfilesystemdetection.md)<br/>[win32LobAppInstallExperience](../api-reference/beta/resources/intune_apps_win32lobappinstallexperience.md)<br/>[win32LobAppMsiInformation](../api-reference/beta/resources/intune_apps_win32lobappmsiinformation.md)<br/>[win32LobAppPowerShellScriptDetection](../api-reference/beta/resources/intune_apps_win32lobapppowershellscriptdetection.md)<br/>[win32LobAppProductCodeDetection](../api-reference/beta/resources/intune_apps_win32lobappproductcodedetection.md)<br/>[win32LobAppRegistryDetection](../api-reference/beta/resources/intune_apps_win32lobappregistrydetection.md)<br/>[win32LobAppReturnCode](../api-reference/beta/resources/intune_apps_win32lobappreturncode.md)<br/>[windows10AppsForceUpdateSchedule](../api-reference/beta/resources/intune_deviceconfig_windows10appsforceupdateschedule.md)<br/>|
|Addition|beta|Added new enum types:<br/>[administratorConfiguredDeviceComplianceState](../api-reference/beta/resources/intune_deviceconfig_administratorconfigureddevicecompliancestate.md)<br/>[importedWindowsAutopilotDeviceIdentityUploadStatus](../api-reference/beta/resources/intune_enrollment_importedwindowsautopilotdeviceidentityuploadstatus.md)<br/>[microsoftStoreForBusinessPortalSelectionOptions](../api-reference/beta/resources/intune_onboarding_microsoftstoreforbusinessportalselectionoptions.md)<br/>[win32LobAppDetectionOperator](../api-reference/beta/resources/intune_apps_win32lobappdetectionoperator.md)<br/>[win32LobAppFileSystemDetectionType](../api-reference/beta/resources/intune_apps_win32lobappfilesystemdetectiontype.md)<br/>[win32LobAppMsiPackageType](../api-reference/beta/resources/intune_apps_win32lobappmsipackagetype.md)<br/>[win32LobAppRegistryDetectionType](../api-reference/beta/resources/intune_apps_win32lobappregistrydetectiontype.md)<br/>[win32LobAppReturnCodeType](../api-reference/beta/resources/intune_apps_win32lobappreturncodetype.md)<br/>[windows10AppsUpdateRecurrence](../api-reference/beta/resources/intune_deviceconfig_windows10appsupdaterecurrence.md)<br/>[windowsAppStartLayoutTileSize](../api-reference/beta/resources/intune_deviceconfig_windowsappstartlayouttilesize.md)<br/>[windowsAutopilotProfileAssignmentDetailedStatus](../api-reference/beta/resources/intune_enrollment_windowsautopilotprofileassignmentdetailedstatus.md)<br/>|
|Addition|beta|Added the **overrideComplianceState** action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
|Addition|beta|Added the **getTargetedUsersAndDevices** action on [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) collection |
|Addition|beta|Added the [autopilotDeviceStream](../api-reference/beta/api/intune_enrollment_importedwindowsautopilotdeviceidentityupload_autopilotdevicestream.md) function on [importedWindowsAutopilotDeviceIdentityUpload](../api-reference/beta/resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md) |
|Addition|beta|Added the **restrictedApps** property to the [androidCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidcompliancepolicy.md) entity|
|Addition|beta|Added the **tokenCreationDateTime** property to the [androidDeviceOwnerEnrollmentProfile](../api-reference/beta/resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md) entity|
|Deletion|beta|Removed the **restrictedApps** property from the [androidForWorkCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidforworkcompliancepolicy.md) entity|
|Deletion|beta|Removed the **restrictedApps** property from the [androidWorkProfileCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilecompliancepolicy.md) entity|
|Change|beta|Changed the following properties on the [appleVpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_applevpnconfiguration.md) entity:<br/>**enablePerApp** from required to optional<br/>|
|Addition|beta|Added the **disableProtectionOfManagedOutboundOpenInData** and **protectInboundDataFromUnknownSources** properties to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Addition|beta|Added the **microsoftStoreForBusinessPortalSelection** property to the [deviceAppManagement](../api-reference/beta/resources/intune_shared_deviceappmanagement.md) entity|
|Addition|beta|Added the **passcodeMinutesOfInactivityBeforeScreenTimeout** property to the [iosCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_ioscompliancepolicy.md) entity|
|Addition|beta|Added the **useOAuth** property to the [iosEasEmailProfileConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioseasemailprofileconfiguration.md) entity|
|Addition|beta|Added the **kioskModeBlockVolumeButtons**, **classroomForceRequestPermissionToLeaveClasses**, **keychainBlockCloudSync**, **pkiBlockOTAUpdates**, **privacyForceLimitAdTracking**, **enterpriseBookBlockBackup**, **enterpriseBookBlockMetadataSync**, **airPrintBlocked**, **airPrintBlockCredentialsStorage**, **airPrintForceTrustedTLS**, **airPrintBlockiBeaconDiscovery**, **blockSystemAppRemoval** and **vpnBlockCreation** properties to the [iosGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity|
|Addition|beta|Added the **disableProtectionOfManagedOutboundOpenInData** and **protectInboundDataFromUnknownSources** properties to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity|
|Addition|beta|Added the **gatekeeperAllowedAppSource** property to the [macOSCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_macoscompliancepolicy.md) entity|
|Addition|beta|Added the **keychainBlockCloudSync**, **airPrintBlocked**, **airPrintForceTrustedTLS** and **airPrintBlockiBeaconDiscovery** properties to the [macOSGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_macosgeneraldeviceconfiguration.md) entity|
|Addition|beta|Added the **deviceModel** and **deviceManufacturer** properties to the [managedAppRegistration](../api-reference/beta/resources/intune_mam_managedappregistration.md) entity|
|Addition|beta|Added the **enabledForScopeValidation** property to the [resourceOperation](../api-reference/beta/resources/intune_rbac_resourceoperation.md) entity|
|Addition|beta|Added the **claimTokenManagementFromExternalMdm** property to the [vppToken](../api-reference/beta/resources/intune_onboarding_vpptoken.md) entity|
|Addition|beta|Added the **windows10AppsForceUpdateSchedule** property to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Addition|beta|Added the **deploymentProfileAssignmentDetailedStatus** property to the [windowsAutopilotDeviceIdentity](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeviceidentity.md) entity|
|Addition|beta|Added the **deviceConfigurationConflictSummary** and **importedWindowsAutopilotDeviceIdentityUploads** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity|
|Addition|beta|Added the **intendedDeploymentProfile** navigation property to the [windowsAutopilotDeviceIdentity](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeviceidentity.md) entity|
|Addition|beta|Added the **startLayoutTileSize** and **name** properties to the [windowsKioskAppBase](../api-reference/beta/resources/intune_deviceconfig_windowskioskappbase.md) complex type|
|Addition|beta|Added the **desktopApplicationId** and **desktopApplicationLinkPath** properties to the [windowsKioskDesktopApp](../api-reference/beta/resources/intune_deviceconfig_windowskioskdesktopapp.md) complex type|
|Deletion|beta|Removed the **name** property from the [windowsKioskDesktopApp](../api-reference/beta/resources/intune_deviceconfig_windowskioskdesktopapp.md) complex type|
|Addition|beta|Added the **disallowDesktopApps** property to the [windowsKioskMultipleApps](../api-reference/beta/resources/intune_deviceconfig_windowskioskmultipleapps.md) complex type|
|Change|beta|Changed the following properties on the [windowsKioskMultipleApps](../api-reference/beta/resources/intune_deviceconfig_windowskioskmultipleapps.md) complex type:<br/>**startMenuLayoutXml** from required to optional<br/>|
|Addition|beta|Added the **v10_1607**, **v10_1703**, **v10_1709** and **v10_1803** properties to the [windowsMinimumOperatingSystem](../api-reference/beta/resources/intune_apps_windowsminimumoperatingsystem.md) complex type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidWorkProfileVpnConnectionType](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilevpnconnectiontype.md) enum type|
|Addition|beta|Added the **remoteLock** member to the [deviceComplianceActionType](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceactiontype.md) enum type|


### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added API for [Tabs](../api-reference/beta/resources/teamstab.md).|
|Addition|beta|Added API for [publishing apps for your organization](../api-reference/beta/resources/teamscatalogapp.md).|
|Addition|beta|Added application permissions support to [GET /teams/{id}](../api-reference/beta/api/team_get.md). |
|Addition|beta|Added application permissions support to [GET /teams/{id}/channels](../api-reference/beta/api/group_list_channels.md). |
|Addition|beta|Added application permissions support to [GET /teams/{id}/channels/{id}](../api-reference/beta/api/channel_get.md). |
|Addition|beta|Added application permissions support to [PUT /groups/{id}/team](../api-reference/beta/api/team_put_teams.md). |
|Addition|beta|Added application permissions support to [PATCH /teams/{id}](../api-reference/beta/api/team_update.md). |
|Addition|beta|Added application permissions support to [Create channel](../api-reference/beta/api/group_post_channels.md), [Update channel](../api-reference/beta/api/channel_patch.md), and [Delete channel](../api-reference/beta/api/channel_delete.md). |
|Deletion|beta| Removed isBlocks and installedState properties from [teamsApp](../api-reference/beta/resources/teamsapp.md).|
|Change| beta | The context property on [teamsApp](../api-reference/beta/resources/teamsapp.md) has been renamed to distributionMethod.|

### Outlook mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | The **internetMessageHeaders** property of the [message](../api-reference/v1.0/resources/message.md) entity is now writeable on message creation. |


### Project Rome notifications API

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition          | Beta        | Added the [notification](../api-reference/beta/resources/projectrome_notification.md) resource type. |
| Addition          | Beta        | Added the [Create and publish notification] (../api-reference/beta/api/projectrome_notification_post.md) API.|

### Security APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added the Secure Score APIs to the [security API](../api-reference/beta/resources/securescore-api-overview.md), including the following resources and operations:<br/>[secureScores](../api-reference/beta/resources/securescores.md) (and related entities)<br/>[List secureScores](../api-reference/beta/api/securescores_list.md)<br/>[secureScoreControlProfiles](../api-reference/beta//resources/securescorecontrolprofiles.md)<br/>[List secureScoreControlProfiles](../api-reference/beta/api/securescorecontrolprofiles_list.md)<br/>[Update secureScoreControlProfiles](../api-reference/beta/api/securescorecontrolprofiles_update.md)


### OneDrive and SharePoint APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **deferCommit** argument to the [createUploadSession](../api-reference/beta/api/driveitem_createuploadsession.md) action on [driveItem](../api-reference/beta/resources/driveitem.md)|
| Addition        | Beta        | Added the [storagePlanInformation](../api-reference/beta/resources/storagePlanInformation.md) complex type |
| Addition        | Beta        | Added the **storagePlanInformation** property to the [quota](../api-reference/beta/resources/quota.md) complex type |
| Addition        | Beta        | Added the **following** navigation property to the [drive](../api-reference/beta/resources/drive.md) entity |
| Addition        | Beta        | Added the [follow](../api-reference/beta/api/driveItem_follow.md) action on [driveItem](../api-reference/beta/resources/driveItem.md) |
| Addition        | Beta        | Added the [unfollow](../api-reference/beta/api/driveItem_unfollow.md) API |
| Addition        | Beta        | Added the **hasPassword** property to the [permission](../api-reference/beta/resources/permission.md) entity |
| Addition        | Beta        | Added the **preventsDownload** property to the [sharingLink](../api-reference/beta/resources/sharingLink.md) complex type |
| Addition        | Beta        | Added the **permission** navigation property to the [sharedDriveItem](../api-reference/beta/resources/sharedDriveItem.md) entity |
| Addition        | Beta        | Added the **geolocation** property to the [columnDefinition](../api-reference/beta/resources/columnDefinition.md) entity |
| Addition        | Beta        | Added the [geolocationColumn](../api-reference/beta/resources/geolocationColumn.md) complex type |
| Addition        | Beta        | Added the **analytics** property to the [driveItem](../api-reference/beta/resources/driveItem.md) entity |
| Addition        | Beta        | Added the **analytics** property to the [site](../api-reference/beta/resources/site.md) entity |
| Addition        | Beta        | Added the **analytics** property to the [listItem](../api-reference/beta/resources/listItem.md) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [driveItem](../api-reference/beta/resources/driveItem.md) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [site](../api-reference/beta/resources/site.md) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [listItem](../api-reference/beta/resources/listItem.md) entity |
| Addition        | Beta        | Added the [itemAnalytics](../api-reference/beta/resources/itemAnalytics.md) entity |
| Addition        | Beta        | Added the [itemActivityStat](../api-reference/beta/resources/itemActivity.md) entity |
| Addition        | Beta        | Added the [itemActionStat](../api-reference/beta/resources/itemActionStat.md) complex type |
| Addition        | Beta        | Added the [accessAction](../api-reference/beta/resources/accessAction.md) complex type |
| Addition        | Beta        | Added the [incompleteData](../api-reference/beta/resources/incompleteData.md) complex type |
| Addition        | Beta        | Added the **access** property to the [itemActivity](../api-reference/beta/resources/itemActivity.md) complex type |
| Addition        | Beta        | Added the **location** property to the [itemActivity](../api-reference/beta/resources/itemActivity.md) complex type |
| Addition        | v1.0        | Added the **preview** action on the [driveItem](../api-reference/v1.0/resources/driveItem.md) entity |
| Addition        | v1.0        | Added the [itemPreviewInfo](../api-reference/v1.0/resources/itemPreviewInfo.md) complex type |

## August 2018

### Delta query

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added [delta query](../concepts/delta_query_overview.md(../concepts/delta_query_overview capability for the following entities in Azure AD:<br/>[application](../api-reference/beta/api/application_delta.md)<br/>[directoryRole](../api-reference/beta/api/directoryRole_delta.md)<br/>[servicePrincipal](../api-reference/beta/api/serviceprincipal_delta.md) |

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added  isMultipleDataLocationsForServicesEnabled property to [Organization](../api-reference/beta/resources/organization.md) resource that allows apps to verify that tenant is enabled for Multi-Geo capabilities. Added preferredDataLocation property to [user](../api-reference/beta/resources/user.md) and [group](../api-reference/beta/resources/group.md) resources that allow setting preferred data location for a user and group.|
| Addition | v1.0 | Added  [onPremisesProvisioningErrors](../api-reference/v1.0/resources/onpremisesprovisioningerror.md) property to the [User](../api-reference/v1.0/resources/user.md) and [Group](../api-reference/v1.0/resources/group.md) entities that represents directory synchronization errors when synchronizing on-premises directories to Azure Active Directory when using Microsoft synchronization product (including Azure AD Connect, DirSync and MIM + Connector).|
| Addition | v1.0 | Added  [onPremisesExtensionAttributes](../api-reference/v1.0/resources/onpremisesextensionattributes.md) property to the [User](../api-reference/v1.0/resources/user.md) entity that contains fifteen custom extension attribute properties. For an onPremisesSyncEnabled user, this set of properties is mastered in on-premises Active Directory and synchronized to Azure AD, and is read-only. For a cloud-only user (where onPremisesSyncEnabled is false), these properties may be set during creation or update.|
|Addition|v1.0|Added the **onPremisesDomainName**, **onPremisesSamAccountName**, and **onPremisesUserPrincipalName** properties to the [User](../api-reference/v1.0/resources/user.md) entity|

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[androidWorkProfileCompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_androidworkprofilecompliancepolicy.md)<br/>[androidWorkProfileCustomConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_androidworkprofilecustomconfiguration.md)<br/>[androidWorkProfileGeneralDeviceConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_androidworkprofilegeneraldeviceconfiguration.md)<br/>|
|Addition|v1.0|Added new enum types:<br/>[androidWorkProfileCrossProfileDataSharingType](../api-reference/v1.0/resources/intune_deviceconfig_androidworkprofilecrossprofiledatasharingtype.md)<br/>[androidWorkProfileDefaultAppPermissionPolicyType](../api-reference/v1.0/resources/intune_deviceconfig_androidworkprofiledefaultapppermissionpolicytype.md)<br/>[androidWorkProfileRequiredPasswordType](../api-reference/v1.0/resources/intune_deviceconfig_androidworkprofilerequiredpasswordtype.md)<br/>|
|Addition|v1.0|Added the [managedDeviceEnrollmentFailureDetails](../api-reference/v1.0/api/intune_shared_reportroot_manageddeviceenrollmentfailuredetails.md) function on [reportRoot](../api-reference/v1.0/resources/intune_shared_reportroot.md) |
|Addition|v1.0|Added the [managedDeviceEnrollmentTopFailures](../api-reference/v1.0/api/intune_shared_reportroot_manageddeviceenrollmenttopfailures.md) function on [reportRoot](../api-reference/v1.0/resources/intune_shared_reportroot.md) |
|Addition|v1.0|Added the **kioskModeBuiltInAppId** property to the [iosGeneralDeviceConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity|
|Addition|v1.0|Added the **notAssigned** member to the [complianceStatus](../api-reference/v1.0/resources/intune_shared_compliancestatus.md) enum type|
|Addition|v1.0|Added the **pushNotification** member to the [deviceComplianceActionType](../api-reference/v1.0/resources/intune_deviceconfig_devicecomplianceactiontype.md) enum type|
|Addition|v1.0|Added the **userAbandonment** member to the [deviceEnrollmentFailureReason](../api-reference/v1.0/resources/intune_troubleshooting_deviceenrollmentfailurereason.md) enum type|
|Addition|v1.0|Added the **compromised** and **misconfigured** members to the [managedDevicePartnerReportedHealthState](../api-reference/v1.0/resources/intune_devices_manageddevicepartnerreportedhealthstate.md) enum type|
|Addition|v1.0|Added the **assignedToExternalMDM** member to the [vppTokenState](../api-reference/v1.0/resources/intune_onboarding_vpptokenstate.md) enum type|
||
|Addition|beta|Added new entities:<br/>[advancedThreatProtectionOnboardingDeviceSettingState](../api-reference/beta/resources/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate.md)<br/>[advancedThreatProtectionOnboardingStateSummary](../api-reference/beta/resources/intune_deviceconfig_advancedthreatprotectiononboardingstatesummary.md)<br/>[depEnrollmentBaseProfile](../api-reference/beta/resources/intune_enrollment_depenrollmentbaseprofile.md)<br/>[depEnrollmentProfile](../api-reference/beta/resources/intune_enrollment_depenrollmentprofile.md)<br/>[depIOSEnrollmentProfile](../api-reference/beta/resources/intune_enrollment_depiosenrollmentprofile.md)<br/>[depMacOSEnrollmentProfile](../api-reference/beta/resources/intune_enrollment_depmacosenrollmentprofile.md)<br/>[enrollmentProfile](../api-reference/beta/resources/intune_enrollment_enrollmentprofile.md)<br/>[importedAppleDeviceIdentity](../api-reference/beta/resources/intune_enrollment_importedappledeviceidentity.md)<br/>[importedAppleDeviceIdentityResult](../api-reference/beta/resources/intune_enrollment_importedappledeviceidentityresult.md)<br/>[importedWindowsAutopilotDeviceIdentityUpload](../api-reference/beta/resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md)<br/>[roleScopeTag](../api-reference/beta/resources/intune_rbac_rolescopetag.md)<br/>[windowsIdentityProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsidentityprotectionconfiguration.md)<br/>|
|Addition|beta|Added new complex types:<br/>[configurationManagerClientHealthState](../api-reference/beta/resources/intune_devices_configurationmanagerclienthealthstate.md)<br/>[customSubjectAlternativeName](../api-reference/beta/resources/intune_deviceconfig_customsubjectalternativename.md)<br/>[deviceManagementUserRightsLocalUserOrGroup](../api-reference/beta/resources/intune_deviceconfig_devicemanagementuserrightslocaluserorgroup.md)<br/>[deviceManagementUserRightsSetting](../api-reference/beta/resources/intune_deviceconfig_devicemanagementuserrightssetting.md)<br/>[managementCertificateWithThumbprint](../api-reference/beta/resources/intune_enrollment_managementcertificatewiththumbprint.md)<br/>[mobileAppSupportedDeviceType](../api-reference/beta/resources/intune_troubleshooting_mobileappsupporteddevicetype.md)<br/>[osVersionCount](../api-reference/beta/resources/intune_devices_osversioncount.md)<br/>[windowsMalwareCategoryCount](../api-reference/beta/resources/intune_devices_windowsmalwarecategorycount.md)<br/>[windowsMalwareExecutionStateCount](../api-reference/beta/resources/intune_devices_windowsmalwareexecutionstatecount.md)<br/>[windowsMalwareNameCount](../api-reference/beta/resources/intune_devices_windowsmalwarenamecount.md)<br/>[windowsMalwareOverview](../api-reference/beta/resources/intune_devices_windowsmalwareoverview.md)<br/>[windowsMalwareStateCount](../api-reference/beta/resources/intune_devices_windowsmalwarestatecount.md)<br/>|
|Addition|beta|Added new enum types:<br/>[configurationManagerClientState](../api-reference/beta/resources/intune_devices_configurationmanagerclientstate.md)<br/>[depTokenType](../api-reference/beta/resources/intune_enrollment_deptokentype.md)<br/>[discoverySource](../api-reference/beta/resources/intune_enrollment_discoverysource.md)<br/>[importedWindowsAutopilotDeviceIdentityUploadStatus](../api-reference/beta/resources/intune_enrollment_importedwindowsautopilotdeviceidentityuploadstatus.md)<br/>[iTunesPairingMode](../api-reference/beta/resources/intune_enrollment_itunespairingmode.md)<br/>[lanManagerAuthenticationLevel](../api-reference/beta/resources/intune_deviceconfig_lanmanagerauthenticationlevel.md)<br/>[localSecurityOptionsMinimumSessionSecurity](../api-reference/beta/resources/intune_deviceconfig_localsecurityoptionsminimumsessionsecurity.md)<br/>[resultantAppStateDetail](../api-reference/beta/resources/intune_apps_resultantappstatedetail.md)<br/>[vpnProviderType](../api-reference/beta/resources/intune_deviceconfig_vpnprovidertype.md)<br/>[windowsMalwareThreatState](../api-reference/beta/resources/intune_devices_windowsmalwarethreatstate.md)<br/>|
|Addition|beta|Added the [uploadDepToken](../api-reference/beta/api/intune_enrollment_deponboardingsetting_uploaddeptoken.md) action on [depOnboardingSetting](../api-reference/beta/resources/intune_enrollment_deponboardingsetting.md) |
|Addition|beta|Added the [syncWithAppleDeviceEnrollmentProgram](../api-reference/beta/api/intune_enrollment_deponboardingsetting_syncwithappledeviceenrollmentprogram.md) action on [depOnboardingSetting](../api-reference/beta/resources/intune_enrollment_deponboardingsetting.md) |
|Addition|beta|Added the [setDefaultProfile](../api-reference/beta/api/intune_enrollment_enrollmentprofile_setdefaultprofile.md) action on [enrollmentProfile](../api-reference/beta/resources/intune_enrollment_enrollmentprofile.md) |
|Addition|beta|Added the **importAppleDeviceIdentityList** action on [importedAppleDeviceIdentity](../api-reference/beta/resources/intune_enrollment_importedappledeviceidentity.md) collection |
|Addition|beta|Added the [updateDeviceProfileAssignment](../api-reference/beta/api/intune_enrollment_enrollmentprofile_updatedeviceprofileassignment.md) action on [enrollmentProfile](../api-reference/beta/resources/intune_enrollment_enrollmentprofile.md) |
|Addition|beta|Added the [shareForSchoolDataSyncService](../api-reference/beta/api/intune_enrollment_deponboardingsetting_shareforschooldatasyncservice.md) action on [depOnboardingSetting](../api-reference/beta/resources/intune_enrollment_deponboardingsetting.md) |
|Addition|beta|Added the [unshareForSchoolDataSyncService](../api-reference/beta/api/intune_enrollment_deponboardingsetting_unshareforschooldatasyncservice.md) action on [depOnboardingSetting](../api-reference/beta/resources/intune_enrollment_deponboardingsetting.md) |
|Addition|beta|Added the [assignUserToDevice](../api-reference/beta/api/intune_enrollment_windowsautopilotdeviceidentity_assignusertodevice.md) action on [windowsAutopilotDeviceIdentity](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeviceidentity.md) |
|Addition|beta|Added the [getRoleScopeTagsByResource](../api-reference/beta/api/intune_rbac_devicemanagement_getrolescopetagsbyresource.md) function on [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) |
|Addition|beta|Added the [getRoleScopeTagsByIds](../api-reference/beta/api/intune_rbac_devicemanagement_getrolescopetagsbyids.md) function on [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) |
|Addition|beta|Added the [getEncryptionPublicKey](../api-reference/beta/api/intune_enrollment_deponboardingsetting_getencryptionpublickey.md) function on [depOnboardingSetting](../api-reference/beta/resources/intune_enrollment_deponboardingsetting.md) |
|Addition|beta|Added the [exportMobileConfig](../api-reference/beta/api/intune_enrollment_enrollmentprofile_exportmobileconfig.md) function on [enrollmentProfile](../api-reference/beta/resources/intune_enrollment_enrollmentprofile.md) |
|Addition|beta|Added the [autopilotDeviceStream](../api-reference/beta/api/intune_enrollment_importedwindowsautopilotdeviceidentityupload_autopilotdevicestream.md) function on [importedWindowsAutopilotDeviceIdentityUpload](../api-reference/beta/resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md) |
|Deletion|beta|Removed the **uploadDepToken** collection |
|Deletion|beta|Removed the **syncWithAppleDeviceEnrollmentProgram** action on [depOnboardingSetting](../api-reference/beta/resources/intune_enrollment_deponboardingsetting.md) collection |
|Deletion|beta|Removed the **getEncryptionPublicKey** function on [depOnboardingSetting](../api-reference/beta/resources/intune_enrollment_deponboardingsetting.md) collection |
|Addition|beta|Added the **restrictedApps** property to the [androidForWorkCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidforworkcompliancepolicy.md) entity|
|Addition|beta|Added the **vpnAlwaysOnPackageIdentifier** and **vpnEnableAlwaysOnLockdownMode** properties to the [androidForWorkGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md) entity|
|Deletion|beta|Removed the **packageName** property from the [androidForWorkMobileAppConfiguration](../api-reference/beta/resources/intune_apps_androidforworkmobileappconfiguration.md) entity|
|Addition|beta|Added the **restrictedApps** property to the [androidWorkProfileCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilecompliancepolicy.md) entity|
|Addition|beta|Added the **vpnAlwaysOnPackageIdentifier** and **vpnEnableAlwaysOnLockdownMode** properties to the [androidWorkProfileGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilegeneraldeviceconfiguration.md) entity|
|Addition|beta|Added the **optInToDeviceIdSharing** property to the [appleVpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_applevpnconfiguration.md) entity|
|Addition|beta|Added the **tokenType**, **tokenName**, **syncedDeviceCount**, **defaultProfileDisplayName** and **dataSharingConsentGranted** properties to the [depOnboardingSetting](../api-reference/beta/resources/intune_enrollment_deponboardingsetting.md) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) entity|
|Addition|beta|Added the **roleScopeTagIds** and **supportsScopeTags** properties to the [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) entity|
|Addition|beta|Added the **windowsMalwareOverview** property to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|beta|Changed the following properties on the [iosCertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_ioscertificateprofilebase.md) entity:<br/>**subjectAlternativeNameType** from required to optional<br/>|
|Addition|beta|Added the **restrictedApps** property to the [iosCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_ioscompliancepolicy.md) entity|
|Addition|beta|Added the **certificateStore** and **customSubjectAlternativeNames** properties to the [iosScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_iosscepcertificateprofile.md) entity|
|Addition|beta|Added the **enforcedSoftwareUpdateDelayInDays** property to the [iosUpdateConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosupdateconfiguration.md) entity|
|Addition|beta|Added the **providerType**, **userDomain**, **strictEnforcement**, **cloudName** and **excludeList** properties to the [iosVpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosvpnconfiguration.md) entity|
|Addition|beta|Added the **safariBlockAutofill**, **cameraBlocked**, **iTunesBlockMusicService**, **spotlightBlockInternetResults**, **keyboardBlockDictation**, **definitionLookupBlocked**, **appleWatchBlockAutoUnlock**, **iTunesBlockFileSharing**, **iCloudBlockDocumentSync**, **iCloudBlockMail**, **iCloudBlockAddressBook**, **iCloudBlockCalendar**, **iCloudBlockReminders**, **iCloudBlockBookmarks**, **iCloudBlockNotes**, **airDropBlocked**, **passwordBlockModification** and **passwordBlockFingerprintUnlock** properties to the [macOSGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_macosgeneraldeviceconfiguration.md) entity|
|Addition|beta|Added the **roleScopeTagIds**, **windowsActiveMalwareCount**, **windowsRemediatedMalwareCount**, **notes** and **configurationManagerClientHealthState** properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Addition|beta|Added the **installStateDetail** property to the [mobileAppInstallStatus](../api-reference/beta/resources/intune_apps_mobileappinstallstatus.md) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [notificationMessageTemplate](../api-reference/beta/resources/intune_notification_notificationmessagetemplate.md) entity|
|Addition|beta|Added the **targetVersion** and **updateVersion** properties to the [officeSuiteApp](../api-reference/beta/resources/intune_apps_officesuiteapp.md) entity|
|Addition|beta|Added the **resource** property to the [resourceOperation](../api-reference/beta/resources/intune_rbac_resourceoperation.md) entity|
|Addition|beta|Added the **localStorage**, **setPowerPolicies** and **signInOnResume** properties to the [sharedPCConfiguration](../api-reference/beta/resources/intune_deviceconfig_sharedpcconfiguration.md) entity|
|Addition|beta|Added the **configurationManagerComplianceRequired** property to the [windows10CompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_windows10compliancepolicy.md) entity|
|Addition|beta|Added the **userRightsAccessCredentialManagerAsTrustedCaller**, **userRightsAllowAccessFromNetwork**, **userRightsBlockAccessFromNetwork**, **userRightsActAsPartOfTheOperatingSystem**, **userRightsLocalLogOn**, **userRightsBackupData**, **userRightsChangeSystemTime**, **userRightsCreateGlobalObjects**, **userRightsCreatePageFile**, **userRightsCreatePermanentSharedObjects**, **userRightsCreateSymbolicLinks**, **userRightsCreateToken**, **userRightsDebugPrograms**, **userRightsRemoteDesktopServicesLogOn**, **userRightsDelegation**, **userRightsGenerateSecurityAudits**, **userRightsImpersonateClient**, **userRightsIncreaseSchedulingPriority**, **userRightsLoadUnloadDrivers**, **userRightsLockMemory**, **userRightsManageAuditingAndSecurityLogs**, **userRightsManageVolumes**, **userRightsModifyFirmwareEnvironment**, **userRightsModifyObjectLabels**, **userRightsProfileSingleProcess**, **userRightsRemoteShutdown**, **userRightsRestoreData**, **userRightsTakeOwnership**, **userRightsRegisterProcessAsService**, **localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients**, **localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers**, **lanManagerAuthenticationLevel** and **lanManagerWorkstationEnableInsecureGuestLogons** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity|
|Addition|beta|Added the **passwordMinimumAgeInDays**, **tenantLockdownRequireNetworkDuringOutOfBoxExperience** and **dataProtectionBlockDirectMemoryAccess** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Addition|beta|Added the **extendedKeyUsages** property to the [windows10PkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windows10pkcscertificateprofile.md) entity|
|Addition|beta|Added the **enableDnsRegistration** and **dnsSuffixes** properties to the [windows10VpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10vpnconfiguration.md) entity|
|Addition|beta|Added the **customSubjectAlternativeNames** property to the [windows81CertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windows81certificateprofilebase.md) entity|
|Addition|beta|Added the **extractHardwareHash** and **deviceNameTemplate** properties to the [windowsAutopilotDeploymentProfile](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeploymentprofile.md) entity|
|Addition|beta|Added the **addressableUserName** and **userPrincipalName** properties to the [windowsAutopilotDeviceIdentity](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeviceidentity.md) entity|
|Addition|beta|Added the **threatState** property to the [windowsDeviceMalwareState](../api-reference/beta/resources/intune_devices_windowsdevicemalwarestate.md) entity|
|Addition|beta|Added the **qualityUpdatesPauseStartDateTime**, **featureUpdatesPauseStartDateTime**, **featureUpdatesRollbackWindowInDays**, **qualityUpdatesWillBeRolledBack**, **featureUpdatesWillBeRolledBack**, **qualityUpdatesRollbackStartDateTime** and **featureUpdatesRollbackStartDateTime** properties to the [windowsUpdateForBusinessConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) entity|
|Addition|beta|Added the **trustedServerCertificateNames** property to the [windowsWifiEnterpriseEAPConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowswifienterpriseeapconfiguration.md) entity|
|Addition|beta|Added the **defaultIosEnrollmentProfile**, **defaultMacOsEnrollmentProfile**, **enrollmentProfiles** and **importedAppleDeviceIdentities** navigation properties to the [depOnboardingSetting](../api-reference/beta/resources/intune_enrollment_deponboardingsetting.md) entity|
|Addition|beta|Added the **roleScopeTags** navigation property to the [deviceAndAppManagementRoleAssignment](../api-reference/beta/resources/intune_rbac_deviceandappmanagementroleassignment.md) entity|
|Addition|beta|Added the **advancedThreatProtectionOnboardingStateSummary**, **roleScopeTags** and **importedWindowsAutopilotDeviceIdentityUploads** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Addition|beta|Added the **supportedDeviceTypes** property to the [mobileAppIntentAndStateDetail](../api-reference/beta/resources/intune_troubleshooting_mobileappintentandstatedetail.md) complex type|
|Addition|beta|Added the **hideEscapeLink** property to the [outOfBoxExperienceSettings](../api-reference/beta/resources/intune_enrollment_outofboxexperiencesettings.md) complex type|
|Addition|beta|Added the **zscalerPrivateAccess**, **f5Access2018**, **citrixSso** and **paloAltoGlobalProtectV2** members to the [appleVpnConnectionType](../api-reference/beta/resources/intune_deviceconfig_applevpnconnectiontype.md) enum type|
|Addition|beta|Added the **userAbandonment** member to the [deviceEnrollmentFailureReason](../api-reference/beta/resources/intune_troubleshooting_deviceenrollmentfailurereason.md) enum type|
|Addition|beta|Added the **blocked** member to the [enrollmentState](../api-reference/beta/resources/intune_enrollment_enrollmentstate.md) enum type|
|Addition|beta|Added the **microsoft365ManagedMdm** member to the [managementAgentType](../api-reference/beta/resources/intune_devices_managementagenttype.md) enum type|
|Addition|beta|Added the **domainNameService** member to the [subjectAlternativeNameType](../api-reference/beta/resources/intune_deviceconfig_subjectalternativenametype.md) enum type|
|Addition|beta|Added the **wpa2Personal** and **wpa2Enterprise** members to the [wiFiSecurityType](../api-reference/beta/resources/intune_deviceconfig_wifisecuritytype.md) enum type|
|Addition|beta|Added the **enterpriseUnwantedSoftware**, **ransom** and **hipsRule** members to the [windowsMalwareCategory](../api-reference/beta/resources/intune_devices_windowsmalwarecategory.md) enum type|

### Outlook calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the [getSchedule](../api-reference/beta/api/calendar_getschedule.md) action, and the [freeBusyError](../api-reference/beta/resources/freebusyerror.md), [scheduleInformation](../api-reference/beta/resources/scheduleinformation.md), and [scheduleItem](../api-reference/beta/resources/scheduleitem.md) complex types to support [getting the free/busy, availability information for users, distribution lists, and resources for a given period of time](outlook-get-free-busy-schedule.md). |

### Outlook mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0        | Added support for the [getMailTips](../api-reference/v1.0/api/user_getmailtips.md) action to get any MailTips for specific recipients. Added the following resources: [automaticRepliesMailTips](../api-reference/v1.0/resources/automaticrepliesmailtips.md), [mailTips](../api-reference/v1.0/resources/mailtips.md), [mailTipsError](../api-reference/v1.0/resources/mailtipserror.md). |

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the **Activated On Shared Computer** property to [getoffice365activationsuserdetail](../api-reference/v1.0/api/reportroot_getoffice365activationsuserdetail.md). |
| Addition    | v1.0    | Added the **Shared Computer Activation** property to [getoffice365activationsusercounts](../api-reference/v1.0/api/reportroot_getoffice365activationsusercounts.md). |

### Security APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta       | Added **activityGroupName**, **cloudAppStates**, **confidence**, and **registryKeyStates** properties to [alert](../api-reference/beta/resources/alert.md ). |
|Deletion|beta| Removed **activityGroupStates**, **applicationStates**, **malwareWasRunning**, **riskScore** and **type** properties from [alert](../api-reference/beta/resources/alert.md ). |
|Change|beta| Changed **comments** type from a `String` to a `String collection`, and changed **severity** type from a `String` to a [alertSeverity](../api-reference/beta/resources/alertseverityenumtype.md) enum in [alert](../api-reference/beta/resources/alert.md). |
| Addition        | beta       | Added the following resource types: <br/> [cloudAppSecurityState](../api-reference/beta/resources/cloudappsecuritystate.md) <br/> [fileHash](../api-reference/beta/resources/filehash.md) <br/> [registryKeyState](../api-reference/beta/resources/registrykeystate.md) |
|Deletion|beta| Removed the following resource types: <br/> **activityGroupState**  <br/> **applicationSecurityState** |
| Addition        | beta       | Added the following enums: <br/> [alertSeverity](../api-reference/beta/resources/alertseverityenumtype.md) <br/> [connectionDirection](../api-reference/beta/resources/connectiondirectionenumtype.md) <br/> [connectionStatus](../api-reference/beta/resources/connectionstatusenumtype.md) <br/> [emailRole](../api-reference/beta/resources/emailroleenumtype.md) <br/> [fileHashType](../api-reference/beta/resources/filehashtypeenumtype.md) <br/> [registryHive](../api-reference/beta/resources/registryhiveenumtype.md)  <br/> [registryOperation](../api-reference/beta/resources/registryoperationenumtype.md) <br/> [registryValueType](../api-reference/beta/resources/registryvaluetypeenumtype.md)|
|Deletion|beta| Removed the following enum types: <br/> **alertType** <br/> **applicationPermissionsRequired** |
| Addition        | beta       | Added **fileHash** property to [fileSecurityState](../api-reference/beta/resources/filesecuritystate.md ).|
|Deletion|beta| Removed **authenticodeHash256** and **sha256** properties from [fileSecurityState](../api-reference/beta/resources/filesecuritystate.md). |
| Addition | beta | Added **os** property to [hostSecurityState](../api-reference/beta/resources/hostsecuritystate.md).|
| Addition | beta | Added **category**, **family**, and **wasRunning** properties to [malwareState](../api-reference/beta/resources/malwarestate.md).|
|Deletion|beta| Removed **aliases** property from [malwareState](../api-reference/beta/resources/malwarestate.md). |
|Change|beta| Moved **malwareWasRunning** property from  [alert](../api-reference/beta/resources/alert.md ) to [malwareState](../api-reference/beta/resources/malwarestate.md) and renamed to **wasRunning**. |
| Addition        | beta       | Added **applicationName**, **destinationDomain**, **direction**, **domainRegisteredDateTime**, **localDnsName**, **natDestinationAddress**, **natDestinationPort**, **natSourceAddress**, **natSourcePort**, **riskScore**, **status**, and **urlParameters** properties to [networkConnection](../api-reference/beta/resources/networkconnection.md ).|
|Change|beta| Changed **uri** property to **destinationUrl** in [networkConnection](../api-reference/beta/resources/networkconnection.md ). |
| Addition        | beta       | Added **fileHash** property to [process](../api-reference/beta/resources/process.md ).|
|Deletion|beta| Removed **authenticodeHash256** and **sha256** properties from [process](../api-reference/beta/resources/process.md ). |
| Addition        | beta       | Added **aadUserId**, **emailRole**, **isVpn**, and **logonIp** properties to [userSecurityState](../api-reference/beta/resources/usersecuritystate.md).|
|Change|beta| Changed **logonIpAddress** property to **logonIp** in [userSecurityState](../api-reference/beta/resources/usersecuritystate.md). |
| Addition        | beta       | Added **wasRunning** property to [vulnerabilityState](../api-reference/beta/resources/vulnerabilitystate.md).|
|Deletion|beta| Removed **name** property from [vulnerabilityState](../api-reference/beta/resources/vulnerabilitystate.md). |

## July 2018

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Change|beta|Updated [chatmessage](../api-reference/beta/resources/chatmessage.md) resource|
|Addition|beta|Added [Chat attachment](../api-reference/beta/resources/chatattachment.md) resource type|
|Addition|beta|Added [Chat mention](../api-reference/beta/resources/chatattachment.md) resource type|
|Addition|beta|Added [Chat reaction](../api-reference/beta/resources/chatattachment.md) resource type|
|Addition|beta|Added [Get all channel messages API](../api-reference/beta/api/channel_list_messages.md) |
|Addition|beta|Added [Get channel message API](../api-reference/beta/api/channel_get_message.md) |
|Addition|beta|Added [Get all message replies API](../api-reference/beta/api/channel_list_messagereplies.md) |
|Addition|beta|Added [Get reply to a message API](../api-reference/beta/api/channel_get_messagereply.md) |

### Synchronization APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added **progress** property to [sychronizationStatus](../api-reference/beta/resources/synchronization_synchronizationstatus.md) to permit clients to monitor the progress of a synchronization job.|

### Application and servicePrincipal API changes

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | The [application](../api-reference/beta/resources/application.md) and [servicePrincipal](../api-reference/beta/resources/serviceprincipal.md) APIs will be updated in preview (beta). The first set of changes will be applied on July 16, 2018. The changes include property renaming and restructuring. Most of the existing properties will not be available until the changes are completed. There will be new properties added. The changes will be released in preview (beta) prior to releasing to v1.0. |

### Microsoft Teams APIs
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added application permissions support to [/users/{id}/joinedTeams](../api-reference/beta/api/user_list_joinedteams.md) |
|Addition|beta|Added [Get all channel messages API](../api-reference/beta/api/channel_list_messages.md) |
|Addition|beta|Added [Get channel message API](../api-reference/beta/api/channel_get_message.md) |
|Addition|beta|Added [Get all message replies API](../api-reference/beta/api/channel_list_messagereplies.md) |
|Addition|beta|Added [Get reply to a message API](../api-reference/beta/api/channel_get_messagereply.md) |
|Addition|beta|Added [Chat attachment](../api-reference/beta/resources/chatattachment.md) resource type|
|Addition|beta|Added [Chat mention](../api-reference/beta/resources/chatattachment.md) resource type|
|Addition|beta|Added [Chat reaction](../api-reference/beta/resources/chatattachment.md) resource type|
|Change|beta|Updated [chatmessage](../api-reference/beta/resources/chatmessage.md)) resource|
|Deletion|beta|Removed DELETE /groups/{id}/team/channels/{id}, use DELETE /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed GET /groups/{id}/team/channels/{id}, use GET /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed PATCH /groups/{id}/team/channels/{id}, use  PATCH /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed POST /groups/{id}/team/channels/{id}/chatthreads, use POST /teams/{id}/channels/{id}/chatthreads instead. |
|Deletion|beta|Removed GET /groups/{id}/team/channels, use GET /teams/{id}/channels instead. |
|Deletion|beta|Removed DELETE /groups/{id}/channels/{id} , use DELETE /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed GET /groups/{id}/channels/{id}, use GET /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed PATCH /groups/{id}/channels/{id}, use  PATCH /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed POST /groups/{id}/channels/{id}/chatthreads, use POST /teams/{id}/channels/{id}/chatthreads instead. |
|Deletion|beta|Removed GET /groups/{id}/channels, use GET /teams/{id}/channels instead. |
|Deletion|beta|Removed POST /groups/{id}/team/channels, use POST /teams/{id}/channels instead. |
|Deletion|beta|Removed GET /groups/{id}/team, use GET /teams/{id} instead. |
|Deletion|beta|Removed PATCH /groups/{id}/team, use PATCH /teams/{id} instead. |
|Addition|beta|Added API to [list all teams in organization](../api-reference/beta/api/team_list_all_teams.md). |

### Outlook contacts
| **Change type** | **Version**   | **Description**                          |
|:--------------- |:------------- |:---------------------------------------- |
|Addition |Beta | Added the complex type [typedEmailAddress](../api-reference/beta/resources/typedemailaddress.md). |
|Change | Beta | Changed the type of the **emailAddresses** property of [contact](../api-reference/beta/resources/contact.md) to be a collection of **typedEmailAddress** instances.|

### Webhooks
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Breaking change | Beta and v1.0 | Reduced [webhooks](../api-reference/v1.0/resources/webhooks.md) [maximum length of subscription expiration time](../api-reference/v1.0/resources/subscription.md#maximum-length-of-subscription-per-resource-type) for drive root items to 3 days. |


## June 2018

### Identity and access APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [access reviews](../api-reference/beta/resources/accessreviews_root.md) feature to [Azure AD](../api-reference/beta/resources/azure_ad_overview.md). |

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | All | New application permissions _Application.ReadWrite.All_ and _Application.ReadWrite.OwnedBy_ that allows a client app to create, read, update, and delete applications and service principals as described in the [permissions topic](permissions_reference.md#application-resource-permissions). |
| Addition | v1.0 | Added **ageGroup**, **legalAgeGroupClassification**, and **ConsentRequiredForMinor** properties to [user](../api-reference/v1.0/resources/user.md) resource

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added the **connectorServerName** property to the [deviceManagementExchangeConnector](../api-reference/v1.0/resources/intune_onboarding_devicemanagementexchangeconnector.md) entity|
|Addition|v1.0|Added the **firewallEnabled**, **firewallBlockAllIncoming** and **firewallEnableStealthMode** properties to the [macOSCompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_macoscompliancepolicy.md) entity|
|Addition|v1.0|Added the **unknown** member to the [iosUpdatesInstallStatus](../api-reference/v1.0/resources/intune_deviceconfig_iosupdatesinstallstatus.md) enum type|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androiddeviceownerwificonfiguration.md)<br/>[iosVppAppAssignedDeviceLicense](../api-reference/beta/resources/intune_apps_iosvppappassigneddevicelicense.md)<br/>[iosVppAppAssignedLicense](../api-reference/beta/resources/intune_apps_iosvppappassignedlicense.md)<br/>[iosVppAppAssignedUserLicense](../api-reference/beta/resources/intune_apps_iosvppappassigneduserlicense.md)<br/>[managedDeviceMobileAppConfigurationState](../api-reference/beta/resources/intune_deviceconfig_manageddevicemobileappconfigurationstate.md)<br/>[userPFXCertificate](../api-reference/beta/resources/intune_raimportcerts_userpfxcertificate.md)<br/>[vppTokenLicenseSummary](../api-reference/beta/resources/intune_onboarding_vppTokenLicenseSummary.md)<br/>|
|Addition|beta|Added new complex types:<br/>[iosVppAppRevokeLicensesActionResult](../api-reference/beta/resources/intune_apps_iosvppapprevokelicensesactionresult.md)<br/>|
|Addition|beta|Added new enum types:<br/>[androidDeviceOwnerSystemUpdateInstallType](../api-reference/beta/resources/intune_deviceconfig_androiddeviceownersystemupdateinstalltype.md)<br/>[androidDeviceOwnerWiFiSecurityType](../api-reference/beta/resources/intune_deviceconfig_androiddeviceownerwifisecuritytype.md)<br/>[userPfxIntendedPurpose](../api-reference/beta/resources/intune_raimportcerts_userpfxintendedpurpose.md)<br/>[userPfxPaddingScheme](../api-reference/beta/resources/intune_raimportcerts_userpfxpaddingscheme.md)<br/>|
|Addition|beta|Added the [createGooglePlayWebToken](../api-reference/beta/api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_creategoogleplaywebtoken.md) action on [androidManagedStoreAccountEnterpriseSettings](../api-reference/beta/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md) |
|Addition|beta|Added the [revokeAllLicenses](../api-reference/beta/api/intune_apps_iosvppapp_revokealllicenses.md) action on [iosVppApp](../api-reference/beta/resources/intune_apps_iosvppapp.md) |
|Addition|beta|Added the [revokeUserLicense](../api-reference/beta/api/intune_apps_iosvppapp_revokeuserlicense.md) action on [iosVppApp](../api-reference/beta/resources/intune_apps_iosvppapp.md) |
|Addition|beta|Added the [revokeDeviceLicense](../api-reference/beta/api/intune_apps_iosvppapp_revokedevicelicense.md) action on [iosVppApp](../api-reference/beta/resources/intune_apps_iosvppapp.md) |
|Addition|beta|Added the [sendCustomNotificationToCompanyPortal](../api-reference/beta/api/intune_shared_devicemanagement_sendcustomnotificationtocompanyportal.md) action on [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) |
|Addition|beta|Added the **getLicensesForApp** function on [vppToken](../api-reference/beta/resources/intune_onboarding_vpptoken.md) collection |
|Deletion|beta|Removed the following enum types:<br/>**windowsUpdateInsiderBuildControl**<br/>|
|Addition|beta|Added the **systemUpdateWindowStartMinutesAfterMidnight**, **systemUpdateWindowEndMinutesAfterMidnight** and **systemUpdateInstallType** properties to the [androidDeviceOwnerGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md) entity|
|Change|beta|Changed the type of the following properties on the [androidDeviceOwnerGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md) entity:<br/>**passwordMinutesOfInactivityBeforeScreenTimeout** from Int64 to Int32<br/>|
|Addition|beta|Added the **customKeyValueData** property to the [androidForWorkVpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkvpnconfiguration.md) entity|
|Addition|beta|Added the **customKeyValueData** property to the [androidVpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidvpnconfiguration.md) entity|
|Addition|beta|Added the **customKeyValueData** property to the [androidWorkProfileVpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilevpnconfiguration.md) entity|
|Addition|beta|Added the **customKeyValueData** property to the [appleVpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_applevpnconfiguration.md) entity|
|Addition|beta|Added the **userId** and **userPrincipalName** properties to the [deviceCompliancePolicyState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicystate.md) entity|
|Addition|beta|Added the **userId** and **userPrincipalName** properties to the [deviceConfigurationState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationstate.md) entity|
|Addition|beta|Added the **connectorServerName** property to the [deviceManagementExchangeConnector](../api-reference/beta/resources/intune_onboarding_devicemanagementexchangeconnector.md) entity|
|Deletion|beta|Removed the **settingXml** property from the [iosMobileAppConfiguration](../api-reference/beta/resources/intune_apps_iosmobileappconfiguration.md) entity|
|Addition|beta|Added the **vppTokenId** and **revokeLicenseActionResults** properties to the [iosVppApp](../api-reference/beta/resources/intune_apps_iosvppapp.md) entity|
|Addition|beta|Added the **firewallEnabled**, **firewallBlockAllIncoming** and **firewallEnableStealthMode** properties to the [macOSCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_macoscompliancepolicy.md) entity|
|Deletion|beta|Removed the **remoteAssistanceSessionErrorString** property from the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Addition|beta|Added the **antivirusRequired** and **antiSpywareRequired** properties to the [windows10CompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_windows10compliancepolicy.md) entity|
|Addition|beta|Added the **defenderOfficeAppsOtherProcessInjection**, **defenderOfficeAppsExecutableContentCreationOrLaunch**, **defenderOfficeAppsLaunchChildProcess**, **defenderOfficeMacroCodeAllowWin32Imports**, **defenderScriptObfuscatedMacroCode**, **defenderScriptDownloadedPayloadExecution**, **defenderProcessCreation**, **defenderUntrustedUSBProcess**, **defenderUntrustedExecutable** and **defenderEmailContentExecution** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity|
|Addition|beta|Added the **searchDisableLocation**, **inkWorkspaceAccessState**, **defenderPotentiallyUnwantedAppActionSetting** and **defenderCloudExtendedTimeoutInSeconds** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Addition|beta|Added the **updatesMinimumAutoInstallClassification** property to the [windows81GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows81generalconfiguration.md) entity|
|Deletion|beta|Removed the **previewBuildSetting** property from the [windowsUpdateForBusinessConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) entity|
|Addition|beta|Added the **userPfxCertificates** navigation property to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity|
|Addition|beta|Added the **assignedLicenses** navigation property to the [iosVppApp](../api-reference/beta/resources/intune_apps_iosvppapp.md) entity|
|Addition|beta|Added the **managedDeviceMobileAppConfigurationStates** navigation property to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Addition|beta|Added the **websiteList** property to the [iosWebContentFilterSpecificWebsitesAccess](../api-reference/beta/resources/intune_deviceconfig_ioswebcontentfilterspecificwebsitesaccess.md) complex type|
|Addition|beta|Added the **androidWorkProfile** member to the [devicePlatformType](../api-reference/beta/resources/intune_deviceconfig_deviceplatformtype.md) enum type|
|Addition|beta|Added the **notConfigured** member to the [editionUpgradeLicenseType](../api-reference/beta/resources/intune_deviceconfig_editionupgradelicensetype.md) enum type|
|Addition|beta|Added the **unknown** member to the [iosUpdatesInstallStatus](../api-reference/beta/resources/intune_deviceconfig_iosupdatesinstallstatus.md) enum type|
|Addition|beta|Added the **userRequestedInstall** member to the [mobileAppActionType](../api-reference/beta/resources/intune_troubleshooting_mobileappactiontype.md) enum type|
|Addition|beta|Added the **notConfigured** member to the [windows10EditionType](../api-reference/beta/resources/intune_deviceconfig_windows10editiontype.md) enum type

### Microsoft Teams APIs
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition         | Beta          | Added team [archive](../api-reference/beta/api/team_archive.md) and [unarchive](../api-reference/beta/api/team_unarchive.md) APIs.|
|Addition         | Beta          | Added team [clone](../api-reference/beta/api/team_clone.md) operation. |
|Addition         | Beta          | Added APIs to add and remove [apps](../api-reference/beta/resources/teamsapp.md) to teams. |
|Change|Beta|Updated the path to the [team](../api-reference/beta/resources/team.md) entity.|
|Change|Beta|Updated the path to the [channel](../api-reference/beta/resources/channel.md) entity.|


### Privileged Identity Management APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [privilegedAccess](../api-reference/beta/resources/privilegedaccess.md) entity.|
| Addition | beta | Added the [governanceResource](../api-reference/beta/resources/governanceresource.md) entity, and the following methods and actions: <br> [List](../api-reference/beta/api/governanceresource_list.md) <br> [Get](../api-reference/beta/api/governanceresource_get.md)<br>|
| Addition | beta | Added the [governanceSubject](../api-reference/beta/resources/governancesubject.md) entity.|
| Addition | beta | Added the [governanceRoleDefinition](../api-reference/beta/resources/governanceroledefinition.md) entity, and tollowing methods and actions:<br> [List](../api-reference/beta/api/governanceroledefinition_list.md) <br> [Get](../api-reference/beta/api/governanceroledefinition_get.md) |
| Addition | beta | Added the [governanceRoleAssignment](../api-reference/beta/resources/governanceroleassignment.md) entity, and following methods and actions:<br> [List](../api-reference/beta/api/governanceroleassignment_list.md) <br> [Get](../api-reference/beta/api/governanceroleassignment_get.md) <br> [Export](../api-reference/beta/api/governanceroleassignment_export.md) |
| Addition | beta | Added the [governanceRoleAssignmentRequest](../api-reference/beta/resources/governanceroleassignmentrequest.md) entity, and following methods and actions:<br> [List](../api-reference/beta/api/governanceroleassignmentrequest_list.md) <br> [Get](../api-reference/beta/api/governanceroleassignmentrequest_get.md) <br> [Create](../api-reference/beta/api/governanceroleassignmentrequest_post.md) <br> [Cancel](../api-reference/beta/api/governanceroleassignmentrequest_cancel.md) <br> [Update](../api-reference/beta/api/governanceroleassignmentrequest_update.md) |
| Addition | beta | Added the [governanceRoleSetting](../api-reference/beta/resources/governancerolesetting.md) entity, and the following methods and actions:<br> [List](../api-reference/beta/api/governancerolesetting_list.md) <br> [Get](../api-reference/beta/api/governancerolesetting_get.md) <br> [Update](../api-reference/beta/api/governancerolesetting_update.md) |
| Addition | beta | Added the following complex types: <br> [governancePermission](../api-reference/beta/resources/governancepermission.md) <br> [governanceRoleAssignmentRequestStatus](../api-reference/beta/resources/governanceroleassignmentrequeststatus.md) <br> [governanceRuleSetting](../api-reference/beta/resources/governancerulesetting.md) <br> [governanceSchedule](../api-reference/beta/resources/governanceschedule.md)|

### Security APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | beta        | Added new enum types:<br/>[alertFeedback](../api-reference/beta/resources/alertfeedbackenumtype.md)<br/>[alertStatus](../api-reference/beta/resources/alertstatusenumtype.md)<br/>[alertType](../api-reference/beta/resources/alerttypeenumtype.md)<br/>[applicationPermissionsRequired](../api-reference/beta/resources/applicationpermissionsrequiredenumtype.md)<br/>[logonType](../api-reference/beta/resources/logontypeenumtype.md)<br/>[processIntegrityLevel](../api-reference/beta/resources/processintegritylevelenumtype.md)<br/>[securityNetworkProtocol](../api-reference/beta/resources/securitynetworkprotocolenumtype.md)<br/>[userAccountSecurityType](../api-reference/beta/resources/useraccountsecuritytypeenumtype.md)<br/>

## May 2018

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0        | Added [List deleted items owned by a user](../api-reference/v1.0/api/directory_deleteditems_user_owned.md) action to [directory (deleted items)](../api-reference/v1.0/resources/directory.md) resource |
| Addition | beta | Added the [getUserOwnedObjects](../api-reference/beta/api/directory_deleteditems_user_owned.md) function to the [directory](../api-reference/beta/resources/directory.md) resource to list the deleted groups owned by a given user. |

### Education API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | The scope **Members.Read.Hidden** is required to read or update the **Members** collection on an [educationClass](../api-reference/v1.0/resources/educationclass.md) entity using app-only tokens. |
|Change           |Beta           |Updated the possible values of **educationSubmissionStatus** type in the status property of  [educationsubmission](../api-reference/beta/resources/educationsubmission.md).|
|Change           |Beta           |Added the **educationAssignmentIndividualRecipient** complex type to the assignTo property of [educationAssignment](../api-reference/beta/resources/educationassignment.md).|
|Change           |Beta           |Added the **unsubmittedBy**, **unsubmittedDate**, **returnedBy**, **returnedDate** property of [educationSubmission](../api-reference/beta/resources/educationsubmission.md).|
|Addition         |Beta           |Added the [return](../api-reference/beta/api/educationSubmission_return.md) and  [unsubmit](../api-reference/beta/api/educationSubmission_unsubmit.md) action to [educationSubmission](../api-reference/beta/resources/educationsubmission.md).|
|Change           |Beta           |Removed the release and  recall action on [educationSubmission](../api-reference/beta/resources/educationsubmission.md).|

### Groups

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | Added the **importance** property to the [post](../api-reference/v1.0/resources/post.md) entity. |

### Microsoft Bookings API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added the [bookingBusiness](../api-reference/beta/resources/bookingbusiness.md) entity and the following CRUD methods and actions: <br> [List](../api-reference/beta/api/bookingbusiness_list.md) <br> [Create](../api-reference/beta/api/bookingbusiness_post_bookingbusinesses.md) <br> [Get](../api-reference/beta/api/bookingbusiness_get.md) <br> [Update](../api-reference/beta/api/bookingbusiness_update.md) <br> [Delete](../api-reference/beta/api/bookingbusiness_delete.md) <br> [Publish](../api-reference/beta/api/bookingbusiness_publish.md) <br> [Unpublish](../api-reference/beta/api/bookingbusiness_unpublish.md). <br> Find out more about integrating with the [Microsoft Bookings API](booking-concept-overview.md). |
| Addition        | Beta          | Added the [bookingAppointment](../api-reference/beta/resources/bookingappointment.md) entity and the following CRUD methods and action: <br> [List](../api-reference/beta/api/bookingbusiness_list_appointments.md) <br> [Create](../api-reference/beta/api/bookingbusiness_post_appointments.md) <br> [Get](../api-reference/beta/api/bookingappointment_get.md) <br> [Update](../api-reference/beta/api/bookingappointment_update.md) <br> [Delete](../api-reference/beta/api/bookingappointment_delete.md) <br> [Cancel](../api-reference/beta/api/bookingappointment_cancel.md). |
| Addition        | Beta          | Added the [bookingCurrency](../api-reference/beta/resources/bookingcurrency.md) entity and the following methods: <br> [List](../api-reference/beta/api/bookingcurrency_list.md) <br> [Get](../api-reference/beta/api/bookingcurrency_get.md). |
| Addition        | Beta          | Added the [bookingCustomer](../api-reference/beta/resources/bookingcustomer.md) entity and the following CRUD methods: <br> [List](../api-reference/beta/api/bookingbusiness_list_customers.md) <br> [Create](../api-reference/beta/api/bookingbusiness_post_customers.md) <br> [Get](../api-reference/beta/api/bookingcustomer_get.md) <br> [Update](../api-reference/beta/api/bookingcustomer_update.md) <br> [Delete](../api-reference/beta/api/bookingcustomer_delete.md).|
| Addition        | Beta          | Added the [bookingService](../api-reference/beta/resources/bookingservice.md) entity and the following CRUD methods: <br> [List](../api-reference/beta/api/bookingbusiness_list_services.md) <br> [Create](../api-reference/beta/api/bookingbusiness_post_services.md) <br> [Get](../api-reference/beta/api/bookingservice_get.md) <br> [Update](../api-reference/beta/api/bookingservice_update.md) <br> [Delete](../api-reference/beta/api/bookingservice_delete.md).|
| Addition        | Beta          | Added the [bookingStaffMember](../api-reference/beta/resources/bookingstaffmember.md) entity and the following CRUD methods: <br> [List](../api-reference/beta/api/bookingbusiness_list_staffmembers.md) <br> [Create](../api-reference/beta/api/bookingbusiness_post_staffmembers.md) <br> [Get](../api-reference/beta/api/bookingstaffmember_get.md) <br> [Update](../api-reference/beta/api/bookingstaffmember_update.md) <br> [Delete](../api-reference/beta/api/bookingstaffmember_delete.md).|
| Addition        | Beta          | Added the following complex types: <br> [bookingNamedEntity](../api-reference/beta/resources/bookingnamedentity.md) <br> [bookingPerson](../api-reference/beta/resources/bookingperson.md) <br> [bookingReminder](../api-reference/beta/resources/bookingreminder.md) <br> [bookingWorkHours](../api-reference/beta/resources/bookingworkhours.md) <br> [bookingWorkTimeSlot](../api-reference/beta/resources/bookingworktimeslot.md).|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidWorkProfileCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilecompliancepolicy.md)<br/>[easEmailProfileConfigurationBase](../api-reference/beta/resources/intune_deviceconfig_easemailprofileconfigurationbase.md)<br/>[mobileAppIntentAndState](../api-reference/beta/resources/intune_troubleshooting_mobileappintentandstate.md)<br/>[mobileAppTroubleshootingEvent](../api-reference/beta/resources/intune_troubleshooting_mobileapptroubleshootingevent.md)<br/>[unsupportedDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_unsupporteddeviceconfiguration.md)<br/>[windowsKioskConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowskioskconfiguration.md)<br/>|
|Addition|beta|Added new complex types:<br/>[managedDeviceCleanupSettings](../api-reference/beta/resources/intune_devices_manageddevicecleanupsettings.md)<br/>[mobileAppIntentAndStateDetail](../api-reference/beta/resources/intune_troubleshooting_mobileappintentandstatedetail.md)<br/>[mobileAppTroubleshootingAppPolicyCreationHistory](../api-reference/beta/resources/intune_troubleshooting_mobileapptroubleshootingapppolicycreationhistory.md)<br/>[mobileAppTroubleshootingAppStateHistory](../api-reference/beta/resources/intune_troubleshooting_mobileapptroubleshootingappstatehistory.md)<br/>[mobileAppTroubleshootingAppTargetHistory](../api-reference/beta/resources/intune_troubleshooting_mobileapptroubleshootingapptargethistory.md)<br/>[mobileAppTroubleshootingAppUpdateHistory](../api-reference/beta/resources/intune_troubleshooting_mobileapptroubleshootingappupdatehistory.md)<br/>[mobileAppTroubleshootingDeviceCheckinHistory](../api-reference/beta/resources/intune_troubleshooting_mobileapptroubleshootingdevicecheckinhistory.md)<br/>[mobileAppTroubleshootingHistoryItem](../api-reference/beta/resources/intune_troubleshooting_mobileapptroubleshootinghistoryitem.md)<br/>[unsupportedDeviceConfigurationDetail](../api-reference/beta/resources/intune_deviceconfig_unsupporteddeviceconfigurationdetail.md)<br/>**windowsAutoPilotEnrollmentSettings**<br/>[windowsKioskActiveDirectoryGroup](../api-reference/beta/resources/intune_deviceconfig_windowskioskactivedirectorygroup.md)<br/>[windowsKioskAppBase](../api-reference/beta/resources/intune_deviceconfig_windowskioskappbase.md)<br/>[windowsKioskAppConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowskioskappconfiguration.md)<br/>[windowsKioskAutologon](../api-reference/beta/resources/intune_deviceconfig_windowskioskautologon.md)<br/>[windowsKioskAzureADGroup](../api-reference/beta/resources/intune_deviceconfig_windowskioskazureadgroup.md)<br/>[windowsKioskAzureADUser](../api-reference/beta/resources/intune_deviceconfig_windowskioskazureaduser.md)<br/>[windowsKioskDesktopApp](../api-reference/beta/resources/intune_deviceconfig_windowskioskdesktopapp.md)<br/>[windowsKioskLocalGroup](../api-reference/beta/resources/intune_deviceconfig_windowskiosklocalgroup.md)<br/>[windowsKioskLocalUser](../api-reference/beta/resources/intune_deviceconfig_windowskiosklocaluser.md)<br/>[windowsKioskMultipleApps](../api-reference/beta/resources/intune_deviceconfig_windowskioskmultipleapps.md)<br/>[windowsKioskProfile](../api-reference/beta/resources/intune_deviceconfig_windowskioskprofile.md)<br/>[windowsKioskSingleUWPApp](../api-reference/beta/resources/intune_deviceconfig_windowskiosksingleuwpapp.md)<br/>[windowsKioskUser](../api-reference/beta/resources/intune_deviceconfig_windowskioskuser.md)<br/>[windowsKioskUWPApp](../api-reference/beta/resources/intune_deviceconfig_windowskioskuwpapp.md)<br/>[windowsKioskVisitor](../api-reference/beta/resources/intune_deviceconfig_windowskioskvisitor.md)<br/>|
|Addition|beta|Added new enum types:<br/>[defenderScheduleScanDay](../api-reference/beta/resources/intune_deviceconfig_defenderschedulescanday.md)<br/>[defenderSubmitSamplesConsentType](../api-reference/beta/resources/intune_deviceconfig_defendersubmitsamplesconsenttype.md)<br/>[domainNameSource](../api-reference/beta/resources/intune_deviceconfig_domainnamesource.md)<br/>[localSecurityOptionsSmartCardRemovalBehaviorType](../api-reference/beta/resources/intune_deviceconfig_localsecurityoptionssmartcardremovalbehaviortype.md)<br/>[mobileAppActionType](../api-reference/beta/resources/intune_troubleshooting_mobileappactiontype.md)<br/>[mobileAppIntent](../api-reference/beta/resources/intune_troubleshooting_mobileappintent.md)<br/>[roleAssignmentScopeType](../api-reference/beta/resources/intune_rbac_roleassignmentscopetype.md)<br/>[usernameSource](../api-reference/beta/resources/intune_deviceconfig_usernamesource.md)<br/>[windowsDeviceUsageType](../api-reference/beta/resources/intune_enrollment_windowsdeviceusagetype.md)<br/>|
|Addition|beta|Added the [setDeviceName](../api-reference/beta/api/intune_devices_manageddevice_setdevicename.md)<br/>action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
|Deletion|beta|Removed the following entities:<br/>**depEnrollmentProfile**<br/>**enrollmentProfile**<br/>**importedAppleDeviceIdentity**<br/>**importedAppleDeviceIdentityResult**<br/>|
|Deletion|beta|Removed the following complex types:<br/>**managementCertificateWithThumbprint**<br/>|
|Deletion|beta|Removed the following enum types:<br/>**depTokenType**<br/>**discoverySource**<br/>**iTunesPairingMode**<br/>|
|Deletion|beta|Removed the importAppleDeviceIdentityList action on [importedAppleDeviceIdentity](../api-reference/beta/resources/intune_corpenrollment_importedappledeviceidentity.md) collection |
|Deletion|beta|Removed the [updateDeviceProfileAssignment](../api-reference/beta/api/intune_corpenrollment_enrollmentprofile_updatedeviceprofileassignment.md) action on [enrollmentProfile](../api-reference/beta/resources/intune_corpenrollment_enrollmentprofile.md) |
|Deletion|beta|Removed the setDefaultProfile action on [enrollmentProfile](../api-reference/beta/resources/intune_corpenrollment_enrollmentprofile.md) |
|Deletion|beta|Removed the shareForSchoolDataSyncService action on [depOnboardingSetting](../api-reference/beta/resources/intune_onboarding_deponboardingsetting.md) |
|Deletion|beta|Removed the unshareForSchoolDataSyncService action on [depOnboardingSetting](../api-reference/beta/resources/intune_onboarding_deponboardingsetting.md) |
|Deletion|beta|Removed the exportMobileConfig](../api-reference/beta/api/intune_corpenrollment_enrollmentprofile_exportmobileconfig.md) function on [enrollmentProfile](../api-reference/beta/resources/intune_corpenrollment_enrollmentprofile.md) |
|Addition|beta|Added the **userDomainNameSource** and **customDomainName** properties to the [androidEasEmailProfileConfiguration](../api-reference/beta/resources/intune_deviceconfig_androideasemailprofileconfiguration.md) entity|
|Addition|beta|Added the **workProfileBlockCamera** and **workProfileBlockCrossProfileContactsSearch** properties to the [androidForWorkGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md) entity|
|Addition|beta|Added the **workProfileBlockCamera** and **workProfileBlockCrossProfileContactsSearch** properties to the [androidWorkProfileGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilegeneraldeviceconfiguration.md) entity|
|Addition|beta|Added the **thirdPartyKeyboardsBlocked** and **filterOpenInToOnlyManagedApps** properties to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Addition|beta|Added the **conflictCount** property to the [deviceComplianceUserOverview](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceuseroverview.md) entity|
|Addition|beta|Added the **conflictCount** property to the [deviceConfigurationUserOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview.md) entity|
|Addition|beta|Added the **managedDeviceCleanupSettings** property to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity|
|Deletion|beta|Removed the **usernameSource** property from the [iosEasEmailProfileConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioseasemailprofileconfiguration.md) entity|
|Addition|beta|Added the **thirdPartyKeyboardsBlocked** and **filterOpenInToOnlyManagedApps** properties to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity|
|Addition|beta|Added the **ignoreVersionDetection** property to the [macOSLobApp](../api-reference/beta/resources/intune_apps_macoslobapp.md) entity|
|Addition|beta|Added the **pinRequiredOnLaunchInsteadOfBiometric** and **pinRequiredInsteadOfBiometricTimeout** properties to the [managedAppProtection](../api-reference/beta/resources/intune_mam_managedappprotection.md) entity|
|Addition|beta|Added the **autopilotEnrolled**, **requireUserEnrollmentApproval**, **iccid** and **udid** properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Deletion|beta|Removed the **isAutopilotEnrolled** property from the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [managedDeviceMobileAppConfigurationDeviceSummary](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md) entity|
|Addition|beta|Added the **conflictCount** property to the [managedDeviceMobileAppConfigurationUserSummary](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationusersummary.md) entity|
|Addition|beta|Added the **scopeType** property to the [roleAssignment](../api-reference/beta/resources/intune_rbac_roleassignment.md) entity|
|Deletion|beta|Removed the **usernameSource** property from the [windows10EasEmailProfileConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10easemailprofileconfiguration.md) entity|
|Addition|beta|Added the **localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees**, **localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers**, **localSecurityOptionsDisableServerDigitallySignCommunicationsAlways**, **localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees**, **localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares**, **localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts**, **localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares**, **localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange** and **localSecurityOptionsSmartCardRemovalBehavior** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity|
|Addition|beta|Added the **showInstallationProgress**, **blockDeviceSetupRetryByUser**, **allowDeviceResetOnInstallFailure**, **allowLogCollectionOnInstallFailure**, **customErrorMessage**, **installProgressTimeoutInMinutes** and **allowDeviceUseOnInstallFailure** properties to the [windows10EnrollmentCompletionPageConfiguration](../api-reference/beta/resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md) entity|
|Deletion|beta|Removed the **title**, **bodyText**, **moreInfoUrl** and **moreInfoText** properties from the [windows10EnrollmentCompletionPageConfiguration](../api-reference/beta/resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md) entity|
|Addition|beta|Added the **defenderBlockOnAccessProtection**, **defenderScheduleScanDay** and **defenderSubmitSamplesConsentType** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Addition|beta|Added the **language** and **enrollmentSettings** properties to the [windowsAutopilotDeploymentProfile](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeploymentprofile.md) entity|
|Addition|beta|Added the **useDeviceContext** property to the [windowsMobileMSI](../api-reference/beta/resources/intune_apps_windowsmobilemsi.md) entity|
|Deletion|beta|Removed the **usernameSource** property from the [windowsPhoneEASEmailProfileConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsphoneeasemailprofileconfiguration.md) entity|
|Deletion|beta|Removed the **localActions** navigation property from the [androidCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidcompliancepolicy.md) entity|
|Deletion|beta|Removed the **enrollmentProfiles** and **importedAppleDeviceIdentities** navigation properties from the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity|
|Addition|beta|Added the **mobileAppIntentAndStates** and **mobileAppTroubleshootingEvents** navigation properties to the [user](../api-reference/beta/resources/intune_shared_user.md) entity|
|Addition|beta|Added the **deviceUsageType** and **skipKeyboardSelectionPage** properties to the [outOfBoxExperienceSettings](../api-reference/beta/resources/intune_enrollment_outofboxexperiencesettings.md) complex type|
|Deletion|beta|Removed the **paloAltoGlobalProtect** member from the [androidForWorkVpnConnectionType](../api-reference/beta/resources/intune_deviceconfig_androidforworkvpnconnectiontype.md) enum type|
|Addition|beta|Added the **samAccountName** and **primarySmtpAddress** members to the [androidUsernameSource](../api-reference/beta/resources/intune_deviceconfig_androidusernamesource.md) enum type|
|Deletion|beta|Removed the **paloAltoGlobalProtect** member from the [androidVpnConnectionType](../api-reference/beta/resources/intune_deviceconfig_androidvpnconnectiontype.md) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [windows10VpnConnectionType](../api-reference/beta/resources/intune_deviceconfig_windows10vpnconnectiontype.md) enum type|

### Insights API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added the [settings](../api-reference/beta/resources/user_settings.md) entity and the following CRUD methods: <br> [Get](../api-reference/beta/api/user_get_settings.md) <br> [Update](../api-reference/beta/api/user_update_settings.md) |

### Azure AD APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change           | Beta          | Renamed the **creatorUserId** property of the [subscription](../api-reference/beta/resources/subscription.md) entity to **creatorId** to better reflect its meaning. |

## April 2018

### Audit log API

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added the [directoryAudit](../api-reference/beta/resources/directoryaudit.md) and [signIn](../api-reference/beta/resources/signin.md) entities to support a new audit log API. |
|Addition|Beta|Added the following resources to support the audit log API: [appIndentity](../api-reference/beta/resources/appidentity.md), [auditActivityInitiator](../api-reference/beta/resources/auditactivityinitiator.md), [conditionalAccessPolicy](../api-reference/beta/resources/conditionalaccesspolicy.md), [deviceDetail](../api-reference/beta/resources/devicedetail.md), [mfaDetail](../api-reference/beta/resources/mfadetail.md), [modifiedProperty](../api-reference/beta/resources/modifiedproperty.md), [signinLocation](../api-reference/beta/resources/signinlocation.md), [signinStatus](../api-reference/beta/resources/signinstatus.md), [targetResource](../api-reference/beta/resources/targetresource.md), [targetResourceApp](../api-reference/beta/resources/targetresourceapp.md), [targetResourceDevice](../api-reference/beta/resources/targetresourcedevice.md), [targetResourceDirectory](../api-reference/beta/resources/targetresourcedirectory.md), [targetResourceGroup](../api-reference/beta/resources/targetresourcegroup.md), [targetResourceOther](../api-reference/beta/resources/targetresourceother.md), [targetResourcePolicy](../api-reference/beta/resources/targetresourcepolicy.md), [targetResourceRole](../api-reference/beta/resources/targetresourcerole.md), [targetResourceServicePrincipal](../api-reference/beta/resources/targetresourceserviceprincipal.md), [targetResourceUser](../api-reference/beta/resources/targetresourceuser.md), [userIdentity](../api-reference/beta/resources/useridentity.md) |

### Directory APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the **privacyProfile** complex type to the [organization](../api-reference/v1.0/resources/organization.md) entity. |
| Addition        | v1.0        | Added the **legalAgeGroup, ageGroup and consentProvidedForMinor** complex type to the [user](../api-reference/v1.0/resources/user.md) entity. |
| Addition        | v1.0        | Added users and groups support to [webhook](../api-reference/v1.0/resources/webhooks.md) notification subscriptions. |
| Addition        | beta        | Added [List deleted items owned by a user](../api-reference/beta/api/directory_deleteditems_user_owned.md) action to [directory (deleted items)](../api-reference/beta/resources/directory.md) resource |

### Education APIs

|Change type|Version|Description|
|:---|:---|:---|
|Change|Beta|Added the reportableIdentifier property to [educationsynchronizationerror](../api-reference/beta/resources/educationsynchronizationerror.md).|
|Change|Beta|Updated the response options for the [uploadUrl](../api-reference/beta/api/educationsynchronizationprofile_uploadurl.md) API.|
|Change|Beta|Updated the text for description of the [educationSynchronizationError](../api-reference/beta/resources/educationsynchronizationerror.md) resource type.|
|Change|Beta|Updated the text for description of the [get sync errors](../api-reference/beta/api/educationsynchronizationerrors_get.md) API.|


### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[managedDeviceMobileAppConfigurationDeviceStatus](../api-reference/v1.0/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md)<br/>|
|Addition|v1.0|Added new enum types:<br/>[managedDeviceOwnerType](../api-reference/v1.0/resources/intune_devices_manageddeviceownertype.md)<br/>|
|Addition|v1.0|Added the **managedDeviceOwnerType** property to the [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) entity|
|Addition|v1.0|Added the **deviceStatuses** navigation property to the [managedDeviceMobileAppConfiguration](../api-reference/v1.0/resources/intune_apps_manageddevicemobileappconfiguration.md) entity|
|Addition|v1.0|Added the **androidWorkProfile** member to the [policyPlatformType](../api-reference/v1.0/resources/intune_deviceconfig_policyplatformtype.md) enum type|
|Addition|beta|Added new entities:<br/>[androidWorkProfileCertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md)<br/>[androidWorkProfileCustomConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilecustomconfiguration.md)<br/>[androidWorkProfileEasEmailProfileBase](../api-reference/beta/resources/intune_deviceconfig_androidworkprofileeasemailprofilebase.md)<br/>[androidWorkProfileEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidworkprofileenterprisewificonfiguration.md)<br/>[androidWorkProfileGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilegeneraldeviceconfiguration.md)<br/>[androidWorkProfileGmailEasConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilegmaileasconfiguration.md)<br/>[androidWorkProfileNineWorkEasConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilenineworkeasconfiguration.md)<br/>[androidWorkProfilePkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilepkcscertificateprofile.md)<br/>[androidWorkProfileScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md)<br/>[androidWorkProfileTrustedRootCertificate](../api-reference/beta/resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate.md)<br/>[androidWorkProfileVpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilevpnconfiguration.md)<br/>[androidWorkProfileWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilewificonfiguration.md)<br/>[restrictedAppsViolation](../api-reference/beta/resources/intune_deviceconfig_restrictedappsviolation.md)<br/>[windowsAutopilotDeploymentProfileAssignment](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeploymentprofileassignment.md)<br/>|
|Addition|beta|Added new complex types:<br/>[managedDeviceModelsAndManufacturers](../api-reference/beta/resources/intune_devices_manageddevicemodelsandmanufacturers.md)<br/>[managedDeviceReportedApp](../api-reference/beta/resources/intune_devices_manageddevicereportedapp.md)<br/>[windowsEnrollmentStatusScreenSettings](../api-reference/beta/resources/intune_enrollment_windowsenrollmentstatusscreensettings.md)<br/>|
|Addition|beta|Added new enum types:<br/>[androidWorkProfileCrossProfileDataSharingType](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilecrossprofiledatasharingtype.md)<br/>[androidWorkProfileDefaultAppPermissionPolicyType](../api-reference/beta/resources/intune_deviceconfig_androidworkprofiledefaultapppermissionpolicytype.md)<br/>[androidWorkProfileRequiredPasswordType](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilerequiredpasswordtype.md)<br/>[androidWorkProfileVpnConnectionType](../api-reference/beta/resources/intune_deviceconfig_androidworkprofilevpnconnectiontype.md)<br/>[bitLockerRecoveryInformationType](../api-reference/beta/resources/intune_deviceconfig_bitlockerrecoveryinformationtype.md)<br/>[localSecurityOptionsInformationShownOnLockScreenType](../api-reference/beta/resources/intune_deviceconfig_localsecurityoptionsinformationshownonlockscreentype.md)<br/>[managedAppRemediationAction](../api-reference/beta/resources/intune_mam_managedappremediationaction.md)<br/>[managedDeviceOwnerType](../api-reference/beta/resources/intune_devices_manageddeviceownertype.md)<br/>[restrictedAppsState](../api-reference/beta/resources/intune_deviceconfig_restrictedappsstate.md)<br/>[windows10VpnProfileTarget](../api-reference/beta/resources/intune_deviceconfig_windows10vpnprofiletarget.md)<br/>|
|Addition|beta|Added the [playLostModeSound](../api-reference/beta/api/intune_devices_manageddevice_playlostmodesound.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
|Deletion|beta|Removed the following enum types:<br/>**bitLockerRecoveryinformationType**<br/>**windowsUpdateRestartMode**<br/>|
|Addition|beta|Added the **workProfileBlockScreenCapture** and **workProfileBlockCrossProfileCallerId** properties to the [androidForWorkGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md) entity|
|Addition|beta|Added the **minimumWipePatchVersion**, **allowedAndroidDeviceManufacturers** and **appActionIfAndroidDeviceManufacturerNotAllowed** properties to the [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) entity|
|Addition|beta|Added the **minimumWipeSdkVersion**, **minimumWipePatchVersion**, **allowedIosDeviceModels**, **appActionIfIosDeviceModelNotAllowed**, **allowedAndroidDeviceManufacturers** and **appActionIfAndroidDeviceManufacturerNotAllowed** properties to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [deviceComplianceDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview.md) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [deviceConfigurationDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) entity|
|Addition|beta|Added the **accountMoveCompletionDateTime** property to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity|
|Addition|beta|Added the **minimumWipeSdkVersion**, **allowedIosDeviceModels** and **appActionIfIosDeviceModelNotAllowed** properties to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity|
|Addition|beta|Added the **minimumWipeOsVersion**, **minimumWipeAppVersion**, **appActionIfDeviceComplianceRequired** and **appActionIfMaximumPinRetriesExceeded** properties to the [managedAppProtection](../api-reference/beta/resources/intune_mam_managedappprotection.md) entity|
|Addition|beta|Added the **managedDeviceOwnerType**, **preferMdmOverGroupPolicyAppliedDateTime**, **isAutopilotEnrolled** and **requestUserEnrollmentApproval** properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Addition|beta|Added the **managedDeviceModelsAndManufacturers** property to the [managedDeviceOverview](../api-reference/beta/resources/intune_devices_manageddeviceoverview.md) entity|
|Addition|beta|Added the **localSecurityOptionsMachineInactivityLimitInMinutes**, **localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool**, **localSecurityOptionsInformationShownOnLockScreen**, **defenderSecurityCenterDisableAccountUI**, **defenderSecurityCenterDisableHardwareUI**, **defenderSecurityCenterDisableRansomwareUI**, **defenderSecurityCenterDisableSecureBootUI** and **defenderSecurityCenterDisableTroubleshootingUI** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity|
|Addition|beta|Added the **printerNames**, **printerDefaultName**, **printerBlockAddition** and **searchBlockWebResults** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Addition|beta|Added the **profileTarget**, **enableAlwaysOn** and **enableDeviceTunnel** properties to the [windows10VpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10vpnconfiguration.md) entity|
|Addition|beta|Added the **enrollmentStatusScreenSettings** property to the [windowsAutopilotDeploymentProfile](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeploymentprofile.md) entity|
|Addition|beta|Added the **deviceConfigurationRestrictedAppsViolations** navigation property to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity|
|Addition|beta|Added the **assignments** navigation property to the [windowsAutopilotDeploymentProfile](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeploymentprofile.md) entity|
|Addition|beta|Added the **networkAccessConfigurations** navigation property to the [windowsDomainJoinConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsdomainjoinconfiguration.md) entity|
|Deletion|beta|Removed the **permissions** property from the [auditActor](../api-reference/beta/resources/intune_auditing_auditactor.md) complex type|
|Change|beta|Changed the type of the following properties on the [bitLockerRecoveryOptions](../api-reference/beta/resources/intune_deviceconfig_bitlockerrecoveryoptions.md) complex type:<br/>**recoveryInformationToStore** from [bitLockerRecoveryinformationType](../api-reference/beta/resources/intune_deviceconfig_bitlockerrecoveryinformationtype.md) to [bitLockerRecoveryInformationType](../api-reference/beta/resources/intune_deviceconfig_bitlockerrecoveryinformationtype.md)<br/>|
|Addition|beta|Added the **deviceInactivityBeforeRetirementInDay** property to the [deviceManagementSettings](../api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings.md) complex type|
|Addition|beta|Added the **landingPageCustomizedImage** property to the [intuneBrand](../api-reference/beta/resources/intune_onboarding_intunebrand.md) complex type|
|Deletion|beta|Removed the **ipAddressOrFqdn** property from the [vpnServer](../api-reference/beta/resources/intune_deviceconfig_vpnserver.md) complex type|
|Deletion|beta|Removed the **restartMode** property from the [windowsUpdateScheduledInstall](../api-reference/beta/resources/intune_deviceconfig_windowsupdatescheduledinstall.md) complex type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidForWorkVpnConnectionType](../api-reference/beta/resources/intune_deviceconfig_androidforworkvpnconnectiontype.md) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidVpnConnectionType](../api-reference/beta/resources/intune_deviceconfig_androidvpnconnectiontype.md) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [appleVpnConnectionType](../api-reference/beta/resources/intune_deviceconfig_applevpnconnectiontype.md) enum type|
|Addition|beta|Added the **androidWorkProfile** member to the [policyPlatformType](../api-reference/beta/resources/intune_deviceconfig_policyplatformtype.md) enum type|

### Outlook calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | Added the **locations** property to the [event](../api-reference/v1.0/resources/event.md) entity to support organizing an event that attendees can attend from more than one location. |
| Addition        | v1.0          | Added the **locationType** property to the [location](../api-reference/v1.0/resources/location.md) complex type. |
| Addition        | v1.0          | Added the **uniqueId** and **uniqueIdType** properties to the [location](../api-reference/v1.0/resources/location.md) complex type. These properties are only for internal use at this point. |


### Outlook contacts

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0          | Added the **flag** property to the [contact](../api-reference/v1.0/resources/contact.md) entity. Added the shared [followupFlag](../api-reference/v1.0/resources/followupflag.md) complex type.|


### Outlook mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0          | Added the **flag** property to the [message](../api-reference/v1.0/resources/message.md) entity. Added the shared [followupFlag](../api-reference/v1.0/resources/followupflag.md) complex type.|
| Addition        | v1.0        | Added the **internetMessageHeaders** property to the [message](../api-reference/v1.0/resources/message.md) entity. |
| Addition        | v1.0        | Added the [internetMessageHeader](../api-reference/v1.0/resources/internetmessageheader.md) complex type. |
| Addition        | v1.0        | Added the **messageRules** navigation property to the [mailFolder](../api-reference/v1.0/resources/mailfolder.md) entity. **messageRules** is a collection of [messageRule](../api-reference/v1.0/resources/messagerule.md) instances. |
| Addition        | v1.0        | Added the [messageRule](../api-reference/v1.0/resources/messagerule.md) entity, and [messageRuleActions](../api-reference/v1.0/resources/messageruleactions.md), [messageRulePredicates](../api-reference/v1.0/resources/messagerulepredicates.md), and [sizeRange](../api-reference/v1.0/resources/sizerange.md) complex types. |
| Addition        | v1.0        | Added the following CRUD operations for message rules: [create](../api-reference/v1.0/api/mailfolder_post_messagerules.md), [list](../api-reference/v1.0/api/mailfolder_list_messagerules.md), [get](../api-reference/v1.0/api/messagerule_get.md), [update](../api-reference/v1.0/api/messagerule_update.md), and [delete](../api-reference/v1.0/api/messagerule_delete.md). |
| Addition | Beta | Added [mailSearchFolder](../api-reference/beta/resources/mailsearchfolder.md). |
| Addition | Beta | Added the following APIs for mail search folder: [Create](../api-reference/beta/api/mailsearchfolder_post.md), [Update](../api-reference/beta/api/mailsearchfolder_update.md). |
| Change | Beta | Added support for mail search folder to [delete mailFolder](../api-reference/beta/api/mailfolder_delete.md), [get mailFolder](../api-reference/beta/api/mailfolder_get.md), and [list child folders](../api-reference/beta/api/mailfolder_list_childfolders.md). |


### Outlook user choices

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the new **masterCategories** navigation property to the [outlookUser](../api-reference/v1.0/resources/outlookuser.md) entity. **masterCategories** is a collection of [outlookCategory](../api-reference/v1.0/resources/outlookCategory.md) objects. |
| Addition        | v1.0        | Added the [outlookCategory](../api-reference/v1.0/resources/outlookCategory.md) entity. |
| Addition        | v1.0        | Added the following CRUD operations for [outlookCategory](../api-reference/v1.0/resources/outlookCategory.md): [create](../api-reference/v1.0/api/outlookuser_post_mastercategories.md), [get](../api-reference/v1.0/api/outlookcategory_get.md), [update](../api-reference/v1.0/api/outlookcategory_update.md), and [delete](../api-reference/v1.0/api/outlookcategory_delete.md). |
| Addition        | v1.0        | Added the new [supportedLanguages](../api-reference/v1.0/api/outlookuser_supportedlanguages.md) function to the [outlookUser](../api-reference/v1.0/resources/outlookuser.md) entity. |
| Addition        | v1.0        | Added the new [supportedTimeZones](../api-reference/v1.0/api/outlookuser_supportedtimezones.md) function to the [outlookUser](../api-reference/v1.0/resources/outlookuser.md) entity. |
|Addition | v1.0 | Added the new **workingHours** property to [mailboxSettings](../api-reference/v1.0/resources/mailboxsettings.md). See [workingHours resource type](../api-reference/v1.0/resources/workinghours.md) for information on the supported use cases.|
|Addition | v1.0 | Added the following new complex types: <br> [workingHours](../api-reference/v1.0/resources/workinghours.md) <br> [timeZoneBase](../api-reference/v1.0/resources/timezonebase.md) <br> [customTimeZone](../api-reference/v1.0/resources/customtimezone.md) <br> [standardTimeZoneOffset](../api-reference/v1.0/resources/standardtimezoneoffset.md) <br> [daylightTimeZoneOffset](../api-reference/v1.0/resources/daylighttimezoneoffset.md)|


### Microsoft Teams

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new [teamMemberSettings](../api-reference/beta/resources/teamMemberSettings.md) entity.|
|Addition|Beta|Added new [teamGuestSettings](../api-reference/beta/resources/teamGuestSettings.md) entity.|
|Addition|Beta|Added new [teamMessagingSettings](../api-reference/beta/resources/teamMessagingSettings.md) entity.|
|Addition|Beta|Added new [teamFunSettings](../api-reference/beta/resources/teamFunSettings.md) entity.|
|Addition|Beta|Added new [delete channel](../api-reference/beta/api/channel_delete.md) operation.|
|Addition|Beta|Added new [patch channel](../api-reference/beta/api/channel_patch.md) operation.|
|Addition|Beta|Added new webUrl property to [team](../api-reference/beta/resources/team.md) resource.|
|Change|Beta|Updated the path to the [channel](../api-reference/beta/resources/channel.md) entity.|


### Project Rome APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | v1.0 | Added [Get recent activities API](../api-reference/v1.0/api/projectrome_get_recent_activities.md) |
| Addition | v1.0 | Added [Get activities API](../api-reference/v1.0/api/projectrome_get_activities.md) |
| Addition | v1.0 | Added [Upsert Activity](../v1.0/api/projectrome_put_activity) |
| Addition | v1.0 | Added [Upsert HistoryItem](../v1.0/projectrome_put_historyitem) |
| Addition | v1.0 | Added [Delete Activity](../v1.0/projectrome_delete_activity) |
| Addition | v1.0 | Added [Upsert HistoryItem](../v1.0/projectrome_delete_historyItem) |
| Addition | v1.0 | Added [activity](../api-reference/v1.0/resources/projectrome_activity.md) |
| Addition | v.10 | Added [historyItem](../api-reference/v1.0/resources/projectrome_historyitem.md) |
| Addition | v1.0 | Added [visualInfo](../api-reference/v1.0/resources/projectrome_visualinfo.md) |
| Addition | v1.0 | Added [imageInfo](../api-reference/v1.0/resources/projectrome_imageinfo.md) |
| Addition | v.10 | Added [Project Rome overview](../api-reference/v1.0/resources/project_rome_overview.md) |
| Change | Beta | Added deep insert documentation to [Upsert Activity](../beta/api/projectrome_put_activity.md) |

### Reports APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta| Added delegated access support. |
|Addition|v1.0| Added delegated access support. |

### Security APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added the [security API](../api-reference/beta/resources/security-api-overview.md), including the following resources and operations:<br/>[alert](../api-reference/beta/resources/alert.md) (and related entities)<br/>[Get alert](../api-reference/beta/api/alert_get.md)<br/>[List alerts](../api-reference/beta/api/alert_list.md)<br/>[Update alert](../api-reference/beta/api/alert_update.md)<br/><br/>Added the following supporting documentation:<br/>[Errors](../api-reference/beta/resources/security-error-codes.md)<br/>[Integrate with a SIEM](../concepts/security_siemintegration.md)


## March 2018

### Data Policy Operations

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added new entity [dataPolicyOperation](../api-reference/beta/resources/dataPolicyOperation.md). This represents a submitted data policy operation for tracking purposes.
| Addition        | beta        | Added the [exportPersonalData](../api-reference/beta/api/user_exportPersonalData.md) action on [users](../api-reference/beta/resources/users.md). This action submits a data policy operation request to export personal data stored by Microsoft for a user. |

### ActivityFeedService APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added [Get recent activities API](../api-reference/beta/api/projectrome_get_recent_activities.md) |
| Addition        | Beta       | Added [Get activities API](../api-reference/beta/api/projectrome_get_activities.md) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert Activity](../beta/api/projectrome_put_activity) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert HistoryItem](../beta/projectrome_put_historyitem) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Delete Activity](../beta/projectrome_delete_activity) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert HistoryItem](../beta/projectrome_delete_historyItem) |
| Change | Beta | Added **status** property to [activity](../api-reference/beta/resources/projectrome_activity.md) |
| Change | Beta | Added **activity** navigation property to [historyItem](../api-reference/beta/resources/projectrome_historyitem.md) |
| Change | Beta | Added new APIs to [Project Rome overview](../api-reference/beta/resources/project_rome_overview.md) |

### Azure AD APIs

|Change type|Version|Description|
|:---|:---|:---|
|Change|beta|Added the **applicationID** and **creatorUserID** properties to the [subscription](../api-reference/beta/resources/subscription.md) resource. |
|Change|beta|Added the [list](../api-reference/beta/api/subscription_list.md) operation to the [subscription](../api-reference/beta/resources/subscription.md) entity. |


### Directory APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **onPremisesExtensionAttributes** complex type to the [user](../api-reference/beta/resources/user.md) entity. This contains the on-premises AD extension attributes 1-15. |
| Addition        | Beta        | Added the **privacyProfile** complex type to the [organization](../api-reference/beta/resources/organization.md) entity. |
| Addition        | v1.0        | Added support for [restoring and permanently deleting users and groups](../api-reference/v1.0/resources/directory.md). |

### Excel APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Change|v1.0|Added the **legacyId** property to the [Excel Table](../api-reference/v1.0/resources/table.md) entity. This will contain the numeric value identifier (string data type) that will remain constact for a given Excel table. This is provided as an additional metadata if the application relied on the legacy identifier used in older Excel client applications. Note: The `id` and `legacyId` property should be treated as an opaque string value and should not be parsed to any other type within your application. |

### Reports APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Addition|beta|Added the **siteId** property to the [sharePointSiteUsageDetail](../api-reference/beta/resources/sharepointsiteusagedetail.md) entity.|

### Group lifecycle policy

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added [groupLifecyclePolicy](../api-reference/v1.0/resources/grouplifecyclepolicy.md) |
| Addition        | v1.0        | Added the following APIs for group lifecycle policy: [Create](../api-reference/v1.0/api/grouplifecyclepolicy_post_grouplifecyclepolicies.md), [List](../api-reference/v1.0/api/grouplifecyclepolicy_list.md), [Get](../api-reference/v1.0/api/grouplifecyclepolicy_get.md), [Update](../api-reference/v1.0/api/grouplifecyclepolicy_update.md), [Delete](../api-reference/v1.0/api/grouplifecyclepolicy_delete.md), [Add group](../api-reference/v1.0/api/grouplifecyclepolicy_addgroup.md), [Remove group](../api-reference/v1.0/api/grouplifecyclepolicy_removegroup.md) |
| Addition        | v1.0        | Added [List groupLifecyclePolicies](../api-reference/v1.0/api/group_list_grouplifecyclepolicies.md) function to [group](../api-reference/v1.0/resources/group.md) |
| Change | v1.0 | Added renewedDateTime property and [renew](../api-reference/v1.0/api/group_renew.md) to [group](../api-reference/v1.0/resources/group.md) |

### Terms of use

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the [agreement](../api-reference/beta/resources/agreement.md) and [agreementAcceptance](../api-reference/beta/resources/agreementAcceptance.md) resources. |
| Addition        | Beta        | Added the following APIs for [agreement](../api-reference/beta/resources/agreement.md): [Create](../api-reference/beta/api/greement_post_agreements.md), [List](../api-reference/beta/api/agreement_list.md), [Get](../api-reference/beta/api/agreement_get.md), [Update](../api-reference/beta/api/agreement_update.md), [Delete](../api-reference/beta/api/agreement_delete.md). |
| Addition        | Beta        | Added the [agreementAcceptance](../api-reference/beta/resources/agreementAcceptance.md) relationships to the [user](../api-reference/beta/resources/user.md) resource. |

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[iosMobileAppConfiguration](../api-reference/v1.0/resources/intune_apps_iosmobileappconfiguration.md)<br/>[vppToken](../api-reference/v1.0/resources/intune_onboarding_vpptoken.md)<br/>|
|Addition|v1.0|Added new complex types:<br/>[appConfigurationSettingItem](../api-reference/v1.0/resources/intune_apps_appconfigurationsettingitem.md)<br/>|
|Addition|v1.0|Added the [syncLicenses](../api-reference/v1.0/api/intune_onboarding_vpptoken_synclicenses.md) action on [vppToken](../api-reference/v1.0/resources/intune_onboarding_vpptoken.md) |
|Addition|v1.0|Added the **vppTokens** navigation property to the [deviceAppManagement](../api-reference/v1.0/resources/intune_shared_deviceappmanagement.md) entity|
|Addition|beta|Added the **managementCertificateExpirationDate** property to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Addition|beta|Added the **enhancedJailBreak** property to the [deviceManagementSettings](../api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings.md) complex type|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerEnrollmentProfile](../api-reference/beta/resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md)<br/>[androidDeviceOwnerGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md)<br/>[androidManagedStoreAccountEnterpriseSettings](../api-reference/beta/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md)<br/>[androidManagedStoreAppConfigurationSchema](../api-reference/beta/resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md)<br/>[dataSharingConsent](../api-reference/beta/resources/intune_devices_datasharingconsent.md)<br/>[deviceConfigurationUserStateSummary](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuserstatesummary.md)<br/>[macOSEndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_macosendpointprotectionconfiguration.md)<br/>[macOSImportedPFXCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_macosimportedpfxcertificateprofile.md)<br/>[macOSLobApp](../api-reference/beta/resources/intune_apps_macoslobapp.md)<br/>[managedEBookCategory](../api-reference/beta/resources/intune_books_managedebookcategory.md)<br/>[microsoftStoreForBusinessContainedApp](../api-reference/beta/resources/intune_apps_microsoftstoreforbusinesscontainedapp.md)<br/>[mobileContainedApp](../api-reference/beta/resources/intune_apps_mobilecontainedapp.md)<br/>[windowsUniversalAppXContainedApp](../api-reference/beta/resources/intune_apps_windowsuniversalappxcontainedapp.md)<br/>|
|Addition|beta|Added new complex types:<br/>[androidManagedStoreAppConfigurationSchemaItem](../api-reference/beta/resources/intune_androidforwork_androidmanagedstoreappconfigurationschemaitem.md)<br/>[deviceAndAppManagementData](../api-reference/beta/resources/intune_onboarding_deviceandappmanagementdata.md)<br/>[loggedOnUser](../api-reference/beta/resources/intune_devices_loggedonuser.md)<br/>[macOSFirewallApplication](../api-reference/beta/resources/intune_deviceconfig_macosfirewallapplication.md)<br/>[macOSLobChildApp](../api-reference/beta/resources/intune_apps_macoslobchildapp.md)<br/>[macOSMinimumOperatingSystem](../api-reference/beta/resources/intune_apps_macosminimumoperatingsystem.md)<br/>[windowsAppXAppAssignmentSettings](../api-reference/beta/resources/intune_apps_windowsappxappassignmentsettings.md)<br/>[windowsUniversalAppXAppAssignmentSettings](../api-reference/beta/resources/intune_apps_windowsuniversalappxappassignmentsettings.md)<br/>|
|Addition|beta|Added the [requestSignupUrl](../api-reference/beta/api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_requestsignupurl.md) action on [androidManagedStoreAccountEnterpriseSettings](../api-reference/beta/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md) |
|Addition|beta|Added the [completeSignup](../api-reference/beta/api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_completesignup.md) action on [androidManagedStoreAccountEnterpriseSettings](../api-reference/beta/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md) |
|Addition|beta|Added the [syncApps](../api-reference/beta/api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_syncapps.md) action on [androidManagedStoreAccountEnterpriseSettings](../api-reference/beta/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md) |
|Addition|beta|Added the [unbind](../api-reference/beta/api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_unbind.md) action on [androidManagedStoreAccountEnterpriseSettings](../api-reference/beta/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md) |
|Addition|beta|Added the [revokeToken](../api-reference/beta/api/intune_androidforwork_androiddeviceownerenrollmentprofile_revoketoken.md) action on [androidDeviceOwnerEnrollmentProfile](../api-reference/beta/resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md) |
|Addition|beta|Added the [createToken](../api-reference/beta/api/intune_androidforwork_androiddeviceownerenrollmentprofile_createtoken.md) action on [androidDeviceOwnerEnrollmentProfile](../api-reference/beta/resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md) |
|Addition|beta|Added the [assign](../api-reference/beta/api/intune_apps_manageddevicemobileappconfiguration_assign.md) action on [managedDeviceMobileAppConfiguration](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) |
|Addition|beta|Added the [consentToDataSharing](../api-reference/beta/api/intune_devices_datasharingconsent_consenttodatasharing.md) action on [dataSharingConsent](../api-reference/beta/resources/intune_devices_datasharingconsent.md) |
|Addition|beta|Added the [getLoggedOnManagedDevices](../api-reference/beta/api/intune_devices_user_getloggedonmanageddevices.md) function on [user](../api-reference/beta/resources/intune_shared_user.md) |
|Addition|beta|Added the [exportDeviceAndAppManagementData](../api-reference/beta/api/intune_onboarding_user_exportdeviceandappmanagementdata.md) function on [user](../api-reference/beta/resources/intune_devices_user.md) |
|Addition|beta|Added the [exportDeviceAndAppManagementData](../api-reference/beta/api/intune_onboarding_user_exportdeviceandappmanagementdata.md) function on [user](../api-reference/beta/resources/intune_devices_user.md) |
|Deletion|beta|Removed the following entities:<br/>**appleVolumePurchaseProgramToken**<br/>**mdmAppConfigGroupAssignment**<br/>**windows10KioskConfiguration**<br/>|
|Deletion|beta|Removed the [assign](../api-reference/beta/api/intune_apps_manageddevicemobileappconfiguration_assign.md) action on [managedDeviceMobileAppConfiguration](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) |
|Deletion|beta|Removed the [syncApps](../api-reference/beta/api/intune_onboarding_applevolumepurchaseprogramtoken_syncapps.md) action on [appleVolumePurchaseProgramToken](../api-reference/beta/resources/intune_onboarding_applevolumepurchaseprogramtoken.md) |
|Addition|beta|Added the **workProfileBluetoothEnableContactSharing** property to the [androidForWorkGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md) entity|
|Addition|beta|Added the **intendedPurpose** property to the [androidForWorkImportedPFXCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkimportedpfxcertificateprofile.md) entity|
|Addition|beta|Added the **intendedPurpose** property to the [androidImportedPFXCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidimportedpfxcertificateprofile.md) entity|
|Addition|beta|Added the **intendedPurpose** property to the [iosImportedPFXCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_iosimportedpfxcertificateprofile.md) entity|
|Addition|beta|Added the **encodedSettingXml** property to the [iosMobileAppConfiguration](../api-reference/beta/resources/intune_apps_iosmobileappconfiguration.md) entity|
|Addition|beta|Added the **managedDeviceId** and **azureADDeviceId** properties to the [managedAppRegistration](../api-reference/beta/resources/intune_mam_managedappregistration.md) entity|
|Addition|beta|Added the **usersLoggedOn** property to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Deletion|beta|Removed the **lastLoggedOnUserId** property from the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Addition|beta|Added the **lastModifiedDateTime** property to the [managedDeviceOverview](../api-reference/beta/resources/intune_devices_manageddeviceoverview.md) entity|
|Addition|beta|Added the **isDependency** property to the [mobileAppContentFile](../api-reference/beta/resources/intune_apps_mobileappcontentfile.md) entity|
|Addition|beta|Added the **windowsEnabled**, **macEnabled**, **windowsDeviceBlockedOnMissingPartnerData** and **macDeviceBlockedOnMissingPartnerData** properties to the [mobileThreatDefenseConnector](../api-reference/beta/resources/intune_onboarding_mobilethreatdefenseconnector.md) entity|
|Addition|beta|Added the **shouldUninstallOlderVersionsOfOffice** property to the [officeSuiteApp](../api-reference/beta/resources/intune_apps_officesuiteapp.md) entity|
|Addition|beta|Added the **dataSharingConsentGranted** property to the [vppToken](../api-reference/beta/resources/intune_onboarding_vpptoken.md) entity|
|Addition|beta|Added the **localSecurityOptionsBlockRemoteLogonWithBlankPassword**, **localSecurityOptionsAdministratorAccountName**, **localSecurityOptionsEnableGuestAccount**, **localSecurityOptionsGuestAccountName**, **localSecurityOptionsAllowUndockWithoutHavingToLogon**, **localSecurityOptionsBlockUsersInstallingPrinterDrivers**, **localSecurityOptionsBlockRemoteOpticalDriveAccess**, **localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser**, **localSecurityOptionsMachineInactivityLimit**, **localSecurityOptionsDoNotRequireCtrlAltDel**, **localSecurityOptionsInformationDisplayedOnLockScreen**, **localSecurityOptionsHideLastSignedInUser**, **localSecurityOptionsHideUsernameAtSignIn**, **localSecurityOptionsLogOnMessageTitle**, **localSecurityOptionsLogOnMessageText**, **localSecurityOptionsAllowPKU2UAuthenticationRequests**, **localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager**, **localSecurityOptionsClearVirtualMemoryPageFile**, **localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn**, **localSecurityOptionsAllowUIAccessApplicationElevation**, **localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations**, **localSecurityOptionsOnlyElevateSignedExecutables**, **localSecurityOptionsAdministratorElevationPromptBehavior**, **localSecurityOptionsStandardUserElevationPromptBehavior**, **localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation**, **localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation**, **localSecurityOptionsAllowUIAccessApplicationsForSecureLocations**, **localSecurityOptionsUseAdminApprovalMode**, **localSecurityOptionsUseAdminApprovalModeForAdministrators**, **deviceGuardLocalSystemAuthorityCredentialGuardSettings**, **deviceGuardEnableVirtualizationBasedSecurity** and **deviceGuardEnableSecureBootWithDMA** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity|
|Deletion|beta|Removed the **defenderPasswordProtectedEmailContentExecutionType** property from the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity|
|Addition|beta|Added the **intendedPurpose** property to the [windows10ImportedPFXCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windows10importedpfxcertificateprofile.md) entity|
|Deletion|beta|Removed the **printerNames**, **defaultPrinterName** and **blockAddingNewPrinter** properties from the [windows10SecureAssessmentConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration.md) entity|
|Addition|beta|Added the **certificateStore** property to the [windows81SCEPCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windows81scepcertificateprofile.md) entity|
|Addition|beta|Added the **purchaseOrderIdentifier** property to the [windowsAutopilotDeviceIdentity](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeviceidentity.md) entity|
|Change|beta|Changed the following properties on the [windowsCertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windowscertificateprofilebase.md) entity:<br/>**subjectAlternativeNameType** from required to optional<br/>|
|Addition|beta|Added the **advancedThreatProtectionOnboardingFilename** and **advancedThreatProtectionOffboardingFilename** properties to the [windowsDefenderAdvancedThreatProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsdefenderadvancedthreatprotectionconfiguration.md) entity|
|Addition|beta|Added the **intendedPurpose** property to the [windowsPhone81ImportedPFXCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windowsphone81importedpfxcertificateprofile.md) entity|
|Addition|beta|Added the **skipChecksBeforeRestart** and **updateWeeks** properties to the [windowsUpdateForBusinessConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) entity|
|Addition|beta|Added the **managedEBookCategories** navigation property to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity|
|Addition|beta|Added the **androidManagedStoreAccountEnterpriseSettings**, **androidManagedStoreAppConfigurationSchemas**, **androidDeviceOwnerEnrollmentProfiles**, **dataSharingConsents** and **deviceConfigurationUserStateSummaries** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity|
|Deletion|beta|Removed the **deviceSetupConfigurations** navigation property from the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Deletion|beta|Removed the **groupAssignments** navigation property from the [managedDeviceMobileAppConfiguration](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) entity|
|Addition|beta|Added the **categories** navigation property to the [managedEBook](../api-reference/beta/resources/intune_books_managedebook.md) entity|
|Addition|beta|Added the **containedApps** navigation property to the [microsoftStoreForBusinessApp](../api-reference/beta/resources/intune_apps_microsoftstoreforbusinessapp.md) entity|
|Addition|beta|Added the **containedApps** navigation property to the [mobileAppContent](../api-reference/beta/resources/intune_apps_mobileappcontent.md) entity|
|Addition|beta|Added the **committedContainedApps** navigation property to the [windowsUniversalAppX](../api-reference/beta/resources/intune_apps_windowsuniversalappx.md) entity|

### OneDrive
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[baseItemVersion](../api-reference/v1.0/resources/baseItemVersion.md)<br/>[driveItemVersion](../api-reference/v1.0/resources/driveItemVersion.md)<br/>[listItemVersion](../api-reference/v1.0/resources/listItemVersion.md)<br/> |
|Addition|v1.0|Added new complex types:<br/>[publicationFacet](../api-reference/v1.0/resources/publicationFacet.md)<br/> |
|Addition|v1.0|Added the <b>publication</b> property to the [driveItem](../api-reference/v1.0/resources/driveItem.md) entity |
|Addition|v1.0|Added the <b>versions</b> navigation property to the [driveItem](../api-reference/v1.0/resources/driveItem.md) entity |
|Addition|v1.0|Added the <b>versions</b> navigation property to the [listItem](../api-reference/v1.0/resources/listItem.md) entity |
|Addition|v1.0|Added the <b>root</b> property to the [siteCollection](../api-reference/v1.0/resources/siteCollection.md) entity |
|Addition|v1.0|Added the [restoreVersion](../api-reference/v1.0/api/driveitemversion_restore.md) action for the [driveItemVersion](../api-reference/v1.0/resources/driveItemVersion.md) entity |
|Addition|v1.0|Added the [restoreVersion](../api-reference/v1.0/api/listitemversion_restore.md) action for the [listItemVersion](../api-reference/v1.0/resources/listItemVersion.md) entity |


### OneDrive
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new complex type:<br/>[itemPreviewInfo](../api-reference/beta/resources/itemPreviewInfo.md)<br/> |
|Addition|beta|Added the <b>name</b> property to the [contentTypeInfo](../api-reference/beta/resources/contentTypeInfo.md) complex type |
|Addition|beta|Added the <b>objectType</b> property to the [deleteAction](../api-reference/beta/resources/deleteAction.md) complex type |
|Addition|beta|Added the <b>newName</b> property to the [renameAction](../api-reference/beta/resources/renameAction.md) complex type |
|Addition|beta|Added the <b>tenantId</b> property to the [sharepointIds](../api-reference/beta/resources/renameAction.md) complex type |
|Addition|beta|Added the <b>lastRecordedDateTime</b> property to the [itemActivityTimeSet](../api-reference/beta/resources/itemActivityTimeSet.md) complex type |
|Addition|beta|Added the [preview](../api-reference/beta/api/driveitem_preview.md) action for the [driveItem](../api-reference/beta/resources/driveItem.md) entity |


## February 2018

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidForWorkImportedPFXCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkimportedpfxcertificateprofile.md)<br/>[androidImportedPFXCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidimportedpfxcertificateprofile.md)<br/>[importedWindowsAutopilotDeviceIdentity](../api-reference/beta/resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md)<br/>[iosImportedPFXCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_iosimportedpfxcertificateprofile.md)<br/>[windows10ImportedPFXCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windows10importedpfxcertificateprofile.md)<br/>[windows10KioskConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10kioskconfiguration.md)<br/>[windowsPhone81ImportedPFXCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windowsphone81importedpfxcertificateprofile.md)<br/>|
|Addition|beta|Added new complex types:<br/>[importedWindowsAutopilotDeviceIdentityState](../api-reference/beta/resources/intune_enrollment_importedwindowsautopilotdeviceidentitystate.md)<br/>|
|Addition|beta|Added the [managedDeviceEnrollmentFailureDetails](../api-reference/beta/api/intune_troubleshooting_reportroot_manageddeviceenrollmentfailuredetails.md) function on [reportRoot](../api-reference/beta/resources/intune_deviceconfig_reportroot.md) |
|Addition|beta|Added the [managedDeviceEnrollmentFailureDetails](../api-reference/beta/api/intune_troubleshooting_reportroot_manageddeviceenrollmentfailuredetails.md) function on [reportRoot](../api-reference/beta/resources/intune_deviceconfig_reportroot.md) |
|Addition|beta|Added the [managedDeviceEnrollmentFailureTrends](../api-reference/beta/api/intune_troubleshooting_reportroot_manageddeviceenrollmentfailuretrends.md) function on [reportRoot](../api-reference/beta/resources/intune_deviceconfig_reportroot.md) |
|Addition|beta|Added the [managedDeviceEnrollmentTopFailures](../api-reference/beta/api/intune_troubleshooting_reportroot_manageddeviceenrollmenttopfailures.md) function on [reportRoot](../api-reference/beta/resources/intune_deviceconfig_reportroot.md) |
|Addition|beta|Added the [managedDeviceEnrollmentTopFailures](../api-reference/beta/api/intune_troubleshooting_reportroot_manageddeviceenrollmenttopfailures.md) function on [reportRoot](../api-reference/beta/resources/intune_deviceconfig_reportroot.md) |
|Change|beta|Removed the **requireAppVerify**, **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders** and **requireCompanyPortalAppIntegrity** properties from the [androidCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidcompliancepolicy.md) entity|
|Change|beta|Removed the **requireAppVerify**, **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders** and **requireCompanyPortalAppIntegrity** properties from the [androidForWorkCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidforworkcompliancepolicy.md) entity|
|Change|beta|Removed the **name**, **modifiedDateTime**, **totalEnrollmentCount** and **qrCode** properties from the [androidForWorkEnrollmentProfile](../api-reference/beta/resources/intune_androidforwork_androidforworkenrollmentprofile.md) entity|
|Change|beta|Removed the **nonEapAuthenticationMethodForEapTtls**, **nonEapAuthenticationMethodForPeap** and **enableOuterIdentityPrivacy** properties from the [androidForWorkEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkenterprisewificonfiguration.md) entity|
|Change|beta|Added the **workProfileBlockAddingAccounts** property to the [androidForWorkGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md) entity|
|Change|beta|Removed the **blockCrossProfileCopyPaste** and **requireAppVerify** properties from the [androidForWorkGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md) entity|
|Change|beta|Added the **deviceOwnerManagementEnabled** property to the [androidForWorkSettings](../api-reference/beta/resources/intune_androidforwork_androidforworksettings.md) entity|
|Change|beta|Removed the **requireAppVerify** property from the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity|
|Change|beta|Added the **exemptedAppPackages** property to the [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) entity|
|Change|beta|Added the **exemptedAppProtocols** and **exemptedAppPackages** properties to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Change|beta|Added the **exemptedAppProtocols** property to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity|
|Change|beta|Added the **lastLoggedOnUserId** property to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Change|beta|Added the **isFrameworkFile** property to the [mobileAppContentFile](../api-reference/beta/resources/intune_apps_mobileappcontentfile.md) entity|
|Change|beta|Added the **targetedAppManagementLevels** property to the [targetedManagedAppProtection](../api-reference/beta/resources/intune_mam_targetedmanagedappprotection.md) entity|
|Change|beta|Added the **localSecurityOptionsBlockMicrosoftAccounts**, **localSecurityOptionsEnableAdministratorAccount**, **defenderPreventCredentialStealingType**, **defenderProcessCreationType**, **defenderUntrustedUSBProcessType**, **defenderUntrustedExecutableType**, **defenderPasswordProtectedEmailContentExecutionType**, **defenderAdvancedRansomewareProtectionType** and **applicationGuardAllowFileSaveOnHost** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity|
|Change|beta|Added the **edgeFavoritesListLocation** and **edgeBlockEditFavorites** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|beta|Added the **printerNames**, **defaultPrinterName** and **blockAddingNewPrinter** properties to the [windows10SecureAssessmentConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration.md) entity|
|Change|beta|Added the **importedWindowsAutopilotDeviceIdentities** navigation property to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|beta|Added the **shareAPNSData** property to the [adminConsent](../api-reference/beta/resources/intune_devices_adminconsent.md) complex type|
|Change|beta|Removed the **collectFullIOSAppInventory** property from the [adminConsent](../api-reference/beta/resources/intune_devices_adminconsent.md) complex type|
|Change|beta|Removed the **deviceUsageType** property from the [outOfBoxExperienceSettings](../api-reference/beta/resources/intune_enrollment_outofboxexperiencesettings.md) complex type|


### Planner APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new complex types:<br/>[plannerPlanContext](../api-reference/beta/resources/plannerPlanContext.md)<br/>[plannerPlanContextDetails](../api-reference/beta/resources/plannerPlanContextDetails.md)<br/>[plannerPlanContextCollection](../api-reference/beta/resources/plannerPlanContextCollection.md)<br/>[plannerPlanContextDetailsCollection](../api-reference/beta/resources/plannerPlanContextDetailsCollection.md)<br/>[plannerFavoritePlanReference](../api-reference/beta/resources/plannerFavoritePlanReference.md)<br/>[plannerRecentPlanReference](../api-reference/beta/resources/plannerRecentPlanReference.md)<br/>[plannerFavoritePlanReferenceCollection](../api-reference/beta/resources/plannerFavoritePlanReferenceCollection.md)<br/>[plannerRecentPlanReferenceCollection](../api-reference/beta/resources/plannerRecentPlanReferenceCollection.md)|
|Addition|Beta|Added `favoritePlanReferences` and `recentPlanReferences` properties to [plannerUser](../api-reference/beta/resources/plannerUser.md) entity. |
|Addition|Beta|Added `favoritePlans` and `recentPlans` navigation properties to [plannerUser](../api-reference/beta/resources/plannerUser.md) entity. |
|Addition|Beta|Added `contexts` property to [plannerPlan](../api-reference/beta/resources/plannerPlan.md) entity. |
|Addition|Beta|Added `contextDetails` property to [plannerPlanDetails](../api-reference/beta/resources/plannerPlanDetails.md) entity. |
|Addition|Beta|Added Planner [delta query](../api-reference/beta/api/planneruser_list_delta.md) |

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | Beta    | Added the **activatedOnSharedComputer** property to the [userActivationCounts](../api-reference/beta/resources/useractivationcounts.md) entity.|
| Addition    | Beta    | Added the **sharedComputerActivation** property to the [office365ActivationsUserCounts](../api-reference/beta/resources/office365activationsusercounts.md) entity.|

## January 2018

### JSON Batching

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added [JSON batching](../concepts/json_batching.md(../concepts/json_batching support. Internal request limit set to 20.|
|Change|Beta|Increased [JSON batching](../concepts/json_batching.md(../concepts/json_batching internal request limit from 5 to 20.|

### Education APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added extra navigation properties and improve filtering support for [roster API](../api-reference/beta/resources/education-overview).|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[androidCompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_androidcompliancepolicy.md)<br/>[androidCustomConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_androidcustomconfiguration.md)<br/>[androidGeneralDeviceConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md)<br/>[androidLobApp](../api-reference/v1.0/resources/intune_apps_androidlobapp.md)<br/>[androidManagedAppProtection](../api-reference/v1.0/resources/intune_mam_androidmanagedappprotection.md)<br/>[androidManagedAppRegistration](../api-reference/v1.0/resources/intune_mam_androidmanagedappregistration.md)<br/>[androidStoreApp](../api-reference/v1.0/resources/intune_apps_androidstoreapp.md)<br/>[appleDeviceFeaturesConfigurationBase](../api-reference/v1.0/resources/intune_deviceconfig_appledevicefeaturesconfigurationbase.md)<br/>[applePushNotificationCertificate](../api-reference/v1.0/resources/intune_devices_applepushnotificationcertificate.md)<br/>[defaultManagedAppProtection](../api-reference/v1.0/resources/intune_mam_defaultmanagedappprotection.md)<br/>[detectedApp](../api-reference/v1.0/resources/intune_devices_detectedapp.md)<br/>[deviceAndAppManagementRoleAssignment](../api-reference/v1.0/resources/intune_rbac_deviceandappmanagementroleassignment.md)<br/>[deviceAndAppManagementRoleDefinition](../api-reference/v1.0/resources/intune_rbac_deviceandappmanagementroledefinition.md)<br/>[deviceAppManagement](../api-reference/v1.0/resources/intune_shared_deviceappmanagement.md)<br/>[deviceCategory](../api-reference/v1.0/resources/intune_shared_devicecategory.md)<br/>[deviceComplianceActionItem](../api-reference/v1.0/resources/intune_deviceconfig_devicecomplianceactionitem.md)<br/>[deviceComplianceDeviceOverview](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancedeviceoverview.md)<br/>[deviceComplianceDeviceStatus](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancedevicestatus.md)<br/>[deviceCompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancepolicy.md)<br/>[deviceCompliancePolicyAssignment](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancepolicyassignment.md)<br/>[deviceCompliancePolicyDeviceStateSummary](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md)<br/>[deviceCompliancePolicySettingStateSummary](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md)<br/>[deviceCompliancePolicyState](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancepolicystate.md)<br/>[deviceComplianceScheduledActionForRule](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancescheduledactionforrule.md)<br/>[deviceComplianceSettingState](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancesettingstate.md)<br/>[deviceComplianceUserOverview](../api-reference/v1.0/resources/intune_deviceconfig_devicecomplianceuseroverview.md)<br/>[deviceComplianceUserStatus](../api-reference/v1.0/resources/intune_deviceconfig_devicecomplianceuserstatus.md)<br/>[deviceConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfiguration.md)<br/>[deviceConfigurationAssignment](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfigurationassignment.md)<br/>[deviceConfigurationDeviceOverview](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)<br/>[deviceConfigurationDeviceStateSummary](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md)<br/>[deviceConfigurationDeviceStatus](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfigurationdevicestatus.md)<br/>[deviceConfigurationState](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfigurationstate.md)<br/>[deviceConfigurationUserOverview](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfigurationuseroverview.md)<br/>[deviceConfigurationUserStatus](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfigurationuserstatus.md)<br/>[deviceEnrollmentConfiguration](../api-reference/v1.0/resources/intune_onboarding_deviceenrollmentconfiguration.md)<br/>[deviceEnrollmentLimitConfiguration](../api-reference/v1.0/resources/intune_onboarding_deviceenrollmentlimitconfiguration.md)<br/>[deviceEnrollmentPlatformRestrictionsConfiguration](../api-reference/v1.0/resources/intune_onboarding_deviceenrollmentplatformrestrictionsconfiguration.md)<br/>[deviceEnrollmentWindowsHelloForBusinessConfiguration](../api-reference/v1.0/resources/intune_onboarding_deviceenrollmentwindowshelloforbusinessconfiguration.md)<br/>[deviceInstallState](../api-reference/v1.0/resources/intune_books_deviceinstallstate.md)<br/>[deviceManagement](../api-reference/v1.0/resources/intune_androidforwork_devicemanagement.md)<br/>[deviceManagementExchangeConnector](../api-reference/v1.0/resources/intune_onboarding_devicemanagementexchangeconnector.md)<br/>[deviceManagementPartner](../api-reference/v1.0/resources/intune_onboarding_devicemanagementpartner.md)<br/>[deviceManagementTroubleshootingEvent](../api-reference/v1.0/resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md)<br/>[eBookInstallSummary](../api-reference/v1.0/resources/intune_books_ebookinstallsummary.md)<br/>[editionUpgradeConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_editionupgradeconfiguration.md)<br/>[enrollmentConfigurationAssignment](../api-reference/v1.0/resources/intune_onboarding_enrollmentconfigurationassignment.md)<br/>[enrollmentTroubleshootingEvent](../api-reference/v1.0/resources/intune_troubleshooting_enrollmenttroubleshootingevent.md)<br/>[iosCertificateProfile](../api-reference/v1.0/resources/intune_deviceconfig_ioscertificateprofile.md)<br/>[iosCompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_ioscompliancepolicy.md)<br/>[iosCustomConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_ioscustomconfiguration.md)<br/>[iosDeviceFeaturesConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md)<br/>[iosGeneralDeviceConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md)<br/>[iosLobApp](../api-reference/v1.0/resources/intune_apps_ioslobapp.md)<br/>[iosManagedAppProtection](../api-reference/v1.0/resources/intune_mam_iosmanagedappprotection.md)<br/>[iosManagedAppRegistration](../api-reference/v1.0/resources/intune_mam_iosmanagedappregistration.md)<br/>[iosStoreApp](../api-reference/v1.0/resources/intune_apps_iosstoreapp.md)<br/>[iosUpdateConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_iosupdateconfiguration.md)<br/>[iosUpdateDeviceStatus](../api-reference/v1.0/resources/intune_deviceconfig_iosupdatedevicestatus.md)<br/>[iosVppApp](../api-reference/v1.0/resources/intune_apps_iosvppapp.md)<br/>[iosVppEBook](../api-reference/v1.0/resources/intune_books_iosvppebook.md)<br/>[iosVppEBookAssignment](../api-reference/v1.0/resources/intune_books_iosvppebookassignment.md)<br/>[localizedNotificationMessage](../api-reference/v1.0/resources/intune_notification_localizednotificationmessage.md)<br/>[macOSCompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_macoscompliancepolicy.md)<br/>[macOSCustomConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_macoscustomconfiguration.md)<br/>[macOSDeviceFeaturesConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_macosdevicefeaturesconfiguration.md)<br/>[macOSGeneralDeviceConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_macosgeneraldeviceconfiguration.md)<br/>[macOSOfficeSuiteApp](../api-reference/v1.0/resources/intune_apps_macosofficesuiteapp.md)<br/>[managedAndroidLobApp](../api-reference/v1.0/resources/intune_apps_managedandroidlobapp.md)<br/>[managedAndroidStoreApp](../api-reference/v1.0/resources/intune_apps_managedandroidstoreapp.md)<br/>[managedApp](../api-reference/v1.0/resources/intune_apps_managedapp.md)<br/>[managedAppConfiguration](../api-reference/v1.0/resources/intune_mam_managedappconfiguration.md)<br/>[managedAppOperation](../api-reference/v1.0/resources/intune_mam_managedappoperation.md)<br/>[managedAppPolicy](../api-reference/v1.0/resources/intune_mam_managedapppolicy.md)<br/>[managedAppPolicyDeploymentSummary](../api-reference/v1.0/resources/intune_mam_managedapppolicydeploymentsummary.md)<br/>[managedAppProtection](../api-reference/v1.0/resources/intune_mam_managedappprotection.md)<br/>[managedAppRegistration](../api-reference/v1.0/resources/intune_mam_managedappregistration.md)<br/>[managedAppStatus](../api-reference/v1.0/resources/intune_mam_managedappstatus.md)<br/>[managedAppStatusRaw](../api-reference/v1.0/resources/intune_mam_managedappstatusraw.md)<br/>[managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md)<br/>[managedDeviceMobileAppConfiguration](../api-reference/v1.0/resources/intune_apps_manageddevicemobileappconfiguration.md)<br/>[managedDeviceMobileAppConfigurationAssignment](../api-reference/v1.0/resources/intune_apps_manageddevicemobileappconfigurationassignment.md)<br/>[managedDeviceMobileAppConfigurationDeviceSummary](../api-reference/v1.0/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md)<br/>[managedDeviceMobileAppConfigurationUserStatus](../api-reference/v1.0/resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md)<br/>[managedDeviceMobileAppConfigurationUserSummary](../api-reference/v1.0/resources/intune_apps_manageddevicemobileappconfigurationusersummary.md)<br/>[managedDeviceOverview](../api-reference/v1.0/resources/intune_devices_manageddeviceoverview.md)<br/>[managedEBook](../api-reference/v1.0/resources/intune_books_managedebook.md)<br/>[managedEBookAssignment](../api-reference/v1.0/resources/intune_books_managedebookassignment.md)<br/>[managedIOSLobApp](../api-reference/v1.0/resources/intune_apps_managedioslobapp.md)<br/>[managedIOSStoreApp](../api-reference/v1.0/resources/intune_apps_managediosstoreapp.md)<br/>[managedMobileApp](../api-reference/v1.0/resources/intune_mam_managedmobileapp.md)<br/>[managedMobileLobApp](../api-reference/v1.0/resources/intune_apps_managedmobilelobapp.md)<br/>[mdmWindowsInformationProtectionPolicy](../api-reference/v1.0/resources/intune_mam_mdmwindowsinformationprotectionpolicy.md)<br/>[microsoftStoreForBusinessApp](../api-reference/v1.0/resources/intune_apps_microsoftstoreforbusinessapp.md)<br/>[mobileApp](../api-reference/v1.0/resources/intune_apps_mobileapp.md)<br/>[mobileAppAssignment](../api-reference/v1.0/resources/intune_apps_mobileappassignment.md)<br/>[mobileAppCategory](../api-reference/v1.0/resources/intune_apps_mobileappcategory.md)<br/>[mobileAppContent](../api-reference/v1.0/resources/intune_apps_mobileappcontent.md)<br/>[mobileAppContentFile](../api-reference/v1.0/resources/intune_apps_mobileappcontentfile.md)<br/>[mobileLobApp](../api-reference/v1.0/resources/intune_apps_mobilelobapp.md)<br/>[mobileThreatDefenseConnector](../api-reference/v1.0/resources/intune_onboarding_mobilethreatdefenseconnector.md)<br/>[notificationMessageTemplate](../api-reference/v1.0/resources/intune_notification_notificationmessagetemplate.md)<br/>[onPremisesConditionalAccessSettings](../api-reference/v1.0/resources/intune_onboarding_onpremisesconditionalaccesssettings.md)<br/>[remoteAssistancePartner](../api-reference/v1.0/resources/intune_remoteassistance_remoteassistancepartner.md)<br/>[resourceOperation](../api-reference/v1.0/resources/intune_rbac_resourceoperation.md)<br/>[roleAssignment](../api-reference/v1.0/resources/intune_rbac_roleassignment.md)<br/>[roleDefinition](../api-reference/v1.0/resources/intune_rbac_roledefinition.md)<br/>[settingStateDeviceSummary](../api-reference/v1.0/resources/intune_deviceconfig_settingstatedevicesummary.md)<br/>[sharedPCConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_sharedpcconfiguration.md)<br/>[softwareUpdateStatusSummary](../api-reference/v1.0/resources/intune_deviceconfig_softwareupdatestatussummary.md)<br/>[targetedManagedAppConfiguration](../api-reference/v1.0/resources/intune_mam_targetedmanagedappconfiguration.md)<br/>targetedManagedAppPolicyAssignment<br/>[targetedManagedAppProtection](../api-reference/v1.0/resources/intune_mam_targetedmanagedappprotection.md)<br/>[telecomExpenseManagementPartner](../api-reference/v1.0/resources/intune_tem_telecomexpensemanagementpartner.md)<br/>[termsAndConditions](../api-reference/v1.0/resources/intune_companyterms_termsandconditions.md)<br/>[termsAndConditionsAcceptanceStatus](../api-reference/v1.0/resources/intune_companyterms_termsandconditionsacceptancestatus.md)<br/>[termsAndConditionsAssignment](../api-reference/v1.0/resources/intune_companyterms_termsandconditionsassignment.md)<br/>[userInstallStateSummary](../api-reference/v1.0/resources/intune_books_userinstallstatesummary.md)<br/>[webApp](../api-reference/v1.0/resources/intune_apps_webapp.md)<br/>[windows10CompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_windows10compliancepolicy.md)<br/>[windows10CustomConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_windows10customconfiguration.md)<br/>[windows10EndpointProtectionConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md)<br/>[windows10EnterpriseModernAppManagementConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_windows10enterprisemodernappmanagementconfiguration.md)<br/>[windows10GeneralConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_windows10generalconfiguration.md)<br/>[windows10MobileCompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_windows10mobilecompliancepolicy.md)<br/>[windows10SecureAssessmentConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_windows10secureassessmentconfiguration.md)<br/>[windows10TeamGeneralConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_windows10teamgeneralconfiguration.md)<br/>[windows81CompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_windows81compliancepolicy.md)<br/>[windows81GeneralConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_windows81generalconfiguration.md)<br/>[windowsDefenderAdvancedThreatProtectionConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_windowsdefenderadvancedthreatprotectionconfiguration.md)<br/>[windowsInformationProtection](../api-reference/v1.0/resources/intune_mam_windowsinformationprotection.md)<br/>[windowsInformationProtectionAppLearningSummary](../api-reference/v1.0/resources/intune_wip_windowsinformationprotectionapplearningsummary.md)<br/>[windowsInformationProtectionAppLockerFile](../api-reference/v1.0/resources/intune_mam_windowsinformationprotectionapplockerfile.md)<br/>[windowsInformationProtectionNetworkLearningSummary](../api-reference/v1.0/resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md)<br/>[windowsInformationProtectionPolicy](../api-reference/v1.0/resources/intune_mam_windowsinformationprotectionpolicy.md)<br/>[windowsMobileMSI](../api-reference/v1.0/resources/intune_apps_windowsmobilemsi.md)<br/>[windowsPhone81CompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_windowsphone81compliancepolicy.md)<br/>[windowsPhone81CustomConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_windowsphone81customconfiguration.md)<br/>[windowsPhone81GeneralConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_windowsphone81generalconfiguration.md)<br/>[windowsUniversalAppX](../api-reference/v1.0/resources/intune_apps_windowsuniversalappx.md)<br/>[windowsUpdateForBusinessConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md)<br/>|
|Addition|v1.0|Added new complex types:<br/>[allDevicesAssignmentTarget](../api-reference/v1.0/resources/intune_shared_alldevicesassignmenttarget.md)<br/>[allLicensedUsersAssignmentTarget](../api-reference/v1.0/resources/intune_shared_alllicensedusersassignmenttarget.md)<br/>[androidMinimumOperatingSystem](../api-reference/v1.0/resources/intune_apps_androidminimumoperatingsystem.md)<br/>[androidMobileAppIdentifier](../api-reference/v1.0/resources/intune_mam_androidmobileappidentifier.md)<br/>[appListItem](../api-reference/v1.0/resources/intune_deviceconfig_applistitem.md)<br/>[bitLockerRemovableDrivePolicy](../api-reference/v1.0/resources/intune_deviceconfig_bitlockerremovabledrivepolicy.md)<br/>[configurationManagerClientEnabledFeatures](../api-reference/v1.0/resources/intune_devices_configurationmanagerclientenabledfeatures.md)<br/>[defenderDetectedMalwareActions](../api-reference/v1.0/resources/intune_deviceconfig_defenderdetectedmalwareactions.md)<br/>[deleteUserFromSharedAppleDeviceActionResult](../api-reference/v1.0/resources/intune_devices_deleteuserfromsharedappledeviceactionresult.md)<br/>[deviceActionResult](../api-reference/v1.0/resources/intune_devices_deviceactionresult.md)<br/>[deviceAndAppManagementAssignmentTarget](../api-reference/v1.0/resources/intune_shared_deviceandappmanagementassignmenttarget.md)<br/>[deviceCompliancePolicySettingState](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancepolicysettingstate.md)<br/>[deviceConfigurationSettingState](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfigurationsettingstate.md)<br/>[deviceEnrollmentPlatformRestriction](../api-reference/v1.0/resources/intune_onboarding_deviceenrollmentplatformrestriction.md)<br/>[deviceExchangeAccessStateSummary](../api-reference/v1.0/resources/intune_devices_deviceexchangeaccessstatesummary.md)<br/>[deviceGeoLocation](../api-reference/v1.0/resources/intune_devices_devicegeolocation.md)<br/>[deviceHealthAttestationState](../api-reference/v1.0/resources/intune_devices_devicehealthattestationstate.md)<br/>[deviceManagementSettings](../api-reference/v1.0/resources/intune_deviceconfig_devicemanagementsettings.md)<br/>[deviceOperatingSystemSummary](../api-reference/v1.0/resources/intune_devices_deviceoperatingsystemsummary.md)<br/>[edgeSearchEngine](../api-reference/v1.0/resources/intune_deviceconfig_edgesearchengine.md)<br/>[edgeSearchEngineBase](../api-reference/v1.0/resources/intune_deviceconfig_edgesearchenginebase.md)<br/>[edgeSearchEngineCustom](../api-reference/v1.0/resources/intune_deviceconfig_edgesearchenginecustom.md)<br/>[exclusionGroupAssignmentTarget](../api-reference/v1.0/resources/intune_shared_exclusiongroupassignmenttarget.md)<br/>[fileEncryptionInfo](../api-reference/v1.0/resources/intune_apps_fileencryptioninfo.md)<br/>[groupAssignmentTarget](../api-reference/v1.0/resources/intune_shared_groupassignmenttarget.md)<br/>[intuneBrand](../api-reference/v1.0/resources/intune_onboarding_intunebrand.md)<br/>[iosDeviceType](../api-reference/v1.0/resources/intune_apps_iosdevicetype.md)<br/>[iosHomeScreenApp](../api-reference/v1.0/resources/intune_deviceconfig_ioshomescreenapp.md)<br/>[iosHomeScreenFolder](../api-reference/v1.0/resources/intune_deviceconfig_ioshomescreenfolder.md)<br/>[iosHomeScreenFolderPage](../api-reference/v1.0/resources/intune_deviceconfig_ioshomescreenfolderpage.md)<br/>[iosHomeScreenItem](../api-reference/v1.0/resources/intune_deviceconfig_ioshomescreenitem.md)<br/>[iosHomeScreenPage](../api-reference/v1.0/resources/intune_deviceconfig_ioshomescreenpage.md)<br/>[iosLobAppAssignmentSettings](../api-reference/v1.0/resources/intune_apps_ioslobappassignmentsettings.md)<br/>[iosMinimumOperatingSystem](../api-reference/v1.0/resources/intune_apps_iosminimumoperatingsystem.md)<br/>[iosMobileAppIdentifier](../api-reference/v1.0/resources/intune_mam_iosmobileappidentifier.md)<br/>[iosNetworkUsageRule](../api-reference/v1.0/resources/intune_deviceconfig_iosnetworkusagerule.md)<br/>[iosNotificationSettings](../api-reference/v1.0/resources/intune_deviceconfig_iosnotificationsettings.md)<br/>[iosStoreAppAssignmentSettings](../api-reference/v1.0/resources/intune_apps_iosstoreappassignmentsettings.md)<br/>[iosVppAppAssignmentSettings](../api-reference/v1.0/resources/intune_apps_iosvppappassignmentsettings.md)<br/>[ipRange](../api-reference/v1.0/resources/intune_mam_iprange.md)<br/>[iPv4Range](../api-reference/v1.0/resources/intune_mam_ipv4range.md)<br/>[iPv6Range](../api-reference/v1.0/resources/intune_mam_ipv6range.md)<br/>[keyValuePair](../api-reference/v1.0/resources/intune_androidforwork_keyvaluepair.md)<br/>[locateDeviceActionResult](../api-reference/v1.0/resources/intune_devices_locatedeviceactionresult.md)<br/>[managedAppDiagnosticStatus](../api-reference/v1.0/resources/intune_mam_managedappdiagnosticstatus.md)<br/>[managedAppPolicyDeploymentSummaryPerApp](../api-reference/v1.0/resources/intune_mam_managedapppolicydeploymentsummaryperapp.md)<br/>[mediaContentRatingAustralia](../api-reference/v1.0/resources/intune_deviceconfig_mediacontentratingaustralia.md)<br/>[mediaContentRatingCanada](../api-reference/v1.0/resources/intune_deviceconfig_mediacontentratingcanada.md)<br/>[mediaContentRatingFrance](../api-reference/v1.0/resources/intune_deviceconfig_mediacontentratingfrance.md)<br/>[mediaContentRatingGermany](../api-reference/v1.0/resources/intune_deviceconfig_mediacontentratinggermany.md)<br/>[mediaContentRatingIreland](../api-reference/v1.0/resources/intune_deviceconfig_mediacontentratingireland.md)<br/>[mediaContentRatingJapan](../api-reference/v1.0/resources/intune_deviceconfig_mediacontentratingjapan.md)<br/>[mediaContentRatingNewZealand](../api-reference/v1.0/resources/intune_deviceconfig_mediacontentratingnewzealand.md)<br/>[mediaContentRatingUnitedKingdom](../api-reference/v1.0/resources/intune_deviceconfig_mediacontentratingunitedkingdom.md)<br/>[mediaContentRatingUnitedStates](../api-reference/v1.0/resources/intune_deviceconfig_mediacontentratingunitedstates.md)<br/>[microsoftStoreForBusinessAppAssignmentSettings](../api-reference/v1.0/resources/intune_apps_microsoftstoreforbusinessappassignmentsettings.md)<br/>[mimeContent](../api-reference/v1.0/resources/intune_shared_mimecontent.md)<br/>[mobileAppAssignmentSettings](../api-reference/v1.0/resources/intune_apps_mobileappassignmentsettings.md)<br/>[mobileAppIdentifier](../api-reference/v1.0/resources/intune_mam_mobileappidentifier.md)<br/>[omaSetting](../api-reference/v1.0/resources/intune_deviceconfig_omasetting.md)<br/>[omaSettingBase64](../api-reference/v1.0/resources/intune_deviceconfig_omasettingbase64.md)<br/>[omaSettingBoolean](../api-reference/v1.0/resources/intune_deviceconfig_omasettingboolean.md)<br/>[omaSettingDateTime](../api-reference/v1.0/resources/intune_deviceconfig_omasettingdatetime.md)<br/>[omaSettingFloatingPoint](../api-reference/v1.0/resources/intune_deviceconfig_omasettingfloatingpoint.md)<br/>[omaSettingInteger](../api-reference/v1.0/resources/intune_deviceconfig_omasettinginteger.md)<br/>[omaSettingString](../api-reference/v1.0/resources/intune_deviceconfig_omasettingstring.md)<br/>[omaSettingStringXml](../api-reference/v1.0/resources/intune_deviceconfig_omasettingstringxml.md)<br/>[proxiedDomain](../api-reference/v1.0/resources/intune_mam_proxieddomain.md)<br/>[remoteLockActionResult](../api-reference/v1.0/resources/intune_devices_remotelockactionresult.md)<br/>[resetPasscodeActionResult](../api-reference/v1.0/resources/intune_devices_resetpasscodeactionresult.md)<br/>[resourceAction](../api-reference/v1.0/resources/intune_rbac_resourceaction.md)<br/>[rgbColor](../api-reference/v1.0/resources/intune_onboarding_rgbcolor.md)<br/>[rolePermission](../api-reference/v1.0/resources/intune_rbac_rolepermission.md)<br/>[settingSource](../api-reference/v1.0/resources/intune_deviceconfig_settingsource.md)<br/>[sharedPCAccountManagerPolicy](../api-reference/v1.0/resources/intune_deviceconfig_sharedpcaccountmanagerpolicy.md)<br/>[updateWindowsDeviceAccountActionParameter](../api-reference/v1.0/resources/intune_devices_updatewindowsdeviceaccountactionparameter.md)<br/>[vppLicensingType](../api-reference/v1.0/resources/intune_apps_vpplicensingtype.md)<br/>[windows10NetworkProxyServer](../api-reference/v1.0/resources/intune_deviceconfig_windows10networkproxyserver.md)<br/>[windowsDefenderScanActionResult](../api-reference/v1.0/resources/intune_devices_windowsdefenderscanactionresult.md)<br/>[windowsDeviceAccount](../api-reference/v1.0/resources/intune_devices_windowsdeviceaccount.md)<br/>[windowsDeviceADAccount](../api-reference/v1.0/resources/intune_devices_windowsdeviceadaccount.md)<br/>[windowsDeviceAzureADAccount](../api-reference/v1.0/resources/intune_devices_windowsdeviceazureadaccount.md)<br/>[windowsFirewallNetworkProfile](../api-reference/v1.0/resources/intune_deviceconfig_windowsfirewallnetworkprofile.md)<br/>[windowsInformationProtectionApp](../api-reference/v1.0/resources/intune_mam_windowsinformationprotectionapp.md)<br/>[windowsInformationProtectionDataRecoveryCertificate](../api-reference/v1.0/resources/intune_mam_windowsinformationprotectiondatarecoverycertificate.md)<br/>[windowsInformationProtectionDesktopApp](../api-reference/v1.0/resources/intune_mam_windowsinformationprotectiondesktopapp.md)<br/>[windowsInformationProtectionIPRangeCollection](../api-reference/v1.0/resources/intune_mam_windowsinformationprotectioniprangecollection.md)<br/>[windowsInformationProtectionProxiedDomainCollection](../api-reference/v1.0/resources/intune_mam_windowsinformationprotectionproxieddomaincollection.md)<br/>[windowsInformationProtectionResourceCollection](../api-reference/v1.0/resources/intune_mam_windowsinformationprotectionresourcecollection.md)<br/>[windowsInformationProtectionStoreApp](../api-reference/v1.0/resources/intune_mam_windowsinformationprotectionstoreapp.md)<br/>[windowsMinimumOperatingSystem](../api-reference/v1.0/resources/intune_apps_windowsminimumoperatingsystem.md)<br/>[windowsUpdateActiveHoursInstall](../api-reference/v1.0/resources/intune_deviceconfig_windowsupdateactivehoursinstall.md)<br/>[windowsUpdateInstallScheduleType](../api-reference/v1.0/resources/intune_deviceconfig_windowsupdateinstallscheduletype.md)<br/>[windowsUpdateScheduledInstall](../api-reference/v1.0/resources/intune_deviceconfig_windowsupdatescheduledinstall.md)<br/>|
|Addition|v1.0|Added the [assign](../api-reference/v1.0/api/intune_apps_mobileapp_assign.md) action on [mobileApp](../api-reference/v1.0/resources/intune_apps_mobileapp.md) |
|Addition|v1.0|Added the [commit](../api-reference/v1.0/api/intune_apps_mobileappcontentfile_commit.md) action on [mobileAppContentFile](../api-reference/v1.0/resources/intune_apps_mobileappcontentfile.md) |
|Addition|v1.0|Added the [renewUpload](../api-reference/v1.0/api/intune_apps_mobileappcontentfile_renewupload.md) action on [mobileAppContentFile](../api-reference/v1.0/resources/intune_apps_mobileappcontentfile.md) |
|Addition|v1.0|Added the [retire](../api-reference/v1.0/api/intune_devices_manageddevice_retire.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [wipe](../api-reference/v1.0/api/intune_devices_manageddevice_wipe.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [resetPasscode](../api-reference/v1.0/api/intune_devices_manageddevice_resetpasscode.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [remoteLock](../api-reference/v1.0/api/intune_devices_manageddevice_remotelock.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [requestRemoteAssistance](../api-reference/v1.0/api/intune_devices_manageddevice_requestremoteassistance.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [disableLostMode](../api-reference/v1.0/api/intune_devices_manageddevice_disablelostmode.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [locateDevice](../api-reference/v1.0/api/intune_devices_manageddevice_locatedevice.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [bypassActivationLock](../api-reference/v1.0/api/intune_devices_manageddevice_bypassactivationlock.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [rebootNow](../api-reference/v1.0/api/intune_devices_manageddevice_rebootnow.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [shutDown](../api-reference/v1.0/api/intune_devices_manageddevice_shutdown.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [recoverPasscode](../api-reference/v1.0/api/intune_devices_manageddevice_recoverpasscode.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [cleanWindowsDevice](../api-reference/v1.0/api/intune_devices_manageddevice_cleanwindowsdevice.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [logoutSharedAppleDeviceActiveUser](../api-reference/v1.0/api/intune_devices_manageddevice_logoutsharedappledeviceactiveuser.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [deleteUserFromSharedAppleDevice](../api-reference/v1.0/api/intune_devices_manageddevice_deleteuserfromsharedappledevice.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [syncDevice](../api-reference/v1.0/api/intune_devices_manageddevice_syncdevice.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [windowsDefenderScan](../api-reference/v1.0/api/intune_devices_manageddevice_windowsdefenderscan.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [windowsDefenderUpdateSignatures](../api-reference/v1.0/api/intune_devices_manageddevice_windowsdefenderupdatesignatures.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [updateWindowsDeviceAccount](../api-reference/v1.0/api/intune_devices_manageddevice_updatewindowsdeviceaccount.md) action on [managedDevice](../api-reference/v1.0/resources/intune_devices_manageddevice.md) |
|Addition|v1.0|Added the [removeAllDevicesFromManagement](../api-reference/v1.0/api/intune_devices_user_removealldevicesfrommanagement.md) action on [user](../api-reference/v1.0/resources/intune_shared_user.md) |
|Addition|v1.0|Added the [assign](../api-reference/v1.0/api/intune_deviceconfig_deviceconfiguration_assign.md) action on [deviceConfiguration](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfiguration.md) |
|Addition|v1.0|Added the [assign](../api-reference/v1.0/api/intune_deviceconfig_devicecompliancepolicy_assign.md) action on [deviceCompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancepolicy.md) |
|Addition|v1.0|Added the [scheduleActionsForRules](../api-reference/v1.0/api/intune_deviceconfig_devicecompliancepolicy_scheduleactionsforrules.md) action on [deviceCompliancePolicy](../api-reference/v1.0/resources/intune_deviceconfig_devicecompliancepolicy.md) |
|Addition|v1.0|Added the [setMobileDeviceManagementAuthority](../api-reference/v1.0/api/intune_onboarding_organization_setmobiledevicemanagementauthority.md) action on [organization](../api-reference/v1.0/resources/intune_onboarding_organization.md) |
|Addition|v1.0|Added the [syncMicrosoftStoreForBusinessApps](../api-reference/v1.0/api/intune_onboarding_deviceappmanagement_syncmicrosoftstoreforbusinessapps.md) action on [deviceAppManagement](../api-reference/v1.0/resources/intune_shared_deviceappmanagement.md) |
|Addition|v1.0|Added the [sync](../api-reference/v1.0/api/intune_onboarding_devicemanagementexchangeconnector_sync.md) action on [deviceManagementExchangeConnector](../api-reference/v1.0/resources/intune_onboarding_devicemanagementexchangeconnector.md) |
|Addition|v1.0|Added the [setPriority](../api-reference/v1.0/api/intune_onboarding_deviceenrollmentconfiguration_setpriority.md) action on [deviceEnrollmentConfiguration](../api-reference/v1.0/resources/intune_onboarding_deviceenrollmentconfiguration.md) |
|Addition|v1.0|Added the [assign](../api-reference/v1.0/api/intune_onboarding_deviceenrollmentconfiguration_assign.md) action on [deviceEnrollmentConfiguration](../api-reference/v1.0/resources/intune_onboarding_deviceenrollmentconfiguration.md) |
|Addition|v1.0|Added the [assign](../api-reference/v1.0/api/intune_mam_targetedmanagedappprotection_assign.md) action on [targetedManagedAppProtection](../api-reference/v1.0/resources/intune_mam_targetedmanagedappprotection.md) |
|Addition|v1.0|Added the [assign](../api-reference/v1.0/api/intune_mam_targetedmanagedappconfiguration_assign.md) action on [targetedManagedAppConfiguration](../api-reference/v1.0/resources/intune_mam_targetedmanagedappconfiguration.md) |
|Addition|v1.0|Added the [assign](../api-reference/v1.0/api/intune_mam_windowsinformationprotection_assign.md) action on [windowsInformationProtection](../api-reference/v1.0/resources/intune_mam_windowsinformationprotection.md) |
|Addition|v1.0|Added the [targetApps](../api-reference/v1.0/api/intune_mam_managedapppolicy_targetapps.md) action on [managedAppPolicy](../api-reference/v1.0/resources/intune_mam_managedapppolicy.md) |
|Addition|v1.0|Added the [targetApps](../api-reference/v1.0/api/intune_mam_managedappprotection_targetapps.md) action on [managedAppProtection](../api-reference/v1.0/resources/intune_mam_managedappprotection.md) |
|Addition|v1.0|Added the [targetApps](../api-reference/v1.0/api/intune_mam_targetedmanagedappconfiguration_targetapps.md) action on [targetedManagedAppConfiguration](../api-reference/v1.0/resources/intune_mam_targetedmanagedappconfiguration.md) |
|Addition|v1.0|Added the [wipeManagedAppRegistrationsByDeviceTag](../api-reference/v1.0/api/intune_mam_user_wipemanagedappregistrationsbydevicetag.md) action on [user](../api-reference/v1.0/resources/intune_shared_user.md) |
|Addition|v1.0|Added the [sendTestMessage](../api-reference/v1.0/api/intune_notification_notificationmessagetemplate_sendtestmessage.md) action on [notificationMessageTemplate](../api-reference/v1.0/resources/intune_notification_notificationmessagetemplate.md) |
|Addition|v1.0|Added the [assign](../api-reference/v1.0/api/intune_books_managedebook_assign.md) action on [managedEBook](../api-reference/v1.0/resources/intune_books_managedebook.md) |
|Addition|v1.0|Added the [beginOnboarding](../api-reference/v1.0/api/intune_remoteassistance_remoteassistancepartner_beginonboarding.md) action on [remoteAssistancePartner](../api-reference/v1.0/resources/intune_remoteassistance_remoteassistancepartner.md) |
|Addition|v1.0|Added the [disconnect](../api-reference/v1.0/api/intune_remoteassistance_remoteassistancepartner_disconnect.md) action on [remoteAssistancePartner](../api-reference/v1.0/resources/intune_remoteassistance_remoteassistancepartner.md) |
|Addition|v1.0|Added the [downloadApplePushNotificationCertificateSigningRequest](../api-reference/v1.0/api/intune_devices_applepushnotificationcertificate_downloadapplepushnotificationcertificatesigningrequest.md) function on [applePushNotificationCertificate](../api-reference/v1.0/resources/intune_devices_applepushnotificationcertificate.md) |
|Addition|v1.0|Added the [deviceConfigurationUserActivity](../api-reference/v1.0/api/intune_deviceconfig_reportroot_deviceconfigurationuseractivity.md) function on [reportRoot](../api-reference/v1.0/resources/intune_deviceconfig_reportroot.md) |
|Addition|v1.0|Added the [deviceConfigurationDeviceActivity](../api-reference/v1.0/api/intune_deviceconfig_reportroot_deviceconfigurationdeviceactivity.md) function on [reportRoot](../api-reference/v1.0/resources/intune_deviceconfig_reportroot.md) |
|Addition|v1.0|Added the [verifyWindowsEnrollmentAutoDiscovery](../api-reference/v1.0/api/intune_onboarding_devicemanagement_verifywindowsenrollmentautodiscovery.md) function on [deviceManagement](../api-reference/v1.0/resources/intune_androidforwork_devicemanagement.md) |
|Addition|v1.0|Added the **getUserIdsWithFlaggedAppRegistration** function on [managedAppRegistration](../api-reference/v1.0/resources/intune_mam_managedappregistration.md) collection |
|Addition|v1.0|Added the [getManagedAppDiagnosticStatuses](../api-reference/v1.0/api/intune_mam_user_getmanagedappdiagnosticstatuses.md) function on [user](../api-reference/v1.0/resources/intune_shared_user.md) |
|Addition|v1.0|Added the [getManagedAppPolicies](../api-reference/v1.0/api/intune_mam_user_getmanagedapppolicies.md) function on [user](../api-reference/v1.0/resources/intune_shared_user.md) |
|Addition|v1.0|Added the [getEffectivePermissions](../api-reference/v1.0/api/intune_rbac_devicemanagement_geteffectivepermissions.md) function on [deviceManagement](../api-reference/v1.0/resources/intune_androidforwork_devicemanagement.md) |
|Change|v1.0|Added the **mobileDeviceManagementAuthority** property to the [organization](../api-reference/v1.0/resources/intune_onboarding_organization.md) entity|
|Change|v1.0|Added the **deviceEnrollmentLimit** property to the [user](../api-reference/v1.0/resources/intune_shared_user.md) entity|
|Change|v1.0|Added the **managedDevices**, **managedAppRegistrations** and **deviceManagementTroubleshootingEvents** navigation properties to the [user](../api-reference/v1.0/resources/intune_shared_user.md) entity|
|||
|Addition|Beta|Added new entities:<br/>[deviceManagementScriptAssignment](../api-reference/beta/resources/intune_devices_devicemanagementscriptassignment.md)<br/>[iosCertificateProfile](../resources/intune_deviceconfig_ioscertificateprofile)<br/>[windowsInformationProtectionNetworkLearningSummary](../api-reference/beta/resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md)<br/>|
|Addition|Beta|Added new complex types:<br/>[revokeAppleVppLicensesActionResult](../api-reference/beta/resources/intune_devices_revokeapplevpplicensesactionresult.md)<br/>[vppTokenRevokeLicensesActionResult](../api-reference/beta/resources/intune_onboarding_vpptokenrevokelicensesactionresult.md)<br/>|
|Addition|Beta|Added the [revokeToken](../api-reference/beta/api/intune_androidforwork_androidforworkenrollmentprofile_revoketoken.md) action on [androidForWorkEnrollmentProfile](../api-reference/beta/resources/intune_androidforwork_androidforworkenrollmentprofile.md) |
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_apps_mobileapp_assign.md) action on [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) |
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_devices_devicemanagementscript_assign.md) action on [deviceManagementScript](../api-reference/beta/resources/intune_devices_devicemanagementscript.md) |
|Addition|Beta|Added the [revokeAppleVppLicenses](../api-reference/beta/api/intune_devices_manageddevice_revokeapplevpplicenses.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_deviceconfig_devicecompliancepolicy_assign.md) action on [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) |
|Addition|Beta|Added the [revokeLicenses](../api-reference/beta/api/intune_onboarding_vpptoken_revokelicenses.md) action on [vppToken](../api-reference/beta/resources/intune_onboarding_vpptoken.md) |
|Addition|Beta|Added the [wipeManagedAppRegistrationsByDeviceTag](../api-reference/beta/api/intune_mam_user_wipemanagedappregistrationsbydevicetag.md) action on [user](../api-reference/beta/resources/intune_devices_user.md) |
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_books_managedebook_assign.md) action on [managedEBook](../api-reference/beta/resources/intune_books_managedebook.md) |
|Addition|Beta|Added the [getEffectiveDeviceEnrollmentConfigurations](../api-reference/beta/api/intune_onboarding_user_geteffectivedeviceenrollmentconfigurations.md) function on [user](../api-reference/beta/resources/intune_devices_user.md) |
|Deletion|Beta|Removed the following entities:<br/>**appReportingOverviewStatus**<br/>**complianceSettingStateSummary**<br/>**deviceConfigurationUserStateSummary**<br/>**eBookGroupAssignment**<br/>**eBookVppGroupAssignment**<br/>**mobileAppGroupAssignment**<br/>**mobileAppVppGroupAssignment**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**androidForWorkAppConfigurationExample**<br/>**androidForWorkAppConfigurationExampleJson**<br/>**appInstallationFailure**<br/>**appsComplianceListItem**<br/>**defaultDeviceEnrollmentRestrictions**<br/>**defaultDeviceEnrollmentWindowsHelloForBusinessSettings**<br/>**deviceEnrollmentPlatformRestrictions**<br/>|
|Change|Beta|Added the **securityRequireVerifyApps**, **securityRequireSafetyNetAttestationBasicIntegrity**, **securityRequireSafetyNetAttestationCertifiedDevice**, **securityRequireGooglePlayServices**, **securityRequireUpToDateSecurityProviders** and **securityRequireCompanyPortalAppIntegrity** properties to the [androidCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidcompliancepolicy.md) entity|
|Change|Beta|Added the **packageId** property to the [androidForWorkApp](../api-reference/beta/resources/intune_apps_androidforworkapp.md) entity|
|Change|Beta|Changed the type of the following properties on the [androidForWorkAppConfigurationSchema](../api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationschema.md) entity:<br/>**exampleJson** from [androidForWorkAppConfigurationExample](../api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationexample.md) to Binary<br/>|
|Change|Beta|Added the **securityRequireVerifyApps**, **securityRequireSafetyNetAttestationBasicIntegrity**, **securityRequireSafetyNetAttestationCertifiedDevice**, **securityRequireGooglePlayServices**, **securityRequireUpToDateSecurityProviders** and **securityRequireCompanyPortalAppIntegrity** properties to the [androidForWorkCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidforworkcompliancepolicy.md) entity|
|Change|Beta|Added the **displayName**, **lastModifiedDateTime**, **enrolledDeviceCount**, **qrCodeContent** and **qrCodeImage** properties to the [androidForWorkEnrollmentProfile](../api-reference/beta/resources/intune_androidforwork_androidforworkenrollmentprofile.md) entity|
|Change|Beta|Removed the **isTokenActive** property from the [androidForWorkEnrollmentProfile](../api-reference/beta/resources/intune_androidforwork_androidforworkenrollmentprofile.md) entity|
|Change|Beta|Added the **innerAuthenticationProtocolForEapTtls**, **innerAuthenticationProtocolForPeap** and **outerIdentityPrivacyTemporaryValue** properties to the [androidForWorkEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkenterprisewificonfiguration.md) entity|
|Change|Beta|Added the **workProfileBlockCrossProfileCopyPaste** and **securityRequireVerifyApps** properties to the [androidForWorkGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md) entity|
|Change|Beta|Added the **securityRequireVerifyApps** property to the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity|
|Change|Beta|Added the **packageId** and **identityVersion** properties to the [androidLobApp](../api-reference/beta/resources/intune_apps_androidlobapp.md) entity|
|Change|Beta|Added the **packageId** property to the [androidStoreApp](../api-reference/beta/resources/intune_apps_androidstoreapp.md) entity|
|Change|Beta|Added the **faceIdBlocked** property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Change|Beta|Added the **members** property to the [deviceAndAppManagementRoleAssignment](../api-reference/beta/resources/intune_rbac_deviceandappmanagementroleassignment.md) entity|
|Change|Beta|Added the **macOSRestriction** property to the [deviceEnrollmentPlatformRestrictionsConfiguration](../api-reference/beta/resources/intune_onboarding_deviceenrollmentplatformrestrictionsconfiguration.md) entity|
|Change|Beta|Added the **whenPartnerDevicesWillBeRemovedDateTime** and **whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime** properties to the [deviceManagementPartner](../api-reference/beta/resources/intune_onboarding_devicemanagementpartner.md) entity|
|Change|Beta|Changed the type of the following properties on the [deviceManagementScript](../api-reference/beta/resources/intune_devices_devicemanagementscript.md) entity:<br/>**scriptContent** from String to Binary<br/>|
|Change|Beta|Added the **smimeEnablePerMessageSwitch** property to the [iosEasEmailProfileConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioseasemailprofileconfiguration.md) entity|
|Change|Beta|Added the **identityVersion** property to the [iosLobApp](../api-reference/beta/resources/intune_apps_ioslobapp.md) entity|
|Change|Beta|Added the **faceIdBlocked** property to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity|
|Change|Beta|Added the **packageId** and **identityVersion** properties to the [managedAndroidLobApp](../api-reference/beta/resources/intune_apps_managedandroidlobapp.md) entity|
|Change|Beta|Added the **azureADDeviceId** and **remoteAssistanceSessionErrorDetails** properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Change|Beta|Removed the **legacyAppConfiguration** property from the [managedDeviceMobileAppConfiguration](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) entity|
|Change|Beta|Added the **identityVersion** property to the [managedIOSLobApp](../api-reference/beta/resources/intune_apps_managedioslobapp.md) entity|
|Change|Beta|Removed the **identityVersion** property from the [managedMobileLobApp](../api-reference/beta/resources/intune_apps_managedmobilelobapp.md) entity|
|Change|Beta|Added the **publishingState** property to the [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) entity|
|Change|Beta|Added the **installState** property to the [mobileAppInstallStatus](../api-reference/beta/resources/intune_apps_mobileappinstallstatus.md) entity|
|Change|Beta|Removed the **identityVersion** property from the [mobileLobApp](../api-reference/beta/resources/intune_apps_mobilelobapp.md) entity|
|Change|Beta|Added the **allowPartnerToCollectIOSApplicationMetadata** property to the [mobileThreatDefenseConnector](../api-reference/beta/resources/intune_onboarding_mobilethreatdefenseconnector.md) entity|
|Change|Beta|Removed the **members** property from the [roleAssignment](../api-reference/beta/resources/intune_rbac_roleassignment.md) entity|
|Change|Beta|Added the **lastModifiedDateTime** property to the [termsAndConditions](../api-reference/beta/resources/intune_companyterms_termsandconditions.md) entity|
|Change|Beta|Added the **deviceThreatProtectionEnabled** and **deviceThreatProtectionRequiredSecurityLevel** properties to the [windows10CompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_windows10compliancepolicy.md) entity|
|Change|Beta|Removed the **minimumUpdateAutoInstallClassification** property from the [windows10CompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_windows10compliancepolicy.md) entity|
|Change|Beta|Added the **privacyBlockPublishUserActivities** and **privacyBlockActivityFeed** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|Beta|Added the **configurationAccountType** property to the [windows10SecureAssessmentConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration.md) entity|
|Change|Beta|Removed the **trustedNetworkDomains** property from the [windows10VpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10vpnconfiguration.md) entity|
|Change|Beta|Removed the **minimumUpdateAutoInstallClassification** property from the [windows81CompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_windows81compliancepolicy.md) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsAppX](../api-reference/beta/resources/intune_apps_windowsappx.md) entity|
|Change|Beta|Added the **daysWithoutContactBeforeUnenroll** property to the [windowsInformationProtectionPolicy](../api-reference/beta/resources/intune_mam_windowsinformationprotectionpolicy.md) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsMobileMSI](../api-reference/beta/resources/intune_apps_windowsmobilemsi.md) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsPhone81AppX](../api-reference/beta/resources/intune_apps_windowsphone81appx.md) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsPhoneXAP](../api-reference/beta/resources/intune_apps_windowsphonexap.md) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsUniversalAppX](../api-reference/beta/resources/intune_apps_windowsuniversalappx.md) entity|
|Change|Beta|Added the **domainJoinConfiguration** navigation property to the [activeDirectoryWindowsAutopilotDeploymentProfile](../api-reference/beta/resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md) entity|
|Change|Beta|Removed the **notificationMessageTemplate** navigation property from the [deviceComplianceActionItem](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceactionitem.md) entity|
|Change|Beta|Removed the **groupAssignments** navigation property from the [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) entity|
|Change|Beta|Added the **windowsInformationProtectionNetworkLearningSummaries** navigation property to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Removed the **deviceConfigurationUserStateSummaries** navigation property from the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Changed the type of the following properties on the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity:<br/>**roleAssignments** from [roleAssignment](../api-reference/beta/resources/intune_rbac_roleassignment.md) collection to [deviceAndAppManagementRoleAssignment](../api-reference/beta/resources/intune_rbac_deviceandappmanagementroleassignment.md) collection<br/>|
|Change|Beta|Added the **assignments** navigation property to the [deviceManagementScript](../api-reference/beta/resources/intune_devices_devicemanagementscript.md) entity|
|Change|Beta|Added the **smimeEncryptionCertificate** navigation property to the [iosEasEmailProfileConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioseasemailprofileconfiguration.md) entity|
|Change|Beta|Changed the type of the following properties on the [iosEasEmailProfileConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioseasemailprofileconfiguration.md) entity:<br/>**smimeSigningCertificate** from [iosCertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_ioscertificateprofilebase.md) to [iosCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_ioscertificateprofile.md)<br/>|
|Change|Beta|Removed the **vppToken** navigation property from the [iosVppApp](../api-reference/beta/resources/intune_apps_iosvppapp.md) entity|
|Change|Beta|Removed the **groupAssignments** navigation property from the [managedEBook](../api-reference/beta/resources/intune_books_managedebook.md) entity|
|Change|Beta|Removed the **groupAssignments** navigation property from the [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) entity|
|Change|Beta|Removed the **depOnboardingSettings** and **appleVolumePurchaseProgramTokens** navigation properties from the [organization](../api-reference/beta/resources/intune_onboarding_organization.md) entity|
|Change|Beta|Added the **deviceEnrollmentConfigurations** navigation property to the [user](../api-reference/beta/resources/intune_devices_user.md) entity|
|Change|Beta|Removed the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties from the [deviceManagementSettings](../api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings.md) complex type|
|Change|Beta|Added the **showDisplayNameNextToLogo** property to the [intuneBrand](../api-reference/beta/resources/intune_onboarding_intunebrand.md) complex type|
|Change|Beta|Added the **deviceUsageType** property to the [outOfBoxExperienceSettings](../api-reference/beta/resources/intune_enrollment_outofboxexperiencesettings.md) complex type|
|Change|Beta|Added the **supportsUserLicensing** and **supportsDeviceLicensing** properties to the [vppLicensingType](../api-reference/beta/resources/intune_apps_vpplicensingtype.md) complex type|
|Change|Beta|Removed the **actionMessage** property from the [vppTokenActionResult](../api-reference/beta/resources/intune_onboarding_vpptokenactionresult.md) complex type|

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the following APIs:<br>[getTeamsUserActivityUserDetail](../api-reference/v1.0/api/reportroot_getteamsuseractivityuserdetail.md)<br>[getTeamsUserActivityCounts](../api-reference/v1.0/api/reportroot_getteamsuseractivitycounts.md)<br>[getTeamsUserActivityUserCounts](../api-reference/v1.0/api/reportroot_getteamsuseractivityusercounts.md)<br>[getTeamsDeviceUsageUserDetail](../api-reference/v1.0/api/reportroot_getteamsdeviceusageuserdetail.md)<br>[getTeamsDeviceUsageUserCounts](../api-reference/v1.0/api/reportroot_getteamsdeviceusageusercounts.md)<br>[getTeamsDeviceUsageDistributionUserCounts](../api-reference/v1.0/api/reportroot_getteamsdeviceusagedistributionusercounts.md) |

## December 2017

### Delta query

| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Change      | v1.0    | Add optional query filtering capability to [users](../api-reference/v1.0/api/user_delta.md) and [groups](../api-reference/v1.0/api/group_delta.md). |

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[androidForWorkEnrollmentProfile](../api-reference/beta/resources/intune_androidforwork_androidforworkenrollmentprofile.md)<br/>[deviceAndAppManagementRoleAssignment](../api-reference/beta/resources/intune_rbac_deviceandappmanagementroleassignment.md)<br/>[deviceAndAppManagementRoleDefinition](../api-reference/beta/resources/intune_rbac_deviceandappmanagementroledefinition.md)<br/>[macOSLobApp](../api-reference/beta/resources/intune_apps_macoslobapp.md)<br/>|
|Addition|Beta|Added new complex types:<br/>[resourceAction](../api-reference/beta/resources/intune_rbac_resourceaction.md)<br/>[updateWindowsDeviceAccountActionParameter](../api-reference/beta/resources/intune_devices_updatewindowsdeviceaccountactionparameter.md)<br/>[vppTokenActionResult](../api-reference/beta/resources/intune_onboarding_vpptokenactionresult.md)<br/>[windowsDeviceAADAccount](../api-reference/beta/resources/intune_devices_windowsdeviceaadaccount.md)<br/>[windowsDeviceAccount](../api-reference/beta/resources/intune_devices_windowsdeviceaccount.md)<br/>[windowsDeviceADAccount](../api-reference/beta/resources/intune_devices_windowsdeviceadaccount.md)<br/>|
|Addition|Beta|Added the [revokeTokens](../api-reference/beta/api/intune_androidforwork_androidforworkenrollmentprofile_revoketokens.md) action on [androidForWorkEnrollmentProfile](../api-reference/beta/resources/intune_androidforwork_androidforworkenrollmentprofile.md) |
|Addition|Beta|Added the [createToken](../api-reference/beta/api/intune_androidforwork_androidforworkenrollmentprofile_createtoken.md) action on [androidForWorkEnrollmentProfile](../api-reference/beta/resources/intune_androidforwork_androidforworkenrollmentprofile.md) |
|Addition|Beta|Added the [wipe](../api-reference/beta/api/intune_devices_manageddevice_wipe.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
|Addition|Beta|Added the [updateWindowsDeviceAccount](../api-reference/beta/api/intune_devices_manageddevice_updatewindowsdeviceaccount.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
|Addition|Beta|Added the [revokeLicenses](../api-reference/beta/api/intune_onboarding_vpptoken_revokelicenses.md) action on [vppToken](../api-reference/beta/resources/intune_onboarding_vpptoken.md) |
|Addition|Beta|Added the [getDevicePasscode](../api-reference/beta/api/intune_deviceconfig_devicecompliancepolicy_getdevicepasscode.md) function on [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) collection |
|Addition|Beta|Added the [getEffectivePermissions](../api-reference/beta/api/intune_rbac_devicemanagement_geteffectivepermissions.md) function on [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) |
|Deletion|Beta|Removed the following entities:<br/>**windowsStoreForBusinessApp**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**windowsStoreForBusinessAppAssignmentSettings**<br/>|
|Change|Beta|Added the **dateAndTimeBlockChanges** property to the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity|
|Change|Beta|Removed the **enableAuthenticationViaCompanyPortal** property from the [depEnrollmentProfile](../api-reference/beta/resources/intune_corpenrollment_depenrollmentprofile.md) entity|
|Change|Beta|Removed the **windowsStoreForBusinessLastSuccessfulSyncDateTime**, **isEnabledForWindowsStoreForBusiness**, **windowsStoreForBusinessLanguage** and **windowsStoreForBusinessLastCompletedApplicationSyncTime** properties from the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity|
|Change|Beta|Added the **maximumDepTokens** and **intuneAccountId** properties to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Added the **enableAuthenticationViaCompanyPortal** property to the [enrollmentProfile](../api-reference/beta/resources/intune_corpenrollment_enrollmentprofile.md) entity|
|Change|Beta|Added the **managedDeviceName** and **partnerReportedThreatState** properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Change|Beta|Added the **installProgressDisplayLevel** property to the [officeSuiteApp](../api-reference/beta/resources/intune_apps_officesuiteapp.md) entity|
|Change|Beta|Added the **resourceScopes** property to the [roleAssignment](../api-reference/beta/resources/intune_rbac_roleassignment.md) entity|
|Change|Beta|Added the **rolePermissions** and **isBuiltIn** properties to the [roleDefinition](../api-reference/beta/resources/intune_rbac_roledefinition.md) entity|
|Change|Beta|Added the **tokenActionResults** property to the [vppToken](../api-reference/beta/resources/intune_onboarding_vpptoken.md) entity|
|Change|Beta|Added the **minimumUpdateAutoInstallClassification** property to the [windows10CompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_windows10compliancepolicy.md) entity|
|Change|Beta|Added the **defenderSecurityCenterDisableAppBrowserUI**, **defenderSecurityCenterDisableFamilyUI**, **defenderSecurityCenterDisableHealthUI**, **defenderSecurityCenterDisableNetworkUI**, **defenderSecurityCenterDisableVirusUI**, **defenderSecurityCenterOrganizationDisplayName**, **defenderSecurityCenterHelpEmail**, **defenderSecurityCenterHelpPhone**, **defenderSecurityCenterHelpURL**, **defenderSecurityCenterNotificationsFromApp**, **defenderSecurityCenterITContactDisplay** and **applicationGuardAllowVirtualGPU** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity|
|Change|Beta|Added the **enableAutomaticRedeployment** and **authenticationAllowFIDODevice** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|Beta|Added the **trustedNetworkDomains** property to the [windows10VpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10vpnconfiguration.md) entity|
|Change|Beta|Added the **minimumUpdateAutoInstallClassification** property to the [windows81CompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_windows81compliancepolicy.md) entity|
|Change|Beta|Added the **androidForWorkEnrollmentProfiles** navigation property to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Added the **healthAttestationSupportedStatus** property to the [deviceHealthAttestationState](../api-reference/beta/resources/intune_devices_devicehealthattestationstate.md) complex type|
|Change|Beta|Added the **tpmSpecificationVersion**, **operatingSystemEdition**, **deviceFullQualifiedDomainName**, **deviceGuardVirtualizationBasedSecurityHardwareRequirementState**, **deviceGuardVirtualizationBasedSecurityState** and **deviceGuardLocalSystemAuthorityCredentialGuardState** properties to the [hardwareInformation](../api-reference/beta/resources/intune_devices_hardwareinformation.md) complex type|
|Change|Beta|Added the **vpnConfigurationId** property to the [iosVppAppAssignmentSettings](../api-reference/beta/resources/intune_apps_iosvppappassignmentsettings.md) complex type|
|Change|Beta|Added the **resourceActions** property to the [rolePermission](../api-reference/beta/resources/intune_rbac_rolepermission.md) complex type|

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the following APIs:<br>[getEmailActivityUserDetail](../api-reference/v1.0/api/reportroot_getemailactivityuserdetail.md)<br>[getEmailActivityCounts](../api-reference/v1.0/api/reportroot_getemailactivitycounts.md)<br>[getEmailActivityUserCounts](../api-reference/v1.0/api/reportroot_getemailactivityusercounts.md)<br>[getEmailAppUsageUserDetail](../api-reference/v1.0/api/reportroot_getemailappusageuserdetail.md)<br>[getEmailAppUsageAppsUserCounts](../api-reference/v1.0/api/reportroot_getemailappusageappsusercounts.md)<br>[getEmailAppUsageUserCounts](../api-reference/v1.0/api/reportroot_getemailappusageusercounts.md)<br>[getEmailAppUsageVersionsUserCounts](../api-reference/v1.0/api/reportroot_getemailappusageversionsusercounts.md)<br>[getMailboxUsageDetail](../api-reference/v1.0/api/reportroot_getmailboxusagedetail.md)<br>[getMailboxUsageMailboxCounts](../api-reference/v1.0/api/reportroot_getmailboxusagemailboxcounts.md)<br>[getMailboxUsageQuotaStatusMailboxCounts](../api-reference/v1.0/api/reportroot_getmailboxusagequotastatusmailboxcounts.md)<br>[getMailboxUsageStorage](../api-reference/v1.0/api/reportroot_getmailboxusagestorage.md)<br>[getOffice365ActivationsUserDetail](../api-reference/v1.0/api/reportroot_getoffice365activationsuserdetail.md)<br>[getOffice365ActivationCounts](../api-reference/v1.0/api/reportroot_getoffice365activationcounts.md)<br>[getOffice365ActivationsUserCounts](../api-reference/v1.0/api/reportroot_getoffice365activationsusercounts.md)<br>[getOffice365ActiveUserDetail](../api-reference/v1.0/api/reportroot_getoffice365activeuserdetail.md)<br>[getOffice365ActiveUserCounts](../api-reference/v1.0/api/reportroot_getoffice365activeusercounts.md)<br>[getOffice365ServicesUserCounts](../api-reference/v1.0/api/reportroot_getoffice365servicesusercounts.md)<br>[getOffice365GroupsActivityDetail](../api-reference/v1.0/api/reportroot_getoffice365groupsactivitydetail.md)<br> [getOffice365GroupsActivityCounts](../api-reference/v1.0/api/reportroot_getoffice365groupsactivitycounts.md)<br>[getOffice365GroupsActivityGroupCounts](../api-reference/v1.0/api/reportroot_getoffice365groupsactivitygroupcounts.md)<br>[getOffice365GroupsActivityStorage](../api-reference/v1.0/api/reportroot_getoffice365groupsactivitystorage.md)<br>[getOffice365GroupsActivityFileCounts](../api-reference/v1.0/api/reportroot_getoffice365groupsactivityfilecounts.md)<br>[getOneDriveActivityUserDetail](../api-reference/v1.0/api/reportroot_getonedriveactivityuserdetail.md)<br>[getOneDriveActivityUserCounts](../api-reference/v1.0/api/reportroot_getonedriveactivityusercounts.md)<br>[getOneDriveActivityFileCounts](../api-reference/v1.0/api/reportroot_getonedriveactivityfilecounts.md)<br>[getOneDriveUsageAccountDetail](../api-reference/v1.0/api/reportroot_getonedriveusageaccountdetail.md)<br>[getOneDriveUsageAccountCounts](../api-reference/v1.0/api/reportroot_getonedriveusageaccountcounts.md)<br>[getOneDriveUsageFileCounts](../api-reference/v1.0/api/reportroot_getonedriveusagefilecounts.md)<br>[getOneDriveUsageStorage](../api-reference/v1.0/api/reportroot_getonedriveusagestorage.md)<br>[getSharePointActivityUserDetail](../api-reference/v1.0/api/reportroot_getsharepointactivityuserdetail.md)<br>[getSharePointActivityFileCounts](../api-reference/v1.0/api/reportroot_getsharepointactivityfilecounts.md)<br>[getSharePointActivityUserCounts](../api-reference/v1.0/api/reportroot_getsharepointactivityusercounts.md)<br>[getSharePointActivityPages](../api-reference/v1.0/api/reportroot_getsharepointactivitypages.md)<br>[getSharePointSiteUsageDetail](../api-reference/v1.0/api/reportroot_getsharepointsiteusagedetail.md)<br>[getSharePointSiteUsageFileCounts](../api-reference/v1.0/api/reportroot_getsharepointsiteusagefilecounts.md)<br>[getSharePointSiteUsageSiteCounts](../api-reference/v1.0/api/reportroot_getsharepointsiteusagesitecounts.md)<br>[getSharePointSiteUsageStorage](../api-reference/v1.0/api/reportroot_getsharepointsiteusagestorage.md)<br>[getSharePointSiteUsagePages](../api-reference/v1.0/api/reportroot_getsharepointsiteusagepages.md)<br>[getSkypeForBusinessActivityUserDetail](../api-reference/v1.0/api/reportroot_getskypeforbusinessactivityuserdetail.md)<br>[getSkypeForBusinessActivityCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinessactivitycounts.md)<br>[getSkypeForBusinessActivityUserCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinessactivityusercounts.md)<br>[getSkypeForBusinessDeviceUsageUserDetail](../api-reference/v1.0/api/reportroot_getskypeforbusinessdeviceusageuserdetail.md)<br>[getSkypeForBusinessDeviceUsageDistributionUserCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinessdeviceusagedistributionusercounts.md)<br>[getSkypeForBusinessDeviceUsageUserCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinessdeviceusageusercounts.md)<br>[getSkypeForBusinessOrganizerActivityCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinessorganizeractivitycounts.md)<br>[getSkypeForBusinessOrganizerActivityUserCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinessorganizeractivityusercounts.md)<br>[getSkypeForBusinessOrganizerActivityMinuteCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinessorganizeractivityminutecounts.md)<br>[getSkypeForBusinessParticipantActivityCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinessparticipantactivitycounts.md)<br>[getSkypeForBusinessParticipantActivityUserCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinessparticipantactivityusercounts.md)<br>[getSkypeForBusinessParticipantActivityMinuteCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinessparticipantactivityminutecounts.md)<br>[getSkypeForBusinessPeerToPeerActivityCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinesspeertopeeractivitycounts.md)<br>[getSkypeForBusinessPeerToPeerActivityUserCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinesspeertopeeractivityusercounts.md)<br>[getSkypeForBusinessPeerToPeerActivityMinuteCounts](../api-reference/v1.0/api/reportroot_getskypeforbusinesspeertopeeractivityminutecounts.md)<br>[getYammerActivityUserDetail](../api-reference/v1.0/api/reportroot_getyammeractivityuserdetail.md)<br>[getYammerActivityCounts](../api-reference/v1.0/api/reportroot_getyammeractivitycounts.md)<br>[getYammerActivityUserCounts](../api-reference/v1.0/api/reportroot_getyammeractivityusercounts.md)<br>[getYammerDeviceUsageUserDetail](../api-reference/v1.0/api/reportroot_getyammerdeviceusageuserdetail.md)<br>[getYammerDeviceUsageDistributionUserCounts](../api-reference/v1.0/api/reportroot_getyammerdeviceusagedistributionusercounts.md)<br>[getYammerDeviceUsageUserCounts](../api-reference/v1.0/api/reportroot_getyammerdeviceusageusercounts.md)<br>[getYammerGroupsActivityDetail](../api-reference/v1.0/api/reportroot_getyammergroupsactivitydetail.md)<br>[getYammerGroupsActivityGroupCounts](../api-reference/v1.0/api/reportroot_getyammergroupsactivitygroupcounts.md)<br>[getYammerGroupsActivityCounts](../api-reference/v1.0/api/reportroot_getyammergroupsactivitycounts.md).|
| Addition    | Beta    | Added the following APIs:<br>[getTeamsUserActivityUserDetail](../api-reference/beta/api/reportroot_getteamsuseractivityuserdetail.md)<br>[getTeamsUserActivityCounts](../api-reference/beta/api/reportroot_getteamsuseractivitycounts.md)<br>[getTeamsUserActivityUserCounts](../api-reference/beta/api/reportroot_getteamsuseractivityusercounts.md)<br>[getTeamsDeviceUsageUserDetail](../api-reference/beta/api/reportroot_getteamsdeviceusageuserdetail.md)<br>[getTeamsDeviceUsageUserCounts](../api-reference/beta/api/reportroot_getteamsdeviceusageusercounts.md)<br>[getTeamsDeviceUsageDistributionUserCounts](../api-reference/beta/api/reportroot_getteamsdeviceusagedistributionusercounts.md) |

## November 2017

### Azure AD synchronization APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added support for Azure AD identity synchronization, including the following resources:<br/>[Job](../api-reference/beta/resources/synchronization_synchronizationjob.md)<br/>[Schema](../api-reference/beta/resources/synchronization_synchronizationschema.md)<br/>[Template](../api-reference/beta/resources/synchronization_synchronizationtemplate.md)<br/>See the resource topics for details about the methods that are available.|

### Education APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added support for education scenarios, including the following resources:<br/>[Schools](../api-reference/beta/resources/educationschool.md)<br/>[Classes](../api-reference/beta/resources/educationclass.md)<br/>[Users](../api-reference/beta/resources/educationuser.md)<br/>[Assignments](../api-reference/beta/resources/educationassignment.md)<br/>[Submissions](../api-reference/beta/resources/educationsubmission.md)<br/>See the resource topics for details about the methods that are available.|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[auditEvent](../api-reference/beta/resources/intune_auditing_auditevent.md)<br/>[deviceManagementTroubleshootingEvent](../api-reference/beta/resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md)<br/>[deviceSetupConfiguration](../api-reference/beta/resources/intune_deviceconfig_devicesetupconfiguration.md)<br/>[enrollmentTroubleshootingEvent](../api-reference/beta/resources/intune_troubleshooting_enrollmenttroubleshootingevent.md)<br/>[macOSOfficeSuiteApp](../api-reference/beta/resources/intune_apps_macosofficesuiteapp.md)<br/>[microsoftStoreForBusinessApp](../api-reference/beta/resources/intune_apps_microsoftstoreforbusinessapp.md)<br/>[ndesConnector](../api-reference/beta/resources/intune_deviceconfig_ndesconnector.md)<br/>|
|Addition|Beta|Added new complex types:<br/>[auditActor](../api-reference/beta/resources/intune_auditing_auditactor.md)<br/>[auditProperty](../api-reference/beta/resources/intune_auditing_auditproperty.md)<br/>[auditResource](../api-reference/beta/resources/intune_auditing_auditresource.md)<br/>[bulkManagedDeviceActionResult](../api-reference/beta/resources/intune_devices_bulkmanageddeviceactionresult.md)<br/>[deviceProtectionOverview](../api-reference/beta/resources/intune_devices_deviceprotectionoverview.md)<br/>[microsoftStoreForBusinessAppAssignmentSettings](../api-reference/beta/resources/intune_apps_microsoftstoreforbusinessappassignmentsettings.md)<br/>[operatingSystemVersionRange](../api-reference/beta/resources/intune_deviceconfig_operatingsystemversionrange.md)<br/>[remoteLockActionResult](../api-reference/beta/resources/intune_devices_remotelockactionresult.md)<br/>|
|Addition|Beta|Added the executeAction action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) collection |
|Addition|Beta|Added the [wipe](../api-reference/beta/api/intune_devices_manageddevice_wipe.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
|Addition|Beta|Added the [shutDown](../api-reference/beta/api/intune_devices_manageddevice_shutdown.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_deviceconfig_deviceconfiguration_assign.md) action on [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) |
|Addition|Beta|Added the [syncMicrosoftStoreForBusinessApps](../api-reference/beta/api/intune_onboarding_deviceappmanagement_syncmicrosoftstoreforbusinessapps.md) action on [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) |
|Addition|Beta|Added the setDefaultProfile action on [enrollmentProfile](../api-reference/beta/resources/intune_corpenrollment_enrollmentprofile.md) |
|Addition|Beta|Added the shareForSchoolDataSyncService action on [depOnboardingSetting](../api-reference/beta/resources/intune_onboarding_deponboardingsetting.md) |
|Addition|Beta|Added the unshareForSchoolDataSyncService action on [depOnboardingSetting](../api-reference/beta/resources/intune_onboarding_deponboardingsetting.md) |
|Addition|Beta|Added the getAuditCategories function on [auditEvent](../api-reference/beta/resources/intune_auditing_auditevent.md) collection |
|Addition|Beta|Added the getAuditActivityTypes function on [auditEvent](../api-reference/beta/resources/intune_auditing_auditevent.md) collection |
|Deletion|Beta|Removed the following entities:<br/>**mobileAppIdentifierDeployment**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**windowsInformationProtectionCloudResource**<br/>**windowsInformationProtectionCloudResourceCollection**<br/>|
|Change|Beta|Changed the following properties on the [androidDeviceComplianceLocalActionLockDeviceWithPasscode](../api-reference/beta/resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md) entity:<br/>**passcode** from required to optional<br/>|
|Change|Beta|Added the **microsoftStoreForBusinessLastSuccessfulSyncDateTime**, **isEnabledForMicrosoftStoreForBusiness**, **microsoftStoreForBusinessLanguage** and **microsoftStoreForBusinessLastCompletedApplicationSyncTime** properties to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity|
|Change|Beta|Added the **target** property to the [deviceConfigurationAssignment](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationassignment.md) entity|
|Change|Beta|Added the **deviceProtectionOverview** property to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Added the **exchangeAlias** and **exchangeOrganization** properties to the [deviceManagementExchangeConnector](../api-reference/beta/resources/intune_onboarding_devicemanagementexchangeconnector.md) entity|
|Change|Beta|Added the **appStoreUrl** and **minimumSupportedOperatingSystem** properties to the [managedAndroidStoreApp](../api-reference/beta/resources/intune_apps_managedandroidstoreapp.md) entity|
|Change|Beta|Added the **remoteAssistanceSessionErrorString** property to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Change|Beta|Added the **appStoreUrl**, **applicableDeviceType** and **minimumSupportedOperatingSystem** properties to the [managedIOSStoreApp](../api-reference/beta/resources/intune_apps_managediosstoreapp.md) entity|
|Change|Beta|Added the **notApplicableDeviceCount**, **pendingInstallDeviceCount**, **notApplicableUserCount** and **pendingInstallUserCount** properties to the [mobileAppInstallSummary](../api-reference/beta/resources/intune_apps_mobileappinstallsummary.md) entity|
|Change|Beta|Removed the **targetedSecurityGroupIds** and **targetedSecurityGroupsCount** properties from the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity|
|Change|Beta|Removed the **targetedSecurityGroupsCount** and **targetedSecurityGroupIds** properties from the [targetedManagedAppProtection](../api-reference/beta/resources/intune_mam_targetedmanagedappprotection.md) entity|
|Change|Beta|Added the **validOperatingSystemBuildRanges** property to the [windows10CompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_windows10compliancepolicy.md) entity|
|Change|Beta|Added the **activeFirewallRequired**, **uacRequired** and **validOperatingSystemBuildRanges** properties to the [windows10MobileCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_windows10mobilecompliancepolicy.md) entity|
|Change|Beta|Added the **enableExpeditedTelemetryReporting** property to the [windowsDefenderAdvancedThreatProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsdefenderadvancedthreatprotectionconfiguration.md) entity|
|Change|Beta|Removed the **allowedApps**, **enterpriseCloudResources** and **targetedSecurityGroupIds** properties from the [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) entity|
|Change|Beta|Added the **ignoreVersionDetection** property to the [windowsMobileMSI](../api-reference/beta/resources/intune_apps_windowsmobilemsi.md) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** navigation property from the [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** navigation property from the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Change|Beta|Added the **assignments** navigation property to the [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) entity|
|Change|Beta|Removed the **deviceConfiguration** navigation property from the [deviceConfigurationAssignment](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationassignment.md) entity|
|Change|Beta|Added the **deviceConfiguration** navigation property to the [deviceConfigurationGroupAssignment](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) entity|
|Change|Beta|Added the **deviceSetupConfigurations**, **ndesConnectors**, **exchangeOnPremisesPolicies**, **conditionalAccessSettings**, **auditEvents** and **troubleshootingEvents** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** navigation property from the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity|
|Change|Beta|Added the **windowsProtectionState** navigation property to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** and **targetedSecurityGroups** navigation properties from the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity|
|Change|Beta|Removed the **targetedSecurityGroups** navigation property from the [targetedManagedAppProtection](../api-reference/beta/resources/intune_mam_targetedmanagedappprotection.md) entity|
|Change|Beta|Added the **deviceManagementTroubleshootingEvents** navigation property to the [user](../api-reference/beta/resources/intune_devices_user.md) entity|
|Change|Beta|Removed the **allowedAppLockerFiles** navigation property from the [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) entity|
|Change|Beta|Removed the **windowsProtectionState** navigation property from the [windowsManagedDevice](../api-reference/beta/resources/intune_devices_windowsmanageddevice.md) entity|
|Change|Beta|Added the **v11_0** property to the [iosMinimumOperatingSystem](../api-reference/beta/resources/intune_apps_iosminimumoperatingsystem.md) complex type|
|Change|Beta|Added the **denied** property to the [windowsInformationProtectionApp](../api-reference/beta/resources/intune_mam_windowsinformationprotectionapp.md) complex type|

### Reports APIs
| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added JSON support for the following APIs:<br>[getEmailActivityUserDetail](../api-reference/beta/api/reportroot_getemailactivityuserdetail.md)<br>[getEmailActivityCounts](../api-reference/beta/api/reportroot_getemailactivitycounts.md)<br>[getEmailActivityUserCounts](../api-reference/beta/api/reportroot_getemailactivityusercounts.md)<br>[getEmailAppUsageUserDetail](../api-reference/beta/api/reportroot_getemailappusageuserdetail.md)<br>[getEmailAppUsageAppsUserCounts](../api-reference/beta/api/reportroot_getemailappusageappsusercounts.md)<br>[getEmailAppUsageUserCounts](../api-reference/beta/api/reportroot_getemailappusageusercounts.md)<br>[getEmailAppUsageVersionsUserCounts](../api-reference/beta/api/reportroot_getemailappusageversionsusercounts.md)<br>[getMailboxUsageDetail](../api-reference/beta/api/reportroot_getmailboxusagedetail.md)<br>[getMailboxUsageMailboxCounts](../api-reference/beta/api/reportroot_getmailboxusagemailboxcounts.md)<br>[getMailboxUsageQuotaStatusMailboxCounts](../api-reference/beta/api/reportroot_getmailboxusagequotastatusmailboxcounts.md)<br>[getMailboxUsageStorage](../api-reference/beta/api/reportroot_getmailboxusagestorage.md)<br>[getOffice365ActivationsUserDetail](../api-reference/beta/api/reportroot_getoffice365activationsuserdetail.md)<br>[getOffice365ActivationCounts](../api-reference/beta/api/reportroot_getoffice365activationcounts.md)<br>[getOffice365ActivationsUserCounts](../api-reference/beta/api/reportroot_getoffice365activationsusercounts.md)<br>[getOffice365ActiveUserDetail](../api-reference/beta/api/reportroot_getoffice365activeuserdetail.md)<br>[getOffice365ActiveUserCounts](../api-reference/beta/api/reportroot_getoffice365activeusercounts.md)<br>[getOffice365ServicesUserCounts](../api-reference/beta/api/reportroot_getoffice365servicesusercounts.md)<br>[getOffice365GroupsActivityDetail](../api-reference/beta/api/reportroot_getoffice365groupsactivitydetail.md)<br> [getOffice365GroupsActivityCounts](../api-reference/beta/api/reportroot_getoffice365groupsactivitycounts.md)<br>[getOffice365GroupsActivityGroupCounts](../api-reference/beta/api/reportroot_getoffice365groupsactivitygroupcounts.md)<br>[getOffice365GroupsActivityStorage](../api-reference/beta/api/reportroot_getoffice365groupsactivitystorage.md)<br>[getOffice365GroupsActivityFileCounts](../api-reference/beta/api/reportroot_getoffice365groupsactivityfilecounts.md)<br>[getOneDriveActivityUserDetail](../api-reference/beta/api/reportroot_getonedriveactivityuserdetail.md)<br>[getOneDriveActivityUserCounts](../api-reference/beta/api/reportroot_getonedriveactivityusercounts.md)<br>[getOneDriveActivityFileCounts](../api-reference/beta/api/reportroot_getonedriveactivityfilecounts.md)<br>[getOneDriveUsageAccountDetail](../api-reference/beta/api/reportroot_getonedriveusageaccountdetail.md)<br>[getOneDriveUsageAccountCounts](../api-reference/beta/api/reportroot_getonedriveusageaccountcounts.md)<br>[getOneDriveUsageFileCounts](../api-reference/beta/api/reportroot_getonedriveusagefilecounts.md)<br>[getOneDriveUsageStorage](../api-reference/beta/api/reportroot_getonedriveusagestorage.md)<br>[getSharePointActivityUserDetail](../api-reference/beta/api/reportroot_getsharepointactivityuserdetail.md)<br>[getSharePointActivityFileCounts](../api-reference/beta/api/reportroot_getsharepointactivityfilecounts.md)<br>[getSharePointActivityUserCounts](../api-reference/beta/api/reportroot_getsharepointactivityusercounts.md)<br>[getSharePointActivityPages](../api-reference/beta/api/reportroot_getsharepointactivitypages.md)<br>[getSharePointSiteUsageDetail](../api-reference/beta/api/reportroot_getsharepointsiteusagedetail.md)<br>[getSharePointSiteUsageFileCounts](../api-reference/beta/api/reportroot_getsharepointsiteusagefilecounts.md)<br>[getSharePointSiteUsageSiteCounts](../api-reference/beta/api/reportroot_getsharepointsiteusagesitecounts.md)<br>[getSharePointSiteUsageStorage](../api-reference/beta/api/reportroot_getsharepointsiteusagestorage.md)<br>[getSharePointSiteUsagePages](../api-reference/beta/api/reportroot_getsharepointsiteusagepages.md)<br>[getSkypeForBusinessActivityUserDetail](../api-reference/beta/api/reportroot_getskypeforbusinessactivityuserdetail.md)<br>[getSkypeForBusinessActivityCounts](../api-reference/beta/api/reportroot_getskypeforbusinessactivitycounts.md)<br>[getSkypeForBusinessActivityUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinessactivityusercounts.md)<br>[getSkypeForBusinessDeviceUsageUserDetail](../api-reference/beta/api/reportroot_getskypeforbusinessdeviceusageuserdetail.md)<br>[getSkypeForBusinessDeviceUsageDistributionUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinessdeviceusagedistributionusercounts.md)<br>[getSkypeForBusinessDeviceUsageUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinessdeviceusageusercounts.md)<br>[getSkypeForBusinessOrganizerActivityCounts](../api-reference/beta/api/reportroot_getskypeforbusinessorganizeractivitycounts.md)<br>[getSkypeForBusinessOrganizerActivityUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinessorganizeractivityusercounts.md)<br>[getSkypeForBusinessOrganizerActivityMinuteCounts](../api-reference/beta/api/reportroot_getskypeforbusinessorganizeractivityminutecounts.md)<br>[getSkypeForBusinessParticipantActivityCounts](../api-reference/beta/api/reportroot_getskypeforbusinessparticipantactivitycounts.md)<br>[getSkypeForBusinessParticipantActivityUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinessparticipantactivityusercounts.md)<br>[getSkypeForBusinessParticipantActivityMinuteCounts](../api-reference/beta/api/reportroot_getskypeforbusinessparticipantactivityminutecounts.md)<br>[getSkypeForBusinessPeerToPeerActivityCounts](../api-reference/beta/api/reportroot_getskypeforbusinesspeertopeeractivitycounts.md)<br>[getSkypeForBusinessPeerToPeerActivityUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinesspeertopeeractivityusercounts.md)<br>[getSkypeForBusinessPeerToPeerActivityMinuteCounts](../api-reference/beta/api/reportroot_getskypeforbusinesspeertopeeractivityminutecounts.md)<br>[getYammerActivityUserDetail](../api-reference/beta/api/reportroot_getyammeractivityuserdetail.md)<br>[getYammerActivityCounts](../api-reference/beta/api/reportroot_getyammeractivitycounts.md)<br>[getYammerActivityUserCounts](../api-reference/beta/api/reportroot_getyammeractivityusercounts.md)<br>[getYammerDeviceUsageUserDetail](../api-reference/beta/api/reportroot_getyammerdeviceusageuserdetail.md)<br>[getYammerDeviceUsageDistributionUserCounts](../api-reference/beta/api/reportroot_getyammerdeviceusagedistributionusercounts.md)<br>[getYammerDeviceUsageUserCounts](../api-reference/beta/api/reportroot_getyammerdeviceusageusercounts.md)<br>[getYammerGroupsActivityDetail](../api-reference/beta/api/reportroot_getyammergroupsactivitydetail.md)<br>[getYammerGroupsActivityGroupCounts](../api-reference/beta/api/reportroot_getyammergroupsactivitygroupcounts.md)<br>[getYammerGroupsActivityCounts](../api-reference/beta/api/reportroot_getyammergroupsactivitycounts.md). |

### Webhooks

| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Breaking change | Beta and v1.0 | Reduced [webhooks](../api-reference/v1.0/resources/webhooks.md) [maximum length of subscription expiration time](../api-reference/v1.0/resources/subscription.md#maximum-length-of-subscription-per-resource-type) for drive root items. The new value is the supported maximum expiration time for drive root items. |

## October 2017

### Azure AD APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
|Addition|Beta|Added the [identityProvider](../api-reference/beta/resources/identityprovider.md) entity and the [create](../api-reference/beta/api/identityprovider_post_identityproviders.md), [list](../api-reference/beta/api/identityprovider_list.md), [get](../api-reference/beta/api/identityprovider_get.md), [update](../api-reference/beta/api/identityprovider_update.md), and [delete](../api-reference/beta/api/identityprovider_delete.md) operations.|


### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[androidDeviceComplianceLocalActionLockDeviceWithPasscode](../api-reference/beta/resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md)<br/>[iosLobAppProvisioningConfigurationAssignment](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfigurationassignment.md)<br/>[iosVppEBookAssignment](../api-reference/beta/resources/intune_books_iosvppebookassignment.md)<br/>[managedDeviceMobileAppConfigurationAssignment](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationassignment.md)<br/>[managedEBookAssignment](../api-reference/beta/resources/intune_books_managedebookassignment.md)<br/>[managedMobileApp](../api-reference/beta/resources/intune_mam_managedmobileapp.md)<br/>[mobileAppAssignment](../api-reference/beta/resources/intune_apps_mobileappassignment.md)<br/>[termsAndConditionsAssignment](../api-reference/beta/resources/intune_companyterms_termsandconditionsassignment.md)<br/>[vppToken](../api-reference/beta/resources/intune_onboarding_vpptoken.md)<br/>[windows10PFXImportCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windows10pfximportcertificateprofile.md)<br/>[windowsAssignedAccessProfile](../api-reference/beta/resources/intune_deviceconfig_windowsassignedaccessprofile.md)<br/>[windowsDomainJoinConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsdomainjoinconfiguration.md)<br/>|
|Addition|Beta|Added new complex types:<br/>[iosLobAppAssignmentSettings](../api-reference/beta/resources/intune_apps_ioslobappassignmentsettings.md)<br/>[iosSingleSignOnSettings](../api-reference/beta/resources/intune_deviceconfig_iossinglesignonsettings.md)<br/>[iosStoreAppAssignmentSettings](../api-reference/beta/resources/intune_apps_iosstoreappassignmentsettings.md)<br/>[iosVppAppAssignmentSettings](../api-reference/beta/resources/intune_apps_iosvppappassignmentsettings.md)<br/>[mobileAppAssignmentSettings](../api-reference/beta/resources/intune_apps_mobileappassignmentsettings.md)<br/>[proxiedDomain](../api-reference/beta/resources/intune_deviceconfig_proxieddomain.md)<br/>[windowsInformationProtectionProxiedDomainCollection](../api-reference/beta/resources/intune_mam_windowsinformationprotectionproxieddomaincollection.md)<br/>[windowsStoreForBusinessAppAssignmentSettings](../api-reference/beta/resources/intune_apps_windowsstoreforbusinessappassignmentsettings.md)<br/>|
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_apps_mobileapp_assign.md) action on [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) |
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_apps_ioslobappprovisioningconfiguration_assign.md) action on [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) |
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_apps_manageddevicemobileappconfiguration_assign.md) action on [managedDeviceMobileAppConfiguration](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) |
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_deviceconfig_devicecompliancepolicy_assign.md) action on [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) |
|Addition|Beta|Added the [assignedAccessMultiModeProfiles](../api-reference/beta/api/intune_deviceconfig_deviceconfiguration_assignedaccessmultimodeprofiles.md) action on [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) |
|Addition|Beta|Added the [syncLicenses](../api-reference/beta/api/intune_onboarding_vpptoken_synclicenses.md) action on [vppToken](../api-reference/beta/resources/intune_onboarding_vpptoken.md) |
|Addition|Beta|Added the [targetApps](../api-reference/beta/api/intune_mam_managedapppolicy_targetapps.md) action on [managedAppPolicy](../api-reference/beta/resources/intune_mam_managedapppolicy.md) |
|Addition|Beta|Added the [targetApps](../api-reference/beta/api/intune_mam_managedappprotection_targetapps.md) action on [managedAppProtection](../api-reference/beta/resources/intune_mam_managedappprotection.md) |
|Addition|Beta|Added the [targetApps](../api-reference/beta/api/intune_mam_targetedmanagedappconfiguration_targetapps.md) action on [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) |
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_books_managedebook_assign.md) action on [managedEBook](../api-reference/beta/resources/intune_books_managedebook.md) |
|Deletion|Beta|Removed the following entities:<br/>**cloudPkiSubscription**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**cloudPkiAdministratorCredentials**<br/>**windowsNetworkIsolationCloudResource**<br/>**windowsNetworkIsolationCloudResourceCollection**<br/>**windowsNetworkIsolationIPRangeCollection**<br/>**windowsNetworkIsolationResourceCollection**<br/>|
|Change|Beta|Added the **gracePeriodInMinutes** property to the [androidDeviceComplianceLocalActionBase](../api-reference/beta/resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md) entity|
|Change|Beta|Removed the **enableSplitTunneling** property from the [androidForWorkVpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkvpnconfiguration.md) entity|
|Change|Beta|Added the **versionName** and **versionCode** properties to the [androidLobApp](../api-reference/beta/resources/intune_apps_androidlobapp.md) entity|
|Change|Beta|Added the **minimumRequiredPatchVersion** and **minimumWarningPatchVersion** properties to the [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) entity|
|Change|Beta|Added the **minimumRequiredPatchVersion** and **minimumWarningPatchVersion** properties to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Change|Beta|Added the **target** property to the [deviceCompliancePolicyAssignment](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicyassignment.md) entity|
|Change|Beta|Added the **singleSignOnSettings** property to the [iosDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) entity|
|Change|Beta|Added the **versionNumber** and **buildNumber** properties to the [iosLobApp](../api-reference/beta/resources/intune_apps_ioslobapp.md) entity|
|Change|Beta|Added the **bundleId** property to the [iosVppApp](../api-reference/beta/resources/intune_apps_iosvppapp.md) entity|
|Change|Beta|Added the **preSharedKey** property to the [iosWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioswificonfiguration.md) entity|
|Change|Beta|Added the **versionName** and **versionCode** properties to the [managedAndroidLobApp](../api-reference/beta/resources/intune_apps_managedandroidlobapp.md) entity|
|Change|Beta|Added the **periodBeforePinReset** property to the [managedAppProtection](../api-reference/beta/resources/intune_mam_managedappprotection.md) entity|
|Change|Beta|Added the **subscriberCarrier**, **meid**, **totalStorageSpaceInBytes** and **freeStorageSpaceInBytes** properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Change|Beta|Removed the **enrollmentType** property from the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Change|Beta|Added the **versionNumber** and **buildNumber** properties to the [managedIOSLobApp](../api-reference/beta/resources/intune_apps_managedioslobapp.md) entity|
|Change|Beta|Added the **displayVersion** property to the [mobileAppInstallStatus](../api-reference/beta/resources/intune_apps_mobileappinstallstatus.md) entity|
|Change|Beta|Removed the **defaultDeviceEnrollmentRestrictions**, **defaultDeviceEnrollmentWindowsHelloForBusinessSettings** and **defaultDeviceEnrollmentLimit** properties from the [organization](../api-reference/beta/resources/intune_onboarding_organization.md) entity|
|Change|Beta|Added the **isAssigned** property to the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity|
|Change|Beta|Added the **isAssigned** property to the [targetedManagedAppProtection](../api-reference/beta/resources/intune_mam_targetedmanagedappprotection.md) entity|
|Change|Beta|Added the **activeFirewallRequired**, **uacRequired**, **defenderEnabled**, **defenderVersion**, **signatureOutOfDate** and **rtpEnabled** properties to the [windows10CompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_windows10compliancepolicy.md) entity|
|Change|Beta|Added the **assignedAccessSingleModeUserName**, **assignedAccessSingleModeAppUserModelId**, **microsoftAccountSignInAssistantSettings**, **authenticationAllowSecondaryDevice**, **cryptographyAllowFipsAlgorithmPolicy**, **securityBlockAzureADJoinedDevicesAutoEncryption**, **systemTelemetryProxyServer**, **inkWorkspaceAccess**, **inkWorkspaceBlockSuggestedApps**, **defenderCloudBlockLevel** and **defenderCloudExtendedTimeout** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|Beta|Added the **protectedApps**, **enterpriseProxiedDomains** and **isAssigned** properties to the [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) entity|
|Change|Beta|Added the **productVersion** property to the [windowsMobileMSI](../api-reference/beta/resources/intune_apps_windowsmobilemsi.md) entity|
|Change|Beta|Added the **apps** navigation property to the [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) entity|
|Change|Beta|Added the **apps** navigation property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Change|Beta|Added the **vppTokens** navigation property to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity|
|Change|Beta|Added the **assignments** navigation property to the [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) entity|
|Change|Beta|Removed the **deviceCompliancePolicy** navigation property from the [deviceCompliancePolicyAssignment](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicyassignment.md) entity|
|Change|Beta|Added the **deviceCompliancePolicy** navigation property to the [deviceCompliancePolicyGroupAssignment](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) entity|
|Change|Beta|Added the **identityCertificateForClientAuthentication** navigation property to the [iosDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) entity|
|Change|Beta|Added the **assignments** navigation property to the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity|
|Change|Beta|Added the **apps** navigation property to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity|
|Change|Beta|Added the **assignments** navigation property to the [managedDeviceMobileAppConfiguration](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) entity|
|Change|Beta|Added the **assignments** navigation property to the [managedEBook](../api-reference/beta/resources/intune_books_managedebook.md) entity|
|Change|Beta|Added the **assignments** navigation property to the [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) entity|
|Change|Beta|Added the **apps** navigation property to the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity|
|Change|Beta|Added the **assignments** navigation property to the [termsAndConditions](../api-reference/beta/resources/intune_companyterms_termsandconditions.md) entity|
|Change|Beta|Added the **assignedAccessMultiModeProfiles** navigation property to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|Beta|Added the **protectedAppLockerFiles** navigation property to the [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) entity|
|Change|Beta|Added the **port** and **forceTls** properties to the [airPrintDestination](../api-reference/beta/resources/intune_deviceconfig_airprintdestination.md) complex type|
|Change|Beta|Changed the type of the following properties on the [deviceCompliancePolicySettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstate.md) complex type:<br/>**errorCode** from Int32 to Int64<br/>|
|Change|Beta|Changed the type of the following properties on the [deviceConfigurationSettingState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate.md) complex type:<br/>**errorCode** from Int32 to Int64<br/>|
|Change|Beta|Changed the type of the following properties on the [windowsNetworkIsolationPolicy](../api-reference/beta/resources/intune_deviceconfig_windowsnetworkisolationpolicy.md) complex type:<br/>**enterpriseCloudResources** from [windowsNetworkIsolationCloudResourceCollection](../api-reference/beta/resources/intune_deviceconfig_windowsNetworkIsolationCloudResourceCollection.md) to [proxiedDomain](../api-reference/beta/resources/intune_deviceconfig_proxieddomain.md) collection<br/>**enterpriseInternalProxyServers** from windowsNetworkIsolationResourceCollection to String collection<br/>**enterpriseIPRanges** from windowsNetworkIsolationIPRangeCollection to [ipRange](../api-reference/beta/resources/intune_deviceconfig_iprange.md) collection<br/>**enterpriseNetworkDomainNames** from windowsNetworkIsolationResourceCollection to String collection<br/>**enterpriseProxyServers** from windowsNetworkIsolationResourceCollection to String collection<br/>**neutralDomainResources** from windowsNetworkIsolationResourceCollection to String collection<br/>|

### Microsoft Teams APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new [team](../api-reference/beta/resources/team.md) entity.|
|Addition|Beta|Added [create](../api-reference/beta/api/team_put_teams.md), [get](../api-reference/beta/api/team_get.md), and [update](../api-reference/beta/api/team_update.md) operations on [team](../api-reference/beta/resources/team.md) entity.|

### Outlook messages

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Change          | v1.0 and beta | This behavior enhancement is about getting a shared mail folder or its message contents, when a user has shared a mail folder with the signed-in user, or has delegated the user's mailbox to the signed-in user. In such situations, an app can specify that user's ID or user principal name to [get that shared mail folder](../api-reference/v1.0/api/mailfolder_get.md), or [get the messages in that shared calendar](../api-reference/v1.0/api/user_list_messages.md), as long as the signed-in user has provided delegated permissions to the app. |


### Outlook user choices

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
|Addition | Beta | Added the new **workingHours** property to [mailboxSettings](../api-reference/beta/resources/mailboxsettings.md). See [workingHours resource type](../api-reference/beta/resources/workinghours.md) for information on the supported use cases.|
|Addition | Beta | Added the following new complex types: <br> [workingHours](../api-reference/beta/resources/workinghours.md) <br> [timeZoneBase](../api-reference/beta/resources/timezonebase.md) <br> [customTimeZone](../api-reference/beta/resources/customtimezone.md) <br> [standardTimeZoneOffset](../api-reference/beta/resources/standardtimezoneoffset.md) <br> [daylightTimeZoneOffset](../api-reference/beta/resources/daylighttimezoneoffset.md)|


### Reports APIs
| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Change      | Beta    | Added the [getEmailActivityUserDetail](../api-reference/beta/api/reportroot_getemailactivityuserdetail.md), [getEmailActivityCounts](../api-reference/beta/api/reportroot_getemailactivitycounts.md), and [getEmailActivityUserCounts](../api-reference/beta/api/reportroot_getemailactivityusercounts.md) APIs. These replaced the EmailActivity API. |
| Change      | Beta    | Added the [getEmailAppUsageUserDetail](../api-reference/beta/api/reportroot_getemailappusageuserdetail.md), [getEmailAppUsageAppsUserCounts](../api-reference/beta/api/reportroot_getemailappusageappsusercounts.md), [getEmailAppUsageUserCounts](../api-reference/beta/api/reportroot_getemailappusageusercounts.md), and [getEmailAppUsageVersionsUserCounts](../api-reference/beta/api/reportroot_getemailappusageversionsusercounts.md) APIs. These replaced the EmailAppUsage API. |
| Change      | Beta    | Added the [getMailboxUsageDetail](../api-reference/beta/api/reportroot_getmailboxusagedetail.md), [getMailboxUsageMailboxCounts](../api-reference/beta/api/reportroot_getmailboxusagemailboxcounts.md), [getMailboxUsageQuotaStatusMailboxCounts](../api-reference/beta/api/reportroot_getmailboxusagequotastatusmailboxcounts.md), and [getMailboxUsageStorage](../api-reference/beta/api/reportroot_getmailboxusagestorage.md) APIs. These replaced the MailboxUsage API. |
| Change      | Beta    | Added the [getOffice365ActivationsUserDetail](../api-reference/beta/api/reportroot_getoffice365activationsuserdetail.md), [getOffice365ActivationCounts](../api-reference/beta/api/reportroot_getoffice365activationcounts.md), and [getOffice365ActivationsUserCounts](../api-reference/beta/api/reportroot_getoffice365activationsusercounts.md) APIs. These replaced the Office365Activations API. |
| Change      | Beta    | Added the [getOffice365ActiveUserDetail](../api-reference/beta/api/reportroot_getoffice365activeuserdetail.md), [getOffice365ActiveUserCounts](../api-reference/beta/api/reportroot_getoffice365activeusercounts.md), and [getOffice365ServicesUserCounts](../api-reference/beta/api/reportroot_getoffice365servicesusercounts.md) APIs. These replaced the Office365ActiveUser API. |
| Change      | Beta    | Added the [getOffice365GroupsActivityDetail](../api-reference/beta/api/reportroot_getoffice365groupsactivitydetail.md), [getOffice365GroupsActivityCounts](../api-reference/beta/api/reportroot_getoffice365groupsactivitycounts.md),[getOffice365GroupsActivityGroupCounts](../api-reference/beta/api/reportroot_getoffice365groupsactivitygroupcounts.md), [getOffice365GroupsActivityStorage](../api-reference/beta/api/reportroot_getoffice365groupsactivitystorage.md), and [getOffice365GroupsActivityFileCounts](../api-reference/beta/api/reportroot_getoffice365groupsactivityfilecounts.md) APIs. These replaced the Office365GroupsActivity API. |
| Change      | Beta    | Added the [getOneDriveActivityUserDetail](../api-reference/beta/api/reportroot_getonedriveactivityuserdetail.md), [getOneDriveActivityUserCounts](../api-reference/beta/api/reportroot_getonedriveactivityusercounts.md), and [getOneDriveActivityFileCounts](../api-reference/beta/api/reportroot_getonedriveactivityfilecounts.md) APIs. These replaced the OneDriveActivity API. |
| Change      | Beta    | Added the [getOneDriveUsageAccountDetail](../api-reference/beta/api/reportroot_getonedriveusageaccountdetail.md), [getOneDriveUsageAccountCounts](../api-reference/beta/api/reportroot_getonedriveusageaccountcounts.md), [getOneDriveUsageFileCounts](../api-reference/beta/api/reportroot_getonedriveusagefilecounts.md), and [getOneDriveUsageStorage](../api-reference/beta/api/reportroot_getonedriveusagestorage.md) APIs. These replaced the OneDriveUsage API. |
| Change      | Beta    | Added the [getSharePointActivityUserDetail](../api-reference/beta/api/reportroot_getsharepointactivityuserdetail.md), [getSharePointActivityFileCounts](../api-reference/beta/api/reportroot_getsharepointactivityfilecounts.md), [getSharePointActivityUserCounts](../api-reference/beta/api/reportroot_getsharepointactivityusercounts.md), and [getSharePointActivityPages](../api-reference/beta/api/reportroot_getsharepointactivitypages.md) APIs. These replaced the SharePointActivity API. |
| Change      | Beta    | Added the [getSharePointSiteUsageDetail](../api-reference/beta/api/reportroot_getsharepointsiteusagedetail.md), [getSharePointSiteUsageFileCounts](../api-reference/beta/api/reportroot_getsharepointsiteusagefilecounts.md), [getSharePointSiteUsageSiteCounts](../api-reference/beta/api/reportroot_getsharepointsiteusagesitecounts.md), [getSharePointSiteUsageStorage](../api-reference/beta/api/reportroot_getsharepointsiteusagestorage.md), and [getSharePointSiteUsagePages](../api-reference/beta/api/reportroot_getsharepointsiteusagepages.md) APIs. These replaced the SharePointSiteUsage API. |
| Change      | Beta    | Added the [getSkypeForBusinessActivityUserDetail](../api-reference/beta/api/reportroot_getskypeforbusinessactivityuserdetail.md), [getSkypeForBusinessActivityCounts](../api-reference/beta/api/reportroot_getskypeforbusinessactivitycounts.md), and [getSkypeForBusinessActivityUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinessactivityusercounts.md) APIs. These replaced the SfbActivity API. |
| Change      | Beta    | Added the [getSkypeForBusinessDeviceUsageUserDetail](../api-reference/beta/api/reportroot_getskypeforbusinessdeviceusageuserdetail.md), [getSkypeForBusinessDeviceUsageDistributionUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinessdeviceusagedistributionusercounts.md), and [getSkypeForBusinessDeviceUsageUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinessdeviceusageusercounts.md) APIs. These replaced the SfbDeviceUsage API. |
| Change      | Beta    | Added the [getSkypeForBusinessOrganizerActivityCounts](../api-reference/beta/api/reportroot_getskypeforbusinessorganizeractivitycounts.md), [getSkypeForBusinessOrganizerActivityUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinessorganizeractivityusercounts.md), and [getSkypeForBusinessOrganizerActivityMinuteCounts](../api-reference/beta/api/reportroot_getskypeforbusinessorganizeractivityminutecounts.md) APIs. These replaced the SfbOrganizerActivity API. |
| Change      | Beta    | Added the [getSkypeForBusinessParticipantActivityCounts](../api-reference/beta/api/reportroot_getskypeforbusinessparticipantactivitycounts.md), [getSkypeForBusinessParticipantActivityUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinessparticipantactivityusercounts.md), and [getSkypeForBusinessParticipantActivityMinuteCounts](../api-reference/beta/api/reportroot_getskypeforbusinessparticipantactivityminutecounts.md) APIs. These replaced the SfbParticipantActivity API. |
| Change      | Beta    | Added the [getSkypeForBusinessPeerToPeerActivityCounts](../api-reference/beta/api/reportroot_getskypeforbusinesspeertopeeractivitycounts.md), [getSkypeForBusinessPeerToPeerActivityUserCounts](../api-reference/beta/api/reportroot_getskypeforbusinesspeertopeeractivityusercounts.md), and [getSkypeForBusinessPeerToPeerActivityMinuteCounts](../api-reference/beta/api/reportroot_getskypeforbusinesspeertopeeractivityminutecounts.md) APIs. These replaced the SfbP2PActivity API. |
| Change      | Beta    | Added the [getYammerActivityUserDetail](../api-reference/beta/api/reportroot_getyammeractivityuserdetail.md), [getYammerActivityCounts](../api-reference/beta/api/reportroot_getyammeractivitycounts.md), and [getYammerActivityUserCounts](../api-reference/beta/api/reportroot_getyammeractivityusercounts.md) APIs. These replaced the YammerActivity API. |
| Change      | Beta    | Added the [getYammerDeviceUsageUserDetail](../api-reference/beta/api/reportroot_getyammerdeviceusageuserdetail.md), [getYammerDeviceUsageDistributionUserCounts](../api-reference/beta/api/reportroot_getyammerdeviceusagedistributionusercounts.md), and [getYammerDeviceUsageUserCounts](../api-reference/beta/api/reportroot_getyammerdeviceusageusercounts.md) APIs. These replaced the YammerDeviceUsage API. |
| Change      | Beta    | Added the [getYammerGroupsActivityDetail](../api-reference/beta/api/reportroot_getyammergroupsactivitydetail.md), [getYammerGroupsActivityGroupCounts](../api-reference/beta/api/reportroot_getyammergroupsactivitygroupcounts.md), and [getYammerGroupsActivityCounts](../api-reference/beta/api/reportroot_getyammergroupsactivitycounts.md) APIs. These replaced the YammerGroupsActivity API. |



## September 2017

### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[activeDirectoryWindowsAutopilotDeploymentProfile](../api-reference/beta/resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md)<br/>[azureADWindowsAutopilotDeploymentProfile](../api-reference/beta/resources/intune_enrollment_azureadwindowsautopilotdeploymentprofile.md)<br/>[deviceEnrollmentConfiguration](../api-reference/beta/resources/intune_onboarding_deviceenrollmentconfiguration.md)<br/>[deviceEnrollmentLimitConfiguration](../api-reference/beta/resources/intune_onboarding_deviceenrollmentlimitconfiguration.md)<br/>[deviceEnrollmentPlatformRestrictionsConfiguration](../api-reference/beta/resources/intune_onboarding_deviceenrollmentplatformrestrictionsconfiguration.md)<br/>[deviceEnrollmentWindowsHelloForBusinessConfiguration](../api-reference/beta/resources/intune_onboarding_deviceenrollmentwindowshelloforbusinessconfiguration.md)<br/>[deviceManagementPartner](../api-reference/beta/resources/intune_onboarding_devicemanagementpartner.md)<br/>[enrollmentConfigurationAssignment](../api-reference/beta/resources/intune_onboarding_enrollmentconfigurationassignment.md)<br/>[windows10EnrollmentCompletionPageConfiguration](../api-reference/beta/resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md)<br/>[windows10NetworkBoundaryConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10networkboundaryconfiguration.md)<br/>[windowsAutopilotDeploymentProfile](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeploymentprofile.md)<br/>[windowsAutopilotDeviceIdentity](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeviceidentity.md)<br/>[windowsAutopilotSettings](../api-reference/beta/resources/intune_enrollment_windowsautopilotsettings.md)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[adminConsent](../api-reference/beta/resources/intune_devices_adminconsent.md)<br/>[allDevicesAssignmentTarget](../api-reference/beta/resources/intune_shared_alldevicesassignmenttarget.md)<br/>[allLicensedUsersAssignmentTarget](../api-reference/beta/resources/intune_shared_alllicensedusersassignmenttarget.md)<br/>[deviceAndAppManagementAssignmentTarget](../api-reference/beta/resources/intune_shared_deviceandappmanagementassignmenttarget.md)<br/>[deviceEnrollmentPlatformRestriction](../api-reference/beta/resources/intune_onboarding_deviceenrollmentplatformrestriction.md)<br/>[deviceHealthAttestationState](../api-reference/beta/resources/intune_devices_devicehealthattestationstate.md)<br/>[exclusionGroupAssignmentTarget](../api-reference/beta/resources/intune_shared_exclusiongroupassignmenttarget.md)<br/>[groupAssignmentTarget](../api-reference/beta/resources/intune_shared_groupassignmenttarget.md)<br/>[outOfBoxExperienceSettings](../api-reference/beta/resources/intune_enrollment_outofboxexperiencesettings.md)<br/>[windowsFirewallNetworkProfile](../api-reference/beta/resources/intune_deviceconfig_windowsfirewallnetworkprofile.md)<br/>windowsNetworkIsolationCloudResource<br/>windowsNetworkIsolationCloudResourceCollection<br/>windowsNetworkIsolationIPRangeCollection<br/>[windowsNetworkIsolationPolicy](../api-reference/beta/resources/intune_deviceconfig_windowsnetworkisolationpolicy.md)<br/>windowsNetworkIsolationResourceCollection<br/> |
| Addition    | Beta    | Added the [sync](../api-reference/beta/api/intune_enrollment_windowsautopilotsettings_sync.md) action on [windowsAutopilotSettings](../api-reference/beta/resources/intune_enrollment_windowsautopilotsettings.md) |
| Addition    | Beta    | Added the [assign](../api-reference/beta/api/intune_enrollment_windowsautopilotdeploymentprofile_assign.md) action on [windowsAutopilotDeploymentProfile](../api-reference/beta/resources/intune_enrollment_windowsautopilotdeploymentprofile.md) |
| Addition    | Beta    | Added the localActions action on [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) |
| Addition    | Beta    | Added the [setPriority](../api-reference/beta/api/intune_onboarding_deviceenrollmentconfiguration_setpriority.md) action on [deviceEnrollmentConfiguration](../api-reference/beta/resources/intune_onboarding_deviceenrollmentconfiguration.md) |
| Addition    | Beta    | Added the [assign](../api-reference/beta/api/intune_onboarding_deviceenrollmentconfiguration_assign.md) action on [deviceEnrollmentConfiguration](../api-reference/beta/resources/intune_onboarding_deviceenrollmentconfiguration.md) |
| Addition    | Beta    | Added the uploadDepToken action on [depOnboardingSetting](../api-reference/beta/resources/intune_onboarding_deponboardingsetting.md) collection |
| Addition    | Beta    | Added the syncWithAppleDeviceEnrollmentProgram action on [depOnboardingSetting](../api-reference/beta/resources/intune_onboarding_deponboardingsetting.md) collection |
| Addition    | Beta    | Added the updateMobileAppIdentifierDeployments action on [managedAppProtection](../api-reference/beta/resources/intune_mam_managedappprotection.md) |
| Addition    | Beta    | Added the assign action on [targetedManagedAppProtection](../api-reference/beta/resources/intune_mam_targetedmanagedappprotection.md) |
| Addition    | Beta    | Added the assign action on [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) |
| Addition    | Beta    | Added the assign action on [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) |
| Addition    | Beta    | Added the getEncryptionPublicKey function on [depOnboardingSetting](../api-reference/beta/resources/intune_onboarding_deponboardingsetting.md) collection |
| Change      | Beta    | Added the **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders**, **requireCompanyPortalAppIntegrity** and **conditionStatementId** properties to the [androidCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidcompliancepolicy.md) entity |
| Change      | Beta    | Added the **requireAppVerify**, **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders** and **requireCompanyPortalAppIntegrity** properties to the [androidForWorkCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidforworkcompliancepolicy.md) entity |
| Change      | Beta    | Added the **blockCrossProfileCopyPaste** and **requireAppVerify** properties to the [androidForWorkGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Added the **kioskModeApps** and **requireAppVerify** properties to the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Removed the **kioskModeManagedApps** property from the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Removed the **cloudPkiProvider**, **createdDateTime**, **description**, **lastModifiedDateTime**, **displayName**, **syncStatus**, **lastSyncError**, **lastSyncDateTime**, **credentials**, **trustedRootCertificate** and **version** properties from the cloudPkiSubscription entity |
| Change      | Beta    | Removed the **assignmentStatus**, **assignmentProgress** and **assignmentErrorMessage** properties from the [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) entity |
| Change      | Beta    | Added the **adminConsent** property to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change      | Beta    | Added the **vppTokenOrganizationName**, **vppTokenAccountType** and **vppTokenAppleId** properties to the [iosVppApp](../api-reference/beta/resources/intune_apps_iosvppapp.md) entity |
| Change      | Beta    | Added the **deviceEnrollmentType**, **wiFiMacAddress** and **deviceHealthAttestationState** properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity |
| Change      | Beta    | Added the **legacyAppConfiguration** property to the [managedDeviceMobileAppConfiguration](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [managedDeviceMobileAppConfigurationDeviceSummary](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [managedDeviceMobileAppConfigurationUserSummary](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationusersummary.md) entity |
| Change      | Beta    | Added the **firewallBlockStatefulFTP**, **firewallIdleTimeoutForSecurityAssociationInSeconds**, **firewallPreSharedKeyEncodingMethod**, **firewallIPSecExemptionsAllowNeighborDiscovery**, **firewallIPSecExemptionsAllowICMP**, **firewallIPSecExemptionsAllowRouterDiscovery**, **firewallIPSecExemptionsAllowDHCP**, **firewallCertificateRevocationListCheckMethod**, **firewallMergeKeyingModuleSettings**, **firewallPacketQueueingMethod**, **firewallProfileDomain**, **firewallProfilePublic**, **firewallProfilePrivate**, **defenderAttackSurfaceReductionExcludedPaths**, **defenderOfficeAppsOtherProcessInjectionType**, **defenderOfficeAppsExecutableContentCreationOrLaunchType**, **defenderOfficeAppsLaunchChildProcessType**, **defenderOfficeMacroCodeAllowWin32ImportsType**, **defenderScriptObfuscatedMacroCodeType**, **defenderScriptDownloadedPayloadExecutionType**, **defenderEmailContentExecutionType**, **defenderGuardMyFoldersType**, **defenderGuardedFoldersAllowedAppPaths**, **defenderAdditionalGuardedFolders**, **defenderNetworkProtectionType**, **defenderExploitProtectionXml**, **defenderExploitProtectionXmlFileName**, **defenderSecurityCenterBlockExploitProtectionOverride**, **appLockerApplicationControl**, **applicationGuardBlockClipboardSharing**, **applicationGuardAllowPrintToPDF**, **applicationGuardAllowPrintToXPS**, **applicationGuardAllowPrintToLocalPrinters**, **applicationGuardAllowPrintToNetworkPrinters** and **bitLockerDisableWarningForOtherDiskEncryption** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity |
| Change      | Beta    | Added the **displayAppListWithGdiDPIScalingTurnedOn**, **displayAppListWithGdiDPIScalingTurnedOff**, **messagingBlockSync**, **messagingBlockMMS** and **messagingBlockRichCommunicationServices** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity |
| Change      | Beta    | Removed the **bluetoothDeviceName** property from the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity |
| Change      | Beta    | Removed the **deviceAccountBlockExchangeServices**, **deviceAccountEmailAddress**, **deviceAccountExchangeServerAddress**, **deviceAccountRequirePasswordRotation** and **deviceAccountSessionInitiationProtocolAddress** properties from the [windows10TeamGeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10teamgeneralconfiguration.md) entity |
| Change      | Beta    | Added the **localActions** navigation property to the [androidCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidcompliancepolicy.md) entity |
| Change      | Beta    | Added the **windowsAutopilotSettings**, **windowsAutopilotDeviceIdentities**, **windowsAutopilotDeploymentProfiles**, **deviceEnrollmentConfigurations**, **deviceManagementPartners** and **depOnboardingSettings** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change      | Beta    | Removed the **cloudPkiSubscriptions** navigation property from the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change      | Beta    | Added the **assignments** navigation property to the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity |
| Change      | Beta    | Added the **assignments** navigation property to the [targetedManagedAppProtection](../api-reference/beta/resources/intune_mam_targetedmanagedappprotection.md) entity |
| Change      | Beta    | Added the **assignments** navigation property to the [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) entity |

### OneDrive

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the **system** property to the [Drive][] resource. |
| Addition        | v1.0        | Added the **list** relationship to the [Drive][] resource. |
| Addition        | v1.0        | Added the **listItem** relationship to the [DriveItem][] resource. |
| Addition        | v1.0        | Added the **list** and **listItem** relationships to the [SharedDriveItem][] resource. |
| Addition        | v1.0        | Added new complex types: [FolderView][]  |
| Addition        | v1.0        | Added the **view** property to the [Folder][] complex type. |
| Addition        | v1.0        | Added the **driveType** property to the [ItemReference][] complex type. |
| Addition        | v1.0        | Added the **audioBitsPerSample**, **audioChannels**, **audioFormat**, **audioSamplesPerSecond**, **fourCC** and **frameRate** properties to the [Video][] complex type. |
| Addition        | beta        | Added the **system** property to the [Drive][Drive-beta] resource. |
| Addition        | beta        | Added the **activities** relationship to the [Drive][Drive-beta] resource. |
| Addition        | beta        | Added the **publication** property to the [DriveItem][DriveItem-beta] resource. |
| Addition        | beta        | Added the **activities** and **versions** relationships to the [DriveItem][DriveItem-beta] resource. |
| Addition        | beta        | Added new entities: [DriveItemVersion][DriveItemVersion-beta], [ItemActivity][ItemActivity-beta]. |
| Addition        | beta        | Added new complex types: [CommentAction][CommentAction-beta], [CreateAction][CreateAction-beta], [DeleteAction][DeleteAction-beta], [EditAction][EditAction-beta], [ItemActionSet][ItemActionSet-beta], [ItemActivityTimeSet][ItemActivityTimeSet-beta], [MentionAction][MentionAction-beta], [MoveAction][MoveAction-beta], [PublicationFacet][PublicationFacet-beta], [RenameAction][RenameAction-beta], [RestoreAction][RestoreAction-beta], [ShareAction][ShareAction-beta], and [VersionAction][VersionAction-beta]. |
| Addition        | beta        | Added the **driveType** property to the [ItemReference][ItemReference-beta] complex type. |
| Deletion        | beta        | Removed the **tenantId** property from [SharepointIds][SharepointIds-beta] complex type. |
| Addition        | v1.0        | Added the **audioBitsPerSample**, **audioChannels**, **audioFormat**, **audioSamplesPerSecond**, **fourCC** and **frameRate** properties to the [Video][Video-beta] complex type. |
| Addition        | beta        | Added the [CheckIn][CheckIn-beta] and [CheckOut][CheckOut-beta] actions on the [DriveItem][DriveItem-beta] resource. |
| Addition        | beta        | Added the **expirationDateTime**, **password**, **message**, and **recipients** properties on the [CreateLink][CreateLink-beta] action on a [DriveItem][DriveItem-beta] resource. |

[Drive]: ../api-reference/v1.0/resources/drive.md
[DriveItem]: ../api-reference/v1.0/resources/driveitem.md
[SharedDriveItem]: ../api-reference/v1.0/resources/shareddriveitem.md
[FolderView]: ../api-reference/v1.0/resources/folderview.md
[Folder]: ../api-reference/v1.0/resources/folder.md
[ItemReference]: ../api-reference/v1.0/resources/itemreference.md
[Video]: ../api-reference/v1.0/resources/video.md
[Drive-beta]: ../api-reference/beta/resources/drive.md
[DriveItem-beta]: ../api-reference/beta/resources/driveitem.md
[DriveItemVersion-beta]: ../api-reference/beta/resources/driveitemversion.md
[ItemActivity-beta]: ../api-reference/beta/resources/itemactivity.md
[CommentAction-beta]: ../api-reference/beta/resources/commentaction.md
[CreateAction-beta]: ../api-reference/beta/resources/createaction.md
[DeleteAction-beta]: ../api-reference/beta/resources/deleteaction.md
[EditAction-beta]: ../api-reference/beta/resources/editaction.md
[ItemActionSet-beta]: ../api-reference/beta/resources/itemactionset.md
[ItemActivityTimeSet-beta]: ../api-reference/beta/resources/itemactivitytimeset.md
[MentionAction-beta]: ../api-reference/beta/resources/mentionaction.md
[MoveAction-beta]: ../api-reference/beta/resources/moveaction.md
[PublicationFacet-beta]: ../api-reference/beta/resources/publicationfacet.md
[RenameAction-beta]: ../api-reference/beta/resources/renameaction.md
[RestoreAction-beta]: ../api-reference/beta/resources/restoreaction.md
[ShareAction-beta]: ../api-reference/beta/resources/shareaction.md
[VersionAction-beta]: ../api-reference/beta/resources/versionaction.md
[ItemReference-beta]: ../api-reference/beta/resources/itemreference.md
[SharepointIds-beta]: ../api-reference/beta/resources/sharepointids.md
[Video-beta]: ../api-reference/beta/resources/video.md
[CheckIn-beta]: ../api-reference/beta/api/driveitem_checkin.md
[CheckOut-beta]: ../api-reference/beta/api/driveitem_checkout.md
[CreateLink-beta]: ../api-reference/beta/api/driveitem_createlink.md


### Outlook calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added the [findRoomLists](../api-reference/beta/api/user_findroomlists.md) and [findRooms](../api-reference/beta/api/user_findrooms.md) functions to the [user](../api-reference/beta/resources/user.md) entity. |
| Addition        | Beta          | Added the **locations** property to the [event](../api-reference/beta/resources/event.md) entity to support organizing an event that attendees can attend from more than one location. |
| Addition        | Beta          | Added the **locationType** property to the [location](../api-reference/beta/resources/location.md) complex type. |
| Addition        | Beta          | Added the **uniqueId** and **uniqueIdType** properties to the [location](../api-reference/beta/resources/location.md) complex type. These properties are only for internal use at this point. |
| Change          | v1.0 and beta | This behavior enhancement is about getting a shared calendar or its event contents, when a user has shared a calendar with the signed-in user, or has delegated the user's mailbox to the signed-in user. In such situations, an app can specify that user's ID or user principal name to [get that shared calendar](../api-reference/v1.0/api/calendar_get.md), or [get the events in that shared calendar](../api-reference/v1.0/api/user_list_events.md), as long as the signed-in user has provided delegated permissions to the app. |

### Outlook contacts

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | This behavior enhancement is about getting a shared contact folder or its contact contents, when a user has shared a contact folder with the signed-in user, or has delegated the user's mailbox to the signed-in user. In such situations, an app can specify that user's ID or user principal name to [get that shared contact folder](../api-reference/v1.0/api/contactfolder_get.md), or [get the contacts in that shared folder](../api-reference/v1.0/api/user_list_contacts.md), as long as the signed-in user has provided delegated permissions to the app. |

### Outlook mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **internetMessageHeaders** property to the [message](../api-reference/beta/resources/message.md) entity. |
| Addition        | Beta        | Added the [internetMessageHeader](../api-reference/beta/resources/internetmessageheader.md) complex type. |
| Addition        | Beta        | Added the **messageRules** navigation property to the [mailFolder](../api-reference/beta/resources/mailfolder.md) entity. **messageRules** is a collection of [messageRule](../api-reference/beta/resources/messagerule.md) instances. |
| Addition        | Beta        | Added the [messageRule](../api-reference/beta/resources/messagerule.md) entity, and [messageRuleActions](../api-reference/beta/resources/messageruleactions.md), [messageRulePredicates](../api-reference/beta/resources/messagerulepredicates.md), and [sizeRange](../api-reference/beta/resources/sizerange.md) complex types. |
| Addition        | Beta        | Added the following CRUD operations for message rules: [create](../api-reference/beta/api/mailfolder_post_messagerules.md), [list](../api-reference/beta/api/mailfolder_list_messagerules.md), [get](../api-reference/beta/api/messagerule_get.md), [update](../api-reference/beta/api/messagerule_update.md), and [delete](../api-reference/beta/api/messagerule_delete.md). |


### Outlook user choices

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the new **masterCategories** navigation property to the [outlookUser](../api-reference/beta/resources/outlookuser.md) entity. **masterCategories** is a collection of [outlookCategory](../api-reference/beta/resources/outlookCategory.md) objects. |
| Addition        | Beta        | Added the [outlookCategory](../api-reference/beta/resources/outlookCategory.md) entity. |
| Addition        | Beta        | Added the following CRUD operations for [outlookCategory](../api-reference/beta/resources/outlookCategory.md): [create](../api-reference/beta/api/outlookuser_post_mastercategories.md), [get](../api-reference/beta/api/outlookcategory_get.md), [update](../api-reference/beta/api/outlookcategory_update.md), and [delete](../api-reference/beta/api/outlookcategory_delete.md). |
| Addition        | Beta        | Added the new [supportedLanguages](../api-reference/beta/api/outlookuser_supportedlanguages.md) function to the [outlookUser](../api-reference/beta/resources/outlookuser.md) entity. |
| Addition        | Beta        | Added the new [supportedTimeZones](../api-reference/beta/api/outlookuser_supportedtimezones.md) function to the [outlookUser](../api-reference/beta/resources/outlookuser.md) entity. |


### SharePoint lists

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added new entities: [ColumnDefinition][], [ColumnLink][], [ContentType][], [List][], [ListItem][]. |
| Addition        | v1.0        | Added the **columns**, **contentTypes**, **items**, and **lists** relationships to the [Site][] resource. |
| Addition        | v1.0        | Added new complex types: [BooleanColumn][], [CalculatedColumn][], [ChoiceColumn][], [ContentTypeInfo][], [ContentTypeOrder][], [CurrencyColumn][], [DateTimeColumn][], [DefaultColumnValue][], [ListInfo][], [LookupColumn][], [NumberColumn][], [PersonOrGroupColumn][], [SystemFacet][], [TextColumn][]. |
| Addition        | beta        | Added new entities: [BaseItemVersion][BaseItemVersion-beta], [ColumnLink][ColumnLink-beta], [ContentType][ContentType-beta], [ListItemVersion][ListItemVersion-beta], |
| Addition        | beta        | Added the **columnGroup**, **currency**, **defaultValue** and **displayName** properties to [ColumnDefinition][ColumnDefinition-beta]. |
| Addition        | beta        | Added the **displayName** and **system** properties to the [List][List-beta] resource. |
| Addition        | beta        | Added the **activities** and **contentTypes** relationships to the [List][List-beta] resource. |
| Addition        | beta        | Added the **contentType** property to the [ListItem][ListItem-beta] resource. |
| Addition        | beta        | Added the **activities** and **versions** relationships to the [ListItem][ListItem-beta] resource. |
| Addition        | beta        | Added the **contentTypes** relationship to the [Site][Site-beta] resource. |
| Addition        | beta        | Added the **outputType** property to the [BooleanColumn][BooleanColumn-beta] type. |
| Addition        | beta        | Added new complex types: [ContentTypeInfo][ContentTypeInfo-beta], [ContentTypeOrder][ContentTypeOrder-beta], [CurrencyColumn][CurrencyColumn-beta], and [SystemFacet][SystemFacet-beta]. |
| Addition        | beta        | Added the **contentTypesEnabled** property to the [ListInfo][ListInfo-beta] complex type. |
| Addition        | beta        | Added the **allowUnlimitedLength** property on the [LookupColumn][LookupColumn-beta] complex type. |
| Change          | beta        | Renamed the **allowMultipleValue** property to **allowMultipleValues** on the [LookupColumn][LookupColumn-beta] complex type. |
| Change          | beta        | Renamed the **chooseFrom** property to **chooseFromType** on [PersonOrGroupColumn][PersonOrGroupColumn-beta] complex type. |
| Deletion        | beta        | Removed the **locale** property on the [NumberColumn][NumberColumn-beta] complex type. |
| Deletion        | beta        | Removed the **enforceUniqueValues** property from [PersonOrGroupColumn][PersonOrGroupColumn-beta] complex type. |

[BaseItemVersion-beta]: ../api-reference/beta/resources/baseitemversion.md
[BooleanColumn-beta]:  ../api-reference/beta/resources/booleanColumn.md
[BooleanColumn]: ../api-reference/v1.0/resources/booleancolumn.md
[CalculatedColumn]: ../api-reference/v1.0/resources/calculatedcolumn.md
[ChoiceColumn]: ../api-reference/v1.0/resources/choicecolumn.md
[ColumnDefinition-beta]: ../api-reference/beta/resources/columndefinition.md
[ColumnDefinition]: ../api-reference/v1.0/resources/columndefinition.md
[ColumnLink-beta]: ../api-reference/beta/resources/columnLink.md
[ColumnLink]: ../api-reference/v1.0/resources/columnLink.md
[ContentType-beta]: ../api-reference/beta/resources/contentType.md
[ContentType]: ../api-reference/v1.0/resources/contentType.md
[ContentTypeInfo-beta]: ../api-reference/beta/resources/contentTypeInfo.md
[ContentTypeInfo]: ../api-reference/v1.0/resources/contentTypeInfo.md
[ContentTypeOrder-beta]: ../api-reference/beta/resources/contentTypeOrder.md
[ContentTypeOrder]: ../api-reference/v1.0/resources/contentTypeOrder.md
[CurrencyColumn-beta]: ../api-reference/beta/resources/currencycolumn.md
[CurrencyColumn]: ../api-reference/v1.0/resources/currencycolumn.md
[DateTimeColumn]: ../api-reference/v1.0/resources/datetimecolumn.md
[DefaultColumnValue]: ../api-reference/v1.0/resources/defaultColumnValue.md
[List-beta]: ../api-reference/beta/resources/list.md
[List]: ../api-reference/v1.0/resources/list.md
[ListInfo-beta]: ../api-reference/beta/resources/listinfo.md
[ListInfo]: ../api-reference/v1.0/resources/listinfo.md
[ListItem-beta]: ../api-reference/beta/resources/listitem.md
[ListItem]: ../api-reference/v1.0/resources/listitem.md
[ListItemVersion-beta]: ../api-reference/beta/resources/listitemversion.md
[LookupColumn-beta]: ../api-reference/beta/resources/lookupColumn.md
[LookupColumn]: ../api-reference/v1.0/resources/lookupcolumn.md
[NumberColumn-beta]: ../api-reference/beta/resources/numberColumn.md
[NumberColumn]: ../api-reference/v1.0/resources/numbercolumn.md
[PersonOrGroupColumn-beta]: ../api-reference/beta/resources/personOrGroupColumn.md
[PersonOrGroupColumn]: ../api-reference/v1.0/resources/personorgroupcolumn.md
[Site-beta]: ../api-reference/beta/resources/site.md
[Site]: ../api-reference/v1.0/resources/site.md
[SystemFacet-beta]: ../api-reference/beta/resources/systemfacet.md
[SystemFacet]: ../api-reference/v1.0/resources/systemFacet.md
[TextColumn]: ../api-reference/v1.0/resources/textcolumn.md


### SharePoint sites

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added **dataLocationCode** and **root** properties to the [SiteCollection][SiteCollection-beta] complex type. |

[SiteCollection-beta]: ../api-reference/beta/resources/sitecollection.md


## August 2017

### Group lifecycle policy

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added [groupLifecyclePolicy](../api-reference/beta/resources/grouplifecyclepolicy.md) entity. |
| Addition        | Beta        | Added the following APIs for group lifecycle policy: [create](../api-reference/beta/api/grouplifecyclepolicy_post_grouplifecyclepolicies.md), [list](../api-reference/beta/api/grouplifecyclepolicy_list.md), [get](../api-reference/beta/api/grouplifecyclepolicy_get.md), [update](../api-reference/beta/api/grouplifecyclepolicy_update.md), [delete](../api-reference/beta/api/grouplifecyclepolicy_delete.md), [add group](../api-reference/beta/api/grouplifecyclepolicy_addgroup.md), [remove group](../api-reference/beta/api/grouplifecyclepolicy_removegroup.md), and [renew a group](../api-reference/beta/api/grouplifecyclepolicy_renewgroup.md). |
| Addition        | Beta        | Added [List groupLifecylePolicies](../api-reference/beta/api/group_list_grouplifecyclepolicies.md) function to [group](../api-reference/beta/resources/group.md) entity. |

### Intune APIs
| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entity:<br/>[windowsPrivacyDataAccessControlItem](../api-reference/beta/resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem.md)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[configurationManagerClientEnabledFeatures](../api-reference/beta/resources/intune_devices_configurationmanagerclientenabledfeatures.md)<br/>[windowsDefenderScanActionResult](../api-reference/beta/resources/intune_devices_windowsdefenderscanactionresult.md)<br/> |
| Addition    | Beta    | Added the [windowsDefenderScan](../api-reference/beta/api/intune_devices_manageddevice_windowsdefenderscan.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
| Addition    | Beta    | Added the [windowsDefenderUpdateSignatures](../api-reference/beta/api/intune_devices_manageddevice_windowsdefenderupdatesignatures.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
| Addition    | Beta    | Added the [windowsPrivacyAccessControls](../api-reference/beta/api/intune_deviceconfig_deviceconfiguration_windowsprivacyaccesscontrols.md) action on [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) |
| Change      | Beta    | Added the **automaticallyUpdateApps** and **countryOrRegion** properties to the [appleVolumePurchaseProgramToken](../api-reference/beta/resources/intune_apps_applevolumepurchaseprogramtoken.md) entity |
| Change      | Beta    | Added the **enableAuthenticationViaCompanyPortal** property to the [depEnrollmentProfile](../api-reference/beta/resources/intune_corpenrollment_depenrollmentprofile.md) entity |
| Change      | Beta    | Added the **notificationMessageCCList** property to the [deviceComplianceActionItem](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceactionitem.md) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceComplianceDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview.md) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceComplianceUserOverview](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceuseroverview.md) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceConfigurationDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceConfigurationUserOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview.md) entity |
| Change      | Beta    | Added the **configurationManagerClientEnabledFeatures** property to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity |
| Change      | Beta    | Removed the **intuneBrand** property from the [organization](../api-reference/beta/resources/intune_onboarding_organization.md) entity |
| Change      | Beta    | Added the **smartScreenEnableInShell**, **smartScreenBlockOverrideForFiles**, **applicationGuardEnabled**, **applicationGuardBlockFileTransfer**, **applicationGuardBlockNonEnterpriseContent**, **applicationGuardAllowPersistence** and **applicationGuardForceAuditing** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity |
| Change      | Beta    | Added the **searchBlockDiacritics**, **searchDisableAutoLanguageDetection**, **searchDisableIndexingEncryptedItems**, **searchEnableRemoteQueries**, **searchDisableUseLocation**, **searchDisableIndexerBackoff**, **searchDisableIndexingRemovableDrive**, **searchEnableAutomaticIndexSizeManangement**, **smartScreenEnableAppInstallControl** and **privacyAdvertisingId** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity |
| Change      | Beta    | Removed the **settingsDeviceName** property from the [windows10TeamGeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10teamgeneralconfiguration.md) entity |
| Change      | Beta    | Removed the **restartMode** property from the [windowsUpdateForBusinessConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) entity |
| Change      | Beta    | Added the **detectedApps** and **managedDevices** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change      | Beta    | Added the **privacyAccessControls** navigation property to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity |
| Change      | Beta    | Added the **secureByDefault** property to the [deviceManagementSettings](../api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings.md) complex type |
| Change      | Beta    | Added the **restartMode** property to the [windowsUpdateScheduledInstall](../api-reference/beta/resources/intune_deviceconfig_windowsupdatescheduledinstall.md) complex type |

### OneNote

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and Beta | Added the [onenote](../api-reference/v1.0/resources/onenote.md) navigation property to **site**. |
| Addition        | Beta          | Added the target *siteCollectionId* and target *siteId* parameters for the copy operations. For example: [CopyNotebook](../api-reference/v1.0/api/notebook_copynotebook.md). |

### People

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the [People APIs](../api-reference/v1.0/resources/person.md) to v1.0. For details about the People API, see [Get relevant information about people](people_example.md). |
| Addition        | v1.0        | Added People.Read.All permission. To learn more, please see [Permissions](permissions_reference.md). |
| Addition        | v1.0        | Added the [personType](../api-reference/v1.0/resources/persontype.md) resource. |
| Change          | v1.0        | The [scoredEmailAddress](../api-reference/v1.0/resources/scoredemailaddress.md) resource replaced the **rankedEmailAddress** resource. |
| Change          | v1.0        | The [person](../api-reference/v1.0/resources/person.md) resource was updated as follows:<ul><li>The **scoredEmailAddresses** property (a collection of [scoredEmailAddress](../api-reference/v1.0/resources/scoredemailaddress.md) type) replaced the **emailAddresses** property</li><li>The **jobTitle** property replaced the **title** property</li><li>Removed **sources** and **mailboxType** properties</li><li>The **personType** property is now of [personType](../api-reference/v1.0/resources/persontype.md) type instead of string type and replaces functionality of the previous **sources** and **mailboxType** properties</li><li>Added **imAddress** property</li></ul> |
| Deletion        | v1.0        | Removed the **personDataSource** resource. |

### User

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added **employeeId** property to [user](../api-reference/beta/resources/user.md) |

## July 2017

### Group settings

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added support for group settings.<br/>New resource types: [groupSetting](../api-reference/v1.0/resources/groupsetting.md), [groupSettingTemplate](../api-reference/v1.0/resources/groupsettingtemplate.md), [settingValue](../api-reference/v1.0/resources/settingvalue.md), and [settingTemplateValue](../api-reference/v1.0/resources/settingtemplatevalue.md) |
| Change          | v1.0        | Added property **classification** and navigation property **settings**  to [group](../api-reference/v1.0/resources/group.md) |

### Intune APIs

| Change&nbsp;type | Version | Description                              |
| :--------------- | :------ | :--------------------------------------- |
| Addition         | Beta    | Added the [assign](../api-reference/beta/api/intune_apps_iosmobileappconfiguration_assign.md) action on [iosMobileAppConfiguration](../api-reference/beta/resources/intune_apps_iosmobileappconfiguration.md) |
| Addition         | Beta    | Added the [syncDevice](../api-reference/beta/api/intune_devices_manageddevice_syncdevice.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
| Change           | Beta    | Added the **appsInstallAllowList**, **appsLaunchBlockList** and **appsHideList** properties to the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity |
| Change           | Beta    | Added the **disableAppEncryptionIfDeviceEncryptionIsEnabled** property to the [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) entity |
| Change           | Beta    | Added the **disableAppEncryptionIfDeviceEncryptionIsEnabled** property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [deviceComplianceDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedevicestatus.md) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [deviceComplianceSettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancesettingstate.md) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [deviceConfigurationDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) entity |
| Change           | Beta    | Added the **subscriptions** property to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change           | Beta    | Added the **version** property to the [deviceManagementExchangeConnector](../api-reference/beta/resources/intune_onboarding_devicemanagementexchangeconnector.md) entity |
| Change           | Beta    | Added the **utcTimeOffsetInMinutes** property to the [iosUpdateConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosupdateconfiguration.md) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [iosUpdateDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_iosupdatedevicestatus.md) entity |
| Change           | Beta    | Added the **preSharedKey** property to the [macOSWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_macoswificonfiguration.md) entity |
| Change           | Beta    | Added the **phoneNumber**, **androidSecurityPatchLevel** and **userDisplayName** properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity |
| Change           | Beta    | Added the **userName**, **deviceModel**, **platform** and **complianceGracePeriodExpirationDateTime** properties to the [managedDeviceMobileAppConfigurationDeviceStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) entity |
| Change           | Beta    | Added the **userPrincipalName** property to the [mobileAppInstallStatus](../api-reference/beta/resources/intune_apps_mobileappinstallstatus.md) entity |
| Change           | Beta    | Added the **overrideDefaultRule** property to the [onPremisesConditionalAccessSettings](../api-reference/beta/resources/intune_onboarding_onpremisesconditionalaccesssettings.md) entity |
| Change           | Beta    | Added the **userPrincipalName** property to the [userAppInstallStatus](../api-reference/beta/resources/intune_apps_userappinstallstatus.md) entity |
| Change           | Beta    | Added the **connectAppBlockAutoLaunch**, **deviceAccountBlockExchangeServices**, **deviceAccountEmailAddress**, **deviceAccountExchangeServerAddress**, **deviceAccountRequirePasswordRotation**, **deviceAccountSessionInitiationProtocolAddress**, **settingsBlockMyMeetingsAndFiles**, **settingsBlockSessionResume**, **settingsBlockSigninSuggestions**, **settingsDefaultVolume**, **settingsScreenTimeoutInMinutes**, **settingsSessionTimeoutInMinutes** and **settingsSleepTimeoutInMinutes** properties to the [windows10TeamGeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10teamgeneralconfiguration.md) entity |
| Change           | Beta    | Added the **deploymentSummary** navigation property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity |
| Change           | Beta    | Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceCompliancePolicySettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstate.md) complex type |
| Change           | Beta    | Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceConfigurationSettingState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate.md) complex type |
| Change           | Beta    | Added the **unknownCount** property to the [deviceOperatingSystemSummary](../api-reference/beta/resources/intune_devices_deviceoperatingsystemsummary.md) complex type |



## June 2017

### Project Rome

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the following resources and APIs:<br/>[Activity](../api-reference/beta/resources/projectrome_activity.md)<br/>[Create or replace an activity](../api-reference/beta/api/projectrome_put_activity.md)<br/>[Delete an activity](../api-reference/beta/api/projectrome_delete_activity.md)<br/>[History item](../api-reference/beta/resources/projectrome_historyitem.md)<br/>[Create or replace a history item](../api-reference/beta/api/projectrome_put_historyitem.md)<br/>[Delete a history item](../api-reference/beta/api/projectrome_delete_historyitem.md) |

### Outlook calendar

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Promoted the following 4 [calendar](../api-reference/v1.0/resources/calendar.md) properties to v1.0: **canEdit**, **canShare**, **canViewPrivateItems**, and **owner**. |


### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[defaultDeviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_defaultdevicecompliancepolicy.md)<br/>[deviceConfigurationUserStateSummary](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuserstatesummary.md)<br/>[deviceManagementScriptDeviceState](../api-reference/beta/resources/intune_devicefe_devicemanagementscriptdevicestate.md)<br/>[deviceManagementScriptRunSummary](../api-reference/beta/resources/intune_devicefe_devicemanagementscriptrunsummary.md)<br/>[deviceManagementScriptUserState](../api-reference/beta/resources/intune_devicefe_devicemanagementscriptuserstate.md)<br/>[iosUpdateDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_iosupdatedevicestatus.md)<br/>[windowsManagedDevice](../api-reference/beta/resources/intune_devicefe_windowsmanageddevice.md)<br/>[windowsManagementAppHealthState](../api-reference/beta/resources/intune_devicefe_windowsmanagementapphealthstate.md)<br/>[windowsManagementAppHealthSummary](../api-reference/beta/resources/intune_devicefe_windowsmanagementapphealthsummary.md)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[bitLockerFixedDrivePolicy](../api-reference/beta/resources/intune_deviceconfig_bitlockerfixeddrivepolicy.md)<br/>[bitLockerRecoveryOptions](../api-reference/beta/resources/intune_deviceconfig_bitlockerrecoveryoptions.md)<br/>[bitLockerRemovableDrivePolicy](../api-reference/beta/resources/intune_deviceconfig_bitlockerremovabledrivepolicy.md)<br/>[deleteUserFromSharedAppleDeviceActionResult](../api-reference/beta/resources/intune_devicefe_deleteuserfromsharedappledeviceactionresult.md)<br/>[iosNetworkUsageRule](../api-reference/beta/resources/intune_deviceconfig_iosnetworkusagerule.md)<br/> |
| Deletion    | Beta    | Removed the following entities:<br/>**deviceManagementScriptState**<br/> |
| Deletion    | Beta    | Removed the wipeByDeviceTag action on [user](../api-reference/beta/resources/intune_devicefe_user.md) |
| Change      | Beta    | Added the **innerAuthenticationProtocolForEapTtls**, **innerAuthenticationProtocolForPeap** and **outerIdentityPrivacyTemporaryValue** properties to the [androidEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidenterprisewificonfiguration.md) entity |
| Change      | Beta    | Removed the **nonEapAuthenticationMethodForEapTtls**, **nonEapAuthenticationMethodForPeap** and **enableOuterIdentityPrivacy** properties from the [androidEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidenterprisewificonfiguration.md) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) entity |
| Change      | Beta    | Removed the **instanceDisplayName** and **settingPlatform** properties from the [complianceSettingStateSummary](../api-reference/beta/resources/complianceSettingStateSummary.md) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity |
| Change      | Beta    | Added the **excludeGroup** property to the [deviceCompliancePolicyGroupAssignment](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) entity |
| Change      | Beta    | Removed the **instanceDisplayName** and **settingPlatform** properties from the [deviceCompliancePolicySettingStateSummary](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md) entity |
| Change      | Beta    | Removed the **devicePlatform** property from the [deviceComplianceSettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancesettingstate.md) entity |
| Change      | Beta    | Added the **assignmentStatus**, **assignmentProgress** and **assignmentErrorMessage** properties to the [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) entity |
| Change      | Beta    | Added the **intuneBrand** property to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change      | Beta    | Added the **enforceSignatureCheck** and **fileName** properties to the [deviceManagementScript](../api-reference/beta/resources/intune_devicefe_devicemanagementscript.md) entity |
| Change      | Beta    | Added the **innerAuthenticationProtocolForEapTtls** and **outerIdentityPrivacyTemporaryValue** properties to the [iosEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosenterprisewificonfiguration.md) entity |
| Change      | Beta    | Removed the **nonEapAuthenticationMethodForEapTtls** and **enableOuterIdentityPrivacy** properties from the [iosEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosenterprisewificonfiguration.md) entity |
| Change      | Beta    | Added the **classroomAppForceUnpromptedScreenObservation**, **keyboardBlockDictation**, **networkUsageRules** and **wiFiConnectOnlyToConfiguredNetworks** properties to the [iosGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity |
| Change      | Beta    | Added the **preSharedKey** property to the [iosWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioswificonfiguration.md) entity |
| Change      | Beta    | Added the **innerAuthenticationProtocolForEapTtls** and **outerIdentityPrivacyTemporaryValue** properties to the [macOSEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_macosenterprisewificonfiguration.md) entity |
| Change      | Beta    | Removed the **nonEapAuthenticationMethodForEapTtls** and **enableOuterIdentityPrivacy** properties from the [macOSEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_macosenterprisewificonfiguration.md) entity |
| Change      | Beta    | Removed the **lastModifiedTime** and **deployedAppCount** properties from the [managedAppPolicy](../api-reference/beta/resources/intune_mam_managedapppolicy.md) entity |
| Change      | Beta    | Added the **serialNumber** property to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity |
| Change      | Beta    | Removed the **managementAgents** property from the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity |
| Change      | Beta    | Added the **bitLockerFixedDrivePolicy** and **bitLockerRemovableDrivePolicy** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity |
| Change      | Beta    | Added the **enterpriseCloudPrintDiscoveryEndPoint**, **enterpriseCloudPrintOAuthAuthority**, **enterpriseCloudPrintOAuthClientIdentifier**, **enterpriseCloudPrintResourceIdentifier**, **enterpriseCloudPrintDiscoveryMaxLimit**, **enterpriseCloudPrintMopriaDiscoveryResourceIdentifier**, **edgeBlockAddressBarDropdown**, **edgeBlockCompatibilityList**, **edgeClearBrowsingDataOnExit**, **edgeAllowStartPagesModification**, **edgeDisableFirstRunPage**, **edgeBlockLiveTileDataCollection** and **edgeSyncFavoritesWithInternetExplorer** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity |
| Change      | Beta    | Added the **availableVersion** property to the [windowsManagementApp](../api-reference/beta/resources/intune_devicefe_windowsmanagementapp.md) entity |
| Change      | Beta    | Removed the **onboardingStatus**, **deployedVersion** and **lastModifiedTime** properties from the [windowsManagementApp](../api-reference/beta/resources/intune_devicefe_windowsmanagementapp.md) entity |
| Change      | Beta    | Added the **packageIdentityName** property to the [windowsStoreForBusinessApp](../api-reference/beta/resources/intune_apps_windowsstoreforbusinessapp.md) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** navigation property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity |
| Change      | Beta    | Added the **deviceConfigurationUserStateSummaries** and **iosUpdateStatuses** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change      | Beta    | Removed the **complianceSettingStateSummaries** navigation property from the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change      | Beta    | Added the **runSummary**, **deviceRunStates** and **userRunStates** navigation properties to the [deviceManagementScript](../api-reference/beta/resources/intune_devicefe_devicemanagementscript.md) entity |
| Change      | Beta    | Removed the **runStates** navigation property from the [deviceManagementScript](../api-reference/beta/resources/intune_devicefe_devicemanagementscript.md) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity |
| Change      | Beta    | Removed the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties from the [managedAppPolicy](../api-reference/beta/resources/intune_mam_managedapppolicy.md) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity |
| Change      | Beta    | Added the **healthSummary** and **healthStates** navigation properties to the [windowsManagementApp](../api-reference/beta/resources/intune_devicefe_windowsmanagementapp.md) entity |
| Change      | Beta    | Added the **applicationId**, **appName**, **platformId**, **userFailures** and **deviceFailures** properties to the [appInstallationFailure](../api-reference/beta/resources/intune_apps_appinstallationfailure.md) complex type |
| Change      | Beta    | Added the **encryptionMethod**, **startupAuthenticationRequired**, **startupAuthenticationBlockWithoutTpmChip**, **startupAuthenticationTpmUsage**, **startupAuthenticationTpmPinUsage**, **startupAuthenticationTpmKeyUsage**, **startupAuthenticationTpmPinAndKeyUsage**, **recoveryOptions** and **prebootRecoveryEnableMessageAndUrl** properties to the [bitLockerSystemDrivePolicy](../api-reference/beta/resources/intune_deviceconfig_bitlockersystemdrivepolicy.md) complex type |
| Change      | Beta    | Removed the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties from the [deviceCompliancePolicySettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstate.md) complex type |
| Change      | Beta    | Removed the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties from the [deviceConfigurationSettingState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate.md) complex type |
| Change      | Beta    | Added the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties to the [deviceManagementSettings](../api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings.md) complex type |
| Change      | Beta    | Added the **address** property to the [vpnServer](../api-reference/beta/resources/intune_deviceconfig_vpnserver.md) complex type |


## May 2017

### Application API changes

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Application API update. This is first set of changes including property renaming and restructuring of the [application](../api-reference/beta/resources/application.md) entity.<br/>**New entities:** [api](../api-reference/beta/resources/api]), [informationalUrl](../api-reference/beta/resources/informationalUrl.md), [installedClient](../api-reference/beta/resources/installedclient.md), [permissionScope](../api-reference/beta/resources/permissionscope.md), [preauthorizedApplication](../api-reference/beta/resources/preauthorizedapplication.md), [web](../api-reference/beta/resources/web.md).<br/>**Removed properties:** addIns, appRoles, availableToOtherOrganizations, knownClientApplications, oauth2AllowUrlPathMatching, recordConsentConditions.<br/>**Renamed properties:** appId to id, identifierUris to applicationAliases, availableToOtherTenants to orgRestrictions, mainLogo to logo, oauth2Permissions to publishedPermissionsScopes, publicClient to allowPublicClient, replyUrls to redirectUrls.<br/>**New properties:** tags. |

### Remove Deprecated Planner API
| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Deletion        | Beta        | Removed the following entities:<br/>**task**<br/>**plan**<br/>**bucket**<br/>**taskDetails**<br/>**planDetails**<br/>**taskBoardTaskFormat**<br/>**planTaskBoard** |

### Project Rome

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added support for Project Rome, including [getting a list of devices](../api-reference/beta/api/user_list_devices.md), [sending a command to a device](../api-reference/beta/api/send_device_command.md), and [checking the status of a command](../api-reference/beta/api/get_device_command_status.md). |
| Addition        | Beta        | Added support for user [activities](../api-reference/beta/resources/projectrome_activity.md) and [historyItems](../api-reference/beta/resources/projectrome_historyitem.md), including [upserting an activity](../api-reference/beta/api/projectrome_put_activity.md) and [upserting a historyItem](../api-reference/beta/api/projectrome_put_historyitem.md). |

### Administrative units property changes

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Changed roleMemberInfo property type to [identity](../api-reference/v1.0/resources/identity.md) for [scopedRoleMembership](../api-reference/beta/resources/scopedrolemembership.md) entity |
| Change          | Beta        | Changed navigation property scopedAdministratorOf to scopedRoleMemberOf for [user](../api-reference/beta/resources/user.md) entity |
| Change          | Beta        | Changed navigation property scopedAdministrators to scopedRoleMembers for [administrativeUnit](../api-reference/beta/resources/administrativeunit.md) entity |
| Change          | Beta        | Changed navigation property scopedAdministrators to scopedMembers for [directoryRole](../api-reference/beta/resources/directoryrole.md) entity |

### Add users and groups webhook support in preview

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
| Change        | Beta       | Added support to [webhooks](../api-reference/beta/resources/webhooks.md) for users and groups.

### Add delta query to v1.0

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Add delta function support to v1.0. Add to the following entities to perform [delta query](../concepts/delta_query_overview):<br/>contact<br/>contactFolder<br/>event<br/>group<br/>mailFolder<br/>message<br/>user<br/>See the following for examples:<br/>[Get incremental changes to groups](../concepts/delta_query_groups.md(../concepts/delta_query_groups<br/>[Get incremental changes to messages in a folder](../concepts/delta_query_messages.md.md(../concepts/delta_query_messages.md<br/>[Get incremental changes to users](../concepts/delta_query_users.md(../concepts/delta_query_users |
| Change          | Beta        | Add additional optional query filtering capability (by id) to [users](../api-reference/beta/api/user_delta.md) and [groups](../api-reference/beta/api/group_delta.md). |

### Added user resource support for deleted items

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added support for [restoring and permanently deleting users](../api-reference/beta/resources/directory.md). |

### Added OnPremisesProvisioningError

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | New entity: [OnPremisesProvisioningError](../api-reference/beta/resources/onpremisesprovisioningerror.md) |
| Change          | beta        | Added OnPremisesProvisioningError property to [user](../api-reference/beta/resources/user.md), [group](../api-reference/beta/resources/group.md), and [orgcontact](../api-reference/beta/resources/orgcontact.md) |

### Added deletedDateTime property

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Change|beta|Added deletedDateTime property to [user](../api-reference/beta/resources/user.md) entity.
|Change|beta|Added deletedDateTime property to [group](../api-reference/beta/resources/group.md) entity.
|Change|beta|Added deletedDateTime property to [application](../api-reference/beta/resources/application.md) entity.

### Added domain operations to v1.0

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added operations on [domains](../api-reference/v1.0/resources/domain.md).<br/>New entities:</br>[domain](../api-reference/v1.0/resources/domain.md)<br/>[domainDnsRecord](../api-reference/v1.0/resources/domaindnsrecord.md)<br/>[domainDnsCnameRecord](../api-reference/v1.0/resources/domainDnsCnameRecord.md)<br/>[domainDnsMxRecord](../api-reference/v1.0/resources/domainDnsMxRecord.md)<br/>[domainDnsSrvRecord](../api-reference/v1.0/resources/domainDnsSrvRecord.md)<br/>[domainDnsTxtRecord](../api-reference/v1.0/resources/domainDnsTxtRecord.md)<br/>[domainDnsUnavailableRecord](../api-reference/v1.0/resources/domainDnsUnavailableRecord.md)<br/>New actions:</br>[verify](../api-reference/v1.0/api/domain_verify.md) |

### Added contracts to v1.0

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | New entity:</br>[contract](../api-reference/v1.0/resources/contract.md) |

### Added licenseDetails to v1.0

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | New entity:</br>[licenseDetails](../api-reference/v1.0/resources/licensedetails.md) |
| Change          | v1.0        | New [licensedetails](../api-reference/v1.0/api/user_list_licensedetails.md) navigation property on [users](../api-reference/v1.0/resources/user.md) |


### Drive API

|**Change type**|**Version**|**Description**|
|:--------------|:----------|:--------------|
| Addition | v1.0 | Added the **baseItem** resource type, consisting of basic properties from **driveItem**.
| Addition | v1.0 and Beta | Added the **sourceItemId** property to **thumbnail**. <br/> Added the **siteUrl** property to **sharepointIds**. <br/> Added the **sharedBy** and **sharedDateTime** properties to **shared**. <br/> Added the **shared** property to **remoteItem**. <br/> Added the **sharepointIds** property to **drive** and **itemReference**. <br/> Added **lastAccessedDateTime** to **fileSystemInfo**. <br/> Added the **driveItem** and **site** navigation properties to **sharedDriveItem**. <br/> Added the **parentReference** property to **baseItem**.
| Change | v1.0 and Beta | Changed **driveItem** and **sharedDriveItem** to inherit from **baseItem**. <br/> Marked **identity** as an Open Type.
| Change | Beta | Added the **configuratorUrl** and **webHtml** properties to **sharingLink**. <br/> Added the **folderView** resource type and the **view** property to the **folder** resource type. <br/> Added the **listItem** navigation property to **driveItem**. <br/> Added the **list** navigation property to **drive**.


### Extensions (open extensions)

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | Support for [openTypeExtension](../api-reference/v1.0/resources/opentypeextension.md) in the following resources - [device](../api-reference/v1.0/resources/device.md), [group](../api-reference/v1.0/resources/group.md),[organization](../api-reference/v1.0/resources/organization.md), [user](../api-reference/v1.0/resources/user.md). |
| Addition        | v1.0 and beta | When the user is signed-in with a personal Microsoft account, support for open extensions in the following resources - event, post, group, message, contact, and user. (This is in addition to these resources, plus device, group, organization and user, supporting open extensions when the user signs in using a work or school account.) |
| Addition        | v1.0 and beta | Support for `$expand` to [get open extensions](../api-reference/v1.0/api/opentypeextension_get.md) in the following resources: [device](../api-reference/v1.0/resources/device.md), [group](../api-reference/v1.0/resources/group.md),[organization](../api-reference/v1.0/resources/organization.md), [post](../api-reference/v1.0/resources/post.md), [user](../api-reference/v1.0/resources/user.md). |
| Addition        | Beta          | Support for `$expand` to [get open extensions](../api-reference/v1.0/api/opentypeextension_get.md) in [administrativeUnit](../api-reference/beta/resources/administrativeunit.md). |


### Extensions (schema extensions)

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | New resource [schemaExtension](../api-reference/v1.0/resources/schemaextension.md) and CRUD methods to manage extension definitions for the following resources: [contact](../api-reference/v1.0/resources/contact.md), [device](../api-reference/v1.0/resources/device.md), [event](../api-reference/v1.0/resources/event.md), [group](../api-reference/v1.0/resources/group.md), [message](../api-reference/v1.0/resources/message.md), [organization](../api-reference/v1.0/resources/organization.md), [post](../api-reference/v1.0/resources/post.md), [user](../api-reference/v1.0/resources/user.md). Note that support for [administrativeUnit](../api-reference/beta/resources/administrativeunit.md) is still limited to the beta version as before. |
| Addition        | v1.0          | The existing POST, GET, and PATCH methods of the following resources - [contact](../api-reference/v1.0/resources/contact.md), [device](../api-reference/v1.0/resources/device.md), [event](../api-reference/v1.0/resources/event.md), [group](../api-reference/v1.0/resources/group.md), [message](../api-reference/v1.0/resources/message.md), [organization](../api-reference/v1.0/resources/organization.md), [post](../api-reference/v1.0/resources/post.md), [user](../api-reference/v1.0/resources/user.md) - now support adding, getting, and updating or deleting custom data stored as schema extensions in the corresponding resource instances. |
| Addition        | v1.0 and beta | You can now use `$filter` to look for resource instances with properties that match specific extension property values, such as extension name. See this [example](../concepts/extensibility_schema_groups#5-get-a-group-and-its-extension-data) for details. |
| Change          | v1.0 and beta | [Deleting a schema extension definition](../api-reference/v1.0/api/schemaextension_delete.md) no longer affects accessing custom data that has been added based on that definition. |
| Change          | v1.0 and beta | You can now set a schema extension complex type to null, to remove a schema extension from a resource instance. |


### Group

|**Change type**|**Version**|**Description**|
|:--------------|:----------|:--------------|
| Addition | v1.0 and beta | Added the **drives** and **sites** navigation properties to **group**.

### Insights APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added [Shared API](../api-reference/beta/resources/insights_shared.md).<br />New resources:<br />[sharingDetail](../api-reference/beta/resources/insights_sharingdetail.md) <br />[insightIdentity](../api-reference/beta/resources/insights_insightidentity.md) <br />
|Addition|Beta|Added [Used API](../api-reference/beta/resources/insights_used.md).<br />New resources:<br />[usageDetails](../api-reference/beta/resources/insights_usagedetails.md) <br />
|Change|Beta|New **Type** property in the:<br />[resourceVisualization](../api-reference/beta/resources/insights_resourcevisualization.md) resource. <br />
|Deletion|Beta|Removed the following entities:<br/>**workingWith**<br/>**trendingAround**<br/>|

### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[androidForWorkMobileAppConfiguration](../api-reference/beta/resources/intune_apps_androidforworkmobileappconfiguration.md)<br/>[cartToClassAssociation](../api-reference/beta/resources/intune_deviceconfig_carttoclassassociation.md)<br/>[deviceCompliancePolicySettingStateSummary](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md)<br/>[eBookInstallSummary](../api-reference/beta/resources/intune_books_ebookinstallsummary.md)<br/>[eBookVppGroupAssignment](../api-reference/beta/resources/intune_books_ebookvppgroupassignment.md)<br/>[iosUpdateConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosupdateconfiguration.md)<br/>[remoteAssistancePartner](../api-reference/beta/resources/intune_remoteassistance_remoteassistancepartner.md)<br/>[windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md)<br/>[windowsDeviceMalwareState](../api-reference/beta/resources/intune_endpointprotection_windowsdevicemalwarestate.md)<br/>[windowsInformationProtectionAppLearningSummary](../api-reference/beta/resources/intune_wip_windowsinformationprotectionapplearningsummary.md)<br/>[windowsMalwareInformation](../api-reference/beta/resources/intune_endpointprotection_windowsmalwareinformation.md)<br/>[windowsProtectionState](../api-reference/beta/resources/intune_endpointprotection_windowsprotectionstate.md)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[androidPermissionAction](../api-reference/beta/resources/intune_apps_androidpermissionaction.md)<br/>[bitLockerSystemDrivePolicy](../api-reference/beta/resources/intune_deviceconfig_bitlockersystemdrivepolicy.md)<br/>[defenderDetectedMalwareActions](../api-reference/beta/resources/intune_deviceconfig_defenderdetectedmalwareactions.md)<br/>[settingSource](../api-reference/beta/resources/intune_deviceconfig_settingsource.md)<br/> |
| Addition    | Beta    | Added the [assign](../api-reference/beta/api/intune_books_managedebook_assign.md) action on [managedEBook](../api-reference/beta/resources/intune_books_managedebook.md) |
| Addition    | Beta    | Added the [beginOnboarding](../api-reference/beta/api/intune_remoteassistance_remoteassistancepartner_beginonboarding.md) action on [remoteAssistancePartner](../api-reference/beta/resources/intune_remoteassistance_remoteassistancepartner.md) |
| Addition    | Beta    | Added the [disconnect](../api-reference/beta/api/intune_remoteassistance_remoteassistancepartner_disconnect.md) action on [remoteAssistancePartner](../api-reference/beta/resources/intune_remoteassistance_remoteassistancepartner.md) |
| Deletion    | Beta    | Removed the following entities:<br/>**outlookTask**<br/>**outlookTaskFolder**<br/>**outlookTaskGroup**<br/>**outlookUser**<br/>**windowsManagementAppHealthState**<br/> |
| Deletion    | Beta    | Removed the following complex types:<br/>**applePushNotificationCertificateSetting**<br/>**eventCreationOptions**<br/> |
| Change      | Beta    | Added the **workProfilePasswordBlockFingerprintUnlock**, **workProfilePasswordBlockTrustAgents**, **workProfilePasswordExpirationDays**, **workProfilePasswordMinimumLength**, **workProfilePasswordMinutesOfInactivityBeforeScreenTimeout**, **workProfilePasswordPreviousPasswordBlockCount**, **workProfilePasswordSignInFailureCountBeforeFactoryReset**, **workProfilePasswordRequiredType** and **workProfileRequirePassword** properties to the [androidForWorkGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [androidForWorkPkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkpkcscertificateprofile.md) entity |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [androidForWorkScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkscepcertificateprofile.md) entity |
| Change      | Beta    | Added the **kioskModeManagedApps** property to the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Removed the **kioskModeManagedAppId** property from the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [androidPkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidpkcscertificateprofile.md) entity |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [androidScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidscepcertificateprofile.md) entity |
| Change      | Beta    | Removed the **hexColor** property from the [calendar](../api-reference/beta/resources/calendar.md) entity |
| Change      | Beta    | Added the **setting** and **platformType** properties to the [complianceSettingStateSummary](../api-reference/beta/resources/intune_deviceconfig_compliancesettingstatesummary.md) entity |
| Change      | Beta    | Removed the **windowsManagementAppEnabled** property from the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity |
| Change      | Beta    | Added the **userName**, **deviceModel** and **platform** properties to the [deviceComplianceDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedevicestatus.md) entity |
| Change      | Beta    | Added the **userPrincipalName** and **deviceModel** properties to the [deviceComplianceSettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancesettingstate.md) entity |
| Change      | Beta    | Added the **platformType**, **setting**, **userId** and **userEmail** properties to the [deviceComplianceSettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancesettingstate.md) entity |
| Change      | Beta    | Added the **inGracePeriodCount** property to the [deviceCompliancePolicyDeviceStateSummary](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md) entity |
| Change      | Beta    | Added the **userName**, **deviceModel** and **platform** properties to the [deviceConfigurationDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) entity |
| Change      | Beta    | Removed the **creationOptions** property from the [event](../api-reference/beta/resources/event.md) entity |
| Change      | Beta    | Removed the **isDelegated** property from the [eventMessage](../api-reference/beta/resources/eventMessage.md) entity |
| Change      | Beta    | Removed the **unseenConversationsCount** and **unseenMessagesCount** properties from the [group](../api-reference/beta/resources/group.md) entity |
| Change      | Beta    | Added the **settingXml** and **settings** properties to the [iosMobileAppConfiguration](../api-reference/beta/resources/intune_apps_iosmobileappconfiguration.md) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [iosPkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_iospkcscertificateprofile.md) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [iosScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_iosscepcertificateprofile.md) entity |
| Change      | Beta    | Added the **systemIntegrityProtectionEnabled** property to the [macOSCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_macoscompliancepolicy.md) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [macOSScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_macosscepcertificateprofile.md) entity |
| Change      | Beta    | Added the **complianceGracePeriodExpirationDateTime**, **userPrincipalName**. and **imei** properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity |
| Change      | Beta    | Removed the **settingXml** and **settings** properties from the [managedDeviceMobileAppConfiguration](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) entity |
| Change      | Beta    | Added the **useSharedComputerActivation**, **updateChannel**, **officePlatformArchitecture** and **localesToInstall** properties to the [officeSuiteApp](../api-reference/beta/resources/intune_apps_officesuiteapp.md) entity |
| Change      | Beta    | Removed the **applePushNotificationCertificateSetting** property from the [organization](../api-reference/beta/resources/intune_onboarding_organization.md) entity |
| Change      | Beta    | Changed the following properties on the [post](../api-reference/beta/resources/post.md) entity:<br/>**sender** from optional to required<br/> |
| Change      | Beta    | Added the **compliantUserCount**, **nonCompliantUserCount**, **remediatedUserCount**, **errorUserCount**, **unknownUserCount**, **conflictUserCount** and **notApplicableUserCount** properties to the [softwareUpdateStatusSummary](../api-reference/beta/resources/intune_deviceconfig_softwareupdatestatussummary.md) entity |
| Change      | Beta    | Added the **bluetoothAllowedServices**, **bluetoothBlockPrePairing**, **cellularData**, **defenderDetectedMalwareActions**, **defenderPotentiallyUnwantedAppAction**, **lockScreenAllowTimeoutConfiguration**, **lockScreenBlockCortana**, **lockScreenBlockToastNotifications**, **lockScreenTimeoutInSeconds**, **passwordBlockSimple**, **privacyAutoAcceptPairingAndConsentPrompts**, **privacyBlockInputPersonalization**, **startMenuHideChangeAccountSettings**, **startMenuHideHibernate**, **startMenuHideLock**, **startMenuHideShutDown**, **startMenuHideSignOut**, **startMenuHideSleep**, **startMenuHideSwitchAccount**, **settingsBlockAppsPage**, **settingsBlockGamingPage**, **windowsSpotlightBlockConsumerSpecificFeatures**, **windowsSpotlightBlocked**, **windowsSpotlightBlockOnActionCenter**, **windowsSpotlightBlockTailoredExperiences**, **windowsSpotlightBlockThirdPartyNotifications**, **windowsSpotlightBlockWelcomeExperience**, **windowsSpotlightBlockWindowsTips**, **windowsSpotlightConfigureOnLockScreen** and **connectedDevicesServiceBlocked** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity |
| Change      | Beta    | Removed the **automaticUpdateMode**, **automaticUpdateSchedule**, **automaticUpdateTime**, **prereleaseFeatures**, **experienceBlockWindowsSpotlight**, **experienceBlockWindowsTips** and **experienceBlockConsumerSpecificFeatures** properties from the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [windows10PkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windows10pkcscertificateprofile.md) entity |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [windows81SCEPCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windows81scepcertificateprofile.md) entity |
| Change      | Beta    | Added the **indexingEncryptedStoresOrItemsBlocked** and **smbAutoEncryptedFileExtensions** properties to the [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) entity |
| Change      | Beta    | Changed the following properties on the [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) entity:<br/>**rightsManagementServicesTemplateId** from required to optional<br/> |
| Change      | Beta    | Changed the following properties on the [windowsMobileMSI](../api-reference/beta/resources/intune_apps_windowsmobilemsi.md) entity:<br/>**productCode** from required to optional<br/> |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [windowsPhone81SCEPCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md) entity |
| Change      | Beta    | Added the **mobileAppConfigurations** navigation property to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity |
| Change      | Beta    | Added the **cartToClassAssociations**, **deviceCompliancePolicySettingStateSummaries**, **remoteAssistancePartners**, **windowsInformationProtectionAppLearningSummaries** and **windowsMalwareInformation** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change      | Beta    | Added the **eBook** navigation property to the [eBookGroupAssignment](../api-reference/beta/resources/intune_books_ebookgroupassignment.md) entity |
| Change      | Beta    | Added the **windowsProtectionState** navigation property to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity |
| Change      | Beta    | Added the **installSummary** navigation property to the [managedEBook](../api-reference/beta/resources/intune_books_managedebook.md) entity |
| Change      | Beta    | Removed the **outlook** navigation property from the [user](../api-reference/beta/resources/intune_deviceconfig_user.md) entity |
| Change      | Beta    | Removed the **healthStates** navigation property from the [windowsManagementApp](../api-reference/beta/resources/intune_deviceconfig_windowsmanagementapp.md) entity |
| Change      | Beta    | Added the **androidForWorkRestrictions** property to the [defaultDeviceEnrollmentRestrictions](../api-reference/beta/resources/intune_onboarding_defaultdeviceenrollmentrestrictions.md) complex type |
| Change      | Beta    | Added the **userPrincipalName** and **sources** properties to the [deviceCompliancePolicySettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstate.md) complex type |
| Change      | Beta    | Added the **userPrincipalName** and **sources** properties to the [deviceConfigurationSettingState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate.md) complex type |
| Change      | Beta    | Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceConfigurationSettingState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate.md) complex type |
| Change      | Beta    | Removed the **archiveFolder** property from the [mailboxSettings](../api-reference/beta/resources/mailboxSettings.md) complex type |


### Outlook calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | For **findMeetingTimes**, added new enum value **unrestricted** that you specify as the **activityDomain** property, part of the **timeConstraint** parameter. This lets **findMeetingTimes** look for times appropriate for the type of activity you're scheduling for. See details in the [request body](../api-reference/v1.0/api/user_findmeetingtimes#request-body) section. |
| Addition        | Beta          | Support getting an **event** body in plain text, as an alternative to the default HTML format. See [get](../api-reference/beta/api/event_get.md) and [list](../api-reference/beta/api/user_list_events.md) events for details. |

### Outlook mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Support getting a **message** body in plain text, as an alternative to the default HTML format. See [get](../api-reference/beta/api/message_get.md) and [list](../api-reference/beta/api/user_list_messages.md) events for details. |


### Outlook tasks

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | New **outlook** navigation property added to [user](../api-reference/beta/resources/user.md), to access Outlook tasks. |
| Addition        | Beta        | New entities - [outlookuser](../api-reference/beta/resources/outlookuser.md), [outlookTaskGroup](../api-reference/beta/resources/outlooktaskgroup.md), [outlookTaskFolder](../api-reference/beta/resources/outlooktaskfolder.md), and [outlookTask](../api-reference/beta/resources/outlooktask.md) - and their methods support organizing and accessing Outlook tasks. |
| Addition        | Beta        | Outlook tasks support attachments ([attachment](../api-reference/beta/resources/attachment.md), [fileAttachment](../api-reference/beta/resources/fileattachment.md), [itemAttachment](../api-reference/beta/resources/itemattachment.md), and [referenceAttachment](../api-reference/beta/resources/referenceattachment.md) resources). |
| Addition        | Beta        | Outlook tasks support [extended properties](../api-reference/beta/resources/extended-properties-overview) ([singleValueLegacyExtendedProperty](../api-reference/beta/resources/singlevaluelegacyextendedproperty.md) and [multiValueLegacyExtendedProperty](../api-reference/beta/resources/multivaluelegacyextendedproperty.md) resources). |

### Planner APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added [Planner API](../api-reference/v1.0/resources/planner_overview.md).<br />New resources:<br />[plannerPlan](../api-reference/v1.0/resources/plannerPlan.md) <br />[plannerTask](../api-reference/v1.0/resources/plannerTask.md) <br />[plannerPlanDetails](../api-reference/v1.0/resources/plannerPlanDetails.md) <br />[plannerTaskDetails](../api-reference/v1.0/resources/plannerTaskDetails.md) <br />[plannerBucket](../api-reference/v1.0/resources/plannerBucket.md) <br />[plannerAssignedToTaskBoardTaskFormat](../api-reference/v1.0/resources/plannerassignedtotaskboardtaskformat.md) <br />[plannerBucketTaskBoardTaskFormat](../api-reference/v1.0/resources/plannerbuckettaskboardtaskformat.md) <br />[plannerProgressTaskBoardTaskFormat](../api-reference/v1.0/resources/plannerprogresstaskboardtaskformat.md) |

### SharePoint sites

|**Change type**|**Version**|**Description**|
|:--------------|:----------|:--------------|
| Addition      | v1.0      | The sites resource is now avaialble in the v1.0 endpoint.<br/> Added the **site** and **siteCollection** resource types.
| Change        | beta      | The format of the identifier for the **site** resource has changed. This is a breaking change in the beta API.
| Removed       | beta      | The **sharePoint** entity has been removed from the beta API. The functionality is now available from the **sites** collection.

### SharePoint Lists

|**Change type**|**Version**|**Description**|
|:--------------|:----------|:--------------|
| Change | beta | Removed the **sharepoint** navigation properties. Sites are now accessed directly through the **sites** navigation property. <br/> Removed the **fieldDefinition** resource. It has been replaced by **columnDefinition**. <br/> Removed the **siteCollectionId** and **siteId** properties from **site**. Use **sharepointIds** instead. <br/> Removed the **listItemId** property from **listItem**. Use **sharepointIds** instead. <br/> Renamed the **columnSet** property on **listItem** to **fields**. <br/> Changed **site** resources to use the SharePoint hostname as part of their ID.
| Addition | beta | Added the **booleanColumn**, **calculatedColumn**, **choiceColumn**, **dateTimeColumn**, **lookupColumn**, **numberColumn**, **personOrGroupColumn**, and **textColumn** resource types. <br/> Added the **displayName** property to **site**. <br/> Added the **columns** navigation property to **site**. <br/> Added the **list** and **listItem** navigation properties to **sharedDriveItem**. <br/> Added the **sharepointIds** property to **list** and **listItem**, and **site**. <br/> Added the **columnDefinition** resource type.




## April 2017

### Administrative units property changes

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Adminstrative unit APIs will be updated in preview (beta). The first set of changes will be applied on May 3, 2017. The changes include the following property renaming:<br />- **roleMemberInfo** complex type to **identity** complex type for the scopedRoleMembership entity<br />- **scopedAdministratorOf** navigation property to **scopedRoleMemberOf** for the user entity<br />- **scopedAdministrators** navigation property to **scopedRoleMembers** for the administrativeUnit entity<br />- **scopedAdministrators** navigation property to **scopedMembers** for the directoryRole entity |

### Application and servicePrincipal API changes

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | The [application](../api-reference/beta/resources/application.md) and [servicePrincipal](../api-reference/beta/resources/serviceprincipal.md) APIs will be updated in preview (beta). The first set of changes will be applied on May 15, 2017. The changes include property renaming and restructuring. Some properties (such as appRoles and addIns) will not be available until the changes are completed. The changes will be released in preview (beta) prior to releasing to v1.0. |

### Added preview support for Cloud Solution Provider developers

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new preview capability to allow Cloud Solution Provider pre-consented applications to call Microsoft Graph, described in a new [authorization topic](../concepts/auth_cloudsolutionprovider.md(../concepts/auth_cloudsolutionprovider. |

### Added onPremises properties to user entity

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new onPremises properties onPremisesDomainName, OnPremisesSamAccountName, and onPremisesUserPrincipalName to the [user](../api-reference/beta/resources/user.md) entity. |

### New Planner APIs and an update to the group visibility property

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Added **HiddenMembership** as an additional value for the visibility property to the [Group](../api-reference/beta/resources/group.md) entity |
| Addition        | Beta        | Added new [Planner API](../api-reference/beta/resources/planner_overview.md).<br />New resources:<br />[plannerPlan](../api-reference/beta/resources/plannerPlan.md) <br />[plannerTask](../api-reference/beta/resources/plannerTask.md) <br />[plannerPlanDetails](../api-reference/beta/resources/plannerPlanDetails.md) <br />[plannerTaskDetails](../api-reference/beta/resources/plannerTaskDetails.md) <br />[plannerBucket](../api-reference/beta/resources/plannerBucket.md) <br />[plannerAssignedToTaskBoardTaskFormat](../api-reference/beta/resources/plannerassignedtotaskboardtaskformat.md) <br />[plannerBucketTaskBoardTaskFormat](../api-reference/beta/resources/plannerbuckettaskboardtaskformat.md) <br />[plannerProgressTaskBoardTaskFormat](../api-reference/beta/resources/plannerprogresstaskboardtaskformat.md) |

### Intune APIs
| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new entities:<br/>[androidForWorkCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidforworkcompliancepolicy.md)<br/>[deviceComplianceSettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancesettingstate.md)<br/>[deviceInstallState](../api-reference/beta/resources/intune_books_deviceinstallstate.md)<br/>[deviceManagementScript](../api-reference/beta/resources/intune_deviceconfig_devicemanagementscript.md)<br/>[deviceManagementScriptGroupAssignment](../api-reference/beta/resources/intune_deviceconfig_devicemanagementscriptgroupassignment.md)<br/>[deviceManagementScriptState](../api-reference/beta/resources/intune_deviceconfig_devicemanagementscriptstate.md)<br/>[eBookGroupAssignment](../api-reference/beta/resources/intune_books_ebookgroupassignment.md)<br/>[iosVppEBook](../api-reference/beta/resources/intune_books_iosvppebook.md)<br/>[managedEBook](../api-reference/beta/resources/intune_books_managedebook.md)<br/>[userInstallStateSummary](../api-reference/beta/resources/intune_books_userinstallstatesummary.md)<br/>[windowsManagementApp](../api-reference/beta/resources/intune_deviceconfig_windowsmanagementapp.md)<br/>[windowsManagementAppHealthState](../api-reference/beta/resources/intune_deviceconfig_windowsmanagementapphealthstate.md)<br/> |
| Addition        | Beta        | Added new complex types:<br/>[dailySchedule](../api-reference/beta/resources/intune_deviceconfig_dailyschedule.md)<br/>[hourlySchedule](../api-reference/beta/resources/intune_deviceconfig_hourlyschedule.md)<br/>[iosBookmark](../api-reference/beta/resources/intune_deviceconfig_iosbookmark.md)<br/>[iosWebContentFilterAutoFilter](../api-reference/beta/resources/intune_deviceconfig_ioswebcontentfilterautofilter.md)<br/>[iosWebContentFilterBase](../api-reference/beta/resources/intune_deviceconfig_ioswebcontentfilterbase.md)<br/>[iosWebContentFilterSpecificWebsitesAccess](../api-reference/beta/resources/intune_deviceconfig_ioswebcontentfilterspecificwebsitesaccess.md)<br/>[runSchedule](../api-reference/beta/resources/intune_deviceconfig_runschedule.md)<br/>[sharedAppleDeviceUser](../api-reference/beta/resources/intune_deviceconfig_sharedappledeviceuser.md)<br/>[windows10NetworkProxyServer](../api-reference/beta/resources/intune_deviceconfig_windows10networkproxyserver.md)<br/> |
| Addition        | Beta        | Added the [requestRemoteAssistance](../api-reference/beta/api/intune_devices_manageddevice_requestremoteassistance.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
| Addition        | Beta        | Added the [cleanWindowsDevice](../api-reference/beta/api/intune_devices_manageddevice_cleanwindowsdevice.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
| Addition        | Beta        | Added the [logoutSharedAppleDeviceActiveUser](../api-reference/beta/api/intune_devices_manageddevice_logoutsharedappledeviceactiveuser.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
| Addition        | Beta        | Added the [deleteUserFromSharedAppleDevice](../api-reference/beta/api/intune_devices_manageddevice_deleteuserfromsharedappledevice.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
| Addition        | Beta        | Added the [assign](../api-reference/beta/api/intune_deviceconfig_devicemanagementscript_assign.md) action on [deviceManagementScript](../api-reference/beta/resources/intune_deviceconfig_devicemanagementscript.md) |
| Addition        | Beta        | Added the [syncLicenses](../api-reference/beta/api/intune_onboarding_applevolumepurchaseprogramtoken_synclicenses.md) action on [appleVolumePurchaseProgramToken](../api-reference/beta/resources/intune_apps_applevolumepurchaseprogramtoken.md) |
| Addition        | Beta        | Added the **getTopMobileApps** function on [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) collection |
| Addition        | Beta        | Added the [downloadApplePushNotificationCertificateSigningRequest](../api-reference/beta/api/intune_deviceconfig_applepushnotificationcertificate_downloadapplepushnotificationcertificatesigningrequest.md) function on [applePushNotificationCertificate](../api-reference/beta/resources/intune_deviceconfig_applepushnotificationcertificate.md) |
| Addition        | Beta        | Added the [getDeviceComplianceSettingStates](../api-reference/beta/api/intune_deviceconfig_devicemanagement_getdevicecompliancesettingstates.md) function on [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) |
| Addition        | Beta        | Added the [deviceConfigurationUserActivity](../api-reference/beta/api/intune_deviceconfig_reportroot_deviceconfigurationuseractivity.md) function on [reportRoot](../api-reference/beta/resources/intune_deviceconfig_reportroot.md) |
| Addition        | Beta        | Added the [deviceConfigurationDeviceActivity](../api-reference/beta/api/intune_deviceconfig_reportroot_deviceconfigurationdeviceactivity.md) function on [reportRoot](../api-reference/beta/resources/intune_deviceconfig_reportroot.md) |
| Deletion        | Beta        | Removed the following complex types:<br/>**enterpriseCloudResource**<br/>**windowsInformationProtectionAppRule**<br/>**windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate**<br/>**windowsInformationProtectionAppRuleDesktopTemplate**<br/>**windowsInformationProtectionAppRuleStoreAppTemplate**<br/>**windowsInformationProtectionAppRuleTemplate**<br/>**windowsInformationProtectionCorporateNetworkLocation**<br/>**windowsInformationProtectionProtectedLocation**<br/>**windowsInformationProtectionProtectedLocationEnterpriseCloudResources**<br/>**windowsInformationProtectionProtectedLocationEnterpriseInternalProxyServers**<br/>**windowsInformationProtectionProtectedLocationEnterpriseIPv4Ranges**<br/>**windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges**<br/>**windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames**<br/>**windowsInformationProtectionProtectedLocationEnterpriseProxyServers**<br/>**windowsInformationProtectionProtectedLocationNeutralResources**<br/> |
| Change          | Beta        | Added the **deviceSharingAllowed** property to the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity |
| Change          | Beta        | Removed the **deviceSharingBlocked** property from the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity |
| Change          | Beta        | Added the **minimumRequiredSdkVersion** property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity |
| Change          | Beta        | Added the **windowsManagementAppEnabled** property to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity |
| Change          | Beta        | Added the **notificationTemplateId** property to the [deviceComplianceActionItem](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceactionitem.md) entity |
| Change          | Beta        | Added the **excludeGroup** property to the [deviceConfigurationGroupAssignment](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) entity |
| Change          | Beta        | Changed the following properties on the [iosCustomConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioscustomconfiguration.md) entity:<br/>**payloadFileName** from required to optional<br/> |
| Change          | Beta        | Added the **contentFilterSettings** property to the [iosDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) entity |
| Change          | Beta        | Added the **cellularBlockPersonalHotspot** and **passcodeBlockFingerprintModification** properties to the [iosGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity |
| Change          | Beta        | Added the **minimumRequiredSdkVersion** property to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity |
| Change          | Beta        | Changed the following properties on the [macOSCustomConfiguration](../api-reference/beta/resources/intune_deviceconfig_macoscustomconfiguration.md) entity:<br/>**payloadFileName** from required to optional<br/> |
| Change          | Beta        | Added the **disableAppPinIfDevicePinIsSet**, **minimumRequiredOsVersion**, **minimumWarningOsVersion**, **minimumRequiredAppVersion** and **minimumWarningAppVersion** properties to the [managedAppProtection](../api-reference/beta/resources/intune_mam_managedappprotection.md) entity |
| Change          | Beta        | Added the **remoteAssistanceSessionUrl**, **isEncrypted**, **model** and **manufacturer** properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity |
| Change          | Beta        | Changed the following properties on the [getMobileAppCount](../docs/api-reference/beta/api/intune_apps_mobileapp_getmobileappcount) entity:<br/>**bindingParameter** from **mobileApp** to a **collection** of *mobileApp*<br/>**status** from a GUID to a String<br/> |
| Change          | Beta        | Added the **vpnConfigurationId** property to the [mobileAppGroupAssignment](../api-reference/beta/resources/intune_apps_mobileappgroupassignment.md) entity |
| Change          | Beta        | Removed the **fromEmailAddress** property from the [notificationMessageTemplate](../api-reference/beta/resources/intune_deviceconfig_notificationmessagetemplate.md) entity |
| Change          | Beta        | Added the **excludedApps** property to the [officeSuiteApp](../api-reference/beta/resources/intune_apps_officesuiteapp.md) entity |
| Change          | Beta        | Removed the **excludedOfficeApps** property from the [officeSuiteApp](../api-reference/beta/resources/intune_apps_officesuiteapp.md) entity |
| Change          | Beta        | Added the **enabled** property to the [sharedPCConfiguration](../api-reference/beta/resources/intune_deviceconfig_sharedpcconfiguration.md) entity |
| Change          | Beta        | Added the **networkProxyApplySettingsDeviceWide**, **networkProxyDisableAutoDetect**, **networkProxyAutomaticConfigurationUrl**, **networkProxyServer**, **bluetoothDeviceName**, **wiFiScanInterval**, **wirelessDisplayBlockProjectionToThisDevice**, **wirelessDisplayBlockUserInputFromReceiver**, **wirelessDisplayRequirePinForPairing**, **experienceBlockDeviceDiscovery**, **experienceBlockErrorDialogWhenNoSIM**, **experienceBlockTaskSwitcher**, **startMenuPinnedFolderDocuments**, **startMenuPinnedFolderDownloads**, **startMenuPinnedFolderFileExplorer**, **startMenuPinnedFolderHomeGroup**, **startMenuPinnedFolderMusic**, **startMenuPinnedFolderNetwork**, **startMenuPinnedFolderPersonalFolder**, **startMenuPinnedFolderPictures**, **startMenuPinnedFolderSettings**, **startMenuPinnedFolderVideos**, **startMenuAppListVisibility**, **startMenuHideFrequentlyUsedApps**, **startMenuHideRecentJumpLists**, **startMenuHideRecentlyAddedApps**, **startMenuHideRestartOptions**, **startMenuHideUserTile**, **startMenuHidePowerButton**, **startMenuLayoutEdgeAssetsXml**, **personalizationDesktopImageUrl** and **personalizationLockScreenImageUrl** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity |
| Change          | Beta        | Changed the type of the following properties on the [windowsMobileMSI](../api-reference/beta/resources/intune_apps_windowsmobilemsi.md) entity:<br/>**productCode** from Guid to String<br/> |
| Change          | Beta        | Changed the following properties on the [windowsPhone81AppX](../api-reference/beta/resources/intune_apps_windowsphone81appx.md) entity:<br/>**phoneProductIdentifier** from required to optional<br/>**phonePublisherId** from required to optional<br/> |
| Change          | Beta        | Changed the following properties on the [windowsPhone81AppXBundle](../api-reference/beta/resources/intune_apps_windowsphone81appxbundle.md) entity:<br/>**appXPackageInformationList** from required to optional<br/> |
| Change          | Beta        | Added the **productKey** and **licenseType** properties to the [windowsStoreForBusinessApp](../api-reference/beta/resources/intune_apps_windowsstoreforbusinessapp.md) entity |
| Change          | Beta        | Added the **previewBuildSetting** property to the [windowsUpdateForBusinessConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) entity |
| Change          | Beta        | Added the **windowsManagementApp** and **managedEBooks** navigation properties to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity |
| Change          | Beta        | Added the **deviceManagementScripts**, **managedDeviceOverview** and **cloudPkiSubscriptions** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change          | Beta        | Added the **osMinimumVersion** and **osMaximumVersion** properties to the [deviceEnrollmentPlatformRestrictions](../api-reference/beta/resources/intune_onboarding_deviceenrollmentplatformrestrictions.md) complex type |
| Change          | Beta        | Added the **isSharedDevice** and **sharedDeviceCachedUsers** properties to the [hardwareInformation](../api-reference/beta/resources/intune_deviceconfig_hardwareinformation.md) complex type |
| Change          | Beta        | Changed the following properties on the [omaSettingBase64](../api-reference/beta/resources/intune_deviceconfig_omasettingbase64.md) complex type:<br/>**fileName** from required to optional<br/> |
| Change          | Beta        | Changed the following properties on the [omaSettingStringXml](../api-reference/beta/resources/intune_deviceconfig_omasettingstringxml.md) complex type:<br/>**fileName** from required to optional<br/> |

## March 2017

### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[androidForWorkApp](../api-reference/beta/resources/intune_apps_androidforworkapp.md)<br/>[androidForWorkAppConfigurationSchema](../api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationschema.md)<br/>[androidForWorkSettings](../api-reference/beta/resources/intune_androidforwork_androidforworksettings.md)<br/>[androidForWorkVpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkvpnconfiguration.md)<br/>[applePushNotificationCertificate](../api-reference/beta/resources/intune_deviceconfig_applepushnotificationcertificate.md)<br/>[complianceSettingStateSummary](../api-reference/beta/resources/intune_deviceconfig_compliancesettingstatesummary.md)<br/>[deviceCompliancePolicyDeviceStateSummary](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md)<br/>[deviceCompliancePolicyState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicystate.md)<br/>[deviceConfigurationDeviceStateSummary](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md)<br/>[deviceConfigurationState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationstate.md)<br/>[enterpriseCodeSigningCertificate](../api-reference/beta/resources/intune_apps_enterprisecodesigningcertificate.md)<br/>[iosEduDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosedudeviceconfiguration.md)<br/>[managedDeviceCertificateState](../api-reference/beta/resources/intune_devices_manageddevicecertificatestate.md)<br/>[managedDeviceMobileAppConfigurationDeviceSummary](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md)<br/>[managedDeviceMobileAppConfigurationUserSummary](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationusersummary.md)<br/>[mdmWindowsInformationProtectionPolicy](../api-reference/beta/resources/intune_mam_mdmwindowsinformationprotectionpolicy.md)<br/>[mobileAppInstallSummary](../api-reference/beta/resources/intune_apps_mobileappinstallsummary.md)<br/>[mobileAppProvisioningConfigGroupAssignment](../api-reference/beta/resources/intune_apps_mobileappprovisioningconfiggroupassignment.md)<br/>[mobileThreatDefenseConnector](../api-reference/beta/resources/intune_onboarding_mobilethreatdefenseconnector.md)<br/>[officeSuiteApp](../api-reference/beta/resources/intune_apps_officesuiteapp.md)<br/>[settingStateDeviceSummary](../api-reference/beta/resources/intune_deviceconfig_settingstatedevicesummary.md)<br/>[softwareUpdateStatusSummary](../api-reference/beta/resources/intune_deviceconfig_softwareupdatestatussummary.md)<br/>[symantecCodeSigningCertificate](../api-reference/beta/resources/intune_apps_symanteccodesigningcertificate.md)<br/>[windowsDefenderAdvancedThreatProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsdefenderadvancedthreatprotectionconfiguration.md)<br/>[windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md)<br/>[windowsInformationProtectionAppLockerFile](../api-reference/beta/resources/intune_mam_windowsinformationprotectionapplockerfile.md)<br/>[windowsInformationProtectionPolicy](../api-reference/beta/resources/intune_mam_windowsinformationprotectionpolicy.md)<br/>[windowsMobileMSI](../api-reference/beta/resources/intune_apps_windowsmobilemsi.md)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[androidForWorkAppConfigurationExample](../api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationexample.md)<br/>[androidForWorkAppConfigurationExampleJson](../api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationexamplejson.md)<br/>[androidForWorkAppConfigurationSchemaItem](../api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationschemaitem.md)<br/>[deviceCompliancePolicySettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstate.md)<br/>[deviceConfigurationSettingState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate.md)<br/>[deviceExchangeAccessStateSummary](../api-reference/beta/resources/intune_deviceconfig_deviceexchangeaccessstatesummary.md)<br/>[edgeSearchEngine](../api-reference/beta/resources/intune_deviceconfig_edgesearchengine.md)<br/>[edgeSearchEngineBase](../api-reference/beta/resources/intune_deviceconfig_edgesearchenginebase.md)<br/>[edgeSearchEngineCustom](../api-reference/beta/resources/intune_deviceconfig_edgesearchenginecustom.md)<br/>[excludedApps](../api-reference/beta/resources/intune_apps_excludedapps.md)<br/>[iosEduCertificateSettings](../api-reference/beta/resources/intune_deviceconfig_ioseducertificatesettings.md)<br/>[ipRange](../api-reference/beta/resources/intune_deviceconfig_iprange.md)<br/>[windowsInformationProtectionApp](../api-reference/beta/resources/intune_mam_windowsinformationprotectionapp.md)<br/>[windowsInformationProtectionCloudResource](../api-reference/beta/resources/intune_mam_windowsinformationprotectioncloudresource.md)<br/>[windowsInformationProtectionCloudResourceCollection](../api-reference/beta/resources/intune_mam_windowsinformationprotectioncloudresourcecollection.md)<br/>[windowsInformationProtectionDesktopApp](../api-reference/beta/resources/intune_mam_windowsinformationprotectiondesktopapp.md)<br/>[windowsInformationProtectionIPRangeCollection](../api-reference/beta/resources/intune_mam_windowsinformationprotectioniprangecollection.md)<br/>[windowsInformationProtectionResourceCollection](../api-reference/beta/resources/intune_mam_windowsinformationprotectionresourcecollection.md)<br/>[windowsInformationProtectionStoreApp](../api-reference/beta/resources/intune_mam_windowsinformationprotectionstoreapp.md)<br/> |
| Addition    | Beta    | Added the [requestSignupUrl](../api-reference/beta/api/intune_androidforwork_androidforworksettings_requestsignupurl.md) action on [androidForWorkSettings](../api-reference/beta/resources/intune_androidforwork_androidforworksettings.md) |
| Addition    | Beta    | Added the [completeSignup](../api-reference/beta/api/intune_androidforwork_androidforworksettings_completesignup.md) action on [androidForWorkSettings](../api-reference/beta/resources/intune_androidforwork_androidforworksettings.md) |
| Addition    | Beta    | Added the [syncApps](../api-reference/beta/api/intune_androidforwork_androidforworksettings_syncapps.md) action on [androidForWorkSettings](../api-reference/beta/resources/intune_androidforwork_androidforworksettings.md) |
| Addition    | Beta    | Added the [unbind](../api-reference/beta/api/intune_androidforwork_androidforworksettings_unbind.md) action on [androidForWorkSettings](../api-reference/beta/resources/intune_androidforwork_androidforworksettings.md) |
| Addition    | Beta    | Added the [assign](../api-reference/beta/api/intune_apps_ioslobappprovisioningconfiguration_assign.md) action on [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) |
| Addition    | Beta    | Added the [recoverPasscode](../api-reference/beta/api/intune_devices_manageddevice_recoverpasscode.md) action on [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) |
| Addition    | Beta    | Added the [removeApplePushNotificationCertificate](../api-reference/beta/api/intune_onboarding_organization_removeapplepushnotificationcertificate.md) action on [organization](../api-reference/beta/resources/intune_onboarding_organization.md) |
| Addition    | Beta    | Added the [updateMobileAppIdentifierDeployments](../api-reference/beta/api/intune_mam_iosmanagedappprotection_updatemobileappidentifierdeployments.md) action on [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) |
| Addition    | Beta    | Added the [updateMobileAppIdentifierDeployments](../api-reference/beta/api/intune_mam_androidmanagedappprotection_updatemobileappidentifierdeployments.md) action on [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) |
| Addition    | Beta    | Added the [updateMobileAppIdentifierDeployments](../api-reference/beta/api/intune_mam_targetedmanagedappconfiguration_updatemobileappidentifierdeployments.md) action on [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_iosmanagedappprotection_updatetargetedsecuritygroups.md) action on [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_androidmanagedappprotection_updatetargetedsecuritygroups.md) action on [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_windowsinformationprotection_updatetargetedsecuritygroups.md) action on [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_windowsinformationprotection_updatetargetedsecuritygroups.md) action on [windowsInformationProtectionPolicy](../api-reference/beta/resources/intune_mam_windowsinformationprotectionpolicy.md) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_mdmwindowsinformationprotectionpolicy_updatetargetedsecuritygroups.md) action on [mdmWindowsInformationProtectionPolicy](../api-reference/beta/resources/intune_mam_mdmwindowsinformationprotectionpolicy.md) |
| Addition    | Beta    | Added the [wipeManagedAppRegistrationByDeviceTag](../api-reference/beta/api/intune_mam_user_wipemanagedappregistrationbydevicetag.md) action on [user](../api-reference/beta/resources/intune_deviceconfig_user.md) |
| Addition    | Beta    | Added the [getTopMobileApps](../api-reference/beta/api/intune_apps_mobileapp_gettopmobileapps.md) function on [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) |
| Addition    | Beta    | Added the [verifyWindowsEnrollmentAutoDiscovery](../api-reference/beta/api/intune_corpenrollment_devicemanagement_verifywindowsenrollmentautodiscovery.md) function on [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) |
| Deletion    | Beta    | Removed the following entities:<br/>**appProvisioningConfigGroupAssignment**<br/>**defaultManagedAppConfiguration**<br/>**enterpriseCertificate**<br/>**managedDeviceMobileAppProvisioningConfigurationDeviceStatus**<br/>**symantecCertificate**<br/>**windows10WindowsInformationProtectionConfiguration**<br/> |
| Deletion    | Beta    | Removed the following complex types:<br/>**mobileAppInstallSummary**<br/>**windowsArchitecture**<br/>**windowsDeviceType**<br/> |
| Change      | Beta    | Added the **webBrowserBlockPopups** property to the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Removed the **webBrowserAllowPopups** property from the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Added the **appIdentifier** property to the [androidStoreApp](../api-reference/beta/resources/intune_apps_androidstoreapp.md) entity |
| Change      | Beta    | Removed the **applicationCount**, **failedApplicationCount** and **appInstallFailures** properties from the [appReportingOverviewStatus](../api-reference/beta/resources/appReportingOverviewStatus.md) entity |
| Change      | Beta    | Added the **sharedIPadMaximumUserCount** and **enableSharedIPad** properties to the [depEnrollmentProfile](../api-reference/beta/resources/intune_corpenrollment_depenrollmentprofile.md) entity |
| Change      | Beta    | Added the **shareTokenWithSchoolDataSyncService** and **lastSyncErrorCode** properties to the [depOnboardingSetting](../api-reference/beta/resources/intune_onboarding_deponboardingsetting.md) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceComplianceDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview.md) entity |
| Change      | Beta    | Removed the **numberOfPendingDevices**, **numberOfSucceededDevices**, **numberOfErrorDevices**, **numberOfFailedDevices**, **lastUpdateTime** and **policyRevision** properties from the [deviceComplianceDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview.md) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceComplianceUserOverview](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceuseroverview.md) entity |
| Change      | Beta    | Removed the **numberOfPendingUsers**, **numberOfSucceededUsers**, **numberOfErrorUsers**, **numberOfFailedUsers**, **lastUpdateTime** and **policyRevision** properties from the [deviceComplianceUserOverview](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceuseroverview.md) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceConfigurationDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) entity |
| Change      | Beta    | Removed the **numberOfPendingDevices**, **numberOfSucceededDevices**, **numberOfErrorDevices**, **numberOfFailedDevices**, **lastUpdateTime** and **policyRevision** properties from the [deviceConfigurationDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceConfigurationUserOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview.md) entity |
| Change      | Beta    | Removed the **numberOfPendingUsers**, **numberOfSucceededUsers**, **numberOfErrorUsers**, **numberOfFailedUsers**, **lastUpdateTime** and **policyRevision** properties from the [deviceConfigurationUserOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview.md) entity |
| Change      | Beta    | Added the **subscriptionState** property to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change      | Beta    | Added the **managedEmailProfileRequired** property to the [iosCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_ioscompliancepolicy.md) entity |
| Change      | Beta    | Added the **appsSingleAppModeList** property to the [iosGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Removed the **appsSingleAppModeBundleIds** property from the [iosGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Added the **expirationDateTime** property to the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity |
| Change      | Beta    | Removed the **expiration** property from the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity |
| Change      | Beta    | Added the **passwordMinimumCharacterSetCount**, **osMinimumVersion**, **osMaximumVersion**, **deviceThreatProtectionEnabled**, **deviceThreatProtectionRequiredSecurityLevel** and **storageRequireEncryption** properties to the [macOSCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_macoscompliancepolicy.md) entity |
| Change      | Beta    | Removed the **manifest** property from the [managedAndroidLobApp](../api-reference/beta/resources/intune_apps_managedandroidlobapp.md) entity |
| Change      | Beta    | Added the **isSupervised**, **exchangeLastSuccessfulSyncDateTime**, **exchangeAccessState** and **exchangeAccessStateReason** properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity |
| Change      | Beta    | Added the **deviceExchangeAccessStateSummary** property to the [managedDeviceOverview](../api-reference/beta/resources/intune_devices_manageddeviceoverview.md) entity |
| Change      | Beta    | Removed the **manifest** property from the [managedIOSLobApp](../api-reference/beta/resources/intune_apps_managedioslobapp.md) entity |
| Change      | Beta    | Removed the **installSummary** property from the [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) entity |
| Change      | Beta    | Added the **uploadState** property to the [mobileAppContentFile](../api-reference/beta/resources/intune_apps_mobileappcontentfile.md) entity |
| Change      | Beta    | Changed the following properties on the [mobileAppContentFile](../api-reference/beta/resources/intune_apps_mobileappcontentfile.md) entity:<br/>**azureStorageUriExpirationDateTime** from required to optional<br/> |
| Change      | Beta    | Added the **initiatedByUserPrincipalName**, **deviceOwnerUserPrincipalName**, **deviceIMEI** and **actionState** properties to the [remoteActionAudit](../api-reference/beta/resources/intune_deviceconfig_remoteactionaudit.md) entity |
| Change      | Beta    | Added the **oneDriveDisableFileSync**, **safeSearchFilter**, **edgeSearchEngine**, **settingsBlockSettingsApp**, **settingsBlockSystemPage**, **settingsBlockDevicesPage**, **settingsBlockNetworkInternetPage**, **settingsBlockPersonalizationPage**, **settingsBlockAccountsPage**, **settingsBlockTimeLanguagePage**, **settingsBlockEaseOfAccessPage**, **settingsBlockPrivacyPage**, **settingsBlockUpdateSecurityPage**, **experienceBlockWindowsSpotlight**, **experienceBlockWindowsTips**, **experienceBlockConsumerSpecificFeatures**, **startMenuLayoutXml**, **startMenuMode**, **logonBlockFastUserSwitching** and **startBlockUnpinningAppsFromTaskbar** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity |
| Change      | Beta    | Added the **allowPrinting**, **allowScreenCapture** and **allowTextSuggestion** properties to the [windows10SecureAssessmentConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration.md) entity |
| Change      | Beta    | Removed the **blockPrinting**, **blockScreenCapture** and **blockTextSuggestion** properties from the [windows10SecureAssessmentConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration.md) entity |
| Change      | Beta    | Added the **identityName** property to the [windowsAppX](../api-reference/beta/resources/intune_apps_windowsappx.md) entity |
| Change      | Beta    | Changed the type of the following properties on the [windowsAppX](../api-reference/beta/resources/intune_apps_windowsappx.md) entity:<br/>**applicableArchitectures** from [windowsArchitecture](../api-reference/beta/resources/windowsArchitecture.md) to String<br/> |
| Change      | Beta    | Added the **identityName** property to the [windowsPhone81AppX](../api-reference/beta/resources/intune_apps_windowsphone81appx.md) entity |
| Change      | Beta    | Changed the type of the following properties on the [windowsPhone81AppX](../api-reference/beta/resources/intune_apps_windowsphone81appx.md) entity:<br/>**applicableArchitectures** from [windowsArchitecture](../api-reference/beta/resources/windowsArchitecture.md) to String<br/> |
| Change      | Beta    | Added the **identityName**, **identityPublisherHash** and **identityResourceIdentifier** properties to the [windowsUniversalAppX](../api-reference/beta/resources/intune_apps_windowsuniversalappx.md) entity |
| Change      | Beta    | Changed the type of the following properties on the [windowsUniversalAppX](../api-reference/beta/resources/intune_apps_windowsuniversalappx.md) entity:<br/>**applicableArchitectures** from [windowsArchitecture](../api-reference/beta/resources/windowsArchitecture.md) to String<br/>**applicableDeviceTypes** from [windowsDeviceType](../api-reference/beta/resources/windowsDeviceType.md) to String<br/> |
| Change      | Beta    | Added the **restartMode** property to the [windowsUpdateForBusinessConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [androidForWorkScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkscepcertificateprofile.md) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [androidScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidscepcertificateprofile.md) entity |
| Change      | Beta    | Added the **enterpriseCodeSigningCertificates**, **symantecCodeSigningCertificate**, **sideLoadingKeys**, **managedAppPolicies**, **iosManagedAppProtections**, **androidManagedAppProtections**, **defaultManagedAppProtections**, **targetedManagedAppConfigurations**, **mdmWindowsInformationProtectionPolicies**, **windowsInformationProtectionPolicies**, **managedAppRegistrations** and **managedAppStatuses** navigation properties to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity |
| Change      | Beta    | Removed the **appReportingOverview**, **enterpriseCerts** and **symantecCert** navigation properties from the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity |
| Change      | Beta    | Added the **deviceSettingStateSummaries** navigation property to the [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) entity |
| Change      | Beta    | Added the **deviceSettingStateSummaries** navigation property to the [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) entity |
| Change      | Beta    | Added the **termsAndConditions**, **androidForWorkSettings**, **androidForWorkAppConfigurationSchemas**, **applePushNotificationCertificate**, **softwareUpdateStatusSummary**, **deviceCompliancePolicyDeviceStateSummary**, **complianceSettingStateSummaries**, **deviceConfigurationDeviceStateSummaries** and **mobileThreatDefenseConnectors** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_shared_devicemanagement.md) entity |
| Change      | Beta    | Removed the **teacherRootCertificates**, **teacherIdentityCertificate**, **studentRootCertificates** and **studentIdentityCertificate** navigation properties from the [iosEducationDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioseducationdeviceconfiguration.md) entity |
| Change      | Beta    | Changed the type of the following properties on the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity:<br/>**deviceStatuses** from [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../api-reference/beta/resources/managedDeviceMobileAppProvisioningConfigurationDeviceStatus.md) collection to [managedDeviceMobileAppConfigurationDeviceStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) collection<br/>**groupAssignments** from [appProvisioningConfigGroupAssignment](../api-reference/beta/resources/appProvisioningConfigGroupAssignment.md) collection to [mobileAppProvisioningConfigGroupAssignment](../api-reference/beta/resources/intune_apps_mobileappprovisioningconfiggroupassignment.md) collection<br/> |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [iosScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_iosscepcertificateprofile.md) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [macOSScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_macosscepcertificateprofile.md) entity |
| Change      | Beta    | Added the **deviceConfigurationStates** and **deviceCompliancePolicyStates** navigation properties to the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity |
| Change      | Beta    | Added the **deviceStatusSummary** and **userStatusSummary** navigation properties to the [managedDeviceMobileAppConfiguration](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) entity |
| Change      | Beta    | Added the **installSummary** navigation property to the [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) entity |
| Change      | Beta    | Removed the **sideLoadingKeys** navigation property from the [organization](../api-reference/beta/resources/intune_onboarding_organization.md) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [windows81SCEPCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windows81scepcertificateprofile.md) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [windowsPhone81SCEPCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md) entity |
| Change      | Beta    | Removed the **applicationId**, **appName**, **platformId**, **userFailures** and **deviceFailures** properties from the [appInstallationFailure](../api-reference/beta/resources/intune_apps_appinstallationfailure.md) complex type |
| Change      | Beta    | Added the **displayName** property to the [iosHomeScreenFolderPage](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenfolderpage.md) complex type |
| Change      | Beta    | Added the **displayName** property to the [iosHomeScreenPage](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenpage.md) complex type |
| Change      | Beta    | Added the **subjectName**, **description**, **expirationDateTime** and **certificate** properties to the [windowsInformationProtectionDataRecoveryCertificate](../api-reference/beta/resources/intune_mam_windowsinformationprotectiondatarecoverycertificate.md) complex type |
| Change      | Beta    | Removed the **dataRecoveryCertificate** and **certificateFileName** properties from the [windowsInformationProtectionDataRecoveryCertificate](../api-reference/beta/resources/intune_mam_windowsinformationprotectiondatarecoverycertificate.md) complex type |
| Change      | Beta    | Added the **displayName** property to the [windowsPackageInformation](../api-reference/beta/resources/intune_apps_windowspackageinformation.md) complex type |
| Change      | Beta    | Changed the type of the following properties on the [windowsPackageInformation](../api-reference/beta/resources/intune_apps_windowspackageinformation.md) complex type:<br/>**applicableArchitecture** from [windowsArchitecture](../api-reference/beta/resources/windowsArchitecture.md) to String<br/> |
| Change      | Beta    | Changed the following properties on the [windowsPackageInformation](../api-reference/beta/resources/intune_apps_windowspackageinformation.md) complex type:<br/>**applicableArchitecture** from optional to required<br/> |

### Add contracts to Microsoft Graph

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | New resource:</br>[contract](../api-reference/beta/resources/contract.md) |

### Add domain operations to Microsoft Graph

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added functions on [domains](../api-reference/beta/resources/domain.md).<br/>New entities:</br>[domain](../api-reference/beta/resources/domain.md)<br/>[domainDnsRecord](../api-reference/beta/resources/domaindnsrecord.md)<br/>[domainDnsCnameRecord](../api-reference/beta/resources/domainDnsCnameRecord.md)<br/>[domainDnsMxRecord](../api-reference/beta/resources/domainDnsMxRecord.md)<br/>[domainDnsSrvRecord](../api-reference/beta/resources/domainDnsSrvRecord.md)<br/>[domainDnsTxtRecord](../api-reference/beta/resources/domainDnsTxtRecord.md)<br/>[domainDnsUnavailableRecord](../api-reference/beta/resources/domainDnsUnavailableRecord.md)<br/>New actions:</br>[forceDelete](../api-reference/beta/api/domain_forcedelete.md)</br>[verify](../api-reference/beta/api/domain_verify.md) |

### Add custom data to Microsoft Graph using schema extensions

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Extend Microsoft Graph with application data by using [schema extensions](../concepts/extensibility_overview#schema-extensions-preview).  This is supported on the following resources:<br/>administrative unit<br/>calendar event<br/>device<br/>group<br/>message<br/>organization<br/>personal contact<br/>post<br/>user<br/>See the following example:<br/>[Add custom data to groups using Schema Extensions (preview)](../concepts/extensibility_schema_groups.md(../concepts/extensibility_schema_groups |
| Addition        | Beta        | Provided an alternative way to create a schema extension definition without requiring a verified .com vanity domain. See [schema extensions](../concepts/extensibility_overview#schema-extensions-preview) for details. |

### Add custom data to Microsoft Graph using open extensions

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | Renamed former "Office 365 data extensions" as "open extensions". |
| Addition        | Beta          | Added resources that support [open extensions](../concepts/extensibility_overview#open-extensions): <br/>administrative unit<br/>device<br/>group<br/>organization<br/>user<br/>See the following example:<br/>[Add custom data to users using open extensions (preview)](../concepts/extensibility_open_users) |

### Directory APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added support for [restoring and permanently deleting groups](../api-reference/beta/resources/directory.md).<br/>New entity: directory with deleteditems navigation property. |
| Addition        | Beta        | New entity:</br>[Endpoint](../api-reference/beta/resources/endpoint.md) |
| Change          | Beta        | New [endpoints](../api-reference/beta/api/group_list_endpoints.md) navigation property on [groups](../api-reference/beta/resources/group.md) |
| Addition        | Beta        | New entity:</br>[licenseDetails](../api-reference/beta/resources/licensedetails.md) |
| Change          | Beta        | New [licensedetails](../api-reference/beta/api/user_list_licensedetails.md) navigation property on [users](../api-reference/beta/resources/user.md) |

### Reports APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Introduced the new preview API for Office 365 Reports. You can use it to get usage reports of how people in your business are using Office 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who may not need an Office 365 license at all. For more details, see [report](../api-reference/beta/resources/report.md). |

### Directory APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | New entity:</br>[contract](../api-reference/beta/resources/contract.md) |

## February 2017

### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[androidForWorkCertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_androidforworkcertificateprofilebase.md)<br/>[androidForWorkEasEmailProfileBase](../api-reference/beta/resources/intune_deviceconfig_androidforworkeasemailprofilebase.md)<br/>[androidForWorkEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkenterprisewificonfiguration.md)<br/>[androidForWorkGmailEasConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgmaileasconfiguration.md)<br/>[androidForWorkNineWorkEasConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworknineworkeasconfiguration.md)<br/>[androidForWorkPkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkpkcscertificateprofile.md)<br/>[androidForWorkScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkscepcertificateprofile.md)<br/>[androidForWorkTrustedRootCertificate](../api-reference/beta/resources/intune_deviceconfig_androidforworktrustedrootcertificate.md)<br/>[androidForWorkWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkwificonfiguration.md)<br/>[appleDeviceFeaturesConfigurationBase](../api-reference/beta/resources/intune_deviceconfig_appledevicefeaturesconfigurationbase.md)<br/>[appProvisioningConfigGroupAssignment](../api-reference/beta/resources/intune_apps_appprovisioningconfiggroupassignment.md)<br/>[deviceComplianceUserOverview](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceuseroverview.md)<br/>[deviceConfigurationUserOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview.md)<br/>[enterpriseCertificate](../api-reference/beta/resources/intune_apps_enterprisecertificate.md)<br/>[iosEducationDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioseducationdeviceconfiguration.md)<br/>[macOSDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_macosdevicefeaturesconfiguration.md)<br/>[managedAndroidLobApp](../api-reference/beta/resources/intune_apps_managedandroidlobapp.md)<br/>[managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md)<br/>[managedIOSLobApp](../api-reference/beta/resources/intune_apps_managedioslobapp.md)<br/>[managedMobileLobApp](../api-reference/beta/resources/intune_apps_managedmobilelobapp.md)<br/>[symantecCertificate](../api-reference/beta/resources/intune_apps_symanteccertificate.md)<br/>[windowsAppX](../api-reference/beta/resources/intune_apps_windowsappx.md)<br/>[windowsCertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windowscertificateprofilebase.md)<br/>[windowsPhone81AppX](../api-reference/beta/resources/intune_apps_windowsphone81appx.md)<br/>[windowsPhone81AppXBundle](../api-reference/beta/resources/intune_apps_windowsphone81appxbundle.md)<br/>[windowsPhoneXAP](../api-reference/beta/resources/intune_apps_windowsphonexap.md)<br/>[windowsUniversalAppX](../api-reference/beta/resources/intune_apps_windowsuniversalappx.md)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[airPrintDestination](../api-reference/beta/resources/intune_deviceconfig_airprintdestination.md)<br/>[windowsArchitecture](../api-reference/beta/resources/intune_apps_windowsarchitecture.md)<br/>[windowsDeviceType](../api-reference/beta/resources/intune_apps_windowsdevicetype.md)<br/>[windowsMinimumOperatingSystem](../api-reference/beta/resources/intune_apps_windowsminimumoperatingsystem.md)<br/>[windowsPackageInformation](../api-reference/beta/resources/intune_apps_windowspackageinformation.md)<br/> |
| Addition    | Beta    | Added the [assign](../api-reference/beta/api/intune_apps_ioslobappprovisioningconfiguration_assign.md) action on the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity |
| Addition    | Beta    | Added the [scheduleActionsForRules](../api-reference/beta/api/intune_deviceconfig_devicecompliancepolicy_scheduleactionsforrules.md) action on the [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) entity |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_targetedmanagedappconfiguration_updatetargetedsecuritygroups.md) action on the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity |
| Addition    | Beta    | Added the [getScopesForUser](../api-reference/beta/api/intune_rbac_resourceoperation_getscopesforintune_devices_user.md) function on the [resourceOperation](../api-reference/beta/resources/intune_rbac_resourceoperation.md) entity |
| Change      | Beta    | Removed the **manifest** property from the [androidLobApp](../api-reference/beta/resources/intune_apps_androidlobapp.md) entity |
| Change      | Beta    | Added the **assetTagTemplate**, **lockScreenFootnote**, **homeScreenDockIcons** and **homeScreenPages** properties to the [iosDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) entity |
| Change      | Beta    | Removed the **deviceSharingAssetTagInformation**, **deviceSharingLockScreenFootnote**, **homeScreenLayoutDockIcons** and **homeScreenLayoutPages** properties from the [iosDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) entity |
| Change      | Beta    | Added the **appsSingleAppModeBundleIds** property to the [iosGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity |
| Change      | Beta    | Removed the **manifest** property from the [iosLobApp](../api-reference/beta/resources/intune_apps_ioslobapp.md) entity |
| Change      | Beta    | Added the **createdDateTime**, **description**, **lastModifiedDateTime**, **displayName** and **version** properties to the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity |
| Change      | Beta    | Added the **createdDateTime** and **lastModifiedDateTime** properties to the [managedAppPolicy](../api-reference/beta/resources/intune_mam_managedapppolicy.md) entity |
| Change      | Beta    | Removed the **deviceRegistrationState** property from the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity |
| Change      | Beta    | Added the **manifest** property to the [mobileAppContentFile](../api-reference/beta/resources/intune_apps_mobileappcontentfile.md) entity |
| Change      | Beta    | Added the **osDescription** and **userName** properties to the [mobileAppInstallStatus](../api-reference/beta/resources/intune_apps_mobileappinstallstatus.md) entity |
| Change      | Beta    | Removed the **deviceType** property from the [mobileAppInstallStatus](../api-reference/beta/resources/intune_apps_mobileappinstallstatus.md) entity |
| Change      | Beta    | Changed the type of the following properties on the [mobileAppInstallStatus](../api-reference/beta/resources/intune_apps_mobileappinstallstatus.md) entity:<br/>**mobileAppInstallStatusValue** from Int32 to String |
| Change      | Beta    | Added the **targetedSecurityGroupIds** and **targetedSecurityGroupsCount** properties to the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity |
| Change      | Beta    | Removed the **numberOfTargetedSecurityGroups** property from the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity |
| Change      | Beta    | Added the **id** property to the [user](../api-reference/beta/resources/intune_devices_user.md) entity |
| Change      | Beta    | Removed the **renewalThresholdPercentage**, **keyStorageProvider**, **subjectNameFormat**, **subjectAlternativeNameType**, **certificateValidityPeriodValue** and **certificateValidityPeriodScale** properties from the [windows10CertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windows10certificateprofilebase.md) entity |
| Change      | Beta    | Removed the **renewalThresholdPercentage**, **keyStorageProvider**, **subjectNameFormat**, **subjectAlternativeNameType**, **certificateValidityPeriodValue** and **certificateValidityPeriodScale** properties from the [windows81CertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windows81certificateprofilebase.md) entity |
| Change      | Beta    | Removed the **applyToWindows10Mobile** property from the [windowsPhone81GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsphone81generalconfiguration.md) entity |
| Change      | Beta    | Added the **enterpriseCerts**, **iosLobAppProvisioningConfigurations** and **symantecCert** navigation properties to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity |
| Change      | Beta    | Added the **userStatusOverview** navigation property to the [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) entity |
| Change      | Beta    | Added the **userStatusOverview** navigation property to the [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) entity |
| Change      | Beta    | Added the **groupAssignments**, **deviceStatuses** and **userStatuses** navigation properties to the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity |
| Change      | Beta    | Changed the type of the following properties on the [windows10VpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10vpnconfiguration.md) entity:<br/>**identityCertificate** from [windows10CertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windows10certificateprofilebase.md) to [windowsCertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windowscertificateprofilebase.md) |
| Change      | Beta    | Added the **deviceComplianceCheckinThresholdDays** and **isScheduledActionEnabled** properties to the [deviceManagementSettings](../api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings.md) complex type |
| Change      | Beta    | Removed the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties from the [deviceManagementSettings](../api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings.md) complex type |
| Change      | Beta    | Added the **bundleID**, **appName**, **publisher**, **enabled** and **showOnLockScreen** properties to the [iosNotificationSettings](../api-reference/beta/resources/intune_deviceconfig_iosnotificationsettings.md) complex type |
| Change      | Beta    | Removed the **bundleIdentifier**, **notificationsEnabled** and **showInLockScreen** properties from the [iosNotificationSettings](../api-reference/beta/resources/intune_deviceconfig_iosnotificationsettings.md) complex type |



## January 2017

### Outlook calendar

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | New action [findMeetingTimes](../api-reference/v1.0/api/user_findmeetingtimes.md) for the [user](../api-reference/v1.0/resources/user.md) resource. |
| Addition        | v1.0        | New complex type [attendeeBase](../api-reference/v1.0/resources/attendeebase.md) which consists of a type property for the attendee type. |
| Addition        | v1.0        | New complex types:<br/>[attendeeAvailability](../api-reference/v1.0/resources/attendeeavailability.md)<br/>[locationConstraint](../api-reference/v1.0/resources/locationconstraint.md) <br/>[locationConstraintItem](../api-reference/v1.0/resources/locationconstraintitem.md)<br/>[meetingTimeSuggestion](../api-reference/v1.0/resources/meetingtimesuggestion.md)<br/>[meetingTimeSuggestionsResult](../api-reference/v1.0/resources/meetingtimesuggestionsresult.md)<br/>[timeConstraint](../api-reference/v1.0/resources/timeconstraint.md)<br/>[timeSlot](../api-reference/v1.0/resources/timeslot.md) |
| Change          | v1.0        | The [attendee](../api-reference/v1.0/resources/attendee.md) complex type is now derived from attendeeBase, which in turn is derived from [recipient](../api-reference/v1.0/resources/recipient.md). Including the inherited properties, it consists of the same **status**, **type** and **emailAddress** properties as before. |
| Addition        | Beta        | hexColor added to the [calendar](../api-reference/beta/resources/calendar.md) resource. |

### Intune APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new entities: <br/>[appReportingOverviewStatus](../api-reference/beta/resources/intune_apps_appreportingoverviewstatus.md)<br/>[deviceComplianceDeviceOverview](..//api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview)<br/>[deviceConfigurationDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)<br/>[deviceManagementExchangeOnpremisesPolicy](../api-reference/beta/resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md)<br/>[iosDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md)<br/>[iosEducationDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioseducationdeviceconfiguration.md)<br/>[iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md)<br/>[onpremisesConditionalAccessSettings](../api-reference/beta/resources/intune_onboarding_onpremisesconditionalaccesssettings.md)<br/>[sharedPCConfiguration](../api-reference/beta/resources/intune_deviceconfig_sharedpcconfiguration.md)<br/>[windows10EnterpriseModernAppManagementConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10enterprisemodernappmanagementconfiguration.md)<br/>[windows10SecureAssessmentConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration.md)<br/>[windows10WindowsInformationProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md) |
|Addition|Beta|Added new complex types: <br/> [appInstallationFailure](../api-reference/beta/resources/intune_apps_appinstallationfailure.md)<br/>[enterpriseCloudResource](../api-reference/beta/resources/intune_deviceconfig_enterprisecloudresource.md)<br/>[iosHomeScreenApp](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenapp.md)<br/>[iosHomeScreenFolder](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenfolder.md)<br/>[iosHomeScreenFolderPage](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenfolderpage.md)<br/>[iosHomeScreenItem](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenitem.md)<br/>[iosHomeScreenPage](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenpage.md)<br/>[iosNotificationSettings](../api-reference/beta/resources/intune_deviceconfig_iosnotificationsettings.md)<br/>[iPv6Range](../api-reference/beta/resources/intune_deviceconfig_ipv6range.md)<br/>[sharedPCAccountManagerPolicy](../api-reference/beta/resources/intune_deviceconfig_sharedpcaccountmanagerpolicy.md)<br/>[windowsInformationProtectionAppRule](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionapprule.md)<br/>[windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionappruleapplockerpolicyfiletemplate.md)<br/>[windowsInformationProtectionAppRuleDesktopTemplate](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionappruledesktoptemplate.md)<br/>[windowsInformationProtectionAppRuleStoreAppTemplate](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionapprulestoreapptemplate.md)<br/>[windowsInformationProtectionAppRuleTemplate](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionappruletemplate.md)<br/>[windowsInformationProtectionCorporateNetworkLocation](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectioncorporatenetworklocation.md)<br/>[windowsInformationProtectionDataRecoveryCertificate](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectiondatarecoverycertificate.md)<br/>[windowsInformationProtectionProtectedLocation](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocation.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseCloudResources](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterprisecloudresources.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseInternalProxyServers](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseinternalproxyservers.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseIPv4Ranges](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseipv4ranges.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseipv6ranges.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterprisenetworkdomainnames.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseProxyServers](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseproxyservers.md)<br/>[windowsInformationProtectionProtectedLocationNeutralResources](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationneutralresources.md)
|Deletion|Beta|Removed the following complex types and replaced with microsoft.graph.Json:<br/>managedAppDeploymentSummary <br/>managedAppSummary<br /> |
|Change|Beta|Replaced the property type appConfigComplianceStatus with complianceStatus on the following entities: <br/>[managedDeviceMobileAppConfigurationDeviceStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md)<br/>[managedDeviceMobileAppConfigurationUserStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md)|
|Change|Beta|For resource [managedAppStatusRaw](../api-reference/beta/resources/intune_mam_managedappstatusraw.md), changed type of property content from managedAppSummary to Json.|
|Change|Beta|Removed the getUsersWithFlaggedAppRegistration function from the [managedAppRegistration](../api-reference/beta/resources/intune_mam_managedappregistration.md) collection.|
|Change|Beta|Changed the **vppToken** navigation property of the [iosVppApp](../api-reference/beta/resources/intune_apps_iosvppapp.md) entity to no longer be a contained collection.|
|Change|Beta|Added the **deviceStatusOverview** property to the [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) and [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) entities.|
|Change|Beta|Added the **appReportingOverview** property to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) singleton.|
|Change|Beta|Added the **deviceDisplayName** and **userPrincipalName** properties to the [deviceConfigurationDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdevicestatus.md), [deviceComplianceDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedevicestatus.md) and [managedDeviceMobileAppConfigurationDeviceStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) entities.|
|Change|Beta|Add the **ruleName** property to the [deviceComplianceScheduledActionForRule](../api-reference/beta/resources/intune_deviceconfig_devicecompliancescheduledactionforrule.md) entity.|
|Change|Beta|Added the **devicesCount**, **userDisplayName** and **userPrincipalName** properties to the [deviceConfigurationUserStatus](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuserstatus.md), [deviceComplianceUserStatus](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceuserstatus.md), and [managedDeviceMobileAppConfigurationUserStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) entities.|
|Change|Beta|Added the [notificationMessageTemplates](../api-reference/beta/resources/intune_notification_notificationmessagetemplate.md) collection to the [deviceManagement](../api-reference/beta/resources/intune_deviceconfig_devicemanagement.md) singleton.|
|Change|Beta|Added the **isDefault**, **lastModifiedDateTime**, **locale**, **messageTemplate** and **subject** properties to the[localizedNotificationMessage](../api-reference/beta/resources/intune_deviceconfig_localizednotificationmessage.md) entity.|
|Change|Beta|Added the **azureActiveDirectoryDeviceId**, **deviceCategory**, **deviceRegistrationState** and **managementAgent** properties to the [managedDevice](../api-reference/beta/resources/intune_onboarding_manageddevice.md) entity.|
|Change|Beta|Added the **lastModifiedDateTime** property to the [mobileAppCategory](../api-reference/beta/resources/intune_apps_mobileappcategory.md) entity.|
|Change|Beta|Added the **brandingOptions**, **defaultLocale**, **displayName**, **fromEmailAddress**, **lastModifiedDateTime**, **localizedNotificationMessages** properties to the [notificationMessageTemplate](../api-reference/beta/resources/intune_notification_notificationmessagetemplate.md) entity.|
|Change|Beta|Added the **appsAllowTrustedAppsSideloading**, **appsBlockWindowsStoreOriginatedApps**, **developerUnlockSetting**, **edgeBlockAccessToAboutFlags**, **edgeBlockDeveloperTools**, **edgeBlockExtensions**, **edgeBlockInPrivateBrowsing**, **edgeFirstRunUrl**, **edgeHomepageUrls**, **gameDvrBlocked**, **settingsBlockAddProvisioningPackage**, **settingsBlockChangeLanguage**, **settingsBlockChangePowerSleep**, **settingsBlockChangeRegion**, **settingsBlockChangeSystemTime**, **settingsBlockEditDeviceName**, **settingsBlockRemoveProvisioningPackage**, **sharedUserAppDataAllowed**, **smartScreenBlockPromptOverride**, **smartScreenBlockPromptOverrideForFiles**, **storageRestrictAppDataToSystemVolume**, **storageRestrictAppInstallToSystemVolume**, **webRtcBlockLocalhostIpAddress**, **windowsStoreBlockAutoUpdate** and **windowsStoreEnablePrivateStoreOnly** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity.|

## December 2016

### Delta query

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | A new delta function add to the following entities to perform [delta query](../concepts/delta_query_overview.md):<br/>contact<br/>contactFolder<br/>event<br/>group<br/>mailFolder<br/>message<br/>user<br/>See the following for examples:<br/>[Get incremental changes to groups (preview)](../concepts/delta_query_groups.md)<br/>[Get incremental changes to messages in a folder (preview)](../concepts/delta_query_messages.md)<br/>[Get incremental changes to users (preview)](../concepts/delta_query_users.md(../concepts/delta_query_users |

### Excel APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added workbookPivotTable resource, refresh and refreshAll action on pivotTables, workbookRangeView resource, visibleView action on the filtered range to return workbookRangeView to the user, get rows collection and range resource off of visibleView, columnsAfter, columnsBefore, resizedRange, rowsAbove, and rowsBelow functions off of range resource, and new table properties. |

### Intune APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added resources and method APIs for Microsoft Intune. This is a large set of resources and methods to support the public preview of Intune on Azure Portal. For information about the Intune service, see the [Intune documentation](https://go.microsoft.com/fwlink/?linkid=836405). For information about the Intune resources and APIs, see [Working with Intune in Microsoft Graph](../api-reference/beta/resources/intune_graph_overview.md). |

## October 2016

### Authorization provider

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | The v2.0 auth endpoint now supports the client_credentials OAuth grant, which can be used for [daemon & long running processes in business scenarios](https://docs.microsoft.com/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow). |
| Addition        | v1.0 and beta | The v2.0 auth endpoint now supports [permission scopes that require administrator's consent](../concepts/permissions_reference.md(../concepts/permissions_reference, via the [admin consent endpoint](https://docs.microsoft.com/azure/active-directory/develop/v2-permissions-and-consent#admin-restricted-permissions). |
| Addition        | v1.0 and beta | The v2.0 auth endpoint now supports administrative consent for all users in a tenant, via the [admin consent endpoint](https://docs.microsoft.com/azure/active-directory/develop/v2-permissions-and-consent#admin-restricted-permissions). |

### Invitation APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added invitedUserType property to the invitation entity type, that defines the type of user (**Guest** or **Member**) that is invited. |
| Deletion        | Beta        | We will be removing the invitedToGroups property from the invitation entity-type on 11/11/2016. This means that you will no longer be able to add an invited user to a group using this API. Instead, use the [add member API](../api-reference/v1.0/api/group_post_members.md) to add a user to a group. |

## September 2016

### Azure AD application proxy

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Azure AD Application Proxy APIs are now available in the Microsoft Graph beta endpoint. These APIs allow for secure publishing of on-premises applications to users outside the corporate network using Azure AD as the common control plane for access. You can use the published APIs to write applications that can retrieve and update various aspects of application proxy, such as _connectors_, _connectorGroups_ and the _onPremisesPublishing_ settings of an application. |

### Drive

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added _shared_ collection to allow accessing shared driveItems by shareId or sharing URL. |
| Addition        | Beta        | Added _search_ function to a drive, which allows searching for more items than just those in the drive's root folder. |


### DriveItem

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added support for _createUploadSession_, which allows uploading files larger than 4 MB to OneDrive, OneDrive for Business, and SharePoint document libraries. |
| Addition        | Beta        | Added _sharepointIds_ property to driveItem that returns traditional SharePoint API identifiers for driveItems stored in SharePoint. |
| Addition        | Beta        | Added additional properties on _remoteItem_. |
| Addition        | Beta        | Added the _quickXorHash_ value for files in OneDrive for Business. |
| Addition        | Beta        | Added scope to the _createSharingLink_ to allow creating company sharable links or anonymous sharing links. |

### Extended properties

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | [Extended properties](../api-reference/v1.0/resources/extended-properties-overview) are now supported by the following resources: message, mailFolder, event, calendar, contact, contactFolder, group event, group calendar, group post. |

### Groups

Added support for dynamic group membership through the public preview API, including the additions listed in the following table.

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added **membershipRule** property contains rules that controls the memberships for this group, if the group is a dynamic group. |
| Addition        | Beta        | Added **membershipRuleProcessingState** property to control whether dynamic membership processing is on or paused for this group. |
| Addition        | Beta        | Set the **groupTypes** property to contain **"DynamicMembership"** to light up the dynamic groups capability for this group. |
| Addition        | Beta        | Added **preferredLanguage** property to indicate the preferred language for an Office 365 group. |
| Addition        | Beta        | Added **theme** property to specify an Office 365 group's color theme. |

### Hybrid deployment support

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Apps can use v1.0 Outlook Mail, Calendar, and Contacts APIs to access on-premises mailboxes in a hybrid deployment with Exchange 2016 Cumulative Update 3 (CU3). Find more details about REST API support in specific [hybrid deployments](../overview/hybrid_rest_support.md). **Note:** If you're using these sets of API in v1.0, you can now find your apps, including production apps, working for on-premises mailboxes that meet the specific hybrid deployment requirements. This capability is only in preview. |

### IdentityRiskEvents

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | As part of the schema change where the type of two location properties is being replaced by a new complex type in the identityRiskEvents endpoint, the following properties are changed/added in the identityRiskEvents endpoint:</br>**location**  changed from Edm.String to ComplexType signInLocation.<br/>**previousLocation** changed from Edm.String to ComplexType signInLocation.<br/>**signInLocation** new ComplexType that contains city, state, countryOrRegion and geoCoordinates properties.<br/>**geoCoordinates** new ComplexType that contains latitude and longitude properties. |

### Invitation manager

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Invitation manager APIs are now available in the Microsoft Graph beta endpoint. You can use invitation manager APIs to create an invite, in order to add an external user to the organization. As part of the invitation, you can also choose to add the invited user to an Office 365 group. For more details, see [invitation manager](../api-reference/beta/resources/invitation.md). |

### OneDrive

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added **CreateUploadSession** method on **driveItem**, which allows large file and resumable uploads. |
| Addition        | v1.0        | Added properties for tracking SharePoint IDs on items from SharePoint (**sharepointIds**) and a property to identify root folders (**root**). |
| Addition        | v1.0        | Added **Shares** root collection, which can be used with shareIds or sharing links to access shared items in OneDrive and SharePoint. Returns a new type, sharedDriveItem. |
| Addition        | v1.0        | Added **Invite** method on driveItem, which allows adding permissions to items. |
| Addition        | v1.0        | Added **Search** method on drive, which allows searching across items in the drive and shared items. |
| Addition        | v1.0        | Added **processingMetadata** property on file complex type quickXorHash property on hashes complex type. |
| Addition        | v1.0        | Added **quickXorHash** property on hashes complex type. |

### Outlook calendar

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the **onlineMeetingUrl** property to the [event](../api-reference/v1.0/resources/event.md) resource. |
| Addition        | Beta        | Added [forward](../api-reference/beta/api/event_forward.md) action to the event resource. |
| Addition        | Beta        | Added the following properties to the [calendar](../api-reference/beta/resources/calendar.md) resource to support calendar sharing: **canEdit**, **canShare**, **canViewPrivateItems**, **isShared**, **isShareWithMe**, and **owner**. |

### Outlook mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the [mailboxSettings](../api-reference/v1.0/resources/mailboxsettings.md) complex type, which includes the **automaticRepliesSetting**, **timeZone**, and **language** properties. |
| Addition        | v1.0        | Added the **mailboxSettings** property to the [user](../api-reference/v1.0/resources/user.md) resource. |
| Addition        | Beta        | Added support for creating, listing, getting, and deleting one or more instances of [mention](../api-reference/beta/resources/mention.md) in a message. Mentions support calling out to get the attention of other users in a message. |
| Addition        | Beta        | Added support for the [getMailTips](../api-reference/beta/api/user_getmailtips.md) action to get any MailTips for specific recipients. Added the following resources: [automaticRepliesMailTips](../api-reference/beta/resources/automaticrepliesmailtips.md), [mailTips](../api-reference/beta/resources/mailtips.md), [mailTipsError](../api-reference/beta/resources/mailtipserror.md). |

### Query parameters

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Query parameters without $ prefixes are supported as of 09/26/16. The $ prefix in query parameters is optional. For details, see the [Supporting query parameters without $ prefixes in Microsoft Graph](https://dev.office.com/queryparametersinMicrosoftGraph) blog post. |

### SharePoint

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Access to SharePoint sites and [lists by ID](../api-reference/beta/api/list_get.md) or [path/URL](../api-reference/beta/api/baseitem_getbyurl.md). |
| Addition        | Beta        | Support for [listing, creating, getting, and deleting instances of listItem](../api-reference/beta/resources/listitem.md). |

### Users

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added **refreshTokensValidFromDateTime** read-only property to indicate when refresh or session tokens are valid from. Any tokens issued before this time are invalid, and any attempt to use them would force a new sign-in for the user. |
| Addition        | Beta        | Added **showInAddressList** property to control if the Outlook global address list should contain this user. |
| Addition        | Beta        | Added **invalidateAllRefreshTokens** service action that invalidates all of the user's refresh and session tokens issued to applications, by resetting the **refreshTokensValidFromDateTime** user property to the current date-time. |


### Webhooks

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added Drive root items to Webhooks as a resource that is available to subscribe to. |

## August 2016

### Contacts

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | As part of the schema change where a few properties are being removed and corresponding collections are being added to contacts endpoint, the following properties have been added to the contacts endpoint: _Websites Collection(ComplexType: Website)_,_Phones Collection (ComplexType: Phone)_, _PostalAddress Collection(ComplexType: PhysicalAddress)_. For details, see the [Upcoming changes to Contacts and People APIs](https://developer.microsoft.com/office/blogs/upcoming-changes-to-contacts-and-people-apis/) blog post. |
| Deletion        | Beta        | As part of the schema change where a few properties are being removed and corresponding collections are being added to contacts endpoint, the following properties have been removed from the contacts endpoint: _BusinessHomePage_,_HomePhones_, _MobilePhone1_, _BusinessPhones_, _HomeAddress_, _BusinessAddress_, _OtherAddress_. For details, see the [Upcoming changes to Contacts and People APIs](https://developer.microsoft.com/office/blogs/upcoming-changes-to-contacts-and-people-apis/) blog post. |

### Excel APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Excel REST API on Microsoft Graph is generally available. Now you can build rich and deep integrations with Excel workbooks in Office 365. See the [Power your apps with the new Excel REST API on the Microsoft Graph](https://developer.microsoft.com/office/blogs/power-your-apps-with-the-new-excel-rest-api/) blog post for more details. |

### People

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Property _WebSite_ is renamed to _Websites_. For details, see [Upcoming changes to Contacts and People APIs](https://developer.microsoft.com/office/blogs/upcoming-changes-to-contacts-and-people-apis/). |

### Privileged Identity Management

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Privileged Identity Management (PIM) REST APIs now are available in the Microsoft Graph beta endpoint. [Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-configure) provides just in time activation for privileged Azure AD organizational roles such as Global Administrator, Billing Administrator, and so on. You can use the published APIs to write applications that retrieve and update privileged role assignments, and activate users into roles. For details, see [Microsoft Graph: Azure AD Privileged Identity Management Preview APIs available in Beta](https://developer.microsoft.com/office/blogs/microsoft-graph-azure-ad-privileged-identity-management-apis-beta/) and [Azure AD Privileged Identity Management](../api-reference/beta/resources/privilegedidentitymanagement_root.md). |

## July 2016

### Administrative Units

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Introduced the new Administrative Unites preview API. Administrative units allow organizations to subdivide their Azure Active Directory, and delegate administrative duties to those subdivisions. Subdivisions can represent regions, departments, cost centers, etc. This can now be managed through the Microsoft Graph API. |

## June 2016

### IdentityRiskEvents

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Introduced the new IdentityRiskEvents preview API. This API works in conjunction with Azure Active Directory Identity Protection. You can use it to query risk events generated by Identity Protection. For more details, see the [Introduction of a new preview API to Microsoft Graph: IdentityRiskEvents](https://developer.microsoft.com/office/blogs/identityriskevents-api-preview/) blog post.

### Subscriptions

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | App-only scopes are now supported for _mail_ and _contacts_ subscriptions. |

## May 2016

### Calendar

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Breaking change|Beta|Changes to the findMeetingTimes API. For more information, see the [Microsoft Graph findMeetingTimes API update](https://dev.office.com/microsoft-graph-findmeetingtimes-api-update) blog post. This change took effect May 19, 2016.

### Contact

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added _extensions_, which is abstract type to support the OData v4 open type openTypeExtension. |

### Directory

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Breaking change | Beta        | _settingTemplateId_ is renamed to _templateId_. This change will take effect May 19th, 2016. |

### Event

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added _extensions_, which is abstract type to support the OData v4 open type openTypeExtension. |

### EventMessages

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added _inferenceClassification_ and _extensions_ to _eventMessages_. |
| Addition        | Beta        | Added _responseRequested_ to _eventMessageRequest_. |

### Messages

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added _inferenceClassification_ and _extensions_ to _messages_. |
| Addition        | Beta        | Added _wellknownname_ to _contactFolder_. |

### Post

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added _extensions_, which is abstract type to support the OData v4 open type openTypeExtension. |

### User

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added _inferenceClassification_ resource type. |
| Addition        | Beta        | Added _timeZone_ to _mailboxsettings_.   |
| Addition        | Beta        | Added API _findMeetingTimes_to _user_.   |

## April 2016

### General

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and Beta | Added support for honoring _Accept-Encoding:gzip_. |
| Addition        | v1.0          | Added support for cast segment in expand path. For example, 'https://graph.microsoft.com/v1.0/me/messages?$expand=microsoft.graph.eventMessage/event'. |
| Addition        | Beta          | Added support for PATCH request against structural properties. For example: 'PATCH /me/mailboxSettings'. |
| Addition        | Beta          | Azure Active Directory is now used as a fallback for /beta/users/id/photo requests when Outlook is unable to service the request, for example when the user has no mailbox license or the tenant does not have an Exchange Online subscription. NOTE: this fallback is available for both GET and PATCH. |
| Addition        | Beta          | Added support for cast segment in expand path. For example: 'https://graph.microsoft.com/v1.0/me/messages?$expand=microsoft.graph.eventMessage/event'. |

### OneDrive

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Fix             | v1.0        | Fixed the issue that OneDrive createLink requests failing with 500 and "Unsupported extension property type." |

## March 2016

### Calendar

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties. |
| Addition        | Beta        | Added _suggestionHint_ property to _meetingTimeCandidate_. |
| Addition        | Beta        | Added _locationUri_ property to _location_. |
| Addition        | Beta        | Added _type_ and _postOfficeBox_ to _physicalAddress_. |
| Change          | Beta        | _findMeetingTimes_ now takes new parameter _ReturnSuggestionHints_. |
| Change          | Beta        | _findMeetingTimes_ now returns a collection of _meetingTimeCandidate_. |

### Drive

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | Added _recent_ function to list a set of items that have been recently used by the signed in user. This list includes items that are in the user's drive as well as items they have access tofrom other drives. Example: GET /me/drive/recent. |
| Addition        | v1.0 and beta | Added _sharedWithMe_ function to list the set of items that are shared with the current user. Example: GET /me/drive/sharedWithMe. |

### DriveItem

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | Added _remoteItem_ type to provide a link to an item in another drive. |
| Addition        | v1.0 and beta | Added _sharingInvitation_ type to provide details of any associated sharing invitation for this permission. |
| Addition        | v1.0 and beta | Added _delta_ function to track changes to items in a drive. Example: GET /me/drive/items/{item-id}/delta |
| Addition        | v1.0 and beta | Added _copy_ that creates a copy of a _driveItem_ (including any children), under a new parent or with a new name. Example: POST /me/drive/items/{item-id}/copy. |
| Addition        | v1.0 and beta | _conflictBehavior_ instance attributes is now applicable to _driveItem_. |
|Addition|Beta|Added _invite_ function to send a sharing invitation to an existing item. A sharing invitation creates a unique sharing link and sends an email to the recipient of the invitation that includes the sharing link. Example: POST /drive/items/{item-id}/invite.

### Event

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new property _onlineMeetingUrl_ and new method _cancel_. |

### Event messages

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added _startDateTime_, _endDateTime_, _location_, _type_, _recurrence_, _isOutOfDate_, _conversationIndex_, _unsubscribe_, _unsubscribeData_, _unsubscribeEnabled_ and _flag_ properties to _eventmessage_ object. |
| Addition        | Beta        | Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties. |
| Addition        | Beta        | Added new method _unsubscribe_.          |

### Excel

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | We are adding new Excel REST APIs that let you read and modify data in an Excel workbook. It is now possible to build smart apps that allows users to get value out of the content stored in an Excel workbook by providing insights into the data. Take advantage of analytical powers of Excel, create tables and charts and extract visually appealing chart image - all from within your app. For details, see [Working with Excel in Microsoft Graph](../api-reference/beta/resources/excel.md). |

### General

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | Improved error message when resolving tenant alias and rejected JWT (AAD) tokens. |
| Addition        | v1.0 and beta | The location of the authorization service endpoint is now returned in the _www-authenticate_ header when a request is received with an empty bearer token. |
| Addition        | v1.0 and beta | The ability to filter on an entity's id property is now fixed. Example: GET https://graph.microsoft.com/v1.0/users?$filter=id+eq+'x'<br/>Previously, any POST requests to service actions and functions require prefixing the action or function name with the microsoft.graph prefix. For example: POST https://graph.microsoft.com/v1.0/me/Microsoft.Graph.getMemberGroups.<br/>The prefix is now no longer required (although it can still be specified). So the following would now also work: POST https://graph.microsoft.com/v1.0/me/getMemberGroups. |
| Change          | Beta          | Cleaned up subscription property names.  |
| Addition        | Beta          | We've added the capability to discover (through _directorySettingTemplates_) and override the default behavior (by creating a _setting_ from the template) for entities and their associated functionality. Initially this only template provided is to control behaviors on Office groups. |

### Mail folder

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added _wellKnownName_ and _userConfigurations_ properties. |
| Addition        | Beta        | Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties |

### Messages

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | Added _mobilePhone_ property.            |
| Addition        | v1.0 and beta | Added _internetMessageId_ property. The message ID in the format specified by [RFC2822](https://www.ietf.org/rfc/rfc2822.txt). |
| Change          | Beta          | Renamed _mobilePhone1_ property to _mobilePhone_. |
| Change          | Beta          | _createReply_ and _createReplyAll_take new parameter _Message_ and _comment_. |
| Change          | Beta          | _createForward_ takes new parameter _Message_, _ToRecipients_ and _comment_. |
| Change          | Beta          | _reply_, _replyAll_ and _forward_ take new parameter _Message_. |

### Permission

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | Added _sharingInvitation_ property to provide details of any associated sharing invitation for this permission. |

### Person

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new properties _birthday_, _personNotes_, _isFavorite_, _phones_, _permission_, _postalAddresses_,_websites_,_yomiCompany_, _department_, _profession_, _mailboxType_ and _personType_. |
| Addition        | Beta        | Added new enum types _physicalAddressType_, _webSite_, _phone_ and _webSiteType_. |

### Reference attachment

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new properties _sourceUrl_, _providerType_, _thumbnailUrl_, _previewUrl_, _permission_ and _isFolder_. |
| Addition        | Beta        | Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties. |
| Addition        | Beta        | Added new enum types _referenceAttachmentProvider_ and _referenceAttachmentPermission_. |

### Subscriptions

| **Change type** | **Endpoint** | **Description**                          |
| :-------------- | :----------- | :--------------------------------------- |
| Addition        | v1.0         | Webhooks are now GA on v1.0 endpoint via the _/Subscriptions_ resource. Create, Read, Renew and Delete subscriptions to receive notifications on data from Outlook and Office 365 group conversations. |

### User

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added _mailboxSettings_ property and corresponding types. |

## February 2016

### DriveItem

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | New _remoteItem_ property on driveItem for Microsoft accounts. |

### General

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | -_/me/drive_ now works for both Microsoft accounts and Work and School accounts. |
| Change          | v1.0 and beta | Drive requests for accounts whose OneDrive storage was provisioned on demand work more reliably and work in more scenarios where tenant default SharePoint sites use non-standard names. |
| Deletion        | Beta          | Removed various unimplemented types from the beta schema to more closely match the 1.0 schema. |

### Subscriptions

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | notificationUrl validation on subscription creation. For details, see [Microsoft Graph WebHooks Update - January 2016](https://developer.microsoft.com/office/blogs/Microsoft-Graph-WebHooks-Update-January-2016/). |
| Addition        | Beta        | Subscription entities can now be deleted: DELETE https://graph.microsoft.com/beta/subscriptions/ |

### Users

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | _displayName_ is now returned for Microsoft accounts. |

## January 2016

### Contacts

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added mobilePhone property to personal contacts entity-set. |

### directoryObjects

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Fix             | v1.0 and beta | Fixed calling actions that are bound to directoryObjects, which were failing with the following error:  The return type from the operation is not possible with the given entity set. This applies to the following actions: _microsoft.graph.checkMemberObjects_, _microsoft.graph.getMemberObjects_, _microsoft.graph.checkMemberGroups_, _microsoft.graph.assignLicense_, _microsoft.graph.changePassword_. |

## December 2015

### Contacts

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added mobilePhone property to personal contacts entity-set. |

### General

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Fix             | v1.0 and beta | Fixed requests using $filter expressions that specified the same property more than once, which were failing with the following 500 error: An item with the same key has already been added. |
| Fix             | v1.0 and beta | Fixed case insensitivity for action parameter names and values. |
| Fix             | v1.0 and beta | Fixed request processing for payloads containing null values for some embedded complex properties, which were failing with a null reference exception. |
| Addition        | v1.0 and beta | Added support for complex type property sorting and filtering. |
| Addition        | v1.0 and beta | Added authorization_uri property in the www-authenticate header on a 401 response. This uri can be used to start the token acquisition flow. |
| Addition        | v1.0 and beta | Improved error messages across users and groups. |

### Groups

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Fix             | v1.0 and beta | Fixed calling the following group actions: _microsoft.graph.addFavorite_, _microsoft.graph.removeFavorite_ and _microsoft.graph.resetUnseenCount_. |

### Messages

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added eventMessageRequest subtype of eventMessage and startDateTime, endDateTime, location, type, recurrence and isOutOfDate properties to eventMessage type. |

### Users

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Fix             | v1.0 and beta | Fixed being able to select certain user properties on other users, when referencing the user by user principal name (UPN). For example: https://graph.microsoft.com/v1.0/users/anotherUser@contoso.com?$select=aboutMe |
| Fix             | v1.0 and beta | Fixed calling the _microsoft.graph.reminderView_ user bound function, which was failing with the following error: Could not find a property named businessPhones on type  Microsoft.OutlookServices.Reminder. |
| Fix             | v1.0 and beta | Fixed user creation and update (POST/PATCH /v1.0/users), which was failing with a 400 error. |

