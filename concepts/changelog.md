# Changelog for Microsoft Graph

This changelog covers what's changed in Microsoft Graph, including the v1.0 and beta endpoint Microsoft Graph APIs.

For details about known issues with Microsoft Graph APIs, see [Known issues](known_issues.md).

## November 2018

### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |v1.0| Introduced new resource type [team](/graph/api/resources/team?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new resource type [channel](/graph/api/resources/channel?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new resource type [teamsApp](/graph/api/resources/teamsapp?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new resource type [teamsAppDefinition](/graph/api/resources/teamsappdefinition?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new resource type [teamsAppInstallation](/graph/api/resources/teamsappinstallation?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new resource type [teamsAsyncOperation](/graph/api/resources/teamsasyncoperation?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new complex type [teamGuestSettings](/graph/api/resources/teamguestsettings?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new complex type [teamMemberSettings](/graph/api/resources/teammembersettings?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new complex type [teamMessagingSettings](/graph/api/resources/teammessagingsettings?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new complex type [teamFunSettings](/graph/api/resources/teamfunsettings?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new action [Clone team](/graph/api/team_clone?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new action [Archive team](/graph/api/team_archive?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new action [Unarchive team](/graph/api/team_unarchive?view=graph-rest-1.0). |
|Addition         | Beta          | Added application permissions support to [clone team](/graph/api/team_clone.md?view=graph-rest-beta). |
|Addition |beta| Introduced [/teams/{id}/installedApps](/graph/api/resources/teamsappinstallation.md?view=graph-rest-beta), which will replace /teams/{id}/apps with some differences in payload. |
|Addition |beta| Introduced [/appCatalogs/teamsApps/{id}/appDefinition](/graph/api/resources/teamsappdefinition.md?view=graph-rest-beta), which will replace the version property on [/appCatalogs/teamsApps/{id}](/graph/api/resources/teamsapp.md?view=graph-rest-beta). |
|Change   |beta| Renamed the type of [/appCatalogs/teamsApps](/graph/api/resources/teamsapp.md?view=graph-rest-beta) from teamsCatalogApp to teamsApp. |
|Change   |beta| Renamed the type of the distributionMethod property on [/appCatalogs/teamsApps](/graph/api/resources/teamsapp.md?view=graph-rest-beta) from teamsCatalogAppDistributionMethod to teamsAppDistributionMethod  |
|Removal |beta| teamsCatalogAppDistributionMethod has been renamed to teamsAppDistributionMethod  |
|Addition |beta| Introduced [/teams/{id}/installedApps](/graph/api/resources/teamsappinstallation.md?view=graph-rest-beta), which will replace /teams/{id}/apps with some differences in payload. |
|Addition |beta| Added the displayName property to [teamsTab](/graph/api/resources/teamstab.md?view=graph-rest-beta) |
|Addition |beta| Added the messageId property to [teamsTab](/graph/api/resources/teamstab.md?view=graph-rest-beta) |
|Addition |beta| Added the teamsApp property to [teamsTab](/graph/api/resources/teamstab.md?view=graph-rest-beta) |
|Addition |beta| Introduced new resource type [teamsAppInstallation](/graph/api/resources/teamsappinstallation.md?view=graph-rest-beta).|
|Addition |beta| Introduced new resource type [teamsApp](/graph/api/resources/teamsapp.md?view=graph-rest-beta).|
|Addition |beta| Introduced new resource type [teamsAppDefinition](/graph/api/resources/teamsappdefinition.md?view=graph-rest-beta).|
|Addition |beta| Introduced new enum member hiddenMembership to teamVisibilityType.|
|Addition |beta| Introduced new enum member createTeam to teamsAsyncOperationType.|
|Addition |beta| Introduced new enum member teamsAppDistributionMethod.|
|Addition |beta| Introduced new upgrade app action under [/teams/{id}/installedApps](/graph/api/resources/teamsappinstallation.md?view=graph-rest-beta). |

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the [forceDelete](/graph/api/domain_forcedelete?view=graph-rest-1.0) action to [domains](/graph/api/resources/domain?view=graph-rest-1.0).|
| Addition | beta | Added new method transitiveMembers on [groups](/graph/api/group_list_transitivemembers.md?view=graph-rest-beta). This method returns a flat list of members including nested members.|
| Addition | beta | Added new method transitiveMemberOf on [users](/graph/api/user_list_transitivemembersof.md?view=graph-rest-beta), [groups](/graph/api/group_list_transitivemembersof.md?view=graph-rest-beta), [devices](/graph/api/device_list_transitivemembersof.md?view=graph-rest-beta) and [service principals](/graph/api/serviceprincipal_list_transitivemembersof.md?view=graph-rest-beta).|
| Addition | beta | Added method memberOf to get a devices direct [membership](/graph/api/device_list_members.md?view=graph-rest-beta). This method has been added for getting the list of memberships including nested memberships.|
| Addition | beta | Added new properties to [users](/graph/api/resources/user.md?view=graph-rest-beta): **faxNumber**, **onPremisesDistinguishedName**, and **otherMails**.|
| Addition | beta | Added the **forceChangePasswordNextSignInWithMfa** property to the [passwordProfile](/graph/api/resources/passwordprofile.md?view=graph-rest-beta) complex type.|

### Reports APIs

| Change type | Version                                    | Description                              |
| :---------- | :----------------------------------------- | :--------------------------------------- |
| Addition    | Beta version in Microsoft Graph China operated by 21Vianet | Added the following APIs:<br>[getEmailActivityUserDetail](/graph/api/reportroot_getemailactivityuserdetail.md?view=graph-rest-beta)<br>[getEmailActivityCounts](/graph/api/reportroot_getemailactivitycounts.md?view=graph-rest-beta)<br>[getEmailActivityUserCounts](/graph/api/reportroot_getemailactivityusercounts.md?view=graph-rest-beta)<br>[getEmailAppUsageUserDetail](/graph/api/reportroot_getemailappusageuserdetail.md?view=graph-rest-beta)<br>[getEmailAppUsageAppsUserCounts](/graph/api/reportroot_getemailappusageappsusercounts.md?view=graph-rest-beta)<br>[getEmailAppUsageUserCounts](/graph/api/reportroot_getemailappusageusercounts.md?view=graph-rest-beta)<br>[getEmailAppUsageVersionsUserCounts](/graph/api/reportroot_getemailappusageversionsusercounts.md?view=graph-rest-beta)<br>[getMailboxUsageDetail](/graph/api/reportroot_getmailboxusagedetail.md?view=graph-rest-beta)<br>[getMailboxUsageMailboxCounts](/graph/api/reportroot_getmailboxusagemailboxcounts.md?view=graph-rest-beta)<br>[getMailboxUsageQuotaStatusMailboxCounts](/graph/api/reportroot_getmailboxusagequotastatusmailboxcounts.md?view=graph-rest-beta)<br>[getMailboxUsageStorage](/graph/api/reportroot_getmailboxusagestorage.md?view=graph-rest-beta)<br>[getOffice365ActivationsUserDetail](/graph/api/reportroot_getoffice365activationsuserdetail.md?view=graph-rest-beta)<br>[getOffice365ActivationCounts](/graph/api/reportroot_getoffice365activationcounts.md?view=graph-rest-beta)<br>[getOffice365ActivationsUserCounts](/graph/api/reportroot_getoffice365activationsusercounts.md?view=graph-rest-beta)<br>[getOffice365ActiveUserDetail](/graph/api/reportroot_getoffice365activeuserdetail.md?view=graph-rest-beta)<br>[getOffice365ActiveUserCounts](/graph/api/reportroot_getoffice365activeusercounts.md?view=graph-rest-beta)<br>[getOffice365ServicesUserCounts](/graph/api/reportroot_getoffice365servicesusercounts.md?view=graph-rest-beta)<br>[getOffice365GroupsActivityDetail](/graph/api/reportroot_getoffice365groupsactivitydetail.md?view=graph-rest-beta)<br> [getOffice365GroupsActivityCounts](/graph/api/reportroot_getoffice365groupsactivitycounts.md?view=graph-rest-beta)<br>[getOffice365GroupsActivityGroupCounts](/graph/api/reportroot_getoffice365groupsactivitygroupcounts.md?view=graph-rest-beta)<br>[getOffice365GroupsActivityStorage](/graph/api/reportroot_getoffice365groupsactivitystorage.md?view=graph-rest-beta)<br>[getOffice365GroupsActivityFileCounts](/graph/api/reportroot_getoffice365groupsactivityfilecounts.md?view=graph-rest-beta)<br>[getOneDriveActivityUserDetail](/graph/api/reportroot_getonedriveactivityuserdetail.md?view=graph-rest-beta)<br>[getOneDriveActivityUserCounts](/graph/api/reportroot_getonedriveactivityusercounts.md?view=graph-rest-beta)<br>[getOneDriveActivityFileCounts](/graph/api/reportroot_getonedriveactivityfilecounts.md?view=graph-rest-beta)<br>[getOneDriveUsageAccountDetail](/graph/api/reportroot_getonedriveusageaccountdetail.md?view=graph-rest-beta)<br>[getOneDriveUsageAccountCounts](/graph/api/reportroot_getonedriveusageaccountcounts.md?view=graph-rest-beta)<br>[getOneDriveUsageFileCounts](/graph/api/reportroot_getonedriveusagefilecounts.md?view=graph-rest-beta)<br>[getOneDriveUsageStorage](/graph/api/reportroot_getonedriveusagestorage.md?view=graph-rest-beta)<br>[getSharePointActivityUserDetail](/graph/api/reportroot_getsharepointactivityuserdetail.md?view=graph-rest-beta)<br>[getSharePointActivityFileCounts](/graph/api/reportroot_getsharepointactivityfilecounts.md?view=graph-rest-beta)<br>[getSharePointActivityUserCounts](/graph/api/reportroot_getsharepointactivityusercounts.md?view=graph-rest-beta)<br>[getSharePointActivityPages](/graph/api/reportroot_getsharepointactivitypages.md?view=graph-rest-beta)<br>[getSharePointSiteUsageDetail](/graph/api/reportroot_getsharepointsiteusagedetail.md?view=graph-rest-beta)<br>[getSharePointSiteUsageFileCounts](/graph/api/reportroot_getsharepointsiteusagefilecounts.md?view=graph-rest-beta)<br>[getSharePointSiteUsageSiteCounts](/graph/api/reportroot_getsharepointsiteusagesitecounts.md?view=graph-rest-beta)<br>[getSharePointSiteUsageStorage](/graph/api/reportroot_getsharepointsiteusagestorage.md?view=graph-rest-beta)<br>[getSharePointSiteUsagePages](/graph/api/reportroot_getsharepointsiteusagepages.md?view=graph-rest-beta)<br>[getSkypeForBusinessActivityUserDetail](/graph/api/reportroot_getskypeforbusinessactivityuserdetail.md?view=graph-rest-beta)<br>[getSkypeForBusinessActivityCounts](/graph/api/reportroot_getskypeforbusinessactivitycounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessActivityUserCounts](/graph/api/reportroot_getskypeforbusinessactivityusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageUserDetail](/graph/api/reportroot_getskypeforbusinessdeviceusageuserdetail.md?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageDistributionUserCounts](/graph/api/reportroot_getskypeforbusinessdeviceusagedistributionusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageUserCounts](/graph/api/reportroot_getskypeforbusinessdeviceusageusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivitycounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityUserCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivityusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivityminutecounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivitycounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityUserCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivityusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivityminutecounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivitycounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityUserCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivityusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivityminutecounts.md?view=graph-rest-beta). |

### Directory APIs
| Change type | Version                                    | Description                              |
| :---------- | :----------------------------------------- | :--------------------------------------- |
| Addition    | Beta | Added the 'externalUserState' and 'externalUserStateChangeDateTime' properties to the [user](/graph/api/resources/user?view=graph-rest-beta) object.|

## October 2018

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added new method transitiveMembers on [groups](/graph/api/group_list_transitivemembers.md?view=graph-rest-beta). This method returns a flat list of members including nested members.|
| Addition | beta | Added new method transitiveMemberOf on [users](/graph/api/user_list_transitivemembersof.md?view=graph-rest-beta), [groups](/graph/api/group_list_transitivemembersof.md?view=graph-rest-beta), [devices](/graph/api/device_list_transitivemembersof.md?view=graph-rest-beta) and [service principals](/graph/api/serviceprincipal_list_transitivemembersof.md?view=graph-rest-beta).|
| Addition | beta | Added method memberOf to get a devices direct [membership](/graph/api/device_list_members.md?view=graph-rest-beta). This method has been added for getting the list of memberships including nested memberships.|
| Addition | beta | Added new properties to [users](/graph/api/resources/user.md?view=graph-rest-beta): **faxNumber**, **onPremisesDistinguishedName**, and **otherMails**.|

### RiskyUsers APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta| Introduced [riskyUsers API](/graph/api/resources/riskyuser?view=graph-rest-beta), which represents Azure AD users who are at risk, as detected by Azure AD Identity Protection. |


### SignIn APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Change   |beta| Renamed the property `conditionalAccessPolicies` to `appliedConditionalAccessPolicy`.|
|Addition |beta| Introduced additional risk properties in the [signIn API](/graph/api/resources/signin?view=graph-rest-beta), including `riskDetail`, `riskLevelAggregated`, `riskLevelDuringSignIn`, `riskEventTypes`, and `riskState`.|
|Addition |beta| Introduced additional sign-in properties in the [signIn API](/graph/api/resources/signin?view=graph-rest-beta), including `authenticationProcessingDetails`, `originalRequestID`, `isInteractive`, `tokenIssuerName`, `tokenIssuerType`, `correlationId`, and `processingTimeinMilliseconds`.|
|Removal   |beta| Removed the property `isRisky`.|

## October 2018

### Delta query

| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | Beta   | Added [delta query](delta_query_overview.md) capability for [directoryObject](/graph/api/directoryobject_delta.md?view=graph-rest-beta) |
| Change      | v1.0 and beta   | Alternative behavior to return changed properties only in JSON response for [users](/graph/api/user_delta?view=graph-rest-1.0) and [groups](/graph/api/group_delta?view=graph-rest-1.0). |
| Addition        | v1.0        | Added [delta](/graph/api/directoryrole_delta?view=graph-rest-1.0) function for [directoryRole](/graph/api/resources/directoryrole?view=graph-rest-1.0) to support [change tracking using delta query](delta_query_overview.md). |

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added the **tenantLockdownRequireNetworkDuringOutOfBoxExperience** property to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **v12_0** property to the [iosMinimumOperatingSystem](/graph/api/resources/intune_apps_iosminimumoperatingsystem?view=graph-rest-1.0) complex type|
|Addition|beta|Added the **lastReportAggregationDateTime** property to the [deviceManagement](/graph/api/resources/intune_shared_deviceManagement?view=graph-rest-beta) entity|
|Addition|beta|Added new entities:<br/>[intuneBrandingProfile](/graph/api/resources/intune_wip_intunebrandingprofile.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceAndAppManagementAssignedRoleIds](/graph/api/resources/intune_rbac_deviceandappmanagementassignedroleids.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[applicationGuardEnabledOptions](/graph/api/resources/intune_deviceconfig_applicationguardenabledoptions.md?view=graph-rest-beta)<br/>[autoRestartNotificationDismissalMethod](/graph/api/resources/intune_deviceconfig_autorestartnotificationdismissalmethod.md?view=graph-rest-beta)<br/>[meteredConnectionLimitType](/graph/api/resources/intune_deviceconfig_meteredconnectionlimittype.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [enableLegacyPcManagement](/graph/api/intune_deviceconfig_devicemanagement_enablelegacypcmanagement.md?view=graph-rest-beta) action on [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement.md?view=graph-rest-beta) |
|Addition|beta|Added the [extendFeatureUpdatesPause](/graph/api/intune_deviceconfig_windowsupdateforbusinessconfiguration_extendfeatureupdatespause.md?view=graph-rest-beta) action on [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md?view=graph-rest-beta) |
|Addition|beta|Added the [extendQualityUpdatesPause](/graph/api/intune_deviceconfig_windowsupdateforbusinessconfiguration_extendqualityupdatespause.md?view=graph-rest-beta) action on [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md?view=graph-rest-beta) |
|Addition|beta|Added the [unassignUserFromDevice](/graph/api/intune_enrollment_windowsautopilotdeviceidentity_unassignuserfromdevice.md?view=graph-rest-beta) action on [windowsAutopilotDeviceIdentity](/graph/api/resources/intune_enrollment_windowsautopilotdeviceidentity.md?view=graph-rest-beta) |
|Addition|beta|Added the [getAssignedRoleIdsForLoggedInUser](/graph/api/intune_rbac_devicemanagement_getassignedroleidsforloggedinuser.md?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement.md?view=graph-rest-beta) |
|Addition|beta|Added the [getManagedDevicesWithAppFailures](/graph/api/intune_troubleshooting_user_getmanageddeviceswithappfailures.md?view=graph-rest-beta) function on [user](/graph/api/resources/intune_devices_user.md?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentAbandonmentSummary](/graph/api/intune_troubleshooting_reportroot_manageddeviceenrollmentabandonmentsummary.md?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune_deviceconfig_reportroot.md?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentAbandonmentDetails](/graph/api/intune_troubleshooting_reportroot_manageddeviceenrollmentabandonmentdetails.md?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune_deviceconfig_reportroot.md?view=graph-rest-beta) |
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidForWorkCertificateProfileBase](/graph/api/resources/intune_deviceconfig_androidforworkcertificateprofilebase.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidForWorkPkcsCertificateProfile](/graph/api/resources/intune_deviceconfig_androidforworkpkcscertificateprofile.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore**, **customSubjectAlternativeNames** and **subjectAlternativeNameType** properties to the [androidForWorkScepCertificateProfile](/graph/api/resources/intune_deviceconfig_androidforworkscepcertificateprofile.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidWorkProfileCertificateProfileBase](/graph/api/resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidWorkProfilePkcsCertificateProfile](/graph/api/resources/intune_deviceconfig_androidworkprofilepkcscertificateprofile.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore**, **customSubjectAlternativeNames** and **subjectAlternativeNameType** properties to the [androidWorkProfileScepCertificateProfile](/graph/api/resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **legacyPcManangementEnabled** property to the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **pinRequiredOnLaunchInsteadOfBiometric** property from the [managedAppProtection](/graph/api/resources/intune_mam_managedappprotection.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **applicationGuardEnabledOptions** property to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **selectedMobileAppIds** property to the [windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **engagedRestartDeadlineInDays**, **engagedRestartSnoozeScheduleInDays**, **engagedRestartTransitionScheduleInDays**, **autoRestartNotificationDismissal**, **scheduleRestartWarningInHours** and **scheduleImminentRestartWarningInMinutes** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **preSharedKey** and **meteredConnectionLimit** properties to the [windowsWifiConfiguration](/graph/api/resources/intune_deviceconfig_windowswificonfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **intuneBrandingProfiles** navigation property to the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **v6_0**, **v7_0**, **v7_1**, **v8_0**, **v8_1** and **v9_0** properties to the [androidMinimumOperatingSystem](/graph/api/resources/intune_apps_androidminimumoperatingsystem.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **v12_0** property to the [iosMinimumOperatingSystem](/graph/api/resources/intune_apps_iosminimumoperatingsystem.md?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **runAsLoggedOnUser** property from the [win32LobAppPowerShellScriptDetection](/graph/api/resources/intune_apps_win32lobapppowershellscriptdetection.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [osVersionCount](/graph/api/resources/intune_devices_osversioncount.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareCategoryCount](/graph/api/resources/intune_devices_windowsmalwarecategorycount.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareExecutionStateCount](/graph/api/resources/intune_devices_windowsmalwareexecutionstatecount.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareNameCount](/graph/api/resources/intune_devices_windowsmalwarenamecount.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareStateCount](/graph/api/resources/intune_devices_windowsmalwarestatecount.md?view=graph-rest-beta) complex type|

### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added application permissions support to [archive team](/graph/api/team_archive.md?view=graph-rest-beta) and [unarchive team](/graph/api/team_unarchive.md?view=graph-rest-beta) APIs.|

### Outlook contacts

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Removal         | v1.0        | This is a correction to the documentation: removed the **flag** property from the [contact](/graph/api/resources/contact?view=graph-rest-1.0) entity topic. The property was never made available in the **contact** entity.|

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the **Site ID** property to [getSharePointSiteUsageDetail](/graph/api/reportroot_getsharepointsiteusagedetail?view=graph-rest-1.0). |

## September 2018

### Calls and online meetings API

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | The [application](/graph/api/resources/application?view=graph-rest-beta) resource was updated to add a calls collection. |
| Change          | Beta        | The [operation](/graph/api/resources/operation?view=graph-rest-beta) resource was updated to support long-running calls and meetings APIs. |
| Addition        | Beta        | Added the [call](/graph/api/resources/call.md?view=graph-rest-beta) resource for managing audio/video calls (initially, in Microsoft Teams), including APIs for [creating calls](/graph/api/application_post_calls?view=graph-rest-beta), [retrieving a a call](/graph/api/call_get?view=graph-rest-beta), [deleting (hanging up) a call](/graph/api/call_delete?view=graph-rest-beta), [answering a call](/graph/api/call_answer?view=graph-rest-beta), [rejecting a call](/graph/api/call_reject?view=graph-rest-beta), [redirecting a call](/graph/api/call_redirect?view=graph-rest-beta), and [transferring a call](/graph/api/call_transfer?view=graph-rest-beta). We've also added APIs to support [IVR scenarios](/graph/api/resources/calls-api-ivr-overview?view=graph-rest-beta): [playing a prompt](/graph/api/call_playprompt?view=graph-rest-beta), [recording a call](/graph/api/call_record?view=graph-rest-beta), [cancel media processing](/graph/api/call_cancelmediaprocessing?view=graph-rest-beta), and [subscribing to touch tone notifications](/graph/api/call_subscribetotone?view=graph-rest-beta). |
| Addition        | Beta        | Added the [participant](/graph/api/resources/call.md?view=graph-rest-beta) resource and APIs for managing the participants in audio/video calls and meetings, including [retrieving a participant object](/graph/api/participant_get?view=graph-rest-beta), [configuring the audio mixer for a participant](/graph/api/participant_configuremixer?view=graph-rest-beta), muting [one](/graph/api/participant_mute?view=graph-rest-beta) or [all](/graph/api/participant_muteall?view=graph-rest-beta) of the participants, [retrieving a list of the participants](/graph/api/call_list_participants?view=graph-rest-beta) in a call/meeting, and [inviting participants](/graph/api/participant_invite?view=graph-rest-beta) to a call/meeting. |
| Addition        | Beta        | Added APIs for applications to manage and participate in calls and meetings, including the ability to [share content](/graph/api/call_changescreensharingrole?view=graph-rest-beta), [mute and unmute itself](/graph/api/call_unmute?view=graph-rest-beta), and [update the metadata associated with a call](/graph/api/call_updatemetadata?view=graph-rest-beta). |
| Addition        | Beta        | Added the [audio routing group](/graph/api/resources/audioroutinggroup.md?view=graph-rest-beta) resource and APIs for managing private audio routes between participants in a multiparty conversation, including [creating audio routing groups](/graph/api/call_post_audioroutinggroups?view=graph-rest-beta), [retrieving a list of them](/graph/api/audioroutinggroup_get?view=graph-rest-beta), and [updating](/graph/api/audioroutinggroup_update?view=graph-rest-beta) and [deleting](/graph/api/audioroutinggroup_delete?view=graph-rest-beta) them. |
| Addition        | Beta        | Added the [online meeting](/graph/api/resources/audioroutinggroup.md?view=graph-rest-beta) resource and APIs for managing Microsoft Teams online meetings. Initially, there is only one API for online meetings, to [retrieve an online meeting object](/graph/api/onlinemeeting_get?view=graph-rest-beta). A related resource for the [audio conference information](/graph/api/resources/audioconferencing.md?view=graph-rest-beta) associated with a meeting (e.g. dial-in URL, passcodes, and phone numbers) was also added. |
| Addition        | Beta        | Many of the calls and meetings APIs take time to complete, so resources for these long-running operations were added: [calling-specific operations](/graph/api/resources/commsoperation.md?view=graph-rest-beta), [playing audio prompts](/graph/api/resources/playpromptoperation.md?view=graph-rest-beta), and [recording](/graph/api/resources/recordoperation.md?view=graph-rest-beta).  |

### Dynamics 365 Business Central API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added financials APIs for Dynamics 365 Business Central. For details, see the [Financials API reference](/graph/api/resources/dynamics_graph_reference.md?view=graph-rest-beta)

### Microsoft Graph data connect

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition         | Not applicable| Introduced the ability to access Office 365 data in bulk. For details, see [Microsoft Graph data connect (preview)](data-connect-overview.md).|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added the [assign](/graph/api/intune_apps_manageddevicemobileappconfiguration_assign?view=graph-rest-1.0) action on [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration?view=graph-rest-1.0) |
|Addition|beta|Added new entities:<br/>[officeClientConfiguration](/graph/api/resources/intune_cirrus_officeclientconfiguration.md?view=graph-rest-beta)<br/>[officeClientConfigurationAssignment](/graph/api/resources/intune_cirrus_officeclientconfigurationassignment.md?view=graph-rest-beta)<br/>[officeConfiguration](/graph/api/resources/intune_cirrus_officeconfiguration.md?view=graph-rest-beta)<br/>[windowsOfficeClientConfiguration](/graph/api/resources/intune_cirrus_windowsofficeclientconfiguration.md?view=graph-rest-beta)<br/>[windowsOfficeClientSecurityConfiguration](/graph/api/resources/intune_cirrus_windowsofficeclientsecurityconfiguration.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[officeClientCheckinStatus](/graph/api/resources/intune_cirrus_officeclientcheckinstatus.md?view=graph-rest-beta)<br/>[officeConfigurationAssignmentTarget](/graph/api/resources/intune_cirrus_officeconfigurationassignmenttarget.md?view=graph-rest-beta)<br/>[officeConfigurationGroupAssignmentTarget](/graph/api/resources/intune_cirrus_officeconfigurationgroupassignmenttarget.md?view=graph-rest-beta)<br/>[officeUserCheckinSummary](/graph/api/resources/intune_cirrus_officeusercheckinsummary.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [assign](/graph/api/intune_cirrus_officeclientconfiguration_assign.md?view=graph-rest-beta) action on [officeClientConfiguration](/graph/api/resources/intune_cirrus_officeclientconfiguration.md?view=graph-rest-beta) |
|Addition|beta|Added the **updatePrioritie** action on [officeClientConfiguration](/graph/api/resources/intune_cirrus_officeclientconfiguration.md?view=graph-rest-beta) collection |
|Addition|beta|Added new entities:<br/>[deviceConfigurationConflictSummary](/graph/api/resources/intune_deviceconfig_deviceconfigurationconflictsummary.md?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md?view=graph-rest-beta)<br/>[win32LobApp](/graph/api/resources/intune_apps_win32lobapp.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceConfigurationTargetedUserAndDevice](/graph/api/resources/intune_deviceconfig_deviceconfigurationtargeteduseranddevice.md?view=graph-rest-beta)<br/>[win32LobAppDetection](/graph/api/resources/intune_apps_win32lobappdetection.md?view=graph-rest-beta)<br/>[win32LobAppFileSystemDetection](/graph/api/resources/intune_apps_win32lobappfilesystemdetection.md?view=graph-rest-beta)<br/>[win32LobAppInstallExperience](/graph/api/resources/intune_apps_win32lobappinstallexperience.md?view=graph-rest-beta)<br/>[win32LobAppMsiInformation](/graph/api/resources/intune_apps_win32lobappmsiinformation.md?view=graph-rest-beta)<br/>[win32LobAppPowerShellScriptDetection](/graph/api/resources/intune_apps_win32lobapppowershellscriptdetection.md?view=graph-rest-beta)<br/>[win32LobAppProductCodeDetection](/graph/api/resources/intune_apps_win32lobappproductcodedetection.md?view=graph-rest-beta)<br/>[win32LobAppRegistryDetection](/graph/api/resources/intune_apps_win32lobappregistrydetection.md?view=graph-rest-beta)<br/>[win32LobAppReturnCode](/graph/api/resources/intune_apps_win32lobappreturncode.md?view=graph-rest-beta)<br/>[windows10AppsForceUpdateSchedule](/graph/api/resources/intune_deviceconfig_windows10appsforceupdateschedule.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[administratorConfiguredDeviceComplianceState](/graph/api/resources/intune_deviceconfig_administratorconfigureddevicecompliancestate.md?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUploadStatus](/graph/api/resources/intune_enrollment_importedwindowsautopilotdeviceidentityuploadstatus.md?view=graph-rest-beta)<br/>[microsoftStoreForBusinessPortalSelectionOptions](/graph/api/resources/intune_onboarding_microsoftstoreforbusinessportalselectionoptions.md?view=graph-rest-beta)<br/>[win32LobAppDetectionOperator](/graph/api/resources/intune_apps_win32lobappdetectionoperator.md?view=graph-rest-beta)<br/>[win32LobAppFileSystemDetectionType](/graph/api/resources/intune_apps_win32lobappfilesystemdetectiontype.md?view=graph-rest-beta)<br/>[win32LobAppMsiPackageType](/graph/api/resources/intune_apps_win32lobappmsipackagetype.md?view=graph-rest-beta)<br/>[win32LobAppRegistryDetectionType](/graph/api/resources/intune_apps_win32lobappregistrydetectiontype.md?view=graph-rest-beta)<br/>[win32LobAppReturnCodeType](/graph/api/resources/intune_apps_win32lobappreturncodetype.md?view=graph-rest-beta)<br/>[windows10AppsUpdateRecurrence](/graph/api/resources/intune_deviceconfig_windows10appsupdaterecurrence.md?view=graph-rest-beta)<br/>[windowsAppStartLayoutTileSize](/graph/api/resources/intune_deviceconfig_windowsappstartlayouttilesize.md?view=graph-rest-beta)<br/>[windowsAutopilotProfileAssignmentDetailedStatus](/graph/api/resources/intune_enrollment_windowsautopilotprofileassignmentdetailedstatus.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **overrideComplianceState** action on [managedDevice](/graph/api/resources/intune_devices_manageddevice.md?view=graph-rest-beta) |
|Addition|beta|Added the **getTargetedUsersAndDevices** action on [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration.md?view=graph-rest-beta) collection |
|Addition|beta|Added the [autopilotDeviceStream](/graph/api/intune_enrollment_importedwindowsautopilotdeviceidentityupload_autopilotdevicestream.md?view=graph-rest-beta) function on [importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md?view=graph-rest-beta) |
|Addition|beta|Added the **restrictedApps** property to the [androidCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidcompliancepolicy.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **tokenCreationDateTime** property to the [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **restrictedApps** property from the [androidForWorkCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidforworkcompliancepolicy.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **restrictedApps** property from the [androidWorkProfileCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidworkprofilecompliancepolicy.md?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [appleVpnConfiguration](/graph/api/resources/intune_deviceconfig_applevpnconfiguration.md?view=graph-rest-beta) entity:<br/>**enablePerApp** from required to optional<br/>|
|Addition|beta|Added the **disableProtectionOfManagedOutboundOpenInData** and **protectInboundDataFromUnknownSources** properties to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **microsoftStoreForBusinessPortalSelection** property to the [deviceAppManagement](/graph/api/resources/intune_shared_deviceappmanagement.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **passcodeMinutesOfInactivityBeforeScreenTimeout** property to the [iosCompliancePolicy](/graph/api/resources/intune_deviceconfig_ioscompliancepolicy.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **useOAuth** property to the [iosEasEmailProfileConfiguration](/graph/api/resources/intune_deviceconfig_ioseasemailprofileconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **kioskModeBlockVolumeButtons**, **classroomForceRequestPermissionToLeaveClasses**, **keychainBlockCloudSync**, **pkiBlockOTAUpdates**, **privacyForceLimitAdTracking**, **enterpriseBookBlockBackup**, **enterpriseBookBlockMetadataSync**, **airPrintBlocked**, **airPrintBlockCredentialsStorage**, **airPrintForceTrustedTLS**, **airPrintBlockiBeaconDiscovery**, **blockSystemAppRemoval** and **vpnBlockCreation** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **disableProtectionOfManagedOutboundOpenInData** and **protectInboundDataFromUnknownSources** properties to the [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **gatekeeperAllowedAppSource** property to the [macOSCompliancePolicy](/graph/api/resources/intune_deviceconfig_macoscompliancepolicy.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **keychainBlockCloudSync**, **airPrintBlocked**, **airPrintForceTrustedTLS** and **airPrintBlockiBeaconDiscovery** properties to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_macosgeneraldeviceconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceModel** and **deviceManufacturer** properties to the [managedAppRegistration](/graph/api/resources/intune_mam_managedappregistration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **enabledForScopeValidation** property to the [resourceOperation](/graph/api/resources/intune_rbac_resourceoperation.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **claimTokenManagementFromExternalMdm** property to the [vppToken](/graph/api/resources/intune_onboarding_vpptoken.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **windows10AppsForceUpdateSchedule** property to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **deploymentProfileAssignmentDetailedStatus** property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune_enrollment_windowsautopilotdeviceidentity.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceConfigurationConflictSummary** and **importedWindowsAutopilotDeviceIdentityUploads** navigation properties to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedDeploymentProfile** navigation property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune_enrollment_windowsautopilotdeviceidentity.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **startLayoutTileSize** and **name** properties to the [windowsKioskAppBase](/graph/api/resources/intune_deviceconfig_windowskioskappbase.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **desktopApplicationId** and **desktopApplicationLinkPath** properties to the [windowsKioskDesktopApp](/graph/api/resources/intune_deviceconfig_windowskioskdesktopapp.md?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **name** property from the [windowsKioskDesktopApp](/graph/api/resources/intune_deviceconfig_windowskioskdesktopapp.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **disallowDesktopApps** property to the [windowsKioskMultipleApps](/graph/api/resources/intune_deviceconfig_windowskioskmultipleapps.md?view=graph-rest-beta) complex type|
|Change|beta|Changed the following properties on the [windowsKioskMultipleApps](/graph/api/resources/intune_deviceconfig_windowskioskmultipleapps.md?view=graph-rest-beta) complex type:<br/>**startMenuLayoutXml** from required to optional<br/>|
|Addition|beta|Added the **v10_1607**, **v10_1703**, **v10_1709** and **v10_1803** properties to the [windowsMinimumOperatingSystem](/graph/api/resources/intune_apps_windowsminimumoperatingsystem.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidWorkProfileVpnConnectionType](/graph/api/resources/intune_deviceconfig_androidworkprofilevpnconnectiontype.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **remoteLock** member to the [deviceComplianceActionType](/graph/api/resources/intune_deviceconfig_devicecomplianceactiontype.md?view=graph-rest-beta) enum type|


### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added API for [Tabs](/graph/api/resources/teamstab.md?view=graph-rest-beta).|
|Addition|beta|Added API for [publishing apps for your organization](/graph/api/resources/teamsapp.md?view=graph-rest-beta).|
|Addition|beta|Added application permissions support to [GET /teams/{id}](/graph/api/team_get.md?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [GET /teams/{id}/channels](/graph/api/group_list_channels.md?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [GET /teams/{id}/channels/{id}](/graph/api/channel_get.md?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [PUT /groups/{id}/team](/graph/api/team_put_teams.md?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [PATCH /teams/{id}](/graph/api/team_update.md?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [Create channel](/graph/api/channel_post.md?view=graph-rest-beta), [Update channel](/graph/api/channel_patch.md?view=graph-rest-beta), and [Delete channel](/graph/api/channel_delete.md?view=graph-rest-beta). |
|Deletion|beta| Removed isBlocks and installedState properties from [teamsApp](/graph/api/resources/teamsapp.md?view=graph-rest-beta).|
|Change| beta | The context property on [teamsApp](/graph/api/resources/teamsapp.md?view=graph-rest-beta) has been renamed to distributionMethod.|

### Outlook mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | The **internetMessageHeaders** property of the [message](/graph/api/resources/message?view=graph-rest-1.0) entity is now writeable on message creation. |


### Project Rome notifications API

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition          | Beta        | Added the [notification](/graph/api/resources/projectrome_notification.md?view=graph-rest-beta) resource type. |
| Addition          | Beta        | Added the [Create and publish notification] (/graph/api/projectrome_notification_post.md?view=graph-rest-beta) API.|

### Security APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added the Secure Score APIs to the [security API](/graph/api/resources/securescore-api-overview.md?view=graph-rest-beta), including the following resources and operations:<br/>[secureScores](/graph/api/resources/securescores.md?view=graph-rest-beta) (and related entities)<br/>[List secureScores](/graph/api/securescores_list.md?view=graph-rest-beta)<br/>[secureScoreControlProfiles](../api-reference/beta//resources/securescorecontrolprofiles.md)<br/>[List secureScoreControlProfiles](/graph/api/securescorecontrolprofiles_list.md?view=graph-rest-beta)<br/>[Update secureScoreControlProfiles](/graph/api/securescorecontrolprofiles_update.md?view=graph-rest-beta)


### OneDrive and SharePoint APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **deferCommit** argument to the [createUploadSession](/graph/api/driveitem_createuploadsession?view=graph-rest-beta) action on [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta)|
| Addition        | Beta        | Added the [storagePlanInformation](/graph/api/resources/storagePlanInformation?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **storagePlanInformation** property to the [quota](/graph/api/resources/quota?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **following** navigation property to the [drive](/graph/api/resources/drive?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [follow](/graph/api/driveItem_follow?view=graph-rest-beta) action on [driveItem](/graph/api/resources/driveItem?view=graph-rest-beta) |
| Addition        | Beta        | Added the [unfollow](/graph/api/driveItem_unfollow?view=graph-rest-beta) API |
| Addition        | Beta        | Added the **hasPassword** property to the [permission](/graph/api/resources/permission?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **preventsDownload** property to the [sharingLink](/graph/api/resources/sharingLink?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **permission** navigation property to the [sharedDriveItem](/graph/api/resources/sharedDriveItem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **geolocation** property to the [columnDefinition](/graph/api/resources/columnDefinition?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [geolocationColumn](/graph/api/resources/geolocationColumn?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **analytics** property to the [driveItem](/graph/api/resources/driveItem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **analytics** property to the [site](/graph/api/resources/site?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **analytics** property to the [listItem](/graph/api/resources/listItem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [driveItem](/graph/api/resources/driveItem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [site](/graph/api/resources/site?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [listItem](/graph/api/resources/listItem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [itemAnalytics](/graph/api/resources/itemAnalytics?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [itemActivityStat](/graph/api/resources/itemActivity?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [itemActionStat](/graph/api/resources/itemActionStat?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the [accessAction](/graph/api/resources/accessAction?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the [incompleteData](/graph/api/resources/incompleteData?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **access** property to the [itemActivity](/graph/api/resources/itemActivity?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **location** property to the [itemActivity](/graph/api/resources/itemActivity?view=graph-rest-beta) complex type |
| Addition        | v1.0        | Added the **preview** action on the [driveItem](/graph/api/resources/driveItem?view=graph-rest-1.0) entity |
| Addition        | v1.0        | Added the [itemPreviewInfo](/graph/api/resources/itemPreviewInfo?view=graph-rest-1.0) complex type |

## August 2018

### Delta query

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added [delta query](../concepts/delta_query_overview) capability for the following entities in Azure AD:<br/>[application](/graph/api/application_delta.md?view=graph-rest-beta)<br/>[directoryRole](/graph/api/directoryRole_delta.md?view=graph-rest-beta)<br/>[servicePrincipal](/graph/api/serviceprincipal_delta.md?view=graph-rest-beta) |

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added  isMultipleDataLocationsForServicesEnabled property to [Organization](/graph/api/resources/organization.md?view=graph-rest-beta) resource that allows apps to verify that tenant is enabled for Multi-Geo capabilities. Added preferredDataLocation property to [user](/graph/api/resources/user.md?view=graph-rest-beta) and [group](/graph/api/resources/group.md?view=graph-rest-beta) resources that allow setting preferred data location for a user and group.|
| Addition | v1.0 | Added  [onPremisesProvisioningErrors](/graph/api/resources/onpremisesprovisioningerror?view=graph-rest-1.0) property to the [User](/graph/api/resources/user?view=graph-rest-1.0) and [Group](/graph/api/resources/group?view=graph-rest-1.0) entities that represents directory synchronization errors when synchronizing on-premises directories to Azure Active Directory when using Microsoft synchronization product (including Azure AD Connect, DirSync and MIM + Connector).|
| Addition | v1.0 | Added  [onPremisesExtensionAttributes](/graph/api/resources/onpremisesextensionattributes?view=graph-rest-1.0) property to the [User](/graph/api/resources/user?view=graph-rest-1.0) entity that contains fifteen custom extension attribute properties. For an onPremisesSyncEnabled user, this set of properties is mastered in on-premises Active Directory and synchronized to Azure AD, and is read-only. For a cloud-only user (where onPremisesSyncEnabled is false), these properties may be set during creation or update.|
|Addition|v1.0|Added the **onPremisesDomainName**, **onPremisesSamAccountName**, and **onPremisesUserPrincipalName** properties to the [User](/graph/api/resources/user?view=graph-rest-1.0) entity|

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[androidWorkProfileCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidworkprofilecompliancepolicy?view=graph-rest-1.0)<br/>[androidWorkProfileCustomConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofilecustomconfiguration?view=graph-rest-1.0)<br/>[androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofilegeneraldeviceconfiguration?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new enum types:<br/>[androidWorkProfileCrossProfileDataSharingType](/graph/api/resources/intune_deviceconfig_androidworkprofilecrossprofiledatasharingtype?view=graph-rest-1.0)<br/>[androidWorkProfileDefaultAppPermissionPolicyType](/graph/api/resources/intune_deviceconfig_androidworkprofiledefaultapppermissionpolicytype?view=graph-rest-1.0)<br/>[androidWorkProfileRequiredPasswordType](/graph/api/resources/intune_deviceconfig_androidworkprofilerequiredpasswordtype?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the [managedDeviceEnrollmentFailureDetails](/graph/api/intune_shared_reportroot_manageddeviceenrollmentfailuredetails?view=graph-rest-1.0) function on [reportRoot](/graph/api/resources/intune_shared_reportroot?view=graph-rest-1.0) |
|Addition|v1.0|Added the [managedDeviceEnrollmentTopFailures](/graph/api/intune_shared_reportroot_manageddeviceenrollmenttopfailures?view=graph-rest-1.0) function on [reportRoot](/graph/api/resources/intune_shared_reportroot?view=graph-rest-1.0) |
|Addition|v1.0|Added the **kioskModeBuiltInAppId** property to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_iosgeneraldeviceconfiguration?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **notAssigned** member to the [complianceStatus](/graph/api/resources/intune_shared_compliancestatus?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **pushNotification** member to the [deviceComplianceActionType](/graph/api/resources/intune_deviceconfig_devicecomplianceactiontype?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **userAbandonment** member to the [deviceEnrollmentFailureReason](/graph/api/resources/intune_troubleshooting_deviceenrollmentfailurereason?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **compromised** and **misconfigured** members to the [managedDevicePartnerReportedHealthState](/graph/api/resources/intune_devices_manageddevicepartnerreportedhealthstate?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **assignedToExternalMDM** member to the [vppTokenState](/graph/api/resources/intune_onboarding_vpptokenstate?view=graph-rest-1.0) enum type|
||
|Addition|beta|Added new entities:<br/>[advancedThreatProtectionOnboardingDeviceSettingState](/graph/api/resources/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate.md?view=graph-rest-beta)<br/>[advancedThreatProtectionOnboardingStateSummary](/graph/api/resources/intune_deviceconfig_advancedthreatprotectiononboardingstatesummary.md?view=graph-rest-beta)<br/>[depEnrollmentBaseProfile](/graph/api/resources/intune_enrollment_depenrollmentbaseprofile.md?view=graph-rest-beta)<br/>[depEnrollmentProfile](/graph/api/resources/intune_enrollment_depenrollmentprofile.md?view=graph-rest-beta)<br/>[depIOSEnrollmentProfile](/graph/api/resources/intune_enrollment_depiosenrollmentprofile.md?view=graph-rest-beta)<br/>[depMacOSEnrollmentProfile](/graph/api/resources/intune_enrollment_depmacosenrollmentprofile.md?view=graph-rest-beta)<br/>[enrollmentProfile](/graph/api/resources/intune_enrollment_enrollmentprofile.md?view=graph-rest-beta)<br/>[importedAppleDeviceIdentity](/graph/api/resources/intune_enrollment_importedappledeviceidentity.md?view=graph-rest-beta)<br/>[importedAppleDeviceIdentityResult](/graph/api/resources/intune_enrollment_importedappledeviceidentityresult.md?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md?view=graph-rest-beta)<br/>[roleScopeTag](/graph/api/resources/intune_rbac_rolescopetag.md?view=graph-rest-beta)<br/>[windowsIdentityProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windowsidentityprotectionconfiguration.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[configurationManagerClientHealthState](/graph/api/resources/intune_devices_configurationmanagerclienthealthstate.md?view=graph-rest-beta)<br/>[customSubjectAlternativeName](/graph/api/resources/intune_deviceconfig_customsubjectalternativename.md?view=graph-rest-beta)<br/>[deviceManagementUserRightsLocalUserOrGroup](/graph/api/resources/intune_deviceconfig_devicemanagementuserrightslocaluserorgroup.md?view=graph-rest-beta)<br/>[deviceManagementUserRightsSetting](/graph/api/resources/intune_deviceconfig_devicemanagementuserrightssetting.md?view=graph-rest-beta)<br/>[managementCertificateWithThumbprint](/graph/api/resources/intune_enrollment_managementcertificatewiththumbprint.md?view=graph-rest-beta)<br/>[mobileAppSupportedDeviceType](/graph/api/resources/intune_troubleshooting_mobileappsupporteddevicetype.md?view=graph-rest-beta)<br/>[osVersionCount](/graph/api/resources/intune_devices_osversioncount.md?view=graph-rest-beta)<br/>[windowsMalwareCategoryCount](/graph/api/resources/intune_devices_windowsmalwarecategorycount.md?view=graph-rest-beta)<br/>[windowsMalwareExecutionStateCount](/graph/api/resources/intune_devices_windowsmalwareexecutionstatecount.md?view=graph-rest-beta)<br/>[windowsMalwareNameCount](/graph/api/resources/intune_devices_windowsmalwarenamecount.md?view=graph-rest-beta)<br/>[windowsMalwareOverview](/graph/api/resources/intune_devices_windowsmalwareoverview.md?view=graph-rest-beta)<br/>[windowsMalwareStateCount](/graph/api/resources/intune_devices_windowsmalwarestatecount.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[configurationManagerClientState](/graph/api/resources/intune_devices_configurationmanagerclientstate.md?view=graph-rest-beta)<br/>[depTokenType](/graph/api/resources/intune_enrollment_deptokentype.md?view=graph-rest-beta)<br/>[discoverySource](/graph/api/resources/intune_enrollment_discoverysource.md?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUploadStatus](/graph/api/resources/intune_enrollment_importedwindowsautopilotdeviceidentityuploadstatus.md?view=graph-rest-beta)<br/>[iTunesPairingMode](/graph/api/resources/intune_enrollment_itunespairingmode.md?view=graph-rest-beta)<br/>[lanManagerAuthenticationLevel](/graph/api/resources/intune_deviceconfig_lanmanagerauthenticationlevel.md?view=graph-rest-beta)<br/>[localSecurityOptionsMinimumSessionSecurity](/graph/api/resources/intune_deviceconfig_localsecurityoptionsminimumsessionsecurity.md?view=graph-rest-beta)<br/>[resultantAppStateDetail](/graph/api/resources/intune_apps_resultantappstatedetail.md?view=graph-rest-beta)<br/>[vpnProviderType](/graph/api/resources/intune_deviceconfig_vpnprovidertype.md?view=graph-rest-beta)<br/>[windowsMalwareThreatState](/graph/api/resources/intune_devices_windowsmalwarethreatstate.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [uploadDepToken](/graph/api/intune_enrollment_deponboardingsetting_uploaddeptoken.md?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune_enrollment_deponboardingsetting.md?view=graph-rest-beta) |
|Addition|beta|Added the [syncWithAppleDeviceEnrollmentProgram](/graph/api/intune_enrollment_deponboardingsetting_syncwithappledeviceenrollmentprogram.md?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune_enrollment_deponboardingsetting.md?view=graph-rest-beta) |
|Addition|beta|Added the [setDefaultProfile](/graph/api/intune_enrollment_enrollmentprofile_setdefaultprofile.md?view=graph-rest-beta) action on [enrollmentProfile](/graph/api/resources/intune_enrollment_enrollmentprofile.md?view=graph-rest-beta) |
|Addition|beta|Added the **importAppleDeviceIdentityList** action on [importedAppleDeviceIdentity](/graph/api/resources/intune_enrollment_importedappledeviceidentity.md?view=graph-rest-beta) collection |
|Addition|beta|Added the [updateDeviceProfileAssignment](/graph/api/intune_enrollment_enrollmentprofile_updatedeviceprofileassignment.md?view=graph-rest-beta) action on [enrollmentProfile](/graph/api/resources/intune_enrollment_enrollmentprofile.md?view=graph-rest-beta) |
|Addition|beta|Added the [shareForSchoolDataSyncService](/graph/api/intune_enrollment_deponboardingsetting_shareforschooldatasyncservice.md?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune_enrollment_deponboardingsetting.md?view=graph-rest-beta) |
|Addition|beta|Added the [unshareForSchoolDataSyncService](/graph/api/intune_enrollment_deponboardingsetting_unshareforschooldatasyncservice.md?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune_enrollment_deponboardingsetting.md?view=graph-rest-beta) |
|Addition|beta|Added the [assignUserToDevice](/graph/api/intune_enrollment_windowsautopilotdeviceidentity_assignusertodevice.md?view=graph-rest-beta) action on [windowsAutopilotDeviceIdentity](/graph/api/resources/intune_enrollment_windowsautopilotdeviceidentity.md?view=graph-rest-beta) |
|Addition|beta|Added the [getRoleScopeTagsByResource](/graph/api/intune_rbac_devicemanagement_getrolescopetagsbyresource.md?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement.md?view=graph-rest-beta) |
|Addition|beta|Added the [getRoleScopeTagsByIds](/graph/api/intune_rbac_devicemanagement_getrolescopetagsbyids.md?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement.md?view=graph-rest-beta) |
|Addition|beta|Added the [getEncryptionPublicKey](/graph/api/intune_enrollment_deponboardingsetting_getencryptionpublickey.md?view=graph-rest-beta) function on [depOnboardingSetting](/graph/api/resources/intune_enrollment_deponboardingsetting.md?view=graph-rest-beta) |
|Addition|beta|Added the [exportMobileConfig](/graph/api/intune_enrollment_enrollmentprofile_exportmobileconfig.md?view=graph-rest-beta) function on [enrollmentProfile](/graph/api/resources/intune_enrollment_enrollmentprofile.md?view=graph-rest-beta) |
|Addition|beta|Added the [autopilotDeviceStream](/graph/api/intune_enrollment_importedwindowsautopilotdeviceidentityupload_autopilotdevicestream.md?view=graph-rest-beta) function on [importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md?view=graph-rest-beta) |
|Deletion|beta|Removed the **uploadDepToken** collection |
|Deletion|beta|Removed the **syncWithAppleDeviceEnrollmentProgram** action on [depOnboardingSetting](/graph/api/resources/intune_enrollment_deponboardingsetting.md?view=graph-rest-beta) collection |
|Deletion|beta|Removed the **getEncryptionPublicKey** function on [depOnboardingSetting](/graph/api/resources/intune_enrollment_deponboardingsetting.md?view=graph-rest-beta) collection |
|Addition|beta|Added the **restrictedApps** property to the [androidForWorkCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidforworkcompliancepolicy.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **vpnAlwaysOnPackageIdentifier** and **vpnEnableAlwaysOnLockdownMode** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **packageName** property from the [androidForWorkMobileAppConfiguration](/graph/api/resources/intune_apps_androidforworkmobileappconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **restrictedApps** property to the [androidWorkProfileCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidworkprofilecompliancepolicy.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **vpnAlwaysOnPackageIdentifier** and **vpnEnableAlwaysOnLockdownMode** properties to the [androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofilegeneraldeviceconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **optInToDeviceIdSharing** property to the [appleVpnConfiguration](/graph/api/resources/intune_deviceconfig_applevpnconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **tokenType**, **tokenName**, **syncedDeviceCount**, **defaultProfileDisplayName** and **dataSharingConsentGranted** properties to the [depOnboardingSetting](/graph/api/resources/intune_enrollment_deponboardingsetting.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** and **supportsScopeTags** properties to the [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **windowsMalwareOverview** property to the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement.md?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [iosCertificateProfileBase](/graph/api/resources/intune_deviceconfig_ioscertificateprofilebase.md?view=graph-rest-beta) entity:<br/>**subjectAlternativeNameType** from required to optional<br/>|
|Addition|beta|Added the **restrictedApps** property to the [iosCompliancePolicy](/graph/api/resources/intune_deviceconfig_ioscompliancepolicy.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore** and **customSubjectAlternativeNames** properties to the [iosScepCertificateProfile](/graph/api/resources/intune_deviceconfig_iosscepcertificateprofile.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **enforcedSoftwareUpdateDelayInDays** property to the [iosUpdateConfiguration](/graph/api/resources/intune_deviceconfig_iosupdateconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **providerType**, **userDomain**, **strictEnforcement**, **cloudName** and **excludeList** properties to the [iosVpnConfiguration](/graph/api/resources/intune_deviceconfig_iosvpnconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **safariBlockAutofill**, **cameraBlocked**, **iTunesBlockMusicService**, **spotlightBlockInternetResults**, **keyboardBlockDictation**, **definitionLookupBlocked**, **appleWatchBlockAutoUnlock**, **iTunesBlockFileSharing**, **iCloudBlockDocumentSync**, **iCloudBlockMail**, **iCloudBlockAddressBook**, **iCloudBlockCalendar**, **iCloudBlockReminders**, **iCloudBlockBookmarks**, **iCloudBlockNotes**, **airDropBlocked**, **passwordBlockModification** and **passwordBlockFingerprintUnlock** properties to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_macosgeneraldeviceconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds**, **windowsActiveMalwareCount**, **windowsRemediatedMalwareCount**, **notes** and **configurationManagerClientHealthState** properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **installStateDetail** property to the [mobileAppInstallStatus](/graph/api/resources/intune_apps_mobileappinstallstatus.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [notificationMessageTemplate](/graph/api/resources/intune_notification_notificationmessagetemplate.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **targetVersion** and **updateVersion** properties to the [officeSuiteApp](/graph/api/resources/intune_apps_officesuiteapp.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **resource** property to the [resourceOperation](/graph/api/resources/intune_rbac_resourceoperation.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **localStorage**, **setPowerPolicies** and **signInOnResume** properties to the [sharedPCConfiguration](/graph/api/resources/intune_deviceconfig_sharedpcconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **configurationManagerComplianceRequired** property to the [windows10CompliancePolicy](/graph/api/resources/intune_deviceconfig_windows10compliancepolicy.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **userRightsAccessCredentialManagerAsTrustedCaller**, **userRightsAllowAccessFromNetwork**, **userRightsBlockAccessFromNetwork**, **userRightsActAsPartOfTheOperatingSystem**, **userRightsLocalLogOn**, **userRightsBackupData**, **userRightsChangeSystemTime**, **userRightsCreateGlobalObjects**, **userRightsCreatePageFile**, **userRightsCreatePermanentSharedObjects**, **userRightsCreateSymbolicLinks**, **userRightsCreateToken**, **userRightsDebugPrograms**, **userRightsRemoteDesktopServicesLogOn**, **userRightsDelegation**, **userRightsGenerateSecurityAudits**, **userRightsImpersonateClient**, **userRightsIncreaseSchedulingPriority**, **userRightsLoadUnloadDrivers**, **userRightsLockMemory**, **userRightsManageAuditingAndSecurityLogs**, **userRightsManageVolumes**, **userRightsModifyFirmwareEnvironment**, **userRightsModifyObjectLabels**, **userRightsProfileSingleProcess**, **userRightsRemoteShutdown**, **userRightsRestoreData**, **userRightsTakeOwnership**, **userRightsRegisterProcessAsService**, **localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients**, **localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers**, **lanManagerAuthenticationLevel** and **lanManagerWorkstationEnableInsecureGuestLogons** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **passwordMinimumAgeInDays**, **tenantLockdownRequireNetworkDuringOutOfBoxExperience** and **dataProtectionBlockDirectMemoryAccess** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **extendedKeyUsages** property to the [windows10PkcsCertificateProfile](/graph/api/resources/intune_deviceconfig_windows10pkcscertificateprofile.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **enableDnsRegistration** and **dnsSuffixes** properties to the [windows10VpnConfiguration](/graph/api/resources/intune_deviceconfig_windows10vpnconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **customSubjectAlternativeNames** property to the [windows81CertificateProfileBase](/graph/api/resources/intune_deviceconfig_windows81certificateprofilebase.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **extractHardwareHash** and **deviceNameTemplate** properties to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune_enrollment_windowsautopilotdeploymentprofile.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **addressableUserName** and **userPrincipalName** properties to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune_enrollment_windowsautopilotdeviceidentity.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **threatState** property to the [windowsDeviceMalwareState](/graph/api/resources/intune_devices_windowsdevicemalwarestate.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **qualityUpdatesPauseStartDateTime**, **featureUpdatesPauseStartDateTime**, **featureUpdatesRollbackWindowInDays**, **qualityUpdatesWillBeRolledBack**, **featureUpdatesWillBeRolledBack**, **qualityUpdatesRollbackStartDateTime** and **featureUpdatesRollbackStartDateTime** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **trustedServerCertificateNames** property to the [windowsWifiEnterpriseEAPConfiguration](/graph/api/resources/intune_deviceconfig_windowswifienterpriseeapconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **defaultIosEnrollmentProfile**, **defaultMacOsEnrollmentProfile**, **enrollmentProfiles** and **importedAppleDeviceIdentities** navigation properties to the [depOnboardingSetting](/graph/api/resources/intune_enrollment_deponboardingsetting.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTags** navigation property to the [deviceAndAppManagementRoleAssignment](/graph/api/resources/intune_rbac_deviceandappmanagementroleassignment.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **advancedThreatProtectionOnboardingStateSummary**, **roleScopeTags** and **importedWindowsAutopilotDeviceIdentityUploads** navigation properties to the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **supportedDeviceTypes** property to the [mobileAppIntentAndStateDetail](/graph/api/resources/intune_troubleshooting_mobileappintentandstatedetail.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **hideEscapeLink** property to the [outOfBoxExperienceSettings](/graph/api/resources/intune_enrollment_outofboxexperiencesettings.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **zscalerPrivateAccess**, **f5Access2018**, **citrixSso** and **paloAltoGlobalProtectV2** members to the [appleVpnConnectionType](/graph/api/resources/intune_deviceconfig_applevpnconnectiontype.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **userAbandonment** member to the [deviceEnrollmentFailureReason](/graph/api/resources/intune_troubleshooting_deviceenrollmentfailurereason.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **blocked** member to the [enrollmentState](/graph/api/resources/intune_enrollment_enrollmentstate.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **microsoft365ManagedMdm** member to the [managementAgentType](/graph/api/resources/intune_devices_managementagenttype.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **domainNameService** member to the [subjectAlternativeNameType](/graph/api/resources/intune_deviceconfig_subjectalternativenametype.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **wpa2Personal** and **wpa2Enterprise** members to the [wiFiSecurityType](/graph/api/resources/intune_deviceconfig_wifisecuritytype.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **enterpriseUnwantedSoftware**, **ransom** and **hipsRule** members to the [windowsMalwareCategory](/graph/api/resources/intune_devices_windowsmalwarecategory.md?view=graph-rest-beta) enum type|

### Outlook calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the [getSchedule](/graph/api/calendar_getschedule.md?view=graph-rest-beta) action, and the [freeBusyError](/graph/api/resources/freebusyerror.md?view=graph-rest-beta), [scheduleInformation](/graph/api/resources/scheduleinformation.md?view=graph-rest-beta), and [scheduleItem](/graph/api/resources/scheduleitem.md?view=graph-rest-beta) complex types to support [getting the free/busy, availability information for users, distribution lists, and resources for a given period of time](outlook-get-free-busy-schedule.md). |

### Outlook mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0        | Added support for the [getMailTips](/graph/api/user_getmailtips?view=graph-rest-1.0) action to get any MailTips for specific recipients. Added the following resources: [automaticRepliesMailTips](/graph/api/resources/automaticrepliesmailtips?view=graph-rest-1.0), [mailTips](/graph/api/resources/mailtips?view=graph-rest-1.0), [mailTipsError](/graph/api/resources/mailtipserror?view=graph-rest-1.0). |

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the **Activated On Shared Computer** property to [getoffice365activationsuserdetail](/graph/api/reportroot_getoffice365activationsuserdetail?view=graph-rest-1.0). |
| Addition    | v1.0    | Added the **Shared Computer Activation** property to [getoffice365activationsusercounts](/graph/api/reportroot_getoffice365activationsusercounts?view=graph-rest-1.0). |

### Security APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta       | Added **activityGroupName**, **cloudAppStates**, **confidence**, and **registryKeyStates** properties to [alert](../api-reference/beta/resources/alert.md ). |
|Deletion|beta| Removed **activityGroupStates**, **applicationStates**, **malwareWasRunning**, **riskScore** and **type** properties from [alert](../api-reference/beta/resources/alert.md ). |
|Change|beta| Changed **comments** type from a `String` to a `String collection`, and changed **severity** type from a `String` to a [alertSeverity](/graph/api/resources/alertseverityenumtype.md?view=graph-rest-beta) enum in [alert](/graph/api/resources/alert.md?view=graph-rest-beta). |
| Addition        | beta       | Added the following resource types: <br/> [cloudAppSecurityState](/graph/api/resources/cloudappsecuritystate.md?view=graph-rest-beta) <br/> [fileHash](/graph/api/resources/filehash.md?view=graph-rest-beta) <br/> [registryKeyState](/graph/api/resources/registrykeystate.md?view=graph-rest-beta) |
|Deletion|beta| Removed the following resource types: <br/> **activityGroupState**  <br/> **applicationSecurityState** |
| Addition        | beta       | Added the following enums: <br/> [alertSeverity](/graph/api/resources/alertseverityenumtype.md?view=graph-rest-beta) <br/> [connectionDirection](/graph/api/resources/connectiondirectionenumtype.md?view=graph-rest-beta) <br/> [connectionStatus](/graph/api/resources/connectionstatusenumtype.md?view=graph-rest-beta) <br/> [emailRole](/graph/api/resources/emailroleenumtype.md?view=graph-rest-beta) <br/> [fileHashType](/graph/api/resources/filehashtypeenumtype.md?view=graph-rest-beta) <br/> [registryHive](/graph/api/resources/registryhiveenumtype.md?view=graph-rest-beta)  <br/> [registryOperation](/graph/api/resources/registryoperationenumtype.md?view=graph-rest-beta) <br/> [registryValueType](/graph/api/resources/registryvaluetypeenumtype.md?view=graph-rest-beta)|
|Deletion|beta| Removed the following enum types: <br/> **alertType** <br/> **applicationPermissionsRequired** |
| Addition        | beta       | Added **fileHash** property to [fileSecurityState](../api-reference/beta/resources/filesecuritystate.md ).|
|Deletion|beta| Removed **authenticodeHash256** and **sha256** properties from [fileSecurityState](/graph/api/resources/filesecuritystate.md?view=graph-rest-beta). |
| Addition | beta | Added **os** property to [hostSecurityState](/graph/api/resources/hostsecuritystate.md?view=graph-rest-beta).|
| Addition | beta | Added **category**, **family**, and **wasRunning** properties to [malwareState](/graph/api/resources/malwarestate.md?view=graph-rest-beta).|
|Deletion|beta| Removed **aliases** property from [malwareState](/graph/api/resources/malwarestate.md?view=graph-rest-beta). |
|Change|beta| Moved **malwareWasRunning** property from  [alert](../api-reference/beta/resources/alert.md ) to [malwareState](/graph/api/resources/malwarestate.md?view=graph-rest-beta) and renamed to **wasRunning**. |
| Addition        | beta       | Added **applicationName**, **destinationDomain**, **direction**, **domainRegisteredDateTime**, **localDnsName**, **natDestinationAddress**, **natDestinationPort**, **natSourceAddress**, **natSourcePort**, **riskScore**, **status**, and **urlParameters** properties to [networkConnection](../api-reference/beta/resources/networkconnection.md ).|
|Change|beta| Changed **uri** property to **destinationUrl** in [networkConnection](../api-reference/beta/resources/networkconnection.md ). |
| Addition        | beta       | Added **fileHash** property to [process](../api-reference/beta/resources/process.md ).|
|Deletion|beta| Removed **authenticodeHash256** and **sha256** properties from [process](../api-reference/beta/resources/process.md ). |
| Addition        | beta       | Added **aadUserId**, **emailRole**, **isVpn**, and **logonIp** properties to [userSecurityState](/graph/api/resources/usersecuritystate.md?view=graph-rest-beta).|
|Change|beta| Changed **logonIpAddress** property to **logonIp** in [userSecurityState](/graph/api/resources/usersecuritystate.md?view=graph-rest-beta). |
| Addition        | beta       | Added **wasRunning** property to [vulnerabilityState](/graph/api/resources/vulnerabilitystate.md?view=graph-rest-beta).|
|Deletion|beta| Removed **name** property from [vulnerabilityState](/graph/api/resources/vulnerabilitystate.md?view=graph-rest-beta). |

## July 2018

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Change|beta|Updated [chatmessage](/graph/api/resources/chatmessage.md?view=graph-rest-beta) resource|
|Addition|beta|Added [Chat attachment](/graph/api/resources/chatattachment.md?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat mention](/graph/api/resources/chatattachment.md?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat reaction](/graph/api/resources/chatattachment.md?view=graph-rest-beta) resource type|
|Addition|beta|Added [Get all channel messages API](/graph/api/channel_list_messages.md?view=graph-rest-beta) |
|Addition|beta|Added [Get channel message API](/graph/api/channel_get_message.md?view=graph-rest-beta) |
|Addition|beta|Added [Get all message replies API](/graph/api/channel_list_messagereplies.md?view=graph-rest-beta) |
|Addition|beta|Added [Get reply to a message API](/graph/api/channel_get_messagereply.md?view=graph-rest-beta) |

### Synchronization APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added **progress** property to [sychronizationStatus](/graph/api/resources/synchronization_synchronizationstatus.md?view=graph-rest-beta) to permit clients to monitor the progress of a synchronization job.|

### Application and servicePrincipal API changes

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | The [application](/graph/api/resources/application?view=graph-rest-beta) and [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta) APIs will be updated in preview (beta). The first set of changes will be applied on July 16, 2018. The changes include property renaming and restructuring. Most of the existing properties will not be available until the changes are completed. There will be new properties added. The changes will be released in preview (beta) prior to releasing to v1.0. |

### Microsoft Teams APIs
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added application permissions support to [/users/{id}/joinedTeams](/graph/api/user_list_joinedteams.md?view=graph-rest-beta) |
|Addition|beta|Added [Get all channel messages API](/graph/api/channel_list_messages.md?view=graph-rest-beta) |
|Addition|beta|Added [Get channel message API](/graph/api/channel_get_message.md?view=graph-rest-beta) |
|Addition|beta|Added [Get all message replies API](/graph/api/channel_list_messagereplies.md?view=graph-rest-beta) |
|Addition|beta|Added [Get reply to a message API](/graph/api/channel_get_messagereply.md?view=graph-rest-beta) |
|Addition|beta|Added [Chat attachment](/graph/api/resources/chatattachment.md?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat mention](/graph/api/resources/chatattachment.md?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat reaction](/graph/api/resources/chatattachment.md?view=graph-rest-beta) resource type|
|Change|beta|Updated [chatmessage](/graph/api/resources/chatmessage.md?view=graph-rest-beta)) resource|
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
|Addition|beta|Added API to [list all teams in organization](../concepts/teams_list_all_teams.md). |

### Outlook contacts
| **Change type** | **Version**   | **Description**                          |
|:--------------- |:------------- |:---------------------------------------- |
|Addition |Beta | Added the complex type [typedEmailAddress](/graph/api/resources/typedemailaddress.md?view=graph-rest-beta). |
|Change | Beta | Changed the type of the **emailAddresses** property of [contact](/graph/api/resources/contact.md?view=graph-rest-beta) to be a collection of **typedEmailAddress** instances.|

### Webhooks
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Breaking change | Beta and v1.0 | Reduced [webhooks](/graph/api/resources/webhooks?view=graph-rest-1.0) [maximum length of subscription expiration time](/graph/api/resources/subscription.md#maximum-length-of-subscription-per-resource-type?view=graph-rest-1.0) for drive root items to 3 days. |


## June 2018

### Identity and access APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [access reviews](/graph/api/resources/accessreviews_root.md?view=graph-rest-beta) feature to [Azure AD](/graph/api/resources/azure_ad_overview.md?view=graph-rest-beta). |

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | All | New application permissions _Application.ReadWrite.All_ and _Application.ReadWrite.OwnedBy_ that allows a client app to create, read, update, and delete applications and service principals as described in the [permissions topic](permissions_reference.md#application-resource-permissions). |
| Addition | v1.0 | Added **ageGroup**, **legalAgeGroupClassification**, and **ConsentRequiredForMinor** properties to [user](/graph/api/resources/user?view=graph-rest-1.0) resource

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added the **connectorServerName** property to the [deviceManagementExchangeConnector](/graph/api/resources/intune_onboarding_devicemanagementexchangeconnector?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **firewallEnabled**, **firewallBlockAllIncoming** and **firewallEnableStealthMode** properties to the [macOSCompliancePolicy](/graph/api/resources/intune_deviceconfig_macoscompliancepolicy?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **unknown** member to the [iosUpdatesInstallStatus](/graph/api/resources/intune_deviceconfig_iosupdatesinstallstatus?view=graph-rest-1.0) enum type|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerWiFiConfiguration](/graph/api/resources/intune_deviceconfig_androiddeviceownerwificonfiguration.md?view=graph-rest-beta)<br/>[iosVppAppAssignedDeviceLicense](/graph/api/resources/intune_apps_iosvppappassigneddevicelicense.md?view=graph-rest-beta)<br/>[iosVppAppAssignedLicense](/graph/api/resources/intune_apps_iosvppappassignedlicense.md?view=graph-rest-beta)<br/>[iosVppAppAssignedUserLicense](/graph/api/resources/intune_apps_iosvppappassigneduserlicense.md?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationState](/graph/api/resources/intune_deviceconfig_manageddevicemobileappconfigurationstate.md?view=graph-rest-beta)<br/>[userPFXCertificate](/graph/api/resources/intune_raimportcerts_userpfxcertificate.md?view=graph-rest-beta)<br/>[vppTokenLicenseSummary](/graph/api/resources/intune_onboarding_vppTokenLicenseSummary.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[iosVppAppRevokeLicensesActionResult](/graph/api/resources/intune_apps_iosvppapprevokelicensesactionresult.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidDeviceOwnerSystemUpdateInstallType](/graph/api/resources/intune_deviceconfig_androiddeviceownersystemupdateinstalltype.md?view=graph-rest-beta)<br/>[androidDeviceOwnerWiFiSecurityType](/graph/api/resources/intune_deviceconfig_androiddeviceownerwifisecuritytype.md?view=graph-rest-beta)<br/>[userPfxIntendedPurpose](/graph/api/resources/intune_raimportcerts_userpfxintendedpurpose.md?view=graph-rest-beta)<br/>[userPfxPaddingScheme](/graph/api/resources/intune_raimportcerts_userpfxpaddingscheme.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [createGooglePlayWebToken](/graph/api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_creategoogleplaywebtoken.md?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md?view=graph-rest-beta) |
|Addition|beta|Added the [revokeAllLicenses](/graph/api/intune_apps_iosvppapp_revokealllicenses.md?view=graph-rest-beta) action on [iosVppApp](/graph/api/resources/intune_apps_iosvppapp.md?view=graph-rest-beta) |
|Addition|beta|Added the [revokeUserLicense](/graph/api/intune_apps_iosvppapp_revokeuserlicense.md?view=graph-rest-beta) action on [iosVppApp](/graph/api/resources/intune_apps_iosvppapp.md?view=graph-rest-beta) |
|Addition|beta|Added the [revokeDeviceLicense](/graph/api/intune_apps_iosvppapp_revokedevicelicense.md?view=graph-rest-beta) action on [iosVppApp](/graph/api/resources/intune_apps_iosvppapp.md?view=graph-rest-beta) |
|Addition|beta|Added the [sendCustomNotificationToCompanyPortal](/graph/api/intune_shared_devicemanagement_sendcustomnotificationtocompanyportal.md?view=graph-rest-beta) action on [deviceManagement](/graph/api/resources/intune_shared_devicemanagement.md?view=graph-rest-beta) |
|Addition|beta|Added the **getLicensesForApp** function on [vppToken](/graph/api/resources/intune_onboarding_vpptoken.md?view=graph-rest-beta) collection |
|Deletion|beta|Removed the following enum types:<br/>**windowsUpdateInsiderBuildControl**<br/>|
|Addition|beta|Added the **systemUpdateWindowStartMinutesAfterMidnight**, **systemUpdateWindowEndMinutesAfterMidnight** and **systemUpdateInstallType** properties to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md?view=graph-rest-beta) entity|
|Change|beta|Changed the type of the following properties on the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md?view=graph-rest-beta) entity:<br/>**passwordMinutesOfInactivityBeforeScreenTimeout** from Int64 to Int32<br/>|
|Addition|beta|Added the **customKeyValueData** property to the [androidForWorkVpnConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkvpnconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **customKeyValueData** property to the [androidVpnConfiguration](/graph/api/resources/intune_deviceconfig_androidvpnconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **customKeyValueData** property to the [androidWorkProfileVpnConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofilevpnconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **customKeyValueData** property to the [appleVpnConfiguration](/graph/api/resources/intune_deviceconfig_applevpnconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **userId** and **userPrincipalName** properties to the [deviceCompliancePolicyState](/graph/api/resources/intune_deviceconfig_devicecompliancepolicystate.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **userId** and **userPrincipalName** properties to the [deviceConfigurationState](/graph/api/resources/intune_deviceconfig_deviceconfigurationstate.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **connectorServerName** property to the [deviceManagementExchangeConnector](/graph/api/resources/intune_onboarding_devicemanagementexchangeconnector.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **settingXml** property from the [iosMobileAppConfiguration](/graph/api/resources/intune_apps_iosmobileappconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **vppTokenId** and **revokeLicenseActionResults** properties to the [iosVppApp](/graph/api/resources/intune_apps_iosvppapp.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **firewallEnabled**, **firewallBlockAllIncoming** and **firewallEnableStealthMode** properties to the [macOSCompliancePolicy](/graph/api/resources/intune_deviceconfig_macoscompliancepolicy.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **remoteAssistanceSessionErrorString** property from the [managedDevice](/graph/api/resources/intune_devices_manageddevice.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **antivirusRequired** and **antiSpywareRequired** properties to the [windows10CompliancePolicy](/graph/api/resources/intune_deviceconfig_windows10compliancepolicy.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **defenderOfficeAppsOtherProcessInjection**, **defenderOfficeAppsExecutableContentCreationOrLaunch**, **defenderOfficeAppsLaunchChildProcess**, **defenderOfficeMacroCodeAllowWin32Imports**, **defenderScriptObfuscatedMacroCode**, **defenderScriptDownloadedPayloadExecution**, **defenderProcessCreation**, **defenderUntrustedUSBProcess**, **defenderUntrustedExecutable** and **defenderEmailContentExecution** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **searchDisableLocation**, **inkWorkspaceAccessState**, **defenderPotentiallyUnwantedAppActionSetting** and **defenderCloudExtendedTimeoutInSeconds** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **updatesMinimumAutoInstallClassification** property to the [windows81GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows81generalconfiguration.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **previewBuildSetting** property from the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **userPfxCertificates** navigation property to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **assignedLicenses** navigation property to the [iosVppApp](/graph/api/resources/intune_apps_iosvppapp.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceMobileAppConfigurationStates** navigation property to the [managedDevice](/graph/api/resources/intune_devices_manageddevice.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **websiteList** property to the [iosWebContentFilterSpecificWebsitesAccess](/graph/api/resources/intune_deviceconfig_ioswebcontentfilterspecificwebsitesaccess.md?view=graph-rest-beta) complex type|
|Addition|beta|Added the **androidWorkProfile** member to the [devicePlatformType](/graph/api/resources/intune_deviceconfig_deviceplatformtype.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **notConfigured** member to the [editionUpgradeLicenseType](/graph/api/resources/intune_deviceconfig_editionupgradelicensetype.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **unknown** member to the [iosUpdatesInstallStatus](/graph/api/resources/intune_deviceconfig_iosupdatesinstallstatus.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **userRequestedInstall** member to the [mobileAppActionType](/graph/api/resources/intune_troubleshooting_mobileappactiontype.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **notConfigured** member to the [windows10EditionType](/graph/api/resources/intune_deviceconfig_windows10editiontype.md?view=graph-rest-beta) enum type

### Microsoft Teams APIs
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition         | Beta          | Added team [archive](/graph/api/team_archive.md?view=graph-rest-beta) and [unarchive](/graph/api/team_unarchive.md?view=graph-rest-beta) APIs.|
|Addition         | Beta          | Added team [clone](/graph/api/team_clone.md?view=graph-rest-beta) operation. |
|Addition         | Beta          | Added APIs to add and remove [apps](/graph/api/resources/teamsapp.md?view=graph-rest-beta) to teams. |
|Change|Beta|Updated the path to the [team](/graph/api/resources/team.md?view=graph-rest-beta) entity.|
|Change|Beta|Updated the path to the [channel](/graph/api/resources/channel.md?view=graph-rest-beta) entity.|


### Privileged Identity Management APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [privilegedAccess](/graph/api/resources/privilegedaccess.md?view=graph-rest-beta) entity.|
| Addition | beta | Added the [governanceResource](/graph/api/resources/governanceresource.md?view=graph-rest-beta) entity, and the following methods and actions: <br> [List](/graph/api/governanceresource_list.md?view=graph-rest-beta) <br> [Get](/graph/api/governanceresource_get.md?view=graph-rest-beta)<br>|
| Addition | beta | Added the [governanceSubject](/graph/api/resources/governancesubject.md?view=graph-rest-beta) entity.|
| Addition | beta | Added the [governanceRoleDefinition](/graph/api/resources/governanceroledefinition.md?view=graph-rest-beta) entity, and tollowing methods and actions:<br> [List](/graph/api/governanceroledefinition_list.md?view=graph-rest-beta) <br> [Get](/graph/api/governanceroledefinition_get.md?view=graph-rest-beta) |
| Addition | beta | Added the [governanceRoleAssignment](/graph/api/resources/governanceroleassignment.md?view=graph-rest-beta) entity, and following methods and actions:<br> [List](/graph/api/governanceroleassignment_list.md?view=graph-rest-beta) <br> [Get](/graph/api/governanceroleassignment_get.md?view=graph-rest-beta) <br> [Export](/graph/api/governanceroleassignment_export.md?view=graph-rest-beta) |
| Addition | beta | Added the [governanceRoleAssignmentRequest](/graph/api/resources/governanceroleassignmentrequest.md?view=graph-rest-beta) entity, and following methods and actions:<br> [List](/graph/api/governanceroleassignmentrequest_list.md?view=graph-rest-beta) <br> [Get](/graph/api/governanceroleassignmentrequest_get.md?view=graph-rest-beta) <br> [Create](/graph/api/governanceroleassignmentrequest_post.md?view=graph-rest-beta) <br> [Cancel](/graph/api/governanceroleassignmentrequest_cancel.md?view=graph-rest-beta) <br> [Update](/graph/api/governanceroleassignmentrequest_update.md?view=graph-rest-beta) |
| Addition | beta | Added the [governanceRoleSetting](/graph/api/resources/governancerolesetting.md?view=graph-rest-beta) entity, and the following methods and actions:<br> [List](/graph/api/governancerolesetting_list.md?view=graph-rest-beta) <br> [Get](/graph/api/governancerolesetting_get.md?view=graph-rest-beta) <br> [Update](/graph/api/governancerolesetting_update.md?view=graph-rest-beta) |
| Addition | beta | Added the following complex types: <br> [governancePermission](/graph/api/resources/governancepermission.md?view=graph-rest-beta) <br> [governanceRoleAssignmentRequestStatus](/graph/api/resources/governanceroleassignmentrequeststatus.md?view=graph-rest-beta) <br> [governanceRuleSetting](/graph/api/resources/governancerulesetting.md?view=graph-rest-beta) <br> [governanceSchedule](/graph/api/resources/governanceschedule.md?view=graph-rest-beta)|

### Security APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | beta        | Added new enum types:<br/>[alertFeedback](/graph/api/resources/alertfeedbackenumtype.md?view=graph-rest-beta)<br/>[alertStatus](/graph/api/resources/alertstatusenumtype.md?view=graph-rest-beta)<br/>[alertType](/graph/api/resources/alerttypeenumtype.md?view=graph-rest-beta)<br/>[applicationPermissionsRequired](/graph/api/resources/applicationpermissionsrequiredenumtype.md?view=graph-rest-beta)<br/>[logonType](/graph/api/resources/logontypeenumtype.md?view=graph-rest-beta)<br/>[processIntegrityLevel](/graph/api/resources/processintegritylevelenumtype.md?view=graph-rest-beta)<br/>[securityNetworkProtocol](/graph/api/resources/securitynetworkprotocolenumtype.md?view=graph-rest-beta)<br/>[userAccountSecurityType](/graph/api/resources/useraccountsecuritytypeenumtype.md?view=graph-rest-beta)<br/>

## May 2018

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0        | Added [List deleted items owned by a user](/graph/api/directory_deleteditems_user_owned?view=graph-rest-1.0) action to [directory (deleted items)](/graph/api/resources/directory?view=graph-rest-1.0) resource |
| Addition | beta | Added the [getUserOwnedObjects](/graph/api/directory_deleteditems_user_owned.md?view=graph-rest-beta) function to the [directory](/graph/api/resources/directory.md?view=graph-rest-beta) resource to list the deleted groups owned by a given user. |

### Education API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | The scope **Members.Read.Hidden** is required to read or update the **Members** collection on an [educationClass](/graph/api/resources/educationclass?view=graph-rest-1.0) entity using app-only tokens. |
|Change           |Beta           |Updated the possible values of **educationSubmissionStatus** type in the status property of  [educationsubmission](/graph/api/resources/educationsubmission.md?view=graph-rest-beta).|
|Change           |Beta           |Added the **educationAssignmentIndividualRecipient** complex type to the assignTo property of [educationAssignment](/graph/api/resources/educationassignment.md?view=graph-rest-beta).|
|Change           |Beta           |Added the **unsubmittedBy**, **unsubmittedDate**, **returnedBy**, **returnedDate** property of [educationSubmission](/graph/api/resources/educationsubmission.md?view=graph-rest-beta).|
|Addition         |Beta           |Added the [return](/graph/api/educationSubmission_return.md?view=graph-rest-beta) and  [unsubmit](/graph/api/educationSubmission_unsubmit.md?view=graph-rest-beta) action to [educationSubmission](/graph/api/resources/educationsubmission.md?view=graph-rest-beta).|
|Change           |Beta           |Removed the release and  recall action on [educationSubmission](/graph/api/resources/educationsubmission.md?view=graph-rest-beta).|

### Groups

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | Added the **importance** property to the [post](/graph/api/resources/post?view=graph-rest-1.0) entity. |

### Microsoft Bookings API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added the [bookingBusiness](/graph/api/resources/bookingbusiness.md?view=graph-rest-beta) entity and the following CRUD methods and actions: <br> [List](/graph/api/bookingbusiness_list.md?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness_post_bookingbusinesses.md?view=graph-rest-beta) <br> [Get](/graph/api/bookingbusiness_get.md?view=graph-rest-beta) <br> [Update](/graph/api/bookingbusiness_update.md?view=graph-rest-beta) <br> [Delete](/graph/api/bookingbusiness_delete.md?view=graph-rest-beta) <br> [Publish](/graph/api/bookingbusiness_publish.md?view=graph-rest-beta) <br> [Unpublish](/graph/api/bookingbusiness_unpublish.md?view=graph-rest-beta). <br> Find out more about integrating with the [Microsoft Bookings API](booking-concept-overview.md). |
| Addition        | Beta          | Added the [bookingAppointment](/graph/api/resources/bookingappointment.md?view=graph-rest-beta) entity and the following CRUD methods and action: <br> [List](/graph/api/bookingbusiness_list_appointments.md?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness_post_appointments.md?view=graph-rest-beta) <br> [Get](/graph/api/bookingappointment_get.md?view=graph-rest-beta) <br> [Update](/graph/api/bookingappointment_update.md?view=graph-rest-beta) <br> [Delete](/graph/api/bookingappointment_delete.md?view=graph-rest-beta) <br> [Cancel](/graph/api/bookingappointment_cancel.md?view=graph-rest-beta). |
| Addition        | Beta          | Added the [bookingCurrency](/graph/api/resources/bookingcurrency.md?view=graph-rest-beta) entity and the following methods: <br> [List](/graph/api/bookingcurrency_list.md?view=graph-rest-beta) <br> [Get](/graph/api/bookingcurrency_get.md?view=graph-rest-beta). |
| Addition        | Beta          | Added the [bookingCustomer](/graph/api/resources/bookingcustomer.md?view=graph-rest-beta) entity and the following CRUD methods: <br> [List](/graph/api/bookingbusiness_list_customers.md?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness_post_customers.md?view=graph-rest-beta) <br> [Get](/graph/api/bookingcustomer_get.md?view=graph-rest-beta) <br> [Update](/graph/api/bookingcustomer_update.md?view=graph-rest-beta) <br> [Delete](/graph/api/bookingcustomer_delete.md?view=graph-rest-beta).|
| Addition        | Beta          | Added the [bookingService](/graph/api/resources/bookingservice.md?view=graph-rest-beta) entity and the following CRUD methods: <br> [List](/graph/api/bookingbusiness_list_services.md?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness_post_services.md?view=graph-rest-beta) <br> [Get](/graph/api/bookingservice_get.md?view=graph-rest-beta) <br> [Update](/graph/api/bookingservice_update.md?view=graph-rest-beta) <br> [Delete](/graph/api/bookingservice_delete.md?view=graph-rest-beta).|
| Addition        | Beta          | Added the [bookingStaffMember](/graph/api/resources/bookingstaffmember.md?view=graph-rest-beta) entity and the following CRUD methods: <br> [List](/graph/api/bookingbusiness_list_staffmembers.md?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness_post_staffmembers.md?view=graph-rest-beta) <br> [Get](/graph/api/bookingstaffmember_get.md?view=graph-rest-beta) <br> [Update](/graph/api/bookingstaffmember_update.md?view=graph-rest-beta) <br> [Delete](/graph/api/bookingstaffmember_delete.md?view=graph-rest-beta).|
| Addition        | Beta          | Added the following complex types: <br> [bookingNamedEntity](/graph/api/resources/bookingnamedentity.md?view=graph-rest-beta) <br> [bookingPerson](/graph/api/resources/bookingperson.md?view=graph-rest-beta) <br> [bookingReminder](/graph/api/resources/bookingreminder.md?view=graph-rest-beta) <br> [bookingWorkHours](/graph/api/resources/bookingworkhours.md?view=graph-rest-beta) <br> [bookingWorkTimeSlot](/graph/api/resources/bookingworktimeslot.md?view=graph-rest-beta).|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidWorkProfileCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidworkprofilecompliancepolicy.md?view=graph-rest-beta)<br/>[easEmailProfileConfigurationBase](/graph/api/resources/intune_deviceconfig_easemailprofileconfigurationbase.md?view=graph-rest-beta)<br/>[mobileAppIntentAndState](/graph/api/resources/intune_troubleshooting_mobileappintentandstate.md?view=graph-rest-beta)<br/>[mobileAppTroubleshootingEvent](/graph/api/resources/intune_troubleshooting_mobileapptroubleshootingevent.md?view=graph-rest-beta)<br/>[unsupportedDeviceConfiguration](/graph/api/resources/intune_deviceconfig_unsupporteddeviceconfiguration.md?view=graph-rest-beta)<br/>[windowsKioskConfiguration](/graph/api/resources/intune_deviceconfig_windowskioskconfiguration.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[managedDeviceCleanupSettings](/graph/api/resources/intune_devices_manageddevicecleanupsettings.md?view=graph-rest-beta)<br/>[mobileAppIntentAndStateDetail](/graph/api/resources/intune_troubleshooting_mobileappintentandstatedetail.md?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppPolicyCreationHistory](/graph/api/resources/intune_troubleshooting_mobileapptroubleshootingapppolicycreationhistory.md?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppStateHistory](/graph/api/resources/intune_troubleshooting_mobileapptroubleshootingappstatehistory.md?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppTargetHistory](/graph/api/resources/intune_troubleshooting_mobileapptroubleshootingapptargethistory.md?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppUpdateHistory](/graph/api/resources/intune_troubleshooting_mobileapptroubleshootingappupdatehistory.md?view=graph-rest-beta)<br/>[mobileAppTroubleshootingDeviceCheckinHistory](/graph/api/resources/intune_troubleshooting_mobileapptroubleshootingdevicecheckinhistory.md?view=graph-rest-beta)<br/>[mobileAppTroubleshootingHistoryItem](/graph/api/resources/intune_troubleshooting_mobileapptroubleshootinghistoryitem.md?view=graph-rest-beta)<br/>[unsupportedDeviceConfigurationDetail](/graph/api/resources/intune_deviceconfig_unsupporteddeviceconfigurationdetail.md?view=graph-rest-beta)<br/>**windowsAutoPilotEnrollmentSettings**<br/>[windowsKioskActiveDirectoryGroup](/graph/api/resources/intune_deviceconfig_windowskioskactivedirectorygroup.md?view=graph-rest-beta)<br/>[windowsKioskAppBase](/graph/api/resources/intune_deviceconfig_windowskioskappbase.md?view=graph-rest-beta)<br/>[windowsKioskAppConfiguration](/graph/api/resources/intune_deviceconfig_windowskioskappconfiguration.md?view=graph-rest-beta)<br/>[windowsKioskAutologon](/graph/api/resources/intune_deviceconfig_windowskioskautologon.md?view=graph-rest-beta)<br/>[windowsKioskAzureADGroup](/graph/api/resources/intune_deviceconfig_windowskioskazureadgroup.md?view=graph-rest-beta)<br/>[windowsKioskAzureADUser](/graph/api/resources/intune_deviceconfig_windowskioskazureaduser.md?view=graph-rest-beta)<br/>[windowsKioskDesktopApp](/graph/api/resources/intune_deviceconfig_windowskioskdesktopapp.md?view=graph-rest-beta)<br/>[windowsKioskLocalGroup](/graph/api/resources/intune_deviceconfig_windowskiosklocalgroup.md?view=graph-rest-beta)<br/>[windowsKioskLocalUser](/graph/api/resources/intune_deviceconfig_windowskiosklocaluser.md?view=graph-rest-beta)<br/>[windowsKioskMultipleApps](/graph/api/resources/intune_deviceconfig_windowskioskmultipleapps.md?view=graph-rest-beta)<br/>[windowsKioskProfile](/graph/api/resources/intune_deviceconfig_windowskioskprofile.md?view=graph-rest-beta)<br/>[windowsKioskSingleUWPApp](/graph/api/resources/intune_deviceconfig_windowskiosksingleuwpapp.md?view=graph-rest-beta)<br/>[windowsKioskUser](/graph/api/resources/intune_deviceconfig_windowskioskuser.md?view=graph-rest-beta)<br/>[windowsKioskUWPApp](/graph/api/resources/intune_deviceconfig_windowskioskuwpapp.md?view=graph-rest-beta)<br/>[windowsKioskVisitor](/graph/api/resources/intune_deviceconfig_windowskioskvisitor.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[defenderScheduleScanDay](/graph/api/resources/intune_deviceconfig_defenderschedulescanday.md?view=graph-rest-beta)<br/>[defenderSubmitSamplesConsentType](/graph/api/resources/intune_deviceconfig_defendersubmitsamplesconsenttype.md?view=graph-rest-beta)<br/>[domainNameSource](/graph/api/resources/intune_deviceconfig_domainnamesource.md?view=graph-rest-beta)<br/>[localSecurityOptionsSmartCardRemovalBehaviorType](/graph/api/resources/intune_deviceconfig_localsecurityoptionssmartcardremovalbehaviortype.md?view=graph-rest-beta)<br/>[mobileAppActionType](/graph/api/resources/intune_troubleshooting_mobileappactiontype.md?view=graph-rest-beta)<br/>[mobileAppIntent](/graph/api/resources/intune_troubleshooting_mobileappintent.md?view=graph-rest-beta)<br/>[roleAssignmentScopeType](/graph/api/resources/intune_rbac_roleassignmentscopetype.md?view=graph-rest-beta)<br/>[usernameSource](/graph/api/resources/intune_deviceconfig_usernamesource.md?view=graph-rest-beta)<br/>[windowsDeviceUsageType](/graph/api/resources/intune_enrollment_windowsdeviceusagetype.md?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [setDeviceName](/graph/api/intune_devices_manageddevice_setdevicename.md?view=graph-rest-beta)<br/>action on [managedDevice](/graph/api/resources/intune_devices_manageddevice.md?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**depEnrollmentProfile**<br/>**enrollmentProfile**<br/>**importedAppleDeviceIdentity**<br/>**importedAppleDeviceIdentityResult**<br/>|
|Deletion|beta|Removed the following complex types:<br/>**managementCertificateWithThumbprint**<br/>|
|Deletion|beta|Removed the following enum types:<br/>**depTokenType**<br/>**discoverySource**<br/>**iTunesPairingMode**<br/>|
|Deletion|beta|Removed the importAppleDeviceIdentityList action on [importedAppleDeviceIdentity](/graph/api/resources/intune_corpenrollment_importedappledeviceidentity.md?view=graph-rest-beta) collection |
|Deletion|beta|Removed the [updateDeviceProfileAssignment](/graph/api/intune_corpenrollment_enrollmentprofile_updatedeviceprofileassignment.md?view=graph-rest-beta) action on [enrollmentProfile](/graph/api/resources/intune_corpenrollment_enrollmentprofile.md?view=graph-rest-beta) |
|Deletion|beta|Removed the setDefaultProfile action on [enrollmentProfile](/graph/api/resources/intune_corpenrollment_enrollmentprofile.md?view=graph-rest-beta) |
|Deletion|beta|Removed the shareForSchoolDataSyncService action on [depOnboardingSetting](/graph/api/resources/intune_onboarding_deponboardingsetting.md?view=graph-rest-beta) |
|Deletion|beta|Removed the unshareForSchoolDataSyncService action on [depOnboardingSetting](/graph/api/resources/intune_onboarding_deponboardingsetting.md?view=graph-rest-beta) |
|Deletion|beta|Removed the exportMobileConfig](/graph/api/intune_corpenrollment_enrollmentprofile_exportmobileconfig.md?view=graph-rest-beta) function on [enrollmentProfile](/graph/api/resources/intune_corpenrollment_enrollmentprofile.md?view=graph-rest-beta) |
|Addition|beta|Added the **userDomainNameSource** and **customDomainName** properties to the [androidEasEmailProfileConfiguration](/graph/api/resources/intune_deviceconfig_androideasemailprofileconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **workProfileBlockCamera** and **workProfileBlockCrossProfileContactsSearch** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **workProfileBlockCamera** and **workProfileBlockCrossProfileContactsSearch** properties to the [androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofilegeneraldeviceconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **thirdPartyKeyboardsBlocked** and **filterOpenInToOnlyManagedApps** properties to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **conflictCount** property to the [deviceComplianceUserOverview](/graph/api/resources/intune_deviceconfig_devicecomplianceuseroverview.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **conflictCount** property to the [deviceConfigurationUserOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationuseroverview.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceCleanupSettings** property to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **usernameSource** property from the [iosEasEmailProfileConfiguration](/graph/api/resources/intune_deviceconfig_ioseasemailprofileconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **thirdPartyKeyboardsBlocked** and **filterOpenInToOnlyManagedApps** properties to the [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **ignoreVersionDetection** property to the [macOSLobApp](/graph/api/resources/intune_apps_macoslobapp.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **pinRequiredOnLaunchInsteadOfBiometric** and **pinRequiredInsteadOfBiometricTimeout** properties to the [managedAppProtection](/graph/api/resources/intune_mam_managedappprotection.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **autopilotEnrolled**, **requireUserEnrollmentApproval**, **iccid** and **udid** properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **isAutopilotEnrolled** property from the [managedDevice](/graph/api/resources/intune_devices_manageddevice.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [managedDeviceMobileAppConfigurationDeviceSummary](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **conflictCount** property to the [managedDeviceMobileAppConfigurationUserSummary](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationusersummary.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **scopeType** property to the [roleAssignment](/graph/api/resources/intune_rbac_roleassignment.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **usernameSource** property from the [windows10EasEmailProfileConfiguration](/graph/api/resources/intune_deviceconfig_windows10easemailprofileconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees**, **localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers**, **localSecurityOptionsDisableServerDigitallySignCommunicationsAlways**, **localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees**, **localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares**, **localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts**, **localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares**, **localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange** and **localSecurityOptionsSmartCardRemovalBehavior** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **showInstallationProgress**, **blockDeviceSetupRetryByUser**, **allowDeviceResetOnInstallFailure**, **allowLogCollectionOnInstallFailure**, **customErrorMessage**, **installProgressTimeoutInMinutes** and **allowDeviceUseOnInstallFailure** properties to the [windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **title**, **bodyText**, **moreInfoUrl** and **moreInfoText** properties from the [windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **defenderBlockOnAccessProtection**, **defenderScheduleScanDay** and **defenderSubmitSamplesConsentType** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **language** and **enrollmentSettings** properties to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune_enrollment_windowsautopilotdeploymentprofile.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **useDeviceContext** property to the [windowsMobileMSI](/graph/api/resources/intune_apps_windowsmobilemsi.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **usernameSource** property from the [windowsPhoneEASEmailProfileConfiguration](/graph/api/resources/intune_deviceconfig_windowsphoneeasemailprofileconfiguration.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **localActions** navigation property from the [androidCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidcompliancepolicy.md?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **enrollmentProfiles** and **importedAppleDeviceIdentities** navigation properties from the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **mobileAppIntentAndStates** and **mobileAppTroubleshootingEvents** navigation properties to the [user](/graph/api/resources/intune_shared_user.md?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceUsageType** and **skipKeyboardSelectionPage** properties to the [outOfBoxExperienceSettings](/graph/api/resources/intune_enrollment_outofboxexperiencesettings.md?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **paloAltoGlobalProtect** member from the [androidForWorkVpnConnectionType](/graph/api/resources/intune_deviceconfig_androidforworkvpnconnectiontype.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **samAccountName** and **primarySmtpAddress** members to the [androidUsernameSource](/graph/api/resources/intune_deviceconfig_androidusernamesource.md?view=graph-rest-beta) enum type|
|Deletion|beta|Removed the **paloAltoGlobalProtect** member from the [androidVpnConnectionType](/graph/api/resources/intune_deviceconfig_androidvpnconnectiontype.md?view=graph-rest-beta) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [windows10VpnConnectionType](/graph/api/resources/intune_deviceconfig_windows10vpnconnectiontype.md?view=graph-rest-beta) enum type|

### Insights API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added the [settings](/graph/api/resources/user_settings.md?view=graph-rest-beta) entity and the following CRUD methods: <br> [Get](/graph/api/user_get_settings.md?view=graph-rest-beta) <br> [Update](/graph/api/user_update_settings.md?view=graph-rest-beta) |

### Azure AD APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change           | Beta          | Renamed the **creatorUserId** property of the [subscription](/graph/api/resources/subscription?view=graph-rest-beta) entity to **creatorId** to better reflect its meaning. |

## April 2018

### Audit log API

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added the [directoryAudit](/graph/api/resources/directoryaudit.md?view=graph-rest-beta) and [signIn](/graph/api/resources/signin.md?view=graph-rest-beta) entities to support a new audit log API. |
|Addition|Beta|Added the following resources to support the audit log API: [appIndentity](/graph/api/resources/appidentity.md?view=graph-rest-beta), [auditActivityInitiator](/graph/api/resources/auditactivityinitiator.md?view=graph-rest-beta), [conditionalAccessPolicy](/graph/api/resources/conditionalaccesspolicy.md?view=graph-rest-beta), [deviceDetail](/graph/api/resources/devicedetail.md?view=graph-rest-beta), [mfaDetail](/graph/api/resources/mfadetail.md?view=graph-rest-beta), [modifiedProperty](/graph/api/resources/modifiedproperty.md?view=graph-rest-beta), [signinLocation](/graph/api/resources/signinlocation.md?view=graph-rest-beta), [signinStatus](/graph/api/resources/signinstatus.md?view=graph-rest-beta), [targetResource](/graph/api/resources/targetresource.md?view=graph-rest-beta), [targetResourceApp](/graph/api/resources/targetresourceapp.md?view=graph-rest-beta), [targetResourceDevice](/graph/api/resources/targetresourcedevice.md?view=graph-rest-beta), [targetResourceDirectory](/graph/api/resources/targetresourcedirectory.md?view=graph-rest-beta), [targetResourceGroup](/graph/api/resources/targetresourcegroup.md?view=graph-rest-beta), [targetResourceOther](/graph/api/resources/targetresourceother.md?view=graph-rest-beta), [targetResourcePolicy](/graph/api/resources/targetresourcepolicy.md?view=graph-rest-beta), [targetResourceRole](/graph/api/resources/targetresourcerole.md?view=graph-rest-beta), [targetResourceServicePrincipal](/graph/api/resources/targetresourceserviceprincipal.md?view=graph-rest-beta), [targetResourceUser](/graph/api/resources/targetresourceuser.md?view=graph-rest-beta), [userIdentity](/graph/api/resources/useridentity.md?view=graph-rest-beta) |

### Directory APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the **privacyProfile** complex type to the [organization](/graph/api/resources/organization?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the **legalAgeGroup, ageGroup and consentProvidedForMinor** complex type to the [user](/graph/api/resources/user?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added users and groups support to [webhook](/graph/api/resources/webhooks?view=graph-rest-1.0) notification subscriptions. |
| Addition        | beta        | Added [List deleted items owned by a user](/graph/api/directory_deleteditems_user_owned.md?view=graph-rest-beta) action to [directory (deleted items)](/graph/api/resources/directory.md?view=graph-rest-beta) resource |

### Education APIs

|Change type|Version|Description|
|:---|:---|:---|
|Change|Beta|Added the reportableIdentifier property to [educationsynchronizationerror](/graph/api/resources/educationsynchronizationerror.md?view=graph-rest-beta).|
|Change|Beta|Updated the response options for the [uploadUrl](/graph/api/educationsynchronizationprofile_uploadurl.md?view=graph-rest-beta) API.|
|Change|Beta|Updated the text for description of the [educationSynchronizationError](/graph/api/resources/educationsynchronizationerror.md?view=graph-rest-beta) resource type.|
|Change|Beta|Updated the text for description of the [get sync errors](/graph/api/educationsynchronizationerrors_get.md?view=graph-rest-beta) API.|


### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[managedDeviceMobileAppConfigurationDeviceStatus](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new enum types:<br/>[managedDeviceOwnerType](/graph/api/resources/intune_devices_manageddeviceownertype?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the **managedDeviceOwnerType** property to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **deviceStatuses** navigation property to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **androidWorkProfile** member to the [policyPlatformType](/graph/api/resources/intune_deviceconfig_policyplatformtype?view=graph-rest-1.0) enum type|
|Addition|beta|Added new entities:<br/>[androidWorkProfileCertificateProfileBase](/graph/api/resources/intune_deviceconfig_androidworkprofilecertificateprofilebase?view=graph-rest-beta)<br/>[androidWorkProfileCustomConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofilecustomconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileEasEmailProfileBase](/graph/api/resources/intune_deviceconfig_androidworkprofileeasemailprofilebase?view=graph-rest-beta)<br/>[androidWorkProfileEnterpriseWiFiConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofileenterprisewificonfiguration?view=graph-rest-beta)<br/>[androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofilegeneraldeviceconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileGmailEasConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofilegmaileasconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileNineWorkEasConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofilenineworkeasconfiguration?view=graph-rest-beta)<br/>[androidWorkProfilePkcsCertificateProfile](/graph/api/resources/intune_deviceconfig_androidworkprofilepkcscertificateprofile?view=graph-rest-beta)<br/>[androidWorkProfileScepCertificateProfile](/graph/api/resources/intune_deviceconfig_androidworkprofilescepcertificateprofile?view=graph-rest-beta)<br/>[androidWorkProfileTrustedRootCertificate](/graph/api/resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate?view=graph-rest-beta)<br/>[androidWorkProfileVpnConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofilevpnconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileWiFiConfiguration](/graph/api/resources/intune_deviceconfig_androidworkprofilewificonfiguration?view=graph-rest-beta)<br/>[restrictedAppsViolation](/graph/api/resources/intune_deviceconfig_restrictedappsviolation?view=graph-rest-beta)<br/>[windowsAutopilotDeploymentProfileAssignment](/graph/api/resources/intune_enrollment_windowsautopilotdeploymentprofileassignment?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[managedDeviceModelsAndManufacturers](/graph/api/resources/intune_devices_manageddevicemodelsandmanufacturers?view=graph-rest-beta)<br/>[managedDeviceReportedApp](/graph/api/resources/intune_devices_manageddevicereportedapp?view=graph-rest-beta)<br/>[windowsEnrollmentStatusScreenSettings](/graph/api/resources/intune_enrollment_windowsenrollmentstatusscreensettings?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidWorkProfileCrossProfileDataSharingType](/graph/api/resources/intune_deviceconfig_androidworkprofilecrossprofiledatasharingtype?view=graph-rest-beta)<br/>[androidWorkProfileDefaultAppPermissionPolicyType](/graph/api/resources/intune_deviceconfig_androidworkprofiledefaultapppermissionpolicytype?view=graph-rest-beta)<br/>[androidWorkProfileRequiredPasswordType](/graph/api/resources/intune_deviceconfig_androidworkprofilerequiredpasswordtype?view=graph-rest-beta)<br/>[androidWorkProfileVpnConnectionType](/graph/api/resources/intune_deviceconfig_androidworkprofilevpnconnectiontype?view=graph-rest-beta)<br/>[bitLockerRecoveryInformationType](/graph/api/resources/intune_deviceconfig_bitlockerrecoveryinformationtype?view=graph-rest-beta)<br/>[localSecurityOptionsInformationShownOnLockScreenType](/graph/api/resources/intune_deviceconfig_localsecurityoptionsinformationshownonlockscreentype?view=graph-rest-beta)<br/>[managedAppRemediationAction](/graph/api/resources/intune_mam_managedappremediationaction?view=graph-rest-beta)<br/>[managedDeviceOwnerType](/graph/api/resources/intune_devices_manageddeviceownertype?view=graph-rest-beta)<br/>[restrictedAppsState](/graph/api/resources/intune_deviceconfig_restrictedappsstate?view=graph-rest-beta)<br/>[windows10VpnProfileTarget](/graph/api/resources/intune_deviceconfig_windows10vpnprofiletarget?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [playLostModeSound](/graph/api/intune_devices_manageddevice_playlostmodesound.md?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
|Deletion|beta|Removed the following enum types:<br/>**bitLockerRecoveryinformationType**<br/>**windowsUpdateRestartMode**<br/>|
|Addition|beta|Added the **workProfileBlockScreenCapture** and **workProfileBlockCrossProfileCallerId** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipePatchVersion**, **allowedAndroidDeviceManufacturers** and **appActionIfAndroidDeviceManufacturerNotAllowed** properties to the [androidManagedAppProtection](/graph/api/resources/intune_mam_androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipeSdkVersion**, **minimumWipePatchVersion**, **allowedIosDeviceModels**, **appActionIfIosDeviceModelNotAllowed**, **allowedAndroidDeviceManufacturers** and **appActionIfAndroidDeviceManufacturerNotAllowed** properties to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [deviceComplianceDeviceOverview](/graph/api/resources/intune_deviceconfig_devicecompliancedeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [deviceConfigurationDeviceOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationdeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **accountMoveCompletionDateTime** property to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipeSdkVersion**, **allowedIosDeviceModels** and **appActionIfIosDeviceModelNotAllowed** properties to the [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipeOsVersion**, **minimumWipeAppVersion**, **appActionIfDeviceComplianceRequired** and **appActionIfMaximumPinRetriesExceeded** properties to the [managedAppProtection](/graph/api/resources/intune_mam_managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceOwnerType**, **preferMdmOverGroupPolicyAppliedDateTime**, **isAutopilotEnrolled** and **requestUserEnrollmentApproval** properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceModelsAndManufacturers** property to the [managedDeviceOverview](/graph/api/resources/intune_devices_manageddeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **localSecurityOptionsMachineInactivityLimitInMinutes**, **localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool**, **localSecurityOptionsInformationShownOnLockScreen**, **defenderSecurityCenterDisableAccountUI**, **defenderSecurityCenterDisableHardwareUI**, **defenderSecurityCenterDisableRansomwareUI**, **defenderSecurityCenterDisableSecureBootUI** and **defenderSecurityCenterDisableTroubleshootingUI** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **printerNames**, **printerDefaultName**, **printerBlockAddition** and **searchBlockWebResults** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **profileTarget**, **enableAlwaysOn** and **enableDeviceTunnel** properties to the [windows10VpnConfiguration](/graph/api/resources/intune_deviceconfig_windows10vpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **enrollmentStatusScreenSettings** property to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune_enrollment_windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceConfigurationRestrictedAppsViolations** navigation property to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **assignments** navigation property to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune_enrollment_windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **networkAccessConfigurations** navigation property to the [windowsDomainJoinConfiguration](/graph/api/resources/intune_deviceconfig_windowsdomainjoinconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **permissions** property from the [auditActor](/graph/api/resources/intune_auditing_auditactor?view=graph-rest-beta) complex type|
|Change|beta|Changed the type of the following properties on the [bitLockerRecoveryOptions](/graph/api/resources/intune_deviceconfig_bitlockerrecoveryoptions?view=graph-rest-beta) complex type:<br/>**recoveryInformationToStore** from [bitLockerRecoveryinformationType](/graph/api/resources/intune_deviceconfig_bitlockerrecoveryinformationtype?view=graph-rest-beta) to [bitLockerRecoveryInformationType](/graph/api/resources/intune_deviceconfig_bitlockerrecoveryinformationtype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **deviceInactivityBeforeRetirementInDay** property to the [deviceManagementSettings](/graph/api/resources/intune_deviceconfig_devicemanagementsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added the **landingPageCustomizedImage** property to the [intuneBrand](/graph/api/resources/intune_onboarding_intunebrand?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **ipAddressOrFqdn** property from the [vpnServer](/graph/api/resources/intune_deviceconfig_vpnserver?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **restartMode** property from the [windowsUpdateScheduledInstall](/graph/api/resources/intune_deviceconfig_windowsupdatescheduledinstall?view=graph-rest-beta) complex type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidForWorkVpnConnectionType](/graph/api/resources/intune_deviceconfig_androidforworkvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidVpnConnectionType](/graph/api/resources/intune_deviceconfig_androidvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [appleVpnConnectionType](/graph/api/resources/intune_deviceconfig_applevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **androidWorkProfile** member to the [policyPlatformType](/graph/api/resources/intune_deviceconfig_policyplatformtype?view=graph-rest-beta) enum type|

### Outlook calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | Added the **locations** property to the [event](/graph/api/resources/event?view=graph-rest-1.0) entity to support organizing an event that attendees can attend from more than one location. |
| Addition        | v1.0          | Added the **locationType** property to the [location](/graph/api/resources/location?view=graph-rest-1.0) complex type. |
| Addition        | v1.0          | Added the **uniqueId** and **uniqueIdType** properties to the [location](/graph/api/resources/location?view=graph-rest-1.0) complex type. These properties are only for internal use at this point. |


### Outlook contacts

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0          | Added the **flag** property to the [contact](/graph/api/resources/contact?view=graph-rest-1.0) entity. Added the shared [followupFlag](/graph/api/resources/followupflag?view=graph-rest-1.0) complex type.|


### Outlook mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0          | Added the **flag** property to the [message](/graph/api/resources/message?view=graph-rest-1.0) entity. Added the shared [followupFlag](/graph/api/resources/followupflag?view=graph-rest-1.0) complex type.|
| Addition        | v1.0        | Added the **internetMessageHeaders** property to the [message](/graph/api/resources/message?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the [internetMessageHeader](/graph/api/resources/internetmessageheader?view=graph-rest-1.0) complex type. |
| Addition        | v1.0        | Added the **messageRules** navigation property to the [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-1.0) entity. **messageRules** is a collection of [messageRule](/graph/api/resources/messagerule?view=graph-rest-1.0) instances. |
| Addition        | v1.0        | Added the [messageRule](/graph/api/resources/messagerule?view=graph-rest-1.0) entity, and [messageRuleActions](/graph/api/resources/messageruleactions?view=graph-rest-1.0), [messageRulePredicates](/graph/api/resources/messagerulepredicates?view=graph-rest-1.0), and [sizeRange](/graph/api/resources/sizerange?view=graph-rest-1.0) complex types. |
| Addition        | v1.0        | Added the following CRUD operations for message rules: [create](/graph/api/mailfolder_post_messagerules?view=graph-rest-1.0), [list](/graph/api/mailfolder_list_messagerules?view=graph-rest-1.0), [get](/graph/api/messagerule_get?view=graph-rest-1.0), [update](/graph/api/messagerule_update?view=graph-rest-1.0), and [delete](/graph/api/messagerule_delete?view=graph-rest-1.0). |
| Addition | Beta | Added [mailSearchFolder](/graph/api/resources/mailsearchfolder.md?view=graph-rest-beta). |
| Addition | Beta | Added the following APIs for mail search folder: [Create](/graph/api/mailsearchfolder_post.md?view=graph-rest-beta), [Update](/graph/api/mailsearchfolder_update.md?view=graph-rest-beta). |
| Change | Beta | Added support for mail search folder to [delete mailFolder](/graph/api/mailfolder_delete.md?view=graph-rest-beta), [get mailFolder](/graph/api/mailfolder_get.md?view=graph-rest-beta), and [list child folders](/graph/api/mailfolder_list_childfolders.md?view=graph-rest-beta). |


### Outlook user choices

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the new **masterCategories** navigation property to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-1.0) entity. **masterCategories** is a collection of [outlookCategory](/graph/api/resources/outlookCategory?view=graph-rest-1.0) objects. |
| Addition        | v1.0        | Added the [outlookCategory](/graph/api/resources/outlookCategory?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the following CRUD operations for [outlookCategory](/graph/api/resources/outlookCategory?view=graph-rest-1.0): [create](/graph/api/outlookuser_post_mastercategories?view=graph-rest-1.0), [get](/graph/api/outlookcategory_get?view=graph-rest-1.0), [update](/graph/api/outlookcategory_update?view=graph-rest-1.0), and [delete](/graph/api/outlookcategory_delete?view=graph-rest-1.0). |
| Addition        | v1.0        | Added the new [supportedLanguages](/graph/api/outlookuser_supportedlanguages?view=graph-rest-1.0) function to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the new [supportedTimeZones](/graph/api/outlookuser_supportedtimezones?view=graph-rest-1.0) function to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-1.0) entity. |
|Addition | v1.0 | Added the new **workingHours** property to [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-1.0). See [workingHours resource type](/graph/api/resources/workinghours?view=graph-rest-1.0) for information on the supported use cases.|
|Addition | v1.0 | Added the following new complex types: <br> [workingHours](/graph/api/resources/workinghours?view=graph-rest-1.0) <br> [timeZoneBase](/graph/api/resources/timezonebase?view=graph-rest-1.0) <br> [customTimeZone](/graph/api/resources/customtimezone?view=graph-rest-1.0) <br> [standardTimeZoneOffset](/graph/api/resources/standardtimezoneoffset?view=graph-rest-1.0) <br> [daylightTimeZoneOffset](/graph/api/resources/daylighttimezoneoffset?view=graph-rest-1.0)|


### Microsoft Teams

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new [teamMemberSettings](/graph/api/resources/teamMemberSettings.md?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [teamGuestSettings](/graph/api/resources/teamGuestSettings.md?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [teamMessagingSettings](/graph/api/resources/teamMessagingSettings.md?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [teamFunSettings](/graph/api/resources/teamFunSettings.md?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [delete channel](/graph/api/channel_delete.md?view=graph-rest-beta) operation.|
|Addition|Beta|Added new [patch channel](/graph/api/channel_patch.md?view=graph-rest-beta) operation.|
|Addition|Beta|Added new webUrl property to [team](/graph/api/resources/team.md?view=graph-rest-beta) resource.|
|Change|Beta|Updated the path to the [channel](/graph/api/resources/channel.md?view=graph-rest-beta) entity.|


### Project Rome APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | v1.0 | Added [Get recent activities API](/graph/api/projectrome_get_recent_activities?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Get activities API](/graph/api/projectrome_get_activities?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Upsert Activity](../v1.0/api/projectrome_put_activity) |
| Addition | v1.0 | Added [Upsert HistoryItem](../v1.0/projectrome_put_historyitem) |
| Addition | v1.0 | Added [Delete Activity](../v1.0/projectrome_delete_activity) |
| Addition | v1.0 | Added [Upsert HistoryItem](../v1.0/projectrome_delete_historyItem) |
| Addition | v1.0 | Added [activity](/graph/api/resources/projectrome_activity?view=graph-rest-1.0) |
| Addition | v.10 | Added [historyItem](/graph/api/resources/projectrome_historyitem?view=graph-rest-1.0) |
| Addition | v1.0 | Added [visualInfo](/graph/api/resources/projectrome_visualinfo?view=graph-rest-1.0) |
| Addition | v1.0 | Added [imageInfo](/graph/api/resources/projectrome_imageinfo?view=graph-rest-1.0) |
| Addition | v.10 | Added [Project Rome overview](/graph/api/resources/project_rome_overview?view=graph-rest-1.0) |
| Change | Beta | Added deep insert documentation to [Upsert Activity](../beta/api/projectrome_put_activity) |

### Reports APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta| Added delegated access support. |
|Addition|v1.0| Added delegated access support. |

### Security APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added the [security API](/graph/api/resources/security-api-overview.md?view=graph-rest-beta), including the following resources and operations:<br/>[alert](/graph/api/resources/alert.md?view=graph-rest-beta) (and related entities)<br/>[Get alert](/graph/api/alert_get.md?view=graph-rest-beta)<br/>[List alerts](/graph/api/alert_list.md?view=graph-rest-beta)<br/>[Update alert](/graph/api/alert_update.md?view=graph-rest-beta)<br/><br/>Added the following supporting documentation:<br/>[Errors](/graph/api/resources/security-error-codes.md?view=graph-rest-beta)<br/>[Integrate with a SIEM](../concepts/security_siemintegration.md)


## March 2018

### Data Policy Operations

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added new entity [dataPolicyOperation](/graph/api/resources/dataPolicyOperation?view=graph-rest-beta). This represents a submitted data policy operation for tracking purposes.
| Addition        | beta        | Added the [exportPersonalData](/graph/api/user_exportPersonalData?view=graph-rest-beta) action on [users](/graph/api/resources/users?view=graph-rest-beta). This action submits a data policy operation request to export personal data stored by Microsoft for a user. |

### ActivityFeedService APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added [Get recent activities API](/graph/api/projectrome_get_recent_activities?view=graph-rest-beta) |
| Addition        | Beta       | Added [Get activities API](/graph/api/projectrome_get_activities?view=graph-rest-beta) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert Activity](../beta/api/projectrome_put_activity) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert HistoryItem](../beta/projectrome_put_historyitem) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Delete Activity](../beta/projectrome_delete_activity) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert HistoryItem](../beta/projectrome_delete_historyItem) |
| Change | Beta | Added **status** property to [activity](/graph/api/resources/projectrome_activity?view=graph-rest-beta) |
| Change | Beta | Added **activity** navigation property to [historyItem](/graph/api/resources/projectrome_historyitem?view=graph-rest-beta) |
| Change | Beta | Added new APIs to [Project Rome overview](/graph/api/resources/project_rome_overview?view=graph-rest-beta) |

### Azure AD APIs

|Change type|Version|Description|
|:---|:---|:---|
|Change|beta|Added the **applicationID** and **creatorUserID** properties to the [subscription](/graph/api/resources/subscription?view=graph-rest-beta) resource. |
|Change|beta|Added the [list](/graph/api/subscription_list?view=graph-rest-beta) operation to the [subscription](/graph/api/resources/subscription?view=graph-rest-beta) entity. |


### Directory APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **onPremisesExtensionAttributes** complex type to the [user](/graph/api/resources/user.md?view=graph-rest-beta) entity. This contains the on-premises AD extension attributes 1-15. |
| Addition        | Beta        | Added the **privacyProfile** complex type to the [organization](/graph/api/resources/organization.md?view=graph-rest-beta) entity. |
| Addition        | v1.0        | Added support for [restoring and permanently deleting users and groups](/graph/api/resources/directory?view=graph-rest-1.0). |

### Excel APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Change|v1.0|Added the **legacyId** property to the [Excel Table](/graph/api/resources/table?view=graph-rest-1.0) entity. This will contain the numeric value identifier (string data type) that will remain constact for a given Excel table. This is provided as an additional metadata if the application relied on the legacy identifier used in older Excel client applications. Note: The `id` and `legacyId` property should be treated as an opaque string value and should not be parsed to any other type within your application. |

### Reports APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Addition|beta|Added the **siteId** property to the [sharePointSiteUsageDetail](/graph/api/resources/sharepointsiteusagedetail.md?view=graph-rest-beta) entity.|

### Group lifecycle policy

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added [groupLifecyclePolicy](/graph/api/resources/grouplifecyclepolicy?view=graph-rest-1.0) |
| Addition        | v1.0        | Added the following APIs for group lifecycle policy: [Create](/graph/api/grouplifecyclepolicy_post_grouplifecyclepolicies?view=graph-rest-1.0), [List](/graph/api/grouplifecyclepolicy_list?view=graph-rest-1.0), [Get](/graph/api/grouplifecyclepolicy_get?view=graph-rest-1.0), [Update](/graph/api/grouplifecyclepolicy_update?view=graph-rest-1.0), [Delete](/graph/api/grouplifecyclepolicy_delete?view=graph-rest-1.0), [Add group](/graph/api/grouplifecyclepolicy_addgroup?view=graph-rest-1.0), [Remove group](/graph/api/grouplifecyclepolicy_removegroup?view=graph-rest-1.0) |
| Addition        | v1.0        | Added [List groupLifecyclePolicies](/graph/api/group_list_grouplifecyclepolicies?view=graph-rest-1.0) function to [group](/graph/api/resources/group?view=graph-rest-1.0) |
| Change | v1.0 | Added renewedDateTime property and [renew](/graph/api/group_renew?view=graph-rest-1.0) to [group](/graph/api/resources/group?view=graph-rest-1.0) |

### Terms of use

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the [agreement](/graph/api/resources/agreement?view=graph-rest-beta) and [agreementAcceptance](/graph/api/resources/agreementAcceptance?view=graph-rest-beta) resources. |
| Addition        | Beta        | Added the following APIs for [agreement](/graph/api/resources/agreement?view=graph-rest-beta): [Create](/graph/api/greement_post_agreements?view=graph-rest-beta), [List](/graph/api/agreement_list?view=graph-rest-beta), [Get](/graph/api/agreement_get?view=graph-rest-beta), [Update](/graph/api/agreement_update?view=graph-rest-beta), [Delete](/graph/api/agreement_delete?view=graph-rest-beta). |
| Addition        | Beta        | Added the [agreementAcceptance](/graph/api/resources/agreementAcceptance?view=graph-rest-beta) relationships to the [user](/graph/api/resources/user?view=graph-rest-beta) resource. |

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[iosMobileAppConfiguration](/graph/api/resources/intune_apps_iosmobileappconfiguration?view=graph-rest-1.0)<br/>[vppToken](/graph/api/resources/intune_onboarding_vpptoken?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new complex types:<br/>[appConfigurationSettingItem](/graph/api/resources/intune_apps_appconfigurationsettingitem?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the [syncLicenses](/graph/api/intune_onboarding_vpptoken_synclicenses?view=graph-rest-1.0) action on [vppToken](/graph/api/resources/intune_onboarding_vpptoken?view=graph-rest-1.0) |
|Addition|v1.0|Added the **vppTokens** navigation property to the [deviceAppManagement](/graph/api/resources/intune_shared_deviceappmanagement?view=graph-rest-1.0) entity|
|Addition|beta|Added the **managementCertificateExpirationDate** property to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **enhancedJailBreak** property to the [deviceManagementSettings](/graph/api/resources/intune_deviceconfig_devicemanagementsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune_androidforwork_androiddeviceownerenrollmentprofile?view=graph-rest-beta)<br/>[androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta)<br/>[androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta)<br/>[androidManagedStoreAppConfigurationSchema](/graph/api/resources/intune_androidforwork_androidmanagedstoreappconfigurationschema?view=graph-rest-beta)<br/>[dataSharingConsent](/graph/api/resources/intune_devices_datasharingconsent?view=graph-rest-beta)<br/>[deviceConfigurationUserStateSummary](/graph/api/resources/intune_deviceconfig_deviceconfigurationuserstatesummary?view=graph-rest-beta)<br/>[macOSEndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_macosendpointprotectionconfiguration?view=graph-rest-beta)<br/>[macOSImportedPFXCertificateProfile](/graph/api/resources/intune_deviceconfig_macosimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[macOSLobApp](/graph/api/resources/intune_apps_macoslobapp?view=graph-rest-beta)<br/>[managedEBookCategory](/graph/api/resources/intune_books_managedebookcategory?view=graph-rest-beta)<br/>[microsoftStoreForBusinessContainedApp](/graph/api/resources/intune_apps_microsoftstoreforbusinesscontainedapp?view=graph-rest-beta)<br/>[mobileContainedApp](/graph/api/resources/intune_apps_mobilecontainedapp?view=graph-rest-beta)<br/>[windowsUniversalAppXContainedApp](/graph/api/resources/intune_apps_windowsuniversalappxcontainedapp?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[androidManagedStoreAppConfigurationSchemaItem](/graph/api/resources/intune_androidforwork_androidmanagedstoreappconfigurationschemaitem?view=graph-rest-beta)<br/>[deviceAndAppManagementData](/graph/api/resources/intune_onboarding_deviceandappmanagementdata?view=graph-rest-beta)<br/>[loggedOnUser](/graph/api/resources/intune_devices_loggedonuser?view=graph-rest-beta)<br/>[macOSFirewallApplication](/graph/api/resources/intune_deviceconfig_macosfirewallapplication?view=graph-rest-beta)<br/>[macOSLobChildApp](/graph/api/resources/intune_apps_macoslobchildapp?view=graph-rest-beta)<br/>[macOSMinimumOperatingSystem](/graph/api/resources/intune_apps_macosminimumoperatingsystem?view=graph-rest-beta)<br/>[windowsAppXAppAssignmentSettings](/graph/api/resources/intune_apps_windowsappxappassignmentsettings?view=graph-rest-beta)<br/>[windowsUniversalAppXAppAssignmentSettings](/graph/api/resources/intune_apps_windowsuniversalappxappassignmentsettings?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [requestSignupUrl](/graph/api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_requestsignupurl.md?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [completeSignup](/graph/api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_completesignup.md?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [syncApps](/graph/api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_syncapps.md?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [unbind](/graph/api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_unbind.md?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [revokeToken](/graph/api/intune_androidforwork_androiddeviceownerenrollmentprofile_revoketoken.md?view=graph-rest-beta) action on [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune_androidforwork_androiddeviceownerenrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the [createToken](/graph/api/intune_androidforwork_androiddeviceownerenrollmentprofile_createtoken.md?view=graph-rest-beta) action on [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune_androidforwork_androiddeviceownerenrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the [assign](/graph/api/intune_apps_manageddevicemobileappconfiguration_assign.md?view=graph-rest-beta) action on [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration?view=graph-rest-beta) |
|Addition|beta|Added the [consentToDataSharing](/graph/api/intune_devices_datasharingconsent_consenttodatasharing.md?view=graph-rest-beta) action on [dataSharingConsent](/graph/api/resources/intune_devices_datasharingconsent?view=graph-rest-beta) |
|Addition|beta|Added the [getLoggedOnManagedDevices](/graph/api/intune_devices_user_getloggedonmanageddevices.md?view=graph-rest-beta) function on [user](/graph/api/resources/intune_shared_user?view=graph-rest-beta) |
|Addition|beta|Added the [exportDeviceAndAppManagementData](/graph/api/intune_onboarding_user_exportdeviceandappmanagementdata.md?view=graph-rest-beta) function on [user](/graph/api/resources/intune_devices_user?view=graph-rest-beta) |
|Addition|beta|Added the [exportDeviceAndAppManagementData](/graph/api/intune_onboarding_user_exportdeviceandappmanagementdata.md?view=graph-rest-beta) function on [user](/graph/api/resources/intune_devices_user?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**appleVolumePurchaseProgramToken**<br/>**mdmAppConfigGroupAssignment**<br/>**windows10KioskConfiguration**<br/>|
|Deletion|beta|Removed the [assign](/graph/api/intune_apps_manageddevicemobileappconfiguration_assign.md?view=graph-rest-beta) action on [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration?view=graph-rest-beta) |
|Deletion|beta|Removed the [syncApps](/graph/api/intune_onboarding_applevolumepurchaseprogramtoken_syncapps.md?view=graph-rest-beta) action on [appleVolumePurchaseProgramToken](/graph/api/resources/intune_onboarding_applevolumepurchaseprogramtoken?view=graph-rest-beta) |
|Addition|beta|Added the **workProfileBluetoothEnableContactSharing** property to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [androidForWorkImportedPFXCertificateProfile](/graph/api/resources/intune_deviceconfig_androidforworkimportedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [androidImportedPFXCertificateProfile](/graph/api/resources/intune_deviceconfig_androidimportedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [iosImportedPFXCertificateProfile](/graph/api/resources/intune_deviceconfig_iosimportedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **encodedSettingXml** property to the [iosMobileAppConfiguration](/graph/api/resources/intune_apps_iosmobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceId** and **azureADDeviceId** properties to the [managedAppRegistration](/graph/api/resources/intune_mam_managedappregistration?view=graph-rest-beta) entity|
|Addition|beta|Added the **usersLoggedOn** property to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **lastLoggedOnUserId** property from the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **lastModifiedDateTime** property to the [managedDeviceOverview](/graph/api/resources/intune_devices_manageddeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **isDependency** property to the [mobileAppContentFile](/graph/api/resources/intune_apps_mobileappcontentfile?view=graph-rest-beta) entity|
|Addition|beta|Added the **windowsEnabled**, **macEnabled**, **windowsDeviceBlockedOnMissingPartnerData** and **macDeviceBlockedOnMissingPartnerData** properties to the [mobileThreatDefenseConnector](/graph/api/resources/intune_onboarding_mobilethreatdefenseconnector?view=graph-rest-beta) entity|
|Addition|beta|Added the **shouldUninstallOlderVersionsOfOffice** property to the [officeSuiteApp](/graph/api/resources/intune_apps_officesuiteapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **dataSharingConsentGranted** property to the [vppToken](/graph/api/resources/intune_onboarding_vpptoken?view=graph-rest-beta) entity|
|Addition|beta|Added the **localSecurityOptionsBlockRemoteLogonWithBlankPassword**, **localSecurityOptionsAdministratorAccountName**, **localSecurityOptionsEnableGuestAccount**, **localSecurityOptionsGuestAccountName**, **localSecurityOptionsAllowUndockWithoutHavingToLogon**, **localSecurityOptionsBlockUsersInstallingPrinterDrivers**, **localSecurityOptionsBlockRemoteOpticalDriveAccess**, **localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser**, **localSecurityOptionsMachineInactivityLimit**, **localSecurityOptionsDoNotRequireCtrlAltDel**, **localSecurityOptionsInformationDisplayedOnLockScreen**, **localSecurityOptionsHideLastSignedInUser**, **localSecurityOptionsHideUsernameAtSignIn**, **localSecurityOptionsLogOnMessageTitle**, **localSecurityOptionsLogOnMessageText**, **localSecurityOptionsAllowPKU2UAuthenticationRequests**, **localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager**, **localSecurityOptionsClearVirtualMemoryPageFile**, **localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn**, **localSecurityOptionsAllowUIAccessApplicationElevation**, **localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations**, **localSecurityOptionsOnlyElevateSignedExecutables**, **localSecurityOptionsAdministratorElevationPromptBehavior**, **localSecurityOptionsStandardUserElevationPromptBehavior**, **localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation**, **localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation**, **localSecurityOptionsAllowUIAccessApplicationsForSecureLocations**, **localSecurityOptionsUseAdminApprovalMode**, **localSecurityOptionsUseAdminApprovalModeForAdministrators**, **deviceGuardLocalSystemAuthorityCredentialGuardSettings**, **deviceGuardEnableVirtualizationBasedSecurity** and **deviceGuardEnableSecureBootWithDMA** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **defenderPasswordProtectedEmailContentExecutionType** property from the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [windows10ImportedPFXCertificateProfile](/graph/api/resources/intune_deviceconfig_windows10importedpfxcertificateprofile?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **printerNames**, **defaultPrinterName** and **blockAddingNewPrinter** properties from the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune_deviceconfig_windows10secureassessmentconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore** property to the [windows81SCEPCertificateProfile](/graph/api/resources/intune_deviceconfig_windows81scepcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **purchaseOrderIdentifier** property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune_enrollment_windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [windowsCertificateProfileBase](/graph/api/resources/intune_deviceconfig_windowscertificateprofilebase?view=graph-rest-beta) entity:<br/>**subjectAlternativeNameType** from required to optional<br/>|
|Addition|beta|Added the **advancedThreatProtectionOnboardingFilename** and **advancedThreatProtectionOffboardingFilename** properties to the [windowsDefenderAdvancedThreatProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windowsdefenderadvancedthreatprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [windowsPhone81ImportedPFXCertificateProfile](/graph/api/resources/intune_deviceconfig_windowsphone81importedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **skipChecksBeforeRestart** and **updateWeeks** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedEBookCategories** navigation property to the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **androidManagedStoreAccountEnterpriseSettings**, **androidManagedStoreAppConfigurationSchemas**, **androidDeviceOwnerEnrollmentProfiles**, **dataSharingConsents** and **deviceConfigurationUserStateSummaries** navigation properties to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **deviceSetupConfigurations** navigation property from the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **groupAssignments** navigation property from the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **categories** navigation property to the [managedEBook](/graph/api/resources/intune_books_managedebook?view=graph-rest-beta) entity|
|Addition|beta|Added the **containedApps** navigation property to the [microsoftStoreForBusinessApp](/graph/api/resources/intune_apps_microsoftstoreforbusinessapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **containedApps** navigation property to the [mobileAppContent](/graph/api/resources/intune_apps_mobileappcontent?view=graph-rest-beta) entity|
|Addition|beta|Added the **committedContainedApps** navigation property to the [windowsUniversalAppX](/graph/api/resources/intune_apps_windowsuniversalappx?view=graph-rest-beta) entity|

### OneDrive
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[baseItemVersion](/graph/api/resources/baseItemVersion?view=graph-rest-1.0)<br/>[driveItemVersion](/graph/api/resources/driveItemVersion?view=graph-rest-1.0)<br/>[listItemVersion](/graph/api/resources/listItemVersion?view=graph-rest-1.0)<br/> |
|Addition|v1.0|Added new complex types:<br/>[publicationFacet](/graph/api/resources/publicationFacet?view=graph-rest-1.0)<br/> |
|Addition|v1.0|Added the <b>publication</b> property to the [driveItem](/graph/api/resources/driveItem?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the <b>versions</b> navigation property to the [driveItem](/graph/api/resources/driveItem?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the <b>versions</b> navigation property to the [listItem](/graph/api/resources/listItem?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the <b>root</b> property to the [siteCollection](/graph/api/resources/siteCollection?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the [restoreVersion](/graph/api/driveitemversion_restore?view=graph-rest-1.0) action for the [driveItemVersion](/graph/api/resources/driveItemVersion?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the [restoreVersion](/graph/api/listitemversion_restore?view=graph-rest-1.0) action for the [listItemVersion](/graph/api/resources/listItemVersion?view=graph-rest-1.0) entity |


### OneDrive
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new complex type:<br/>[itemPreviewInfo](/graph/api/resources/itemPreviewInfo?view=graph-rest-beta)<br/> |
|Addition|beta|Added the <b>name</b> property to the [contentTypeInfo](/graph/api/resources/contentTypeInfo?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>objectType</b> property to the [deleteAction](/graph/api/resources/deleteAction?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>newName</b> property to the [renameAction](/graph/api/resources/renameAction?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>tenantId</b> property to the [sharepointIds](/graph/api/resources/renameAction?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>lastRecordedDateTime</b> property to the [itemActivityTimeSet](/graph/api/resources/itemActivityTimeSet?view=graph-rest-beta) complex type |
|Addition|beta|Added the [preview](/graph/api/driveitem_preview?view=graph-rest-beta) action for the [driveItem](/graph/api/resources/driveItem?view=graph-rest-beta) entity |


## February 2018

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidForWorkImportedPFXCertificateProfile](/graph/api/resources/intune_deviceconfig_androidforworkimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[androidImportedPFXCertificateProfile](/graph/api/resources/intune_deviceconfig_androidimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentity](/graph/api/resources/intune_enrollment_importedwindowsautopilotdeviceidentity?view=graph-rest-beta)<br/>[iosImportedPFXCertificateProfile](/graph/api/resources/intune_deviceconfig_iosimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[windows10ImportedPFXCertificateProfile](/graph/api/resources/intune_deviceconfig_windows10importedpfxcertificateprofile?view=graph-rest-beta)<br/>[windows10KioskConfiguration](/graph/api/resources/intune_deviceconfig_windows10kioskconfiguration?view=graph-rest-beta)<br/>[windowsPhone81ImportedPFXCertificateProfile](/graph/api/resources/intune_deviceconfig_windowsphone81importedpfxcertificateprofile?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[importedWindowsAutopilotDeviceIdentityState](/graph/api/resources/intune_enrollment_importedwindowsautopilotdeviceidentitystate?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [managedDeviceEnrollmentFailureDetails](/graph/api/intune_troubleshooting_reportroot_manageddeviceenrollmentfailuredetails.md?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune_deviceconfig_reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentFailureDetails](/graph/api/intune_troubleshooting_reportroot_manageddeviceenrollmentfailuredetails.md?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune_deviceconfig_reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentFailureTrends](/graph/api/intune_troubleshooting_reportroot_manageddeviceenrollmentfailuretrends.md?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune_deviceconfig_reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentTopFailures](/graph/api/intune_troubleshooting_reportroot_manageddeviceenrollmenttopfailures.md?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune_deviceconfig_reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentTopFailures](/graph/api/intune_troubleshooting_reportroot_manageddeviceenrollmenttopfailures.md?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune_deviceconfig_reportroot?view=graph-rest-beta) |
|Change|beta|Removed the **requireAppVerify**, **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders** and **requireCompanyPortalAppIntegrity** properties from the [androidCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidcompliancepolicy?view=graph-rest-beta) entity|
|Change|beta|Removed the **requireAppVerify**, **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders** and **requireCompanyPortalAppIntegrity** properties from the [androidForWorkCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidforworkcompliancepolicy?view=graph-rest-beta) entity|
|Change|beta|Removed the **name**, **modifiedDateTime**, **totalEnrollmentCount** and **qrCode** properties from the [androidForWorkEnrollmentProfile](/graph/api/resources/intune_androidforwork_androidforworkenrollmentprofile?view=graph-rest-beta) entity|
|Change|beta|Removed the **nonEapAuthenticationMethodForEapTtls**, **nonEapAuthenticationMethodForPeap** and **enableOuterIdentityPrivacy** properties from the [androidForWorkEnterpriseWiFiConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkenterprisewificonfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **workProfileBlockAddingAccounts** property to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|beta|Removed the **blockCrossProfileCopyPaste** and **requireAppVerify** properties from the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **deviceOwnerManagementEnabled** property to the [androidForWorkSettings](/graph/api/resources/intune_androidforwork_androidforworksettings?view=graph-rest-beta) entity|
|Change|beta|Removed the **requireAppVerify** property from the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **exemptedAppPackages** property to the [androidManagedAppProtection](/graph/api/resources/intune_mam_androidmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **exemptedAppProtocols** and **exemptedAppPackages** properties to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **exemptedAppProtocols** property to the [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **lastLoggedOnUserId** property to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity|
|Change|beta|Added the **isFrameworkFile** property to the [mobileAppContentFile](/graph/api/resources/intune_apps_mobileappcontentfile?view=graph-rest-beta) entity|
|Change|beta|Added the **targetedAppManagementLevels** property to the [targetedManagedAppProtection](/graph/api/resources/intune_mam_targetedmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **localSecurityOptionsBlockMicrosoftAccounts**, **localSecurityOptionsEnableAdministratorAccount**, **defenderPreventCredentialStealingType**, **defenderProcessCreationType**, **defenderUntrustedUSBProcessType**, **defenderUntrustedExecutableType**, **defenderPasswordProtectedEmailContentExecutionType**, **defenderAdvancedRansomewareProtectionType** and **applicationGuardAllowFileSaveOnHost** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **edgeFavoritesListLocation** and **edgeBlockEditFavorites** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **printerNames**, **defaultPrinterName** and **blockAddingNewPrinter** properties to the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune_deviceconfig_windows10secureassessmentconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **importedWindowsAutopilotDeviceIdentities** navigation property to the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-beta) entity|
|Change|beta|Added the **shareAPNSData** property to the [adminConsent](/graph/api/resources/intune_devices_adminconsent?view=graph-rest-beta) complex type|
|Change|beta|Removed the **collectFullIOSAppInventory** property from the [adminConsent](/graph/api/resources/intune_devices_adminconsent?view=graph-rest-beta) complex type|
|Change|beta|Removed the **deviceUsageType** property from the [outOfBoxExperienceSettings](/graph/api/resources/intune_enrollment_outofboxexperiencesettings?view=graph-rest-beta) complex type|


### Planner APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new complex types:<br/>[plannerPlanContext](/graph/api/resources/plannerPlanContext?view=graph-rest-beta)<br/>[plannerPlanContextDetails](/graph/api/resources/plannerPlanContextDetails?view=graph-rest-beta)<br/>[plannerPlanContextCollection](/graph/api/resources/plannerPlanContextCollection?view=graph-rest-beta)<br/>[plannerPlanContextDetailsCollection](/graph/api/resources/plannerPlanContextDetailsCollection?view=graph-rest-beta)<br/>[plannerFavoritePlanReference](/graph/api/resources/plannerFavoritePlanReference?view=graph-rest-beta)<br/>[plannerRecentPlanReference](/graph/api/resources/plannerRecentPlanReference?view=graph-rest-beta)<br/>[plannerFavoritePlanReferenceCollection](/graph/api/resources/plannerFavoritePlanReferenceCollection?view=graph-rest-beta)<br/>[plannerRecentPlanReferenceCollection](/graph/api/resources/plannerRecentPlanReferenceCollection?view=graph-rest-beta)|
|Addition|Beta|Added `favoritePlanReferences` and `recentPlanReferences` properties to [plannerUser](/graph/api/resources/plannerUser?view=graph-rest-beta) entity. |
|Addition|Beta|Added `favoritePlans` and `recentPlans` navigation properties to [plannerUser](/graph/api/resources/plannerUser?view=graph-rest-beta) entity. |
|Addition|Beta|Added `contexts` property to [plannerPlan](/graph/api/resources/plannerPlan?view=graph-rest-beta) entity. |
|Addition|Beta|Added `contextDetails` property to [plannerPlanDetails](/graph/api/resources/plannerPlanDetails?view=graph-rest-beta) entity. |
|Addition|Beta|Added Planner [delta query](/graph/api/planneruser_list_delta.md?view=graph-rest-beta) |

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | Beta    | Added the **activatedOnSharedComputer** property to the [userActivationCounts](/graph/api/resources/useractivationcounts.md?view=graph-rest-beta) entity.|
| Addition    | Beta    | Added the **sharedComputerActivation** property to the [office365ActivationsUserCounts](/graph/api/resources/office365activationsusercounts.md?view=graph-rest-beta) entity.|

## January 2018

### JSON Batching

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added [JSON batching](../concepts/json_batching) support. Internal request limit set to 20.|
|Change|Beta|Increased [JSON batching](../concepts/json_batching) internal request limit from 5 to 20.|

### Education APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added extra navigation properties and improve filtering support for [roster API](/graph/api/resources/education-overview?view=graph-rest-beta).|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[androidCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidcompliancepolicy?view=graph-rest-1.0)<br/>[androidCustomConfiguration](/graph/api/resources/intune_deviceconfig_androidcustomconfiguration?view=graph-rest-1.0)<br/>[androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration?view=graph-rest-1.0)<br/>[androidLobApp](/graph/api/resources/intune_apps_androidlobapp?view=graph-rest-1.0)<br/>[androidManagedAppProtection](/graph/api/resources/intune_mam_androidmanagedappprotection?view=graph-rest-1.0)<br/>[androidManagedAppRegistration](/graph/api/resources/intune_mam_androidmanagedappregistration?view=graph-rest-1.0)<br/>[androidStoreApp](/graph/api/resources/intune_apps_androidstoreapp?view=graph-rest-1.0)<br/>[appleDeviceFeaturesConfigurationBase](/graph/api/resources/intune_deviceconfig_appledevicefeaturesconfigurationbase?view=graph-rest-1.0)<br/>[applePushNotificationCertificate](/graph/api/resources/intune_devices_applepushnotificationcertificate?view=graph-rest-1.0)<br/>[defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-1.0)<br/>[detectedApp](/graph/api/resources/intune_devices_detectedapp?view=graph-rest-1.0)<br/>[deviceAndAppManagementRoleAssignment](/graph/api/resources/intune_rbac_deviceandappmanagementroleassignment?view=graph-rest-1.0)<br/>[deviceAndAppManagementRoleDefinition](/graph/api/resources/intune_rbac_deviceandappmanagementroledefinition?view=graph-rest-1.0)<br/>[deviceAppManagement](/graph/api/resources/intune_shared_deviceappmanagement?view=graph-rest-1.0)<br/>[deviceCategory](/graph/api/resources/intune_shared_devicecategory?view=graph-rest-1.0)<br/>[deviceComplianceActionItem](/graph/api/resources/intune_deviceconfig_devicecomplianceactionitem?view=graph-rest-1.0)<br/>[deviceComplianceDeviceOverview](/graph/api/resources/intune_deviceconfig_devicecompliancedeviceoverview?view=graph-rest-1.0)<br/>[deviceComplianceDeviceStatus](/graph/api/resources/intune_deviceconfig_devicecompliancedevicestatus?view=graph-rest-1.0)<br/>[deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-1.0)<br/>[deviceCompliancePolicyAssignment](/graph/api/resources/intune_deviceconfig_devicecompliancepolicyassignment?view=graph-rest-1.0)<br/>[deviceCompliancePolicyDeviceStateSummary](/graph/api/resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary?view=graph-rest-1.0)<br/>[deviceCompliancePolicySettingStateSummary](/graph/api/resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary?view=graph-rest-1.0)<br/>[deviceCompliancePolicyState](/graph/api/resources/intune_deviceconfig_devicecompliancepolicystate?view=graph-rest-1.0)<br/>[deviceComplianceScheduledActionForRule](/graph/api/resources/intune_deviceconfig_devicecompliancescheduledactionforrule?view=graph-rest-1.0)<br/>[deviceComplianceSettingState](/graph/api/resources/intune_deviceconfig_devicecompliancesettingstate?view=graph-rest-1.0)<br/>[deviceComplianceUserOverview](/graph/api/resources/intune_deviceconfig_devicecomplianceuseroverview?view=graph-rest-1.0)<br/>[deviceComplianceUserStatus](/graph/api/resources/intune_deviceconfig_devicecomplianceuserstatus?view=graph-rest-1.0)<br/>[deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration?view=graph-rest-1.0)<br/>[deviceConfigurationAssignment](/graph/api/resources/intune_deviceconfig_deviceconfigurationassignment?view=graph-rest-1.0)<br/>[deviceConfigurationDeviceOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationdeviceoverview?view=graph-rest-1.0)<br/>[deviceConfigurationDeviceStateSummary](/graph/api/resources/intune_deviceconfig_deviceconfigurationdevicestatesummary?view=graph-rest-1.0)<br/>[deviceConfigurationDeviceStatus](/graph/api/resources/intune_deviceconfig_deviceconfigurationdevicestatus?view=graph-rest-1.0)<br/>[deviceConfigurationState](/graph/api/resources/intune_deviceconfig_deviceconfigurationstate?view=graph-rest-1.0)<br/>[deviceConfigurationUserOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationuseroverview?view=graph-rest-1.0)<br/>[deviceConfigurationUserStatus](/graph/api/resources/intune_deviceconfig_deviceconfigurationuserstatus?view=graph-rest-1.0)<br/>[deviceEnrollmentConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentconfiguration?view=graph-rest-1.0)<br/>[deviceEnrollmentLimitConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentlimitconfiguration?view=graph-rest-1.0)<br/>[deviceEnrollmentPlatformRestrictionsConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentplatformrestrictionsconfiguration?view=graph-rest-1.0)<br/>[deviceEnrollmentWindowsHelloForBusinessConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentwindowshelloforbusinessconfiguration?view=graph-rest-1.0)<br/>[deviceInstallState](/graph/api/resources/intune_books_deviceinstallstate?view=graph-rest-1.0)<br/>[deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-1.0)<br/>[deviceManagementExchangeConnector](/graph/api/resources/intune_onboarding_devicemanagementexchangeconnector?view=graph-rest-1.0)<br/>[deviceManagementPartner](/graph/api/resources/intune_onboarding_devicemanagementpartner?view=graph-rest-1.0)<br/>[deviceManagementTroubleshootingEvent](/graph/api/resources/intune_troubleshooting_devicemanagementtroubleshootingevent?view=graph-rest-1.0)<br/>[eBookInstallSummary](/graph/api/resources/intune_books_ebookinstallsummary?view=graph-rest-1.0)<br/>[editionUpgradeConfiguration](/graph/api/resources/intune_deviceconfig_editionupgradeconfiguration?view=graph-rest-1.0)<br/>[enrollmentConfigurationAssignment](/graph/api/resources/intune_onboarding_enrollmentconfigurationassignment?view=graph-rest-1.0)<br/>[enrollmentTroubleshootingEvent](/graph/api/resources/intune_troubleshooting_enrollmenttroubleshootingevent?view=graph-rest-1.0)<br/>[iosCertificateProfile](/graph/api/resources/intune_deviceconfig_ioscertificateprofile?view=graph-rest-1.0)<br/>[iosCompliancePolicy](/graph/api/resources/intune_deviceconfig_ioscompliancepolicy?view=graph-rest-1.0)<br/>[iosCustomConfiguration](/graph/api/resources/intune_deviceconfig_ioscustomconfiguration?view=graph-rest-1.0)<br/>[iosDeviceFeaturesConfiguration](/graph/api/resources/intune_deviceconfig_iosdevicefeaturesconfiguration?view=graph-rest-1.0)<br/>[iosGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_iosgeneraldeviceconfiguration?view=graph-rest-1.0)<br/>[iosLobApp](/graph/api/resources/intune_apps_ioslobapp?view=graph-rest-1.0)<br/>[iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection?view=graph-rest-1.0)<br/>[iosManagedAppRegistration](/graph/api/resources/intune_mam_iosmanagedappregistration?view=graph-rest-1.0)<br/>[iosStoreApp](/graph/api/resources/intune_apps_iosstoreapp?view=graph-rest-1.0)<br/>[iosUpdateConfiguration](/graph/api/resources/intune_deviceconfig_iosupdateconfiguration?view=graph-rest-1.0)<br/>[iosUpdateDeviceStatus](/graph/api/resources/intune_deviceconfig_iosupdatedevicestatus?view=graph-rest-1.0)<br/>[iosVppApp](/graph/api/resources/intune_apps_iosvppapp?view=graph-rest-1.0)<br/>[iosVppEBook](/graph/api/resources/intune_books_iosvppebook?view=graph-rest-1.0)<br/>[iosVppEBookAssignment](/graph/api/resources/intune_books_iosvppebookassignment?view=graph-rest-1.0)<br/>[localizedNotificationMessage](/graph/api/resources/intune_notification_localizednotificationmessage?view=graph-rest-1.0)<br/>[macOSCompliancePolicy](/graph/api/resources/intune_deviceconfig_macoscompliancepolicy?view=graph-rest-1.0)<br/>[macOSCustomConfiguration](/graph/api/resources/intune_deviceconfig_macoscustomconfiguration?view=graph-rest-1.0)<br/>[macOSDeviceFeaturesConfiguration](/graph/api/resources/intune_deviceconfig_macosdevicefeaturesconfiguration?view=graph-rest-1.0)<br/>[macOSGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_macosgeneraldeviceconfiguration?view=graph-rest-1.0)<br/>[macOSOfficeSuiteApp](/graph/api/resources/intune_apps_macosofficesuiteapp?view=graph-rest-1.0)<br/>[managedAndroidLobApp](/graph/api/resources/intune_apps_managedandroidlobapp?view=graph-rest-1.0)<br/>[managedAndroidStoreApp](/graph/api/resources/intune_apps_managedandroidstoreapp?view=graph-rest-1.0)<br/>[managedApp](/graph/api/resources/intune_apps_managedapp?view=graph-rest-1.0)<br/>[managedAppConfiguration](/graph/api/resources/intune_mam_managedappconfiguration?view=graph-rest-1.0)<br/>[managedAppOperation](/graph/api/resources/intune_mam_managedappoperation?view=graph-rest-1.0)<br/>[managedAppPolicy](/graph/api/resources/intune_mam_managedapppolicy?view=graph-rest-1.0)<br/>[managedAppPolicyDeploymentSummary](/graph/api/resources/intune_mam_managedapppolicydeploymentsummary?view=graph-rest-1.0)<br/>[managedAppProtection](/graph/api/resources/intune_mam_managedappprotection?view=graph-rest-1.0)<br/>[managedAppRegistration](/graph/api/resources/intune_mam_managedappregistration?view=graph-rest-1.0)<br/>[managedAppStatus](/graph/api/resources/intune_mam_managedappstatus?view=graph-rest-1.0)<br/>[managedAppStatusRaw](/graph/api/resources/intune_mam_managedappstatusraw?view=graph-rest-1.0)<br/>[managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0)<br/>[managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration?view=graph-rest-1.0)<br/>[managedDeviceMobileAppConfigurationAssignment](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationassignment?view=graph-rest-1.0)<br/>[managedDeviceMobileAppConfigurationDeviceSummary](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary?view=graph-rest-1.0)<br/>[managedDeviceMobileAppConfigurationUserStatus](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationuserstatus?view=graph-rest-1.0)<br/>[managedDeviceMobileAppConfigurationUserSummary](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationusersummary?view=graph-rest-1.0)<br/>[managedDeviceOverview](/graph/api/resources/intune_devices_manageddeviceoverview?view=graph-rest-1.0)<br/>[managedEBook](/graph/api/resources/intune_books_managedebook?view=graph-rest-1.0)<br/>[managedEBookAssignment](/graph/api/resources/intune_books_managedebookassignment?view=graph-rest-1.0)<br/>[managedIOSLobApp](/graph/api/resources/intune_apps_managedioslobapp?view=graph-rest-1.0)<br/>[managedIOSStoreApp](/graph/api/resources/intune_apps_managediosstoreapp?view=graph-rest-1.0)<br/>[managedMobileApp](/graph/api/resources/intune_mam_managedmobileapp?view=graph-rest-1.0)<br/>[managedMobileLobApp](/graph/api/resources/intune_apps_managedmobilelobapp?view=graph-rest-1.0)<br/>[mdmWindowsInformationProtectionPolicy](/graph/api/resources/intune_mam_mdmwindowsinformationprotectionpolicy?view=graph-rest-1.0)<br/>[microsoftStoreForBusinessApp](/graph/api/resources/intune_apps_microsoftstoreforbusinessapp?view=graph-rest-1.0)<br/>[mobileApp](/graph/api/resources/intune_apps_mobileapp?view=graph-rest-1.0)<br/>[mobileAppAssignment](/graph/api/resources/intune_apps_mobileappassignment?view=graph-rest-1.0)<br/>[mobileAppCategory](/graph/api/resources/intune_apps_mobileappcategory?view=graph-rest-1.0)<br/>[mobileAppContent](/graph/api/resources/intune_apps_mobileappcontent?view=graph-rest-1.0)<br/>[mobileAppContentFile](/graph/api/resources/intune_apps_mobileappcontentfile?view=graph-rest-1.0)<br/>[mobileLobApp](/graph/api/resources/intune_apps_mobilelobapp?view=graph-rest-1.0)<br/>[mobileThreatDefenseConnector](/graph/api/resources/intune_onboarding_mobilethreatdefenseconnector?view=graph-rest-1.0)<br/>[notificationMessageTemplate](/graph/api/resources/intune_notification_notificationmessagetemplate?view=graph-rest-1.0)<br/>[onPremisesConditionalAccessSettings](/graph/api/resources/intune_onboarding_onpremisesconditionalaccesssettings?view=graph-rest-1.0)<br/>[remoteAssistancePartner](/graph/api/resources/intune_remoteassistance_remoteassistancepartner?view=graph-rest-1.0)<br/>[resourceOperation](/graph/api/resources/intune_rbac_resourceoperation?view=graph-rest-1.0)<br/>[roleAssignment](/graph/api/resources/intune_rbac_roleassignment?view=graph-rest-1.0)<br/>[roleDefinition](/graph/api/resources/intune_rbac_roledefinition?view=graph-rest-1.0)<br/>[settingStateDeviceSummary](/graph/api/resources/intune_deviceconfig_settingstatedevicesummary?view=graph-rest-1.0)<br/>[sharedPCConfiguration](/graph/api/resources/intune_deviceconfig_sharedpcconfiguration?view=graph-rest-1.0)<br/>[softwareUpdateStatusSummary](/graph/api/resources/intune_deviceconfig_softwareupdatestatussummary?view=graph-rest-1.0)<br/>[targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-1.0)<br/>targetedManagedAppPolicyAssignment<br/>[targetedManagedAppProtection](/graph/api/resources/intune_mam_targetedmanagedappprotection?view=graph-rest-1.0)<br/>[telecomExpenseManagementPartner](/graph/api/resources/intune_tem_telecomexpensemanagementpartner?view=graph-rest-1.0)<br/>[termsAndConditions](/graph/api/resources/intune_companyterms_termsandconditions?view=graph-rest-1.0)<br/>[termsAndConditionsAcceptanceStatus](/graph/api/resources/intune_companyterms_termsandconditionsacceptancestatus?view=graph-rest-1.0)<br/>[termsAndConditionsAssignment](/graph/api/resources/intune_companyterms_termsandconditionsassignment?view=graph-rest-1.0)<br/>[userInstallStateSummary](/graph/api/resources/intune_books_userinstallstatesummary?view=graph-rest-1.0)<br/>[webApp](/graph/api/resources/intune_apps_webapp?view=graph-rest-1.0)<br/>[windows10CompliancePolicy](/graph/api/resources/intune_deviceconfig_windows10compliancepolicy?view=graph-rest-1.0)<br/>[windows10CustomConfiguration](/graph/api/resources/intune_deviceconfig_windows10customconfiguration?view=graph-rest-1.0)<br/>[windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration?view=graph-rest-1.0)<br/>[windows10EnterpriseModernAppManagementConfiguration](/graph/api/resources/intune_deviceconfig_windows10enterprisemodernappmanagementconfiguration?view=graph-rest-1.0)<br/>[windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-1.0)<br/>[windows10MobileCompliancePolicy](/graph/api/resources/intune_deviceconfig_windows10mobilecompliancepolicy?view=graph-rest-1.0)<br/>[windows10SecureAssessmentConfiguration](/graph/api/resources/intune_deviceconfig_windows10secureassessmentconfiguration?view=graph-rest-1.0)<br/>[windows10TeamGeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10teamgeneralconfiguration?view=graph-rest-1.0)<br/>[windows81CompliancePolicy](/graph/api/resources/intune_deviceconfig_windows81compliancepolicy?view=graph-rest-1.0)<br/>[windows81GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows81generalconfiguration?view=graph-rest-1.0)<br/>[windowsDefenderAdvancedThreatProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windowsdefenderadvancedthreatprotectionconfiguration?view=graph-rest-1.0)<br/>[windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection?view=graph-rest-1.0)<br/>[windowsInformationProtectionAppLearningSummary](/graph/api/resources/intune_wip_windowsinformationprotectionapplearningsummary?view=graph-rest-1.0)<br/>[windowsInformationProtectionAppLockerFile](/graph/api/resources/intune_mam_windowsinformationprotectionapplockerfile?view=graph-rest-1.0)<br/>[windowsInformationProtectionNetworkLearningSummary](/graph/api/resources/intune_wip_windowsinformationprotectionnetworklearningsummary?view=graph-rest-1.0)<br/>[windowsInformationProtectionPolicy](/graph/api/resources/intune_mam_windowsinformationprotectionpolicy?view=graph-rest-1.0)<br/>[windowsMobileMSI](/graph/api/resources/intune_apps_windowsmobilemsi?view=graph-rest-1.0)<br/>[windowsPhone81CompliancePolicy](/graph/api/resources/intune_deviceconfig_windowsphone81compliancepolicy?view=graph-rest-1.0)<br/>[windowsPhone81CustomConfiguration](/graph/api/resources/intune_deviceconfig_windowsphone81customconfiguration?view=graph-rest-1.0)<br/>[windowsPhone81GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windowsphone81generalconfiguration?view=graph-rest-1.0)<br/>[windowsUniversalAppX](/graph/api/resources/intune_apps_windowsuniversalappx?view=graph-rest-1.0)<br/>[windowsUpdateForBusinessConfiguration](/graph/api/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new complex types:<br/>[allDevicesAssignmentTarget](/graph/api/resources/intune_shared_alldevicesassignmenttarget?view=graph-rest-1.0)<br/>[allLicensedUsersAssignmentTarget](/graph/api/resources/intune_shared_alllicensedusersassignmenttarget?view=graph-rest-1.0)<br/>[androidMinimumOperatingSystem](/graph/api/resources/intune_apps_androidminimumoperatingsystem?view=graph-rest-1.0)<br/>[androidMobileAppIdentifier](/graph/api/resources/intune_mam_androidmobileappidentifier?view=graph-rest-1.0)<br/>[appListItem](/graph/api/resources/intune_deviceconfig_applistitem?view=graph-rest-1.0)<br/>[bitLockerRemovableDrivePolicy](/graph/api/resources/intune_deviceconfig_bitlockerremovabledrivepolicy?view=graph-rest-1.0)<br/>[configurationManagerClientEnabledFeatures](/graph/api/resources/intune_devices_configurationmanagerclientenabledfeatures?view=graph-rest-1.0)<br/>[defenderDetectedMalwareActions](/graph/api/resources/intune_deviceconfig_defenderdetectedmalwareactions?view=graph-rest-1.0)<br/>[deleteUserFromSharedAppleDeviceActionResult](/graph/api/resources/intune_devices_deleteuserfromsharedappledeviceactionresult?view=graph-rest-1.0)<br/>[deviceActionResult](/graph/api/resources/intune_devices_deviceactionresult?view=graph-rest-1.0)<br/>[deviceAndAppManagementAssignmentTarget](/graph/api/resources/intune_shared_deviceandappmanagementassignmenttarget?view=graph-rest-1.0)<br/>[deviceCompliancePolicySettingState](/graph/api/resources/intune_deviceconfig_devicecompliancepolicysettingstate?view=graph-rest-1.0)<br/>[deviceConfigurationSettingState](/graph/api/resources/intune_deviceconfig_deviceconfigurationsettingstate?view=graph-rest-1.0)<br/>[deviceEnrollmentPlatformRestriction](/graph/api/resources/intune_onboarding_deviceenrollmentplatformrestriction?view=graph-rest-1.0)<br/>[deviceExchangeAccessStateSummary](/graph/api/resources/intune_devices_deviceexchangeaccessstatesummary?view=graph-rest-1.0)<br/>[deviceGeoLocation](/graph/api/resources/intune_devices_devicegeolocation?view=graph-rest-1.0)<br/>[deviceHealthAttestationState](/graph/api/resources/intune_devices_devicehealthattestationstate?view=graph-rest-1.0)<br/>[deviceManagementSettings](/graph/api/resources/intune_deviceconfig_devicemanagementsettings?view=graph-rest-1.0)<br/>[deviceOperatingSystemSummary](/graph/api/resources/intune_devices_deviceoperatingsystemsummary?view=graph-rest-1.0)<br/>[edgeSearchEngine](/graph/api/resources/intune_deviceconfig_edgesearchengine?view=graph-rest-1.0)<br/>[edgeSearchEngineBase](/graph/api/resources/intune_deviceconfig_edgesearchenginebase?view=graph-rest-1.0)<br/>[edgeSearchEngineCustom](/graph/api/resources/intune_deviceconfig_edgesearchenginecustom?view=graph-rest-1.0)<br/>[exclusionGroupAssignmentTarget](/graph/api/resources/intune_shared_exclusiongroupassignmenttarget?view=graph-rest-1.0)<br/>[fileEncryptionInfo](/graph/api/resources/intune_apps_fileencryptioninfo?view=graph-rest-1.0)<br/>[groupAssignmentTarget](/graph/api/resources/intune_shared_groupassignmenttarget?view=graph-rest-1.0)<br/>[intuneBrand](/graph/api/resources/intune_onboarding_intunebrand?view=graph-rest-1.0)<br/>[iosDeviceType](/graph/api/resources/intune_apps_iosdevicetype?view=graph-rest-1.0)<br/>[iosHomeScreenApp](/graph/api/resources/intune_deviceconfig_ioshomescreenapp?view=graph-rest-1.0)<br/>[iosHomeScreenFolder](/graph/api/resources/intune_deviceconfig_ioshomescreenfolder?view=graph-rest-1.0)<br/>[iosHomeScreenFolderPage](/graph/api/resources/intune_deviceconfig_ioshomescreenfolderpage?view=graph-rest-1.0)<br/>[iosHomeScreenItem](/graph/api/resources/intune_deviceconfig_ioshomescreenitem?view=graph-rest-1.0)<br/>[iosHomeScreenPage](/graph/api/resources/intune_deviceconfig_ioshomescreenpage?view=graph-rest-1.0)<br/>[iosLobAppAssignmentSettings](/graph/api/resources/intune_apps_ioslobappassignmentsettings?view=graph-rest-1.0)<br/>[iosMinimumOperatingSystem](/graph/api/resources/intune_apps_iosminimumoperatingsystem?view=graph-rest-1.0)<br/>[iosMobileAppIdentifier](/graph/api/resources/intune_mam_iosmobileappidentifier?view=graph-rest-1.0)<br/>[iosNetworkUsageRule](/graph/api/resources/intune_deviceconfig_iosnetworkusagerule?view=graph-rest-1.0)<br/>[iosNotificationSettings](/graph/api/resources/intune_deviceconfig_iosnotificationsettings?view=graph-rest-1.0)<br/>[iosStoreAppAssignmentSettings](/graph/api/resources/intune_apps_iosstoreappassignmentsettings?view=graph-rest-1.0)<br/>[iosVppAppAssignmentSettings](/graph/api/resources/intune_apps_iosvppappassignmentsettings?view=graph-rest-1.0)<br/>[ipRange](/graph/api/resources/intune_mam_iprange?view=graph-rest-1.0)<br/>[iPv4Range](/graph/api/resources/intune_mam_ipv4range?view=graph-rest-1.0)<br/>[iPv6Range](/graph/api/resources/intune_mam_ipv6range?view=graph-rest-1.0)<br/>[keyValuePair](/graph/api/resources/intune_androidforwork_keyvaluepair?view=graph-rest-1.0)<br/>[locateDeviceActionResult](/graph/api/resources/intune_devices_locatedeviceactionresult?view=graph-rest-1.0)<br/>[managedAppDiagnosticStatus](/graph/api/resources/intune_mam_managedappdiagnosticstatus?view=graph-rest-1.0)<br/>[managedAppPolicyDeploymentSummaryPerApp](/graph/api/resources/intune_mam_managedapppolicydeploymentsummaryperapp?view=graph-rest-1.0)<br/>[mediaContentRatingAustralia](/graph/api/resources/intune_deviceconfig_mediacontentratingaustralia?view=graph-rest-1.0)<br/>[mediaContentRatingCanada](/graph/api/resources/intune_deviceconfig_mediacontentratingcanada?view=graph-rest-1.0)<br/>[mediaContentRatingFrance](/graph/api/resources/intune_deviceconfig_mediacontentratingfrance?view=graph-rest-1.0)<br/>[mediaContentRatingGermany](/graph/api/resources/intune_deviceconfig_mediacontentratinggermany?view=graph-rest-1.0)<br/>[mediaContentRatingIreland](/graph/api/resources/intune_deviceconfig_mediacontentratingireland?view=graph-rest-1.0)<br/>[mediaContentRatingJapan](/graph/api/resources/intune_deviceconfig_mediacontentratingjapan?view=graph-rest-1.0)<br/>[mediaContentRatingNewZealand](/graph/api/resources/intune_deviceconfig_mediacontentratingnewzealand?view=graph-rest-1.0)<br/>[mediaContentRatingUnitedKingdom](/graph/api/resources/intune_deviceconfig_mediacontentratingunitedkingdom?view=graph-rest-1.0)<br/>[mediaContentRatingUnitedStates](/graph/api/resources/intune_deviceconfig_mediacontentratingunitedstates?view=graph-rest-1.0)<br/>[microsoftStoreForBusinessAppAssignmentSettings](/graph/api/resources/intune_apps_microsoftstoreforbusinessappassignmentsettings?view=graph-rest-1.0)<br/>[mimeContent](/graph/api/resources/intune_shared_mimecontent?view=graph-rest-1.0)<br/>[mobileAppAssignmentSettings](/graph/api/resources/intune_apps_mobileappassignmentsettings?view=graph-rest-1.0)<br/>[mobileAppIdentifier](/graph/api/resources/intune_mam_mobileappidentifier?view=graph-rest-1.0)<br/>[omaSetting](/graph/api/resources/intune_deviceconfig_omasetting?view=graph-rest-1.0)<br/>[omaSettingBase64](/graph/api/resources/intune_deviceconfig_omasettingbase64?view=graph-rest-1.0)<br/>[omaSettingBoolean](/graph/api/resources/intune_deviceconfig_omasettingboolean?view=graph-rest-1.0)<br/>[omaSettingDateTime](/graph/api/resources/intune_deviceconfig_omasettingdatetime?view=graph-rest-1.0)<br/>[omaSettingFloatingPoint](/graph/api/resources/intune_deviceconfig_omasettingfloatingpoint?view=graph-rest-1.0)<br/>[omaSettingInteger](/graph/api/resources/intune_deviceconfig_omasettinginteger?view=graph-rest-1.0)<br/>[omaSettingString](/graph/api/resources/intune_deviceconfig_omasettingstring?view=graph-rest-1.0)<br/>[omaSettingStringXml](/graph/api/resources/intune_deviceconfig_omasettingstringxml?view=graph-rest-1.0)<br/>[proxiedDomain](/graph/api/resources/intune_mam_proxieddomain?view=graph-rest-1.0)<br/>[remoteLockActionResult](/graph/api/resources/intune_devices_remotelockactionresult?view=graph-rest-1.0)<br/>[resetPasscodeActionResult](/graph/api/resources/intune_devices_resetpasscodeactionresult?view=graph-rest-1.0)<br/>[resourceAction](/graph/api/resources/intune_rbac_resourceaction?view=graph-rest-1.0)<br/>[rgbColor](/graph/api/resources/intune_onboarding_rgbcolor?view=graph-rest-1.0)<br/>[rolePermission](/graph/api/resources/intune_rbac_rolepermission?view=graph-rest-1.0)<br/>[settingSource](/graph/api/resources/intune_deviceconfig_settingsource?view=graph-rest-1.0)<br/>[sharedPCAccountManagerPolicy](/graph/api/resources/intune_deviceconfig_sharedpcaccountmanagerpolicy?view=graph-rest-1.0)<br/>[updateWindowsDeviceAccountActionParameter](/graph/api/resources/intune_devices_updatewindowsdeviceaccountactionparameter?view=graph-rest-1.0)<br/>[vppLicensingType](/graph/api/resources/intune_apps_vpplicensingtype?view=graph-rest-1.0)<br/>[windows10NetworkProxyServer](/graph/api/resources/intune_deviceconfig_windows10networkproxyserver?view=graph-rest-1.0)<br/>[windowsDefenderScanActionResult](/graph/api/resources/intune_devices_windowsdefenderscanactionresult?view=graph-rest-1.0)<br/>[windowsDeviceAccount](/graph/api/resources/intune_devices_windowsdeviceaccount?view=graph-rest-1.0)<br/>[windowsDeviceADAccount](/graph/api/resources/intune_devices_windowsdeviceadaccount?view=graph-rest-1.0)<br/>[windowsDeviceAzureADAccount](/graph/api/resources/intune_devices_windowsdeviceazureadaccount?view=graph-rest-1.0)<br/>[windowsFirewallNetworkProfile](/graph/api/resources/intune_deviceconfig_windowsfirewallnetworkprofile?view=graph-rest-1.0)<br/>[windowsInformationProtectionApp](/graph/api/resources/intune_mam_windowsinformationprotectionapp?view=graph-rest-1.0)<br/>[windowsInformationProtectionDataRecoveryCertificate](/graph/api/resources/intune_mam_windowsinformationprotectiondatarecoverycertificate?view=graph-rest-1.0)<br/>[windowsInformationProtectionDesktopApp](/graph/api/resources/intune_mam_windowsinformationprotectiondesktopapp?view=graph-rest-1.0)<br/>[windowsInformationProtectionIPRangeCollection](/graph/api/resources/intune_mam_windowsinformationprotectioniprangecollection?view=graph-rest-1.0)<br/>[windowsInformationProtectionProxiedDomainCollection](/graph/api/resources/intune_mam_windowsinformationprotectionproxieddomaincollection?view=graph-rest-1.0)<br/>[windowsInformationProtectionResourceCollection](/graph/api/resources/intune_mam_windowsinformationprotectionresourcecollection?view=graph-rest-1.0)<br/>[windowsInformationProtectionStoreApp](/graph/api/resources/intune_mam_windowsinformationprotectionstoreapp?view=graph-rest-1.0)<br/>[windowsMinimumOperatingSystem](/graph/api/resources/intune_apps_windowsminimumoperatingsystem?view=graph-rest-1.0)<br/>[windowsUpdateActiveHoursInstall](/graph/api/resources/intune_deviceconfig_windowsupdateactivehoursinstall?view=graph-rest-1.0)<br/>[windowsUpdateInstallScheduleType](/graph/api/resources/intune_deviceconfig_windowsupdateinstallscheduletype?view=graph-rest-1.0)<br/>[windowsUpdateScheduledInstall](/graph/api/resources/intune_deviceconfig_windowsupdatescheduledinstall?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the [assign](/graph/api/intune_apps_mobileapp_assign?view=graph-rest-1.0) action on [mobileApp](/graph/api/resources/intune_apps_mobileapp?view=graph-rest-1.0) |
|Addition|v1.0|Added the [commit](/graph/api/intune_apps_mobileappcontentfile_commit?view=graph-rest-1.0) action on [mobileAppContentFile](/graph/api/resources/intune_apps_mobileappcontentfile?view=graph-rest-1.0) |
|Addition|v1.0|Added the [renewUpload](/graph/api/intune_apps_mobileappcontentfile_renewupload?view=graph-rest-1.0) action on [mobileAppContentFile](/graph/api/resources/intune_apps_mobileappcontentfile?view=graph-rest-1.0) |
|Addition|v1.0|Added the [retire](/graph/api/intune_devices_manageddevice_retire?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [wipe](/graph/api/intune_devices_manageddevice_wipe?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [resetPasscode](/graph/api/intune_devices_manageddevice_resetpasscode?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [remoteLock](/graph/api/intune_devices_manageddevice_remotelock?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [requestRemoteAssistance](/graph/api/intune_devices_manageddevice_requestremoteassistance?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [disableLostMode](/graph/api/intune_devices_manageddevice_disablelostmode?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [locateDevice](/graph/api/intune_devices_manageddevice_locatedevice?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [bypassActivationLock](/graph/api/intune_devices_manageddevice_bypassactivationlock?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [rebootNow](/graph/api/intune_devices_manageddevice_rebootnow?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [shutDown](/graph/api/intune_devices_manageddevice_shutdown?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [recoverPasscode](/graph/api/intune_devices_manageddevice_recoverpasscode?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [cleanWindowsDevice](/graph/api/intune_devices_manageddevice_cleanwindowsdevice?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [logoutSharedAppleDeviceActiveUser](/graph/api/intune_devices_manageddevice_logoutsharedappledeviceactiveuser?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [deleteUserFromSharedAppleDevice](/graph/api/intune_devices_manageddevice_deleteuserfromsharedappledevice?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [syncDevice](/graph/api/intune_devices_manageddevice_syncdevice?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [windowsDefenderScan](/graph/api/intune_devices_manageddevice_windowsdefenderscan?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [windowsDefenderUpdateSignatures](/graph/api/intune_devices_manageddevice_windowsdefenderupdatesignatures?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [updateWindowsDeviceAccount](/graph/api/intune_devices_manageddevice_updatewindowsdeviceaccount?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [removeAllDevicesFromManagement](/graph/api/intune_devices_user_removealldevicesfrommanagement?view=graph-rest-1.0) action on [user](/graph/api/resources/intune_shared_user?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune_deviceconfig_deviceconfiguration_assign?view=graph-rest-1.0) action on [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune_deviceconfig_devicecompliancepolicy_assign?view=graph-rest-1.0) action on [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-1.0) |
|Addition|v1.0|Added the [scheduleActionsForRules](/graph/api/intune_deviceconfig_devicecompliancepolicy_scheduleactionsforrules?view=graph-rest-1.0) action on [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-1.0) |
|Addition|v1.0|Added the [setMobileDeviceManagementAuthority](/graph/api/intune_onboarding_organization_setmobiledevicemanagementauthority?view=graph-rest-1.0) action on [organization](/graph/api/resources/intune_onboarding_organization?view=graph-rest-1.0) |
|Addition|v1.0|Added the [syncMicrosoftStoreForBusinessApps](/graph/api/intune_onboarding_deviceappmanagement_syncmicrosoftstoreforbusinessapps?view=graph-rest-1.0) action on [deviceAppManagement](/graph/api/resources/intune_shared_deviceappmanagement?view=graph-rest-1.0) |
|Addition|v1.0|Added the [sync](/graph/api/intune_onboarding_devicemanagementexchangeconnector_sync?view=graph-rest-1.0) action on [deviceManagementExchangeConnector](/graph/api/resources/intune_onboarding_devicemanagementexchangeconnector?view=graph-rest-1.0) |
|Addition|v1.0|Added the [setPriority](/graph/api/intune_onboarding_deviceenrollmentconfiguration_setpriority?view=graph-rest-1.0) action on [deviceEnrollmentConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentconfiguration?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune_onboarding_deviceenrollmentconfiguration_assign?view=graph-rest-1.0) action on [deviceEnrollmentConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentconfiguration?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune_mam_targetedmanagedappprotection_assign?view=graph-rest-1.0) action on [targetedManagedAppProtection](/graph/api/resources/intune_mam_targetedmanagedappprotection?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune_mam_targetedmanagedappconfiguration_assign?view=graph-rest-1.0) action on [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune_mam_windowsinformationprotection_assign?view=graph-rest-1.0) action on [windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection?view=graph-rest-1.0) |
|Addition|v1.0|Added the [targetApps](/graph/api/intune_mam_managedapppolicy_targetapps?view=graph-rest-1.0) action on [managedAppPolicy](/graph/api/resources/intune_mam_managedapppolicy?view=graph-rest-1.0) |
|Addition|v1.0|Added the [targetApps](/graph/api/intune_mam_managedappprotection_targetapps?view=graph-rest-1.0) action on [managedAppProtection](/graph/api/resources/intune_mam_managedappprotection?view=graph-rest-1.0) |
|Addition|v1.0|Added the [targetApps](/graph/api/intune_mam_targetedmanagedappconfiguration_targetapps?view=graph-rest-1.0) action on [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-1.0) |
|Addition|v1.0|Added the [wipeManagedAppRegistrationsByDeviceTag](/graph/api/intune_mam_user_wipemanagedappregistrationsbydevicetag?view=graph-rest-1.0) action on [user](/graph/api/resources/intune_shared_user?view=graph-rest-1.0) |
|Addition|v1.0|Added the [sendTestMessage](/graph/api/intune_notification_notificationmessagetemplate_sendtestmessage?view=graph-rest-1.0) action on [notificationMessageTemplate](/graph/api/resources/intune_notification_notificationmessagetemplate?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune_books_managedebook_assign?view=graph-rest-1.0) action on [managedEBook](/graph/api/resources/intune_books_managedebook?view=graph-rest-1.0) |
|Addition|v1.0|Added the [beginOnboarding](/graph/api/intune_remoteassistance_remoteassistancepartner_beginonboarding?view=graph-rest-1.0) action on [remoteAssistancePartner](/graph/api/resources/intune_remoteassistance_remoteassistancepartner?view=graph-rest-1.0) |
|Addition|v1.0|Added the [disconnect](/graph/api/intune_remoteassistance_remoteassistancepartner_disconnect?view=graph-rest-1.0) action on [remoteAssistancePartner](/graph/api/resources/intune_remoteassistance_remoteassistancepartner?view=graph-rest-1.0) |
|Addition|v1.0|Added the [downloadApplePushNotificationCertificateSigningRequest](/graph/api/intune_devices_applepushnotificationcertificate_downloadapplepushnotificationcertificatesigningrequest?view=graph-rest-1.0) function on [applePushNotificationCertificate](/graph/api/resources/intune_devices_applepushnotificationcertificate?view=graph-rest-1.0) |
|Addition|v1.0|Added the [deviceConfigurationUserActivity](/graph/api/intune_deviceconfig_reportroot_deviceconfigurationuseractivity?view=graph-rest-1.0) function on [reportRoot](/graph/api/resources/intune_deviceconfig_reportroot?view=graph-rest-1.0) |
|Addition|v1.0|Added the [deviceConfigurationDeviceActivity](/graph/api/intune_deviceconfig_reportroot_deviceconfigurationdeviceactivity?view=graph-rest-1.0) function on [reportRoot](/graph/api/resources/intune_deviceconfig_reportroot?view=graph-rest-1.0) |
|Addition|v1.0|Added the [verifyWindowsEnrollmentAutoDiscovery](/graph/api/intune_onboarding_devicemanagement_verifywindowsenrollmentautodiscovery?view=graph-rest-1.0) function on [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-1.0) |
|Addition|v1.0|Added the **getUserIdsWithFlaggedAppRegistration** function on [managedAppRegistration](/graph/api/resources/intune_mam_managedappregistration?view=graph-rest-1.0) collection |
|Addition|v1.0|Added the [getManagedAppDiagnosticStatuses](/graph/api/intune_mam_user_getmanagedappdiagnosticstatuses?view=graph-rest-1.0) function on [user](/graph/api/resources/intune_shared_user?view=graph-rest-1.0) |
|Addition|v1.0|Added the [getManagedAppPolicies](/graph/api/intune_mam_user_getmanagedapppolicies?view=graph-rest-1.0) function on [user](/graph/api/resources/intune_shared_user?view=graph-rest-1.0) |
|Addition|v1.0|Added the [getEffectivePermissions](/graph/api/intune_rbac_devicemanagement_geteffectivepermissions?view=graph-rest-1.0) function on [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-1.0) |
|Change|v1.0|Added the **mobileDeviceManagementAuthority** property to the [organization](/graph/api/resources/intune_onboarding_organization?view=graph-rest-1.0) entity|
|Change|v1.0|Added the **deviceEnrollmentLimit** property to the [user](/graph/api/resources/intune_shared_user?view=graph-rest-1.0) entity|
|Change|v1.0|Added the **managedDevices**, **managedAppRegistrations** and **deviceManagementTroubleshootingEvents** navigation properties to the [user](/graph/api/resources/intune_shared_user?view=graph-rest-1.0) entity|
|||
|Addition|Beta|Added new entities:<br/>[deviceManagementScriptAssignment](/graph/api/resources/intune_devices_devicemanagementscriptassignment?view=graph-rest-beta)<br/>[iosCertificateProfile](../resources/intune_deviceconfig_ioscertificateprofile)<br/>[windowsInformationProtectionNetworkLearningSummary](/graph/api/resources/intune_wip_windowsinformationprotectionnetworklearningsummary?view=graph-rest-beta)<br/>|
|Addition|Beta|Added new complex types:<br/>[revokeAppleVppLicensesActionResult](/graph/api/resources/intune_devices_revokeapplevpplicensesactionresult?view=graph-rest-beta)<br/>[vppTokenRevokeLicensesActionResult](/graph/api/resources/intune_onboarding_vpptokenrevokelicensesactionresult?view=graph-rest-beta)<br/>|
|Addition|Beta|Added the [revokeToken](/graph/api/intune_androidforwork_androidforworkenrollmentprofile_revoketoken.md?view=graph-rest-beta) action on [androidForWorkEnrollmentProfile](/graph/api/resources/intune_androidforwork_androidforworkenrollmentprofile?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune_apps_mobileapp_assign.md?view=graph-rest-beta) action on [mobileApp](/graph/api/resources/intune_apps_mobileapp?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune_devices_devicemanagementscript_assign.md?view=graph-rest-beta) action on [deviceManagementScript](/graph/api/resources/intune_devices_devicemanagementscript?view=graph-rest-beta) |
|Addition|Beta|Added the [revokeAppleVppLicenses](/graph/api/intune_devices_manageddevice_revokeapplevpplicenses.md?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune_deviceconfig_devicecompliancepolicy_assign.md?view=graph-rest-beta) action on [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-beta) |
|Addition|Beta|Added the [revokeLicenses](/graph/api/intune_onboarding_vpptoken_revokelicenses.md?view=graph-rest-beta) action on [vppToken](/graph/api/resources/intune_onboarding_vpptoken?view=graph-rest-beta) |
|Addition|Beta|Added the [wipeManagedAppRegistrationsByDeviceTag](/graph/api/intune_mam_user_wipemanagedappregistrationsbydevicetag.md?view=graph-rest-beta) action on [user](/graph/api/resources/intune_devices_user?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune_books_managedebook_assign.md?view=graph-rest-beta) action on [managedEBook](/graph/api/resources/intune_books_managedebook?view=graph-rest-beta) |
|Addition|Beta|Added the [getEffectiveDeviceEnrollmentConfigurations](/graph/api/intune_onboarding_user_geteffectivedeviceenrollmentconfigurations.md?view=graph-rest-beta) function on [user](/graph/api/resources/intune_devices_user?view=graph-rest-beta) |
|Deletion|Beta|Removed the following entities:<br/>**appReportingOverviewStatus**<br/>**complianceSettingStateSummary**<br/>**deviceConfigurationUserStateSummary**<br/>**eBookGroupAssignment**<br/>**eBookVppGroupAssignment**<br/>**mobileAppGroupAssignment**<br/>**mobileAppVppGroupAssignment**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**androidForWorkAppConfigurationExample**<br/>**androidForWorkAppConfigurationExampleJson**<br/>**appInstallationFailure**<br/>**appsComplianceListItem**<br/>**defaultDeviceEnrollmentRestrictions**<br/>**defaultDeviceEnrollmentWindowsHelloForBusinessSettings**<br/>**deviceEnrollmentPlatformRestrictions**<br/>|
|Change|Beta|Added the **securityRequireVerifyApps**, **securityRequireSafetyNetAttestationBasicIntegrity**, **securityRequireSafetyNetAttestationCertifiedDevice**, **securityRequireGooglePlayServices**, **securityRequireUpToDateSecurityProviders** and **securityRequireCompanyPortalAppIntegrity** properties to the [androidCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidcompliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **packageId** property to the [androidForWorkApp](/graph/api/resources/intune_apps_androidforworkapp?view=graph-rest-beta) entity|
|Change|Beta|Changed the type of the following properties on the [androidForWorkAppConfigurationSchema](/graph/api/resources/intune_androidforwork_androidforworkappconfigurationschema?view=graph-rest-beta) entity:<br/>**exampleJson** from [androidForWorkAppConfigurationExample](/graph/api/resources/intune_androidforwork_androidforworkappconfigurationexample.md?view=graph-rest-beta) to Binary<br/>|
|Change|Beta|Added the **securityRequireVerifyApps**, **securityRequireSafetyNetAttestationBasicIntegrity**, **securityRequireSafetyNetAttestationCertifiedDevice**, **securityRequireGooglePlayServices**, **securityRequireUpToDateSecurityProviders** and **securityRequireCompanyPortalAppIntegrity** properties to the [androidForWorkCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidforworkcompliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **displayName**, **lastModifiedDateTime**, **enrolledDeviceCount**, **qrCodeContent** and **qrCodeImage** properties to the [androidForWorkEnrollmentProfile](/graph/api/resources/intune_androidforwork_androidforworkenrollmentprofile?view=graph-rest-beta) entity|
|Change|Beta|Removed the **isTokenActive** property from the [androidForWorkEnrollmentProfile](/graph/api/resources/intune_androidforwork_androidforworkenrollmentprofile?view=graph-rest-beta) entity|
|Change|Beta|Added the **innerAuthenticationProtocolForEapTtls**, **innerAuthenticationProtocolForPeap** and **outerIdentityPrivacyTemporaryValue** properties to the [androidForWorkEnterpriseWiFiConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkenterprisewificonfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **workProfileBlockCrossProfileCopyPaste** and **securityRequireVerifyApps** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **securityRequireVerifyApps** property to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **packageId** and **identityVersion** properties to the [androidLobApp](/graph/api/resources/intune_apps_androidlobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **packageId** property to the [androidStoreApp](/graph/api/resources/intune_apps_androidstoreapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **faceIdBlocked** property to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **members** property to the [deviceAndAppManagementRoleAssignment](/graph/api/resources/intune_rbac_deviceandappmanagementroleassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **macOSRestriction** property to the [deviceEnrollmentPlatformRestrictionsConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentplatformrestrictionsconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **whenPartnerDevicesWillBeRemovedDateTime** and **whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime** properties to the [deviceManagementPartner](/graph/api/resources/intune_onboarding_devicemanagementpartner?view=graph-rest-beta) entity|
|Change|Beta|Changed the type of the following properties on the [deviceManagementScript](/graph/api/resources/intune_devices_devicemanagementscript?view=graph-rest-beta) entity:<br/>**scriptContent** from String to Binary<br/>|
|Change|Beta|Added the **smimeEnablePerMessageSwitch** property to the [iosEasEmailProfileConfiguration](/graph/api/resources/intune_deviceconfig_ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [iosLobApp](/graph/api/resources/intune_apps_ioslobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **faceIdBlocked** property to the [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **packageId** and **identityVersion** properties to the [managedAndroidLobApp](/graph/api/resources/intune_apps_managedandroidlobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **azureADDeviceId** and **remoteAssistanceSessionErrorDetails** properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Removed the **legacyAppConfiguration** property from the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [managedIOSLobApp](/graph/api/resources/intune_apps_managedioslobapp?view=graph-rest-beta) entity|
|Change|Beta|Removed the **identityVersion** property from the [managedMobileLobApp](/graph/api/resources/intune_apps_managedmobilelobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **publishingState** property to the [mobileApp](/graph/api/resources/intune_apps_mobileapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **installState** property to the [mobileAppInstallStatus](/graph/api/resources/intune_apps_mobileappinstallstatus?view=graph-rest-beta) entity|
|Change|Beta|Removed the **identityVersion** property from the [mobileLobApp](/graph/api/resources/intune_apps_mobilelobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **allowPartnerToCollectIOSApplicationMetadata** property to the [mobileThreatDefenseConnector](/graph/api/resources/intune_onboarding_mobilethreatdefenseconnector?view=graph-rest-beta) entity|
|Change|Beta|Removed the **members** property from the [roleAssignment](/graph/api/resources/intune_rbac_roleassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **lastModifiedDateTime** property to the [termsAndConditions](/graph/api/resources/intune_companyterms_termsandconditions?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceThreatProtectionEnabled** and **deviceThreatProtectionRequiredSecurityLevel** properties to the [windows10CompliancePolicy](/graph/api/resources/intune_deviceconfig_windows10compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Removed the **minimumUpdateAutoInstallClassification** property from the [windows10CompliancePolicy](/graph/api/resources/intune_deviceconfig_windows10compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **privacyBlockPublishUserActivities** and **privacyBlockActivityFeed** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **configurationAccountType** property to the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune_deviceconfig_windows10secureassessmentconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **trustedNetworkDomains** property from the [windows10VpnConfiguration](/graph/api/resources/intune_deviceconfig_windows10vpnconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **minimumUpdateAutoInstallClassification** property from the [windows81CompliancePolicy](/graph/api/resources/intune_deviceconfig_windows81compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsAppX](/graph/api/resources/intune_apps_windowsappx?view=graph-rest-beta) entity|
|Change|Beta|Added the **daysWithoutContactBeforeUnenroll** property to the [windowsInformationProtectionPolicy](/graph/api/resources/intune_mam_windowsinformationprotectionpolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsMobileMSI](/graph/api/resources/intune_apps_windowsmobilemsi?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsPhone81AppX](/graph/api/resources/intune_apps_windowsphone81appx?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsPhoneXAP](/graph/api/resources/intune_apps_windowsphonexap?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsUniversalAppX](/graph/api/resources/intune_apps_windowsuniversalappx?view=graph-rest-beta) entity|
|Change|Beta|Added the **domainJoinConfiguration** navigation property to the [activeDirectoryWindowsAutopilotDeploymentProfile](/graph/api/resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Change|Beta|Removed the **notificationMessageTemplate** navigation property from the [deviceComplianceActionItem](/graph/api/resources/intune_deviceconfig_devicecomplianceactionitem?view=graph-rest-beta) entity|
|Change|Beta|Removed the **groupAssignments** navigation property from the [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **windowsInformationProtectionNetworkLearningSummaries** navigation property to the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Removed the **deviceConfigurationUserStateSummaries** navigation property from the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Changed the type of the following properties on the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-beta) entity:<br/>**roleAssignments** from [roleAssignment](/graph/api/resources/intune_rbac_roleassignment?view=graph-rest-beta) collection to [deviceAndAppManagementRoleAssignment](/graph/api/resources/intune_rbac_deviceandappmanagementroleassignment?view=graph-rest-beta) collection<br/>|
|Change|Beta|Added the **assignments** navigation property to the [deviceManagementScript](/graph/api/resources/intune_devices_devicemanagementscript?view=graph-rest-beta) entity|
|Change|Beta|Added the **smimeEncryptionCertificate** navigation property to the [iosEasEmailProfileConfiguration](/graph/api/resources/intune_deviceconfig_ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Changed the type of the following properties on the [iosEasEmailProfileConfiguration](/graph/api/resources/intune_deviceconfig_ioseasemailprofileconfiguration?view=graph-rest-beta) entity:<br/>**smimeSigningCertificate** from [iosCertificateProfileBase](/graph/api/resources/intune_deviceconfig_ioscertificateprofilebase?view=graph-rest-beta) to [iosCertificateProfile](/graph/api/resources/intune_deviceconfig_ioscertificateprofile?view=graph-rest-beta)<br/>|
|Change|Beta|Removed the **vppToken** navigation property from the [iosVppApp](/graph/api/resources/intune_apps_iosvppapp?view=graph-rest-beta) entity|
|Change|Beta|Removed the **groupAssignments** navigation property from the [managedEBook](/graph/api/resources/intune_books_managedebook?view=graph-rest-beta) entity|
|Change|Beta|Removed the **groupAssignments** navigation property from the [mobileApp](/graph/api/resources/intune_apps_mobileapp?view=graph-rest-beta) entity|
|Change|Beta|Removed the **depOnboardingSettings** and **appleVolumePurchaseProgramTokens** navigation properties from the [organization](/graph/api/resources/intune_onboarding_organization?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceEnrollmentConfigurations** navigation property to the [user](/graph/api/resources/intune_devices_user?view=graph-rest-beta) entity|
|Change|Beta|Removed the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties from the [deviceManagementSettings](/graph/api/resources/intune_deviceconfig_devicemanagementsettings?view=graph-rest-beta) complex type|
|Change|Beta|Added the **showDisplayNameNextToLogo** property to the [intuneBrand](/graph/api/resources/intune_onboarding_intunebrand?view=graph-rest-beta) complex type|
|Change|Beta|Added the **deviceUsageType** property to the [outOfBoxExperienceSettings](/graph/api/resources/intune_enrollment_outofboxexperiencesettings?view=graph-rest-beta) complex type|
|Change|Beta|Added the **supportsUserLicensing** and **supportsDeviceLicensing** properties to the [vppLicensingType](/graph/api/resources/intune_apps_vpplicensingtype?view=graph-rest-beta) complex type|
|Change|Beta|Removed the **actionMessage** property from the [vppTokenActionResult](/graph/api/resources/intune_onboarding_vpptokenactionresult?view=graph-rest-beta) complex type|

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the following APIs:<br>[getTeamsUserActivityUserDetail](/graph/api/reportroot_getteamsuseractivityuserdetail?view=graph-rest-1.0)<br>[getTeamsUserActivityCounts](/graph/api/reportroot_getteamsuseractivitycounts?view=graph-rest-1.0)<br>[getTeamsUserActivityUserCounts](/graph/api/reportroot_getteamsuseractivityusercounts?view=graph-rest-1.0)<br>[getTeamsDeviceUsageUserDetail](/graph/api/reportroot_getteamsdeviceusageuserdetail?view=graph-rest-1.0)<br>[getTeamsDeviceUsageUserCounts](/graph/api/reportroot_getteamsdeviceusageusercounts?view=graph-rest-1.0)<br>[getTeamsDeviceUsageDistributionUserCounts](/graph/api/reportroot_getteamsdeviceusagedistributionusercounts?view=graph-rest-1.0) |

## December 2017

### Delta query

| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Change      | v1.0    | Add optional query filtering capability to [users](/graph/api/user_delta?view=graph-rest-1.0) and [groups](/graph/api/group_delta?view=graph-rest-1.0). |

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[androidForWorkEnrollmentProfile](/graph/api/resources/intune_androidforwork_androidforworkenrollmentprofile?view=graph-rest-beta)<br/>[deviceAndAppManagementRoleAssignment](/graph/api/resources/intune_rbac_deviceandappmanagementroleassignment?view=graph-rest-beta)<br/>[deviceAndAppManagementRoleDefinition](/graph/api/resources/intune_rbac_deviceandappmanagementroledefinition?view=graph-rest-beta)<br/>[macOSLobApp](/graph/api/resources/intune_apps_macoslobapp?view=graph-rest-beta)<br/>|
|Addition|Beta|Added new complex types:<br/>[resourceAction](/graph/api/resources/intune_rbac_resourceaction?view=graph-rest-beta)<br/>[updateWindowsDeviceAccountActionParameter](/graph/api/resources/intune_devices_updatewindowsdeviceaccountactionparameter?view=graph-rest-beta)<br/>[vppTokenActionResult](/graph/api/resources/intune_onboarding_vpptokenactionresult?view=graph-rest-beta)<br/>[windowsDeviceAADAccount](/graph/api/resources/intune_devices_windowsdeviceaadaccount?view=graph-rest-beta)<br/>[windowsDeviceAccount](/graph/api/resources/intune_devices_windowsdeviceaccount?view=graph-rest-beta)<br/>[windowsDeviceADAccount](/graph/api/resources/intune_devices_windowsdeviceadaccount?view=graph-rest-beta)<br/>|
|Addition|Beta|Added the [revokeTokens](/graph/api/intune_androidforwork_androidforworkenrollmentprofile_revoketokens?view=graph-rest-beta) action on [androidForWorkEnrollmentProfile](/graph/api/resources/intune_androidforwork_androidforworkenrollmentprofile?view=graph-rest-beta) |
|Addition|Beta|Added the [createToken](/graph/api/intune_androidforwork_androidforworkenrollmentprofile_createtoken?view=graph-rest-beta) action on [androidForWorkEnrollmentProfile](/graph/api/resources/intune_androidforwork_androidforworkenrollmentprofile?view=graph-rest-beta) |
|Addition|Beta|Added the [wipe](/graph/api/intune_devices_manageddevice_wipe?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
|Addition|Beta|Added the [updateWindowsDeviceAccount](/graph/api/intune_devices_manageddevice_updatewindowsdeviceaccount?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
|Addition|Beta|Added the [revokeLicenses](/graph/api/intune_onboarding_vpptoken_revokelicenses?view=graph-rest-beta) action on [vppToken](/graph/api/resources/intune_onboarding_vpptoken?view=graph-rest-beta) |
|Addition|Beta|Added the [getDevicePasscode](/graph/api/intune_deviceconfig_devicecompliancepolicy_getdevicepasscode?view=graph-rest-beta) function on [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-beta) collection |
|Addition|Beta|Added the [getEffectivePermissions](/graph/api/intune_rbac_devicemanagement_geteffectivepermissions?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-beta) |
|Deletion|Beta|Removed the following entities:<br/>**windowsStoreForBusinessApp**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**windowsStoreForBusinessAppAssignmentSettings**<br/>|
|Change|Beta|Added the **dateAndTimeBlockChanges** property to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **enableAuthenticationViaCompanyPortal** property from the [depEnrollmentProfile](/graph/api/resources/intune_corpenrollment_depenrollmentprofile?view=graph-rest-beta) entity|
|Change|Beta|Removed the **windowsStoreForBusinessLastSuccessfulSyncDateTime**, **isEnabledForWindowsStoreForBusiness**, **windowsStoreForBusinessLanguage** and **windowsStoreForBusinessLastCompletedApplicationSyncTime** properties from the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **maximumDepTokens** and **intuneAccountId** properties to the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **enableAuthenticationViaCompanyPortal** property to the [enrollmentProfile](/graph/api/resources/intune_corpenrollment_enrollmentprofile?view=graph-rest-beta) entity|
|Change|Beta|Added the **managedDeviceName** and **partnerReportedThreatState** properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Added the **installProgressDisplayLevel** property to the [officeSuiteApp](/graph/api/resources/intune_apps_officesuiteapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **resourceScopes** property to the [roleAssignment](/graph/api/resources/intune_rbac_roleassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **rolePermissions** and **isBuiltIn** properties to the [roleDefinition](/graph/api/resources/intune_rbac_roledefinition?view=graph-rest-beta) entity|
|Change|Beta|Added the **tokenActionResults** property to the [vppToken](/graph/api/resources/intune_onboarding_vpptoken?view=graph-rest-beta) entity|
|Change|Beta|Added the **minimumUpdateAutoInstallClassification** property to the [windows10CompliancePolicy](/graph/api/resources/intune_deviceconfig_windows10compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **defenderSecurityCenterDisableAppBrowserUI**, **defenderSecurityCenterDisableFamilyUI**, **defenderSecurityCenterDisableHealthUI**, **defenderSecurityCenterDisableNetworkUI**, **defenderSecurityCenterDisableVirusUI**, **defenderSecurityCenterOrganizationDisplayName**, **defenderSecurityCenterHelpEmail**, **defenderSecurityCenterHelpPhone**, **defenderSecurityCenterHelpURL**, **defenderSecurityCenterNotificationsFromApp**, **defenderSecurityCenterITContactDisplay** and **applicationGuardAllowVirtualGPU** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **enableAutomaticRedeployment** and **authenticationAllowFIDODevice** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **trustedNetworkDomains** property to the [windows10VpnConfiguration](/graph/api/resources/intune_deviceconfig_windows10vpnconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **minimumUpdateAutoInstallClassification** property to the [windows81CompliancePolicy](/graph/api/resources/intune_deviceconfig_windows81compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **androidForWorkEnrollmentProfiles** navigation property to the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **healthAttestationSupportedStatus** property to the [deviceHealthAttestationState](/graph/api/resources/intune_devices_devicehealthattestationstate?view=graph-rest-beta) complex type|
|Change|Beta|Added the **tpmSpecificationVersion**, **operatingSystemEdition**, **deviceFullQualifiedDomainName**, **deviceGuardVirtualizationBasedSecurityHardwareRequirementState**, **deviceGuardVirtualizationBasedSecurityState** and **deviceGuardLocalSystemAuthorityCredentialGuardState** properties to the [hardwareInformation](/graph/api/resources/intune_devices_hardwareinformation?view=graph-rest-beta) complex type|
|Change|Beta|Added the **vpnConfigurationId** property to the [iosVppAppAssignmentSettings](/graph/api/resources/intune_apps_iosvppappassignmentsettings?view=graph-rest-beta) complex type|
|Change|Beta|Added the **resourceActions** property to the [rolePermission](/graph/api/resources/intune_rbac_rolepermission?view=graph-rest-beta) complex type|

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the following APIs:<br>[getEmailActivityUserDetail](/graph/api/reportroot_getemailactivityuserdetail?view=graph-rest-1.0)<br>[getEmailActivityCounts](/graph/api/reportroot_getemailactivitycounts?view=graph-rest-1.0)<br>[getEmailActivityUserCounts](/graph/api/reportroot_getemailactivityusercounts?view=graph-rest-1.0)<br>[getEmailAppUsageUserDetail](/graph/api/reportroot_getemailappusageuserdetail?view=graph-rest-1.0)<br>[getEmailAppUsageAppsUserCounts](/graph/api/reportroot_getemailappusageappsusercounts?view=graph-rest-1.0)<br>[getEmailAppUsageUserCounts](/graph/api/reportroot_getemailappusageusercounts?view=graph-rest-1.0)<br>[getEmailAppUsageVersionsUserCounts](/graph/api/reportroot_getemailappusageversionsusercounts?view=graph-rest-1.0)<br>[getMailboxUsageDetail](/graph/api/reportroot_getmailboxusagedetail?view=graph-rest-1.0)<br>[getMailboxUsageMailboxCounts](/graph/api/reportroot_getmailboxusagemailboxcounts?view=graph-rest-1.0)<br>[getMailboxUsageQuotaStatusMailboxCounts](/graph/api/reportroot_getmailboxusagequotastatusmailboxcounts?view=graph-rest-1.0)<br>[getMailboxUsageStorage](/graph/api/reportroot_getmailboxusagestorage?view=graph-rest-1.0)<br>[getOffice365ActivationsUserDetail](/graph/api/reportroot_getoffice365activationsuserdetail?view=graph-rest-1.0)<br>[getOffice365ActivationCounts](/graph/api/reportroot_getoffice365activationcounts?view=graph-rest-1.0)<br>[getOffice365ActivationsUserCounts](/graph/api/reportroot_getoffice365activationsusercounts?view=graph-rest-1.0)<br>[getOffice365ActiveUserDetail](/graph/api/reportroot_getoffice365activeuserdetail?view=graph-rest-1.0)<br>[getOffice365ActiveUserCounts](/graph/api/reportroot_getoffice365activeusercounts?view=graph-rest-1.0)<br>[getOffice365ServicesUserCounts](/graph/api/reportroot_getoffice365servicesusercounts?view=graph-rest-1.0)<br>[getOffice365GroupsActivityDetail](/graph/api/reportroot_getoffice365groupsactivitydetail?view=graph-rest-1.0)<br> [getOffice365GroupsActivityCounts](/graph/api/reportroot_getoffice365groupsactivitycounts?view=graph-rest-1.0)<br>[getOffice365GroupsActivityGroupCounts](/graph/api/reportroot_getoffice365groupsactivitygroupcounts?view=graph-rest-1.0)<br>[getOffice365GroupsActivityStorage](/graph/api/reportroot_getoffice365groupsactivitystorage?view=graph-rest-1.0)<br>[getOffice365GroupsActivityFileCounts](/graph/api/reportroot_getoffice365groupsactivityfilecounts?view=graph-rest-1.0)<br>[getOneDriveActivityUserDetail](/graph/api/reportroot_getonedriveactivityuserdetail?view=graph-rest-1.0)<br>[getOneDriveActivityUserCounts](/graph/api/reportroot_getonedriveactivityusercounts?view=graph-rest-1.0)<br>[getOneDriveActivityFileCounts](/graph/api/reportroot_getonedriveactivityfilecounts?view=graph-rest-1.0)<br>[getOneDriveUsageAccountDetail](/graph/api/reportroot_getonedriveusageaccountdetail?view=graph-rest-1.0)<br>[getOneDriveUsageAccountCounts](/graph/api/reportroot_getonedriveusageaccountcounts?view=graph-rest-1.0)<br>[getOneDriveUsageFileCounts](/graph/api/reportroot_getonedriveusagefilecounts?view=graph-rest-1.0)<br>[getOneDriveUsageStorage](/graph/api/reportroot_getonedriveusagestorage?view=graph-rest-1.0)<br>[getSharePointActivityUserDetail](/graph/api/reportroot_getsharepointactivityuserdetail?view=graph-rest-1.0)<br>[getSharePointActivityFileCounts](/graph/api/reportroot_getsharepointactivityfilecounts?view=graph-rest-1.0)<br>[getSharePointActivityUserCounts](/graph/api/reportroot_getsharepointactivityusercounts?view=graph-rest-1.0)<br>[getSharePointActivityPages](/graph/api/reportroot_getsharepointactivitypages?view=graph-rest-1.0)<br>[getSharePointSiteUsageDetail](/graph/api/reportroot_getsharepointsiteusagedetail?view=graph-rest-1.0)<br>[getSharePointSiteUsageFileCounts](/graph/api/reportroot_getsharepointsiteusagefilecounts?view=graph-rest-1.0)<br>[getSharePointSiteUsageSiteCounts](/graph/api/reportroot_getsharepointsiteusagesitecounts?view=graph-rest-1.0)<br>[getSharePointSiteUsageStorage](/graph/api/reportroot_getsharepointsiteusagestorage?view=graph-rest-1.0)<br>[getSharePointSiteUsagePages](/graph/api/reportroot_getsharepointsiteusagepages?view=graph-rest-1.0)<br>[getSkypeForBusinessActivityUserDetail](/graph/api/reportroot_getskypeforbusinessactivityuserdetail?view=graph-rest-1.0)<br>[getSkypeForBusinessActivityCounts](/graph/api/reportroot_getskypeforbusinessactivitycounts?view=graph-rest-1.0)<br>[getSkypeForBusinessActivityUserCounts](/graph/api/reportroot_getskypeforbusinessactivityusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessDeviceUsageUserDetail](/graph/api/reportroot_getskypeforbusinessdeviceusageuserdetail?view=graph-rest-1.0)<br>[getSkypeForBusinessDeviceUsageDistributionUserCounts](/graph/api/reportroot_getskypeforbusinessdeviceusagedistributionusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessDeviceUsageUserCounts](/graph/api/reportroot_getskypeforbusinessdeviceusageusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessOrganizerActivityCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivitycounts?view=graph-rest-1.0)<br>[getSkypeForBusinessOrganizerActivityUserCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivityusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessOrganizerActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivityminutecounts?view=graph-rest-1.0)<br>[getSkypeForBusinessParticipantActivityCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivitycounts?view=graph-rest-1.0)<br>[getSkypeForBusinessParticipantActivityUserCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivityusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessParticipantActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivityminutecounts?view=graph-rest-1.0)<br>[getSkypeForBusinessPeerToPeerActivityCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivitycounts?view=graph-rest-1.0)<br>[getSkypeForBusinessPeerToPeerActivityUserCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivityusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessPeerToPeerActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivityminutecounts?view=graph-rest-1.0)<br>[getYammerActivityUserDetail](/graph/api/reportroot_getyammeractivityuserdetail?view=graph-rest-1.0)<br>[getYammerActivityCounts](/graph/api/reportroot_getyammeractivitycounts?view=graph-rest-1.0)<br>[getYammerActivityUserCounts](/graph/api/reportroot_getyammeractivityusercounts?view=graph-rest-1.0)<br>[getYammerDeviceUsageUserDetail](/graph/api/reportroot_getyammerdeviceusageuserdetail?view=graph-rest-1.0)<br>[getYammerDeviceUsageDistributionUserCounts](/graph/api/reportroot_getyammerdeviceusagedistributionusercounts?view=graph-rest-1.0)<br>[getYammerDeviceUsageUserCounts](/graph/api/reportroot_getyammerdeviceusageusercounts?view=graph-rest-1.0)<br>[getYammerGroupsActivityDetail](/graph/api/reportroot_getyammergroupsactivitydetail?view=graph-rest-1.0)<br>[getYammerGroupsActivityGroupCounts](/graph/api/reportroot_getyammergroupsactivitygroupcounts?view=graph-rest-1.0)<br>[getYammerGroupsActivityCounts](/graph/api/reportroot_getyammergroupsactivitycounts?view=graph-rest-1.0).|
| Addition    | Beta    | Added the following APIs:<br>[getTeamsUserActivityUserDetail](/graph/api/reportroot_getteamsuseractivityuserdetail.md?view=graph-rest-beta)<br>[getTeamsUserActivityCounts](/graph/api/reportroot_getteamsuseractivitycounts.md?view=graph-rest-beta)<br>[getTeamsUserActivityUserCounts](/graph/api/reportroot_getteamsuseractivityusercounts.md?view=graph-rest-beta)<br>[getTeamsDeviceUsageUserDetail](/graph/api/reportroot_getteamsdeviceusageuserdetail.md?view=graph-rest-beta)<br>[getTeamsDeviceUsageUserCounts](/graph/api/reportroot_getteamsdeviceusageusercounts.md?view=graph-rest-beta)<br>[getTeamsDeviceUsageDistributionUserCounts](/graph/api/reportroot_getteamsdeviceusagedistributionusercounts.md?view=graph-rest-beta) |

## November 2017

### Azure AD synchronization APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added support for Azure AD identity synchronization, including the following resources:<br/>[Job](/graph/api/resources/synchronization_synchronizationjob.md?view=graph-rest-beta)<br/>[Schema](/graph/api/resources/synchronization_synchronizationschema.md?view=graph-rest-beta)<br/>[Template](/graph/api/resources/synchronization_synchronizationtemplate.md?view=graph-rest-beta)<br/>See the resource topics for details about the methods that are available.|

### Education APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added support for education scenarios, including the following resources:<br/>[Schools](/graph/api/resources/educationschool?view=graph-rest-beta)<br/>[Classes](/graph/api/resources/educationclass?view=graph-rest-beta)<br/>[Users](/graph/api/resources/educationuser?view=graph-rest-beta)<br/>[Assignments](/graph/api/resources/educationassignment?view=graph-rest-beta)<br/>[Submissions](/graph/api/resources/educationsubmission?view=graph-rest-beta)<br/>See the resource topics for details about the methods that are available.|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[auditEvent](/graph/api/resources/intune_auditing_auditevent?view=graph-rest-beta)<br/>[deviceManagementTroubleshootingEvent](/graph/api/resources/intune_troubleshooting_devicemanagementtroubleshootingevent?view=graph-rest-beta)<br/>[deviceSetupConfiguration](/graph/api/resources/intune_deviceconfig_devicesetupconfiguration?view=graph-rest-beta)<br/>[enrollmentTroubleshootingEvent](/graph/api/resources/intune_troubleshooting_enrollmenttroubleshootingevent?view=graph-rest-beta)<br/>[macOSOfficeSuiteApp](/graph/api/resources/intune_apps_macosofficesuiteapp?view=graph-rest-beta)<br/>[microsoftStoreForBusinessApp](/graph/api/resources/intune_apps_microsoftstoreforbusinessapp?view=graph-rest-beta)<br/>[ndesConnector](/graph/api/resources/intune_deviceconfig_ndesconnector?view=graph-rest-beta)<br/>|
|Addition|Beta|Added new complex types:<br/>[auditActor](/graph/api/resources/intune_auditing_auditactor?view=graph-rest-beta)<br/>[auditProperty](/graph/api/resources/intune_auditing_auditproperty?view=graph-rest-beta)<br/>[auditResource](/graph/api/resources/intune_auditing_auditresource?view=graph-rest-beta)<br/>[bulkManagedDeviceActionResult](/graph/api/resources/intune_devices_bulkmanageddeviceactionresult?view=graph-rest-beta)<br/>[deviceProtectionOverview](/graph/api/resources/intune_devices_deviceprotectionoverview?view=graph-rest-beta)<br/>[microsoftStoreForBusinessAppAssignmentSettings](/graph/api/resources/intune_apps_microsoftstoreforbusinessappassignmentsettings?view=graph-rest-beta)<br/>[operatingSystemVersionRange](/graph/api/resources/intune_deviceconfig_operatingsystemversionrange?view=graph-rest-beta)<br/>[remoteLockActionResult](/graph/api/resources/intune_devices_remotelockactionresult?view=graph-rest-beta)<br/>|
|Addition|Beta|Added the executeAction action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) collection |
|Addition|Beta|Added the [wipe](/graph/api/intune_devices_manageddevice_wipe.md?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
|Addition|Beta|Added the [shutDown](/graph/api/intune_devices_manageddevice_shutdown.md?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune_deviceconfig_deviceconfiguration_assign.md?view=graph-rest-beta) action on [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added the [syncMicrosoftStoreForBusinessApps](/graph/api/intune_onboarding_deviceappmanagement_syncmicrosoftstoreforbusinessapps.md?view=graph-rest-beta) action on [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) |
|Addition|Beta|Added the setDefaultProfile action on [enrollmentProfile](/graph/api/resources/intune_corpenrollment_enrollmentprofile?view=graph-rest-beta) |
|Addition|Beta|Added the shareForSchoolDataSyncService action on [depOnboardingSetting](/graph/api/resources/intune_onboarding_deponboardingsetting?view=graph-rest-beta) |
|Addition|Beta|Added the unshareForSchoolDataSyncService action on [depOnboardingSetting](/graph/api/resources/intune_onboarding_deponboardingsetting?view=graph-rest-beta) |
|Addition|Beta|Added the getAuditCategories function on [auditEvent](/graph/api/resources/intune_auditing_auditevent?view=graph-rest-beta) collection |
|Addition|Beta|Added the getAuditActivityTypes function on [auditEvent](/graph/api/resources/intune_auditing_auditevent?view=graph-rest-beta) collection |
|Deletion|Beta|Removed the following entities:<br/>**mobileAppIdentifierDeployment**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**windowsInformationProtectionCloudResource**<br/>**windowsInformationProtectionCloudResourceCollection**<br/>|
|Change|Beta|Changed the following properties on the [androidDeviceComplianceLocalActionLockDeviceWithPasscode](/graph/api/resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode?view=graph-rest-beta) entity:<br/>**passcode** from required to optional<br/>|
|Change|Beta|Added the **microsoftStoreForBusinessLastSuccessfulSyncDateTime**, **isEnabledForMicrosoftStoreForBusiness**, **microsoftStoreForBusinessLanguage** and **microsoftStoreForBusinessLastCompletedApplicationSyncTime** properties to the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **target** property to the [deviceConfigurationAssignment](/graph/api/resources/intune_deviceconfig_deviceconfigurationassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceProtectionOverview** property to the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **exchangeAlias** and **exchangeOrganization** properties to the [deviceManagementExchangeConnector](/graph/api/resources/intune_onboarding_devicemanagementexchangeconnector?view=graph-rest-beta) entity|
|Change|Beta|Added the **appStoreUrl** and **minimumSupportedOperatingSystem** properties to the [managedAndroidStoreApp](/graph/api/resources/intune_apps_managedandroidstoreapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **remoteAssistanceSessionErrorString** property to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Added the **appStoreUrl**, **applicableDeviceType** and **minimumSupportedOperatingSystem** properties to the [managedIOSStoreApp](/graph/api/resources/intune_apps_managediosstoreapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **notApplicableDeviceCount**, **pendingInstallDeviceCount**, **notApplicableUserCount** and **pendingInstallUserCount** properties to the [mobileAppInstallSummary](/graph/api/resources/intune_apps_mobileappinstallsummary?view=graph-rest-beta) entity|
|Change|Beta|Removed the **targetedSecurityGroupIds** and **targetedSecurityGroupsCount** properties from the [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **targetedSecurityGroupsCount** and **targetedSecurityGroupIds** properties from the [targetedManagedAppProtection](/graph/api/resources/intune_mam_targetedmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **validOperatingSystemBuildRanges** property to the [windows10CompliancePolicy](/graph/api/resources/intune_deviceconfig_windows10compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **activeFirewallRequired**, **uacRequired** and **validOperatingSystemBuildRanges** properties to the [windows10MobileCompliancePolicy](/graph/api/resources/intune_deviceconfig_windows10mobilecompliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **enableExpeditedTelemetryReporting** property to the [windowsDefenderAdvancedThreatProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windowsdefenderadvancedthreatprotectionconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **allowedApps**, **enterpriseCloudResources** and **targetedSecurityGroupIds** properties from the [windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **ignoreVersionDetection** property to the [windowsMobileMSI](/graph/api/resources/intune_apps_windowsmobilemsi?view=graph-rest-beta) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** navigation property from the [androidManagedAppProtection](/graph/api/resources/intune_mam_androidmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** navigation property from the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **deviceConfiguration** navigation property from the [deviceConfigurationAssignment](/graph/api/resources/intune_deviceconfig_deviceconfigurationassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceConfiguration** navigation property to the [deviceConfigurationGroupAssignment](/graph/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceSetupConfigurations**, **ndesConnectors**, **exchangeOnPremisesPolicies**, **conditionalAccessSettings**, **auditEvents** and **troubleshootingEvents** navigation properties to the [deviceManagement](/graph/api/resources/intune_androidforwork_devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** navigation property from the [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **windowsProtectionState** navigation property to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** and **targetedSecurityGroups** navigation properties from the [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **targetedSecurityGroups** navigation property from the [targetedManagedAppProtection](/graph/api/resources/intune_mam_targetedmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceManagementTroubleshootingEvents** navigation property to the [user](/graph/api/resources/intune_devices_user?view=graph-rest-beta) entity|
|Change|Beta|Removed the **allowedAppLockerFiles** navigation property from the [windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection?view=graph-rest-beta) entity|
|Change|Beta|Removed the **windowsProtectionState** navigation property from the [windowsManagedDevice](/graph/api/resources/intune_devices_windowsmanageddevice?view=graph-rest-beta) entity|
|Change|Beta|Added the **v11_0** property to the [iosMinimumOperatingSystem](/graph/api/resources/intune_apps_iosminimumoperatingsystem?view=graph-rest-beta) complex type|
|Change|Beta|Added the **denied** property to the [windowsInformationProtectionApp](/graph/api/resources/intune_mam_windowsinformationprotectionapp?view=graph-rest-beta) complex type|

### Reports APIs
| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added JSON support for the following APIs:<br>[getEmailActivityUserDetail](/graph/api/reportroot_getemailactivityuserdetail.md?view=graph-rest-beta)<br>[getEmailActivityCounts](/graph/api/reportroot_getemailactivitycounts.md?view=graph-rest-beta)<br>[getEmailActivityUserCounts](/graph/api/reportroot_getemailactivityusercounts.md?view=graph-rest-beta)<br>[getEmailAppUsageUserDetail](/graph/api/reportroot_getemailappusageuserdetail.md?view=graph-rest-beta)<br>[getEmailAppUsageAppsUserCounts](/graph/api/reportroot_getemailappusageappsusercounts.md?view=graph-rest-beta)<br>[getEmailAppUsageUserCounts](/graph/api/reportroot_getemailappusageusercounts.md?view=graph-rest-beta)<br>[getEmailAppUsageVersionsUserCounts](/graph/api/reportroot_getemailappusageversionsusercounts.md?view=graph-rest-beta)<br>[getMailboxUsageDetail](/graph/api/reportroot_getmailboxusagedetail.md?view=graph-rest-beta)<br>[getMailboxUsageMailboxCounts](/graph/api/reportroot_getmailboxusagemailboxcounts.md?view=graph-rest-beta)<br>[getMailboxUsageQuotaStatusMailboxCounts](/graph/api/reportroot_getmailboxusagequotastatusmailboxcounts.md?view=graph-rest-beta)<br>[getMailboxUsageStorage](/graph/api/reportroot_getmailboxusagestorage.md?view=graph-rest-beta)<br>[getOffice365ActivationsUserDetail](/graph/api/reportroot_getoffice365activationsuserdetail.md?view=graph-rest-beta)<br>[getOffice365ActivationCounts](/graph/api/reportroot_getoffice365activationcounts.md?view=graph-rest-beta)<br>[getOffice365ActivationsUserCounts](/graph/api/reportroot_getoffice365activationsusercounts.md?view=graph-rest-beta)<br>[getOffice365ActiveUserDetail](/graph/api/reportroot_getoffice365activeuserdetail.md?view=graph-rest-beta)<br>[getOffice365ActiveUserCounts](/graph/api/reportroot_getoffice365activeusercounts.md?view=graph-rest-beta)<br>[getOffice365ServicesUserCounts](/graph/api/reportroot_getoffice365servicesusercounts.md?view=graph-rest-beta)<br>[getOffice365GroupsActivityDetail](/graph/api/reportroot_getoffice365groupsactivitydetail.md?view=graph-rest-beta)<br> [getOffice365GroupsActivityCounts](/graph/api/reportroot_getoffice365groupsactivitycounts.md?view=graph-rest-beta)<br>[getOffice365GroupsActivityGroupCounts](/graph/api/reportroot_getoffice365groupsactivitygroupcounts.md?view=graph-rest-beta)<br>[getOffice365GroupsActivityStorage](/graph/api/reportroot_getoffice365groupsactivitystorage.md?view=graph-rest-beta)<br>[getOffice365GroupsActivityFileCounts](/graph/api/reportroot_getoffice365groupsactivityfilecounts.md?view=graph-rest-beta)<br>[getOneDriveActivityUserDetail](/graph/api/reportroot_getonedriveactivityuserdetail.md?view=graph-rest-beta)<br>[getOneDriveActivityUserCounts](/graph/api/reportroot_getonedriveactivityusercounts.md?view=graph-rest-beta)<br>[getOneDriveActivityFileCounts](/graph/api/reportroot_getonedriveactivityfilecounts.md?view=graph-rest-beta)<br>[getOneDriveUsageAccountDetail](/graph/api/reportroot_getonedriveusageaccountdetail.md?view=graph-rest-beta)<br>[getOneDriveUsageAccountCounts](/graph/api/reportroot_getonedriveusageaccountcounts.md?view=graph-rest-beta)<br>[getOneDriveUsageFileCounts](/graph/api/reportroot_getonedriveusagefilecounts.md?view=graph-rest-beta)<br>[getOneDriveUsageStorage](/graph/api/reportroot_getonedriveusagestorage.md?view=graph-rest-beta)<br>[getSharePointActivityUserDetail](/graph/api/reportroot_getsharepointactivityuserdetail.md?view=graph-rest-beta)<br>[getSharePointActivityFileCounts](/graph/api/reportroot_getsharepointactivityfilecounts.md?view=graph-rest-beta)<br>[getSharePointActivityUserCounts](/graph/api/reportroot_getsharepointactivityusercounts.md?view=graph-rest-beta)<br>[getSharePointActivityPages](/graph/api/reportroot_getsharepointactivitypages.md?view=graph-rest-beta)<br>[getSharePointSiteUsageDetail](/graph/api/reportroot_getsharepointsiteusagedetail.md?view=graph-rest-beta)<br>[getSharePointSiteUsageFileCounts](/graph/api/reportroot_getsharepointsiteusagefilecounts.md?view=graph-rest-beta)<br>[getSharePointSiteUsageSiteCounts](/graph/api/reportroot_getsharepointsiteusagesitecounts.md?view=graph-rest-beta)<br>[getSharePointSiteUsageStorage](/graph/api/reportroot_getsharepointsiteusagestorage.md?view=graph-rest-beta)<br>[getSharePointSiteUsagePages](/graph/api/reportroot_getsharepointsiteusagepages.md?view=graph-rest-beta)<br>[getSkypeForBusinessActivityUserDetail](/graph/api/reportroot_getskypeforbusinessactivityuserdetail.md?view=graph-rest-beta)<br>[getSkypeForBusinessActivityCounts](/graph/api/reportroot_getskypeforbusinessactivitycounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessActivityUserCounts](/graph/api/reportroot_getskypeforbusinessactivityusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageUserDetail](/graph/api/reportroot_getskypeforbusinessdeviceusageuserdetail.md?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageDistributionUserCounts](/graph/api/reportroot_getskypeforbusinessdeviceusagedistributionusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageUserCounts](/graph/api/reportroot_getskypeforbusinessdeviceusageusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivitycounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityUserCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivityusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivityminutecounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivitycounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityUserCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivityusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivityminutecounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivitycounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityUserCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivityusercounts.md?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivityminutecounts.md?view=graph-rest-beta)<br>[getYammerActivityUserDetail](/graph/api/reportroot_getyammeractivityuserdetail.md?view=graph-rest-beta)<br>[getYammerActivityCounts](/graph/api/reportroot_getyammeractivitycounts.md?view=graph-rest-beta)<br>[getYammerActivityUserCounts](/graph/api/reportroot_getyammeractivityusercounts.md?view=graph-rest-beta)<br>[getYammerDeviceUsageUserDetail](/graph/api/reportroot_getyammerdeviceusageuserdetail.md?view=graph-rest-beta)<br>[getYammerDeviceUsageDistributionUserCounts](/graph/api/reportroot_getyammerdeviceusagedistributionusercounts.md?view=graph-rest-beta)<br>[getYammerDeviceUsageUserCounts](/graph/api/reportroot_getyammerdeviceusageusercounts.md?view=graph-rest-beta)<br>[getYammerGroupsActivityDetail](/graph/api/reportroot_getyammergroupsactivitydetail.md?view=graph-rest-beta)<br>[getYammerGroupsActivityGroupCounts](/graph/api/reportroot_getyammergroupsactivitygroupcounts.md?view=graph-rest-beta)<br>[getYammerGroupsActivityCounts](/graph/api/reportroot_getyammergroupsactivitycounts.md?view=graph-rest-beta). |

### Webhooks

| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Breaking change | Beta and v1.0 | Reduced [webhooks](/graph/api/resources/webhooks?view=graph-rest-1.0) [maximum length of subscription expiration time](/graph/api/resources/subscription.md#maximum-length-of-subscription-per-resource-type?view=graph-rest-1.0) for drive root items. The new value is the supported maximum expiration time for drive root items. |

## October 2017

### Azure AD APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
|Addition|Beta|Added the [identityProvider](/graph/api/resources/identityprovider.md?view=graph-rest-beta) entity and the [create](/graph/api/identityprovider_post_identityproviders.md?view=graph-rest-beta), [list](/graph/api/identityprovider_list.md?view=graph-rest-beta), [get](/graph/api/identityprovider_get.md?view=graph-rest-beta), [update](/graph/api/identityprovider_update.md?view=graph-rest-beta), and [delete](/graph/api/identityprovider_delete.md?view=graph-rest-beta) operations.|


### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[androidDeviceComplianceLocalActionLockDeviceWithPasscode](/graph/api/resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode?view=graph-rest-beta)<br/>[iosLobAppProvisioningConfigurationAssignment](/graph/api/resources/intune_apps_ioslobappprovisioningconfigurationassignment?view=graph-rest-beta)<br/>[iosVppEBookAssignment](/graph/api/resources/intune_books_iosvppebookassignment?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationAssignment](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationassignment?view=graph-rest-beta)<br/>[managedEBookAssignment](/graph/api/resources/intune_books_managedebookassignment?view=graph-rest-beta)<br/>[managedMobileApp](/graph/api/resources/intune_mam_managedmobileapp?view=graph-rest-beta)<br/>[mobileAppAssignment](/graph/api/resources/intune_apps_mobileappassignment?view=graph-rest-beta)<br/>[termsAndConditionsAssignment](/graph/api/resources/intune_companyterms_termsandconditionsassignment?view=graph-rest-beta)<br/>[vppToken](/graph/api/resources/intune_onboarding_vpptoken?view=graph-rest-beta)<br/>[windows10PFXImportCertificateProfile](/graph/api/resources/intune_deviceconfig_windows10pfximportcertificateprofile?view=graph-rest-beta)<br/>[windowsAssignedAccessProfile](/graph/api/resources/intune_deviceconfig_windowsassignedaccessprofile?view=graph-rest-beta)<br/>[windowsDomainJoinConfiguration](/graph/api/resources/intune_deviceconfig_windowsdomainjoinconfiguration?view=graph-rest-beta)<br/>|
|Addition|Beta|Added new complex types:<br/>[iosLobAppAssignmentSettings](/graph/api/resources/intune_apps_ioslobappassignmentsettings?view=graph-rest-beta)<br/>[iosSingleSignOnSettings](/graph/api/resources/intune_deviceconfig_iossinglesignonsettings?view=graph-rest-beta)<br/>[iosStoreAppAssignmentSettings](/graph/api/resources/intune_apps_iosstoreappassignmentsettings?view=graph-rest-beta)<br/>[iosVppAppAssignmentSettings](/graph/api/resources/intune_apps_iosvppappassignmentsettings?view=graph-rest-beta)<br/>[mobileAppAssignmentSettings](/graph/api/resources/intune_apps_mobileappassignmentsettings?view=graph-rest-beta)<br/>[proxiedDomain](/graph/api/resources/intune_deviceconfig_proxieddomain?view=graph-rest-beta)<br/>[windowsInformationProtectionProxiedDomainCollection](/graph/api/resources/intune_mam_windowsinformationprotectionproxieddomaincollection?view=graph-rest-beta)<br/>[windowsStoreForBusinessAppAssignmentSettings](/graph/api/resources/intune_apps_windowsstoreforbusinessappassignmentsettings?view=graph-rest-beta)<br/>|
|Addition|Beta|Added the [assign](/graph/api/intune_apps_mobileapp_assign.md?view=graph-rest-beta) action on [mobileApp](/graph/api/resources/intune_apps_mobileapp?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune_apps_ioslobappprovisioningconfiguration_assign.md?view=graph-rest-beta) action on [iosLobAppProvisioningConfiguration](/graph/api/resources/intune_apps_ioslobappprovisioningconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune_apps_manageddevicemobileappconfiguration_assign.md?view=graph-rest-beta) action on [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune_deviceconfig_devicecompliancepolicy_assign.md?view=graph-rest-beta) action on [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-beta) |
|Addition|Beta|Added the [assignedAccessMultiModeProfiles](/graph/api/intune_deviceconfig_deviceconfiguration_assignedaccessmultimodeprofiles.md?view=graph-rest-beta) action on [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added the [syncLicenses](/graph/api/intune_onboarding_vpptoken_synclicenses.md?view=graph-rest-beta) action on [vppToken](/graph/api/resources/intune_onboarding_vpptoken?view=graph-rest-beta) |
|Addition|Beta|Added the [targetApps](/graph/api/intune_mam_managedapppolicy_targetapps.md?view=graph-rest-beta) action on [managedAppPolicy](/graph/api/resources/intune_mam_managedapppolicy?view=graph-rest-beta) |
|Addition|Beta|Added the [targetApps](/graph/api/intune_mam_managedappprotection_targetapps.md?view=graph-rest-beta) action on [managedAppProtection](/graph/api/resources/intune_mam_managedappprotection?view=graph-rest-beta) |
|Addition|Beta|Added the [targetApps](/graph/api/intune_mam_targetedmanagedappconfiguration_targetapps.md?view=graph-rest-beta) action on [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune_books_managedebook_assign.md?view=graph-rest-beta) action on [managedEBook](/graph/api/resources/intune_books_managedebook?view=graph-rest-beta) |
|Deletion|Beta|Removed the following entities:<br/>**cloudPkiSubscription**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**cloudPkiAdministratorCredentials**<br/>**windowsNetworkIsolationCloudResource**<br/>**windowsNetworkIsolationCloudResourceCollection**<br/>**windowsNetworkIsolationIPRangeCollection**<br/>**windowsNetworkIsolationResourceCollection**<br/>|
|Change|Beta|Added the **gracePeriodInMinutes** property to the [androidDeviceComplianceLocalActionBase](/graph/api/resources/intune_deviceconfig_androiddevicecompliancelocalactionbase?view=graph-rest-beta) entity|
|Change|Beta|Removed the **enableSplitTunneling** property from the [androidForWorkVpnConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkvpnconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **versionName** and **versionCode** properties to the [androidLobApp](/graph/api/resources/intune_apps_androidlobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **minimumRequiredPatchVersion** and **minimumWarningPatchVersion** properties to the [androidManagedAppProtection](/graph/api/resources/intune_mam_androidmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **minimumRequiredPatchVersion** and **minimumWarningPatchVersion** properties to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **target** property to the [deviceCompliancePolicyAssignment](/graph/api/resources/intune_deviceconfig_devicecompliancepolicyassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **singleSignOnSettings** property to the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune_deviceconfig_iosdevicefeaturesconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **versionNumber** and **buildNumber** properties to the [iosLobApp](/graph/api/resources/intune_apps_ioslobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **bundleId** property to the [iosVppApp](/graph/api/resources/intune_apps_iosvppapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **preSharedKey** property to the [iosWiFiConfiguration](/graph/api/resources/intune_deviceconfig_ioswificonfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **versionName** and **versionCode** properties to the [managedAndroidLobApp](/graph/api/resources/intune_apps_managedandroidlobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **periodBeforePinReset** property to the [managedAppProtection](/graph/api/resources/intune_mam_managedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **subscriberCarrier**, **meid**, **totalStorageSpaceInBytes** and **freeStorageSpaceInBytes** properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Removed the **enrollmentType** property from the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Added the **versionNumber** and **buildNumber** properties to the [managedIOSLobApp](/graph/api/resources/intune_apps_managedioslobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **displayVersion** property to the [mobileAppInstallStatus](/graph/api/resources/intune_apps_mobileappinstallstatus?view=graph-rest-beta) entity|
|Change|Beta|Removed the **defaultDeviceEnrollmentRestrictions**, **defaultDeviceEnrollmentWindowsHelloForBusinessSettings** and **defaultDeviceEnrollmentLimit** properties from the [organization](/graph/api/resources/intune_onboarding_organization?view=graph-rest-beta) entity|
|Change|Beta|Added the **isAssigned** property to the [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **isAssigned** property to the [targetedManagedAppProtection](/graph/api/resources/intune_mam_targetedmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **activeFirewallRequired**, **uacRequired**, **defenderEnabled**, **defenderVersion**, **signatureOutOfDate** and **rtpEnabled** properties to the [windows10CompliancePolicy](/graph/api/resources/intune_deviceconfig_windows10compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignedAccessSingleModeUserName**, **assignedAccessSingleModeAppUserModelId**, **microsoftAccountSignInAssistantSettings**, **authenticationAllowSecondaryDevice**, **cryptographyAllowFipsAlgorithmPolicy**, **securityBlockAzureADJoinedDevicesAutoEncryption**, **systemTelemetryProxyServer**, **inkWorkspaceAccess**, **inkWorkspaceBlockSuggestedApps**, **defenderCloudBlockLevel** and **defenderCloudExtendedTimeout** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **protectedApps**, **enterpriseProxiedDomains** and **isAssigned** properties to the [windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **productVersion** property to the [windowsMobileMSI](/graph/api/resources/intune_apps_windowsmobilemsi?view=graph-rest-beta) entity|
|Change|Beta|Added the **apps** navigation property to the [androidManagedAppProtection](/graph/api/resources/intune_mam_androidmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **apps** navigation property to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **vppTokens** navigation property to the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Removed the **deviceCompliancePolicy** navigation property from the [deviceCompliancePolicyAssignment](/graph/api/resources/intune_deviceconfig_devicecompliancepolicyassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceCompliancePolicy** navigation property to the [deviceCompliancePolicyGroupAssignment](/graph/api/resources/intune_deviceconfig_devicecompliancepolicygroupassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityCertificateForClientAuthentication** navigation property to the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune_deviceconfig_iosdevicefeaturesconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune_apps_ioslobappprovisioningconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **apps** navigation property to the [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [managedEBook](/graph/api/resources/intune_books_managedebook?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [mobileApp](/graph/api/resources/intune_apps_mobileapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **apps** navigation property to the [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [termsAndConditions](/graph/api/resources/intune_companyterms_termsandconditions?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignedAccessMultiModeProfiles** navigation property to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **protectedAppLockerFiles** navigation property to the [windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **port** and **forceTls** properties to the [airPrintDestination](/graph/api/resources/intune_deviceconfig_airprintdestination?view=graph-rest-beta) complex type|
|Change|Beta|Changed the type of the following properties on the [deviceCompliancePolicySettingState](/graph/api/resources/intune_deviceconfig_devicecompliancepolicysettingstate?view=graph-rest-beta) complex type:<br/>**errorCode** from Int32 to Int64<br/>|
|Change|Beta|Changed the type of the following properties on the [deviceConfigurationSettingState](/graph/api/resources/intune_deviceconfig_deviceconfigurationsettingstate?view=graph-rest-beta) complex type:<br/>**errorCode** from Int32 to Int64<br/>|
|Change|Beta|Changed the type of the following properties on the [windowsNetworkIsolationPolicy](/graph/api/resources/intune_deviceconfig_windowsnetworkisolationpolicy?view=graph-rest-beta) complex type:<br/>**enterpriseCloudResources** from [windowsNetworkIsolationCloudResourceCollection](/graph/api/resources/intune_deviceconfig_windowsNetworkIsolationCloudResourceCollection.md?view=graph-rest-beta) to [proxiedDomain](/graph/api/resources/intune_deviceconfig_proxieddomain?view=graph-rest-beta) collection<br/>**enterpriseInternalProxyServers** from windowsNetworkIsolationResourceCollection to String collection<br/>**enterpriseIPRanges** from windowsNetworkIsolationIPRangeCollection to [ipRange](/graph/api/resources/intune_deviceconfig_iprange?view=graph-rest-beta) collection<br/>**enterpriseNetworkDomainNames** from windowsNetworkIsolationResourceCollection to String collection<br/>**enterpriseProxyServers** from windowsNetworkIsolationResourceCollection to String collection<br/>**neutralDomainResources** from windowsNetworkIsolationResourceCollection to String collection<br/>|

### Microsoft Teams APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new [team](/graph/api/resources/team.md?view=graph-rest-beta) entity.|
|Addition|Beta|Added [create](/graph/api/team_put_teams.md?view=graph-rest-beta), [get](/graph/api/team_get.md?view=graph-rest-beta), and [update](/graph/api/team_update.md?view=graph-rest-beta) operations on [team](/graph/api/resources/team.md?view=graph-rest-beta) entity.|

### Outlook messages

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Change          | v1.0 and beta | This behavior enhancement is about getting a shared mail folder or its message contents, when a user has shared a mail folder with the signed-in user, or has delegated the user's mailbox to the signed-in user. In such situations, an app can specify that user's ID or user principal name to [get that shared mail folder](/graph/api/mailfolder_get?view=graph-rest-1.0), or [get the messages in that shared calendar](/graph/api/user_list_messages?view=graph-rest-1.0), as long as the signed-in user has provided delegated permissions to the app. |


### Outlook user choices

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
|Addition | Beta | Added the new **workingHours** property to [mailboxSettings](/graph/api/resources/mailboxsettings.md?view=graph-rest-beta). See [workingHours resource type](/graph/api/resources/workinghours.md?view=graph-rest-beta) for information on the supported use cases.|
|Addition | Beta | Added the following new complex types: <br> [workingHours](/graph/api/resources/workinghours.md?view=graph-rest-beta) <br> [timeZoneBase](/graph/api/resources/timezonebase.md?view=graph-rest-beta) <br> [customTimeZone](/graph/api/resources/customtimezone.md?view=graph-rest-beta) <br> [standardTimeZoneOffset](/graph/api/resources/standardtimezoneoffset.md?view=graph-rest-beta) <br> [daylightTimeZoneOffset](/graph/api/resources/daylighttimezoneoffset.md?view=graph-rest-beta)|


### Reports APIs
| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Change      | Beta    | Added the [getEmailActivityUserDetail](/graph/api/reportroot_getemailactivityuserdetail.md?view=graph-rest-beta), [getEmailActivityCounts](/graph/api/reportroot_getemailactivitycounts.md?view=graph-rest-beta), and [getEmailActivityUserCounts](/graph/api/reportroot_getemailactivityusercounts.md?view=graph-rest-beta) APIs. These replaced the EmailActivity API. |
| Change      | Beta    | Added the [getEmailAppUsageUserDetail](/graph/api/reportroot_getemailappusageuserdetail.md?view=graph-rest-beta), [getEmailAppUsageAppsUserCounts](/graph/api/reportroot_getemailappusageappsusercounts.md?view=graph-rest-beta), [getEmailAppUsageUserCounts](/graph/api/reportroot_getemailappusageusercounts.md?view=graph-rest-beta), and [getEmailAppUsageVersionsUserCounts](/graph/api/reportroot_getemailappusageversionsusercounts.md?view=graph-rest-beta) APIs. These replaced the EmailAppUsage API. |
| Change      | Beta    | Added the [getMailboxUsageDetail](/graph/api/reportroot_getmailboxusagedetail.md?view=graph-rest-beta), [getMailboxUsageMailboxCounts](/graph/api/reportroot_getmailboxusagemailboxcounts.md?view=graph-rest-beta), [getMailboxUsageQuotaStatusMailboxCounts](/graph/api/reportroot_getmailboxusagequotastatusmailboxcounts.md?view=graph-rest-beta), and [getMailboxUsageStorage](/graph/api/reportroot_getmailboxusagestorage.md?view=graph-rest-beta) APIs. These replaced the MailboxUsage API. |
| Change      | Beta    | Added the [getOffice365ActivationsUserDetail](/graph/api/reportroot_getoffice365activationsuserdetail.md?view=graph-rest-beta), [getOffice365ActivationCounts](/graph/api/reportroot_getoffice365activationcounts.md?view=graph-rest-beta), and [getOffice365ActivationsUserCounts](/graph/api/reportroot_getoffice365activationsusercounts.md?view=graph-rest-beta) APIs. These replaced the Office365Activations API. |
| Change      | Beta    | Added the [getOffice365ActiveUserDetail](/graph/api/reportroot_getoffice365activeuserdetail.md?view=graph-rest-beta), [getOffice365ActiveUserCounts](/graph/api/reportroot_getoffice365activeusercounts.md?view=graph-rest-beta), and [getOffice365ServicesUserCounts](/graph/api/reportroot_getoffice365servicesusercounts.md?view=graph-rest-beta) APIs. These replaced the Office365ActiveUser API. |
| Change      | Beta    | Added the [getOffice365GroupsActivityDetail](/graph/api/reportroot_getoffice365groupsactivitydetail.md?view=graph-rest-beta), [getOffice365GroupsActivityCounts](/graph/api/reportroot_getoffice365groupsactivitycounts.md?view=graph-rest-beta),[getOffice365GroupsActivityGroupCounts](/graph/api/reportroot_getoffice365groupsactivitygroupcounts.md?view=graph-rest-beta), [getOffice365GroupsActivityStorage](/graph/api/reportroot_getoffice365groupsactivitystorage.md?view=graph-rest-beta), and [getOffice365GroupsActivityFileCounts](/graph/api/reportroot_getoffice365groupsactivityfilecounts.md?view=graph-rest-beta) APIs. These replaced the Office365GroupsActivity API. |
| Change      | Beta    | Added the [getOneDriveActivityUserDetail](/graph/api/reportroot_getonedriveactivityuserdetail.md?view=graph-rest-beta), [getOneDriveActivityUserCounts](/graph/api/reportroot_getonedriveactivityusercounts.md?view=graph-rest-beta), and [getOneDriveActivityFileCounts](/graph/api/reportroot_getonedriveactivityfilecounts.md?view=graph-rest-beta) APIs. These replaced the OneDriveActivity API. |
| Change      | Beta    | Added the [getOneDriveUsageAccountDetail](/graph/api/reportroot_getonedriveusageaccountdetail.md?view=graph-rest-beta), [getOneDriveUsageAccountCounts](/graph/api/reportroot_getonedriveusageaccountcounts.md?view=graph-rest-beta), [getOneDriveUsageFileCounts](/graph/api/reportroot_getonedriveusagefilecounts.md?view=graph-rest-beta), and [getOneDriveUsageStorage](/graph/api/reportroot_getonedriveusagestorage.md?view=graph-rest-beta) APIs. These replaced the OneDriveUsage API. |
| Change      | Beta    | Added the [getSharePointActivityUserDetail](/graph/api/reportroot_getsharepointactivityuserdetail.md?view=graph-rest-beta), [getSharePointActivityFileCounts](/graph/api/reportroot_getsharepointactivityfilecounts.md?view=graph-rest-beta), [getSharePointActivityUserCounts](/graph/api/reportroot_getsharepointactivityusercounts.md?view=graph-rest-beta), and [getSharePointActivityPages](/graph/api/reportroot_getsharepointactivitypages.md?view=graph-rest-beta) APIs. These replaced the SharePointActivity API. |
| Change      | Beta    | Added the [getSharePointSiteUsageDetail](/graph/api/reportroot_getsharepointsiteusagedetail.md?view=graph-rest-beta), [getSharePointSiteUsageFileCounts](/graph/api/reportroot_getsharepointsiteusagefilecounts.md?view=graph-rest-beta), [getSharePointSiteUsageSiteCounts](/graph/api/reportroot_getsharepointsiteusagesitecounts.md?view=graph-rest-beta), [getSharePointSiteUsageStorage](/graph/api/reportroot_getsharepointsiteusagestorage.md?view=graph-rest-beta), and [getSharePointSiteUsagePages](/graph/api/reportroot_getsharepointsiteusagepages.md?view=graph-rest-beta) APIs. These replaced the SharePointSiteUsage API. |
| Change      | Beta    | Added the [getSkypeForBusinessActivityUserDetail](/graph/api/reportroot_getskypeforbusinessactivityuserdetail.md?view=graph-rest-beta), [getSkypeForBusinessActivityCounts](/graph/api/reportroot_getskypeforbusinessactivitycounts.md?view=graph-rest-beta), and [getSkypeForBusinessActivityUserCounts](/graph/api/reportroot_getskypeforbusinessactivityusercounts.md?view=graph-rest-beta) APIs. These replaced the SfbActivity API. |
| Change      | Beta    | Added the [getSkypeForBusinessDeviceUsageUserDetail](/graph/api/reportroot_getskypeforbusinessdeviceusageuserdetail.md?view=graph-rest-beta), [getSkypeForBusinessDeviceUsageDistributionUserCounts](/graph/api/reportroot_getskypeforbusinessdeviceusagedistributionusercounts.md?view=graph-rest-beta), and [getSkypeForBusinessDeviceUsageUserCounts](/graph/api/reportroot_getskypeforbusinessdeviceusageusercounts.md?view=graph-rest-beta) APIs. These replaced the SfbDeviceUsage API. |
| Change      | Beta    | Added the [getSkypeForBusinessOrganizerActivityCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivitycounts.md?view=graph-rest-beta), [getSkypeForBusinessOrganizerActivityUserCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivityusercounts.md?view=graph-rest-beta), and [getSkypeForBusinessOrganizerActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinessorganizeractivityminutecounts.md?view=graph-rest-beta) APIs. These replaced the SfbOrganizerActivity API. |
| Change      | Beta    | Added the [getSkypeForBusinessParticipantActivityCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivitycounts.md?view=graph-rest-beta), [getSkypeForBusinessParticipantActivityUserCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivityusercounts.md?view=graph-rest-beta), and [getSkypeForBusinessParticipantActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinessparticipantactivityminutecounts.md?view=graph-rest-beta) APIs. These replaced the SfbParticipantActivity API. |
| Change      | Beta    | Added the [getSkypeForBusinessPeerToPeerActivityCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivitycounts.md?view=graph-rest-beta), [getSkypeForBusinessPeerToPeerActivityUserCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivityusercounts.md?view=graph-rest-beta), and [getSkypeForBusinessPeerToPeerActivityMinuteCounts](/graph/api/reportroot_getskypeforbusinesspeertopeeractivityminutecounts.md?view=graph-rest-beta) APIs. These replaced the SfbP2PActivity API. |
| Change      | Beta    | Added the [getYammerActivityUserDetail](/graph/api/reportroot_getyammeractivityuserdetail.md?view=graph-rest-beta), [getYammerActivityCounts](/graph/api/reportroot_getyammeractivitycounts.md?view=graph-rest-beta), and [getYammerActivityUserCounts](/graph/api/reportroot_getyammeractivityusercounts.md?view=graph-rest-beta) APIs. These replaced the YammerActivity API. |
| Change      | Beta    | Added the [getYammerDeviceUsageUserDetail](/graph/api/reportroot_getyammerdeviceusageuserdetail.md?view=graph-rest-beta), [getYammerDeviceUsageDistributionUserCounts](/graph/api/reportroot_getyammerdeviceusagedistributionusercounts.md?view=graph-rest-beta), and [getYammerDeviceUsageUserCounts](/graph/api/reportroot_getyammerdeviceusageusercounts.md?view=graph-rest-beta) APIs. These replaced the YammerDeviceUsage API. |
| Change      | Beta    | Added the [getYammerGroupsActivityDetail](/graph/api/reportroot_getyammergroupsactivitydetail.md?view=graph-rest-beta), [getYammerGroupsActivityGroupCounts](/graph/api/reportroot_getyammergroupsactivitygroupcounts.md?view=graph-rest-beta), and [getYammerGroupsActivityCounts](/graph/api/reportroot_getyammergroupsactivitycounts.md?view=graph-rest-beta) APIs. These replaced the YammerGroupsActivity API. |



## September 2017

### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[activeDirectoryWindowsAutopilotDeploymentProfile](/graph/api/resources/intune_enrollment_activedirectorywindowsautopilotdeploymentprofile.md?view=graph-rest-beta)<br/>[azureADWindowsAutopilotDeploymentProfile](/graph/api/resources/intune_enrollment_azureadwindowsautopilotdeploymentprofile.md?view=graph-rest-beta)<br/>[deviceEnrollmentConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentconfiguration.md?view=graph-rest-beta)<br/>[deviceEnrollmentLimitConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentlimitconfiguration.md?view=graph-rest-beta)<br/>[deviceEnrollmentPlatformRestrictionsConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentplatformrestrictionsconfiguration.md?view=graph-rest-beta)<br/>[deviceEnrollmentWindowsHelloForBusinessConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentwindowshelloforbusinessconfiguration.md?view=graph-rest-beta)<br/>[deviceManagementPartner](/graph/api/resources/intune_onboarding_devicemanagementpartner.md?view=graph-rest-beta)<br/>[enrollmentConfigurationAssignment](/graph/api/resources/intune_onboarding_enrollmentconfigurationassignment.md?view=graph-rest-beta)<br/>[windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md?view=graph-rest-beta)<br/>[windows10NetworkBoundaryConfiguration](/graph/api/resources/intune_deviceconfig_windows10networkboundaryconfiguration.md?view=graph-rest-beta)<br/>[windowsAutopilotDeploymentProfile](/graph/api/resources/intune_enrollment_windowsautopilotdeploymentprofile.md?view=graph-rest-beta)<br/>[windowsAutopilotDeviceIdentity](/graph/api/resources/intune_enrollment_windowsautopilotdeviceidentity.md?view=graph-rest-beta)<br/>[windowsAutopilotSettings](/graph/api/resources/intune_enrollment_windowsautopilotsettings.md?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[adminConsent](/graph/api/resources/intune_devices_adminconsent.md?view=graph-rest-beta)<br/>[allDevicesAssignmentTarget](/graph/api/resources/intune_shared_alldevicesassignmenttarget.md?view=graph-rest-beta)<br/>[allLicensedUsersAssignmentTarget](/graph/api/resources/intune_shared_alllicensedusersassignmenttarget.md?view=graph-rest-beta)<br/>[deviceAndAppManagementAssignmentTarget](/graph/api/resources/intune_shared_deviceandappmanagementassignmenttarget.md?view=graph-rest-beta)<br/>[deviceEnrollmentPlatformRestriction](/graph/api/resources/intune_onboarding_deviceenrollmentplatformrestriction.md?view=graph-rest-beta)<br/>[deviceHealthAttestationState](/graph/api/resources/intune_devices_devicehealthattestationstate.md?view=graph-rest-beta)<br/>[exclusionGroupAssignmentTarget](/graph/api/resources/intune_shared_exclusiongroupassignmenttarget.md?view=graph-rest-beta)<br/>[groupAssignmentTarget](/graph/api/resources/intune_shared_groupassignmenttarget.md?view=graph-rest-beta)<br/>[outOfBoxExperienceSettings](/graph/api/resources/intune_enrollment_outofboxexperiencesettings.md?view=graph-rest-beta)<br/>[windowsFirewallNetworkProfile](/graph/api/resources/intune_deviceconfig_windowsfirewallnetworkprofile.md?view=graph-rest-beta)<br/>windowsNetworkIsolationCloudResource<br/>windowsNetworkIsolationCloudResourceCollection<br/>windowsNetworkIsolationIPRangeCollection<br/>[windowsNetworkIsolationPolicy](/graph/api/resources/intune_deviceconfig_windowsnetworkisolationpolicy.md?view=graph-rest-beta)<br/>windowsNetworkIsolationResourceCollection<br/> |
| Addition    | Beta    | Added the [sync](/graph/api/intune_enrollment_windowsautopilotsettings_sync.md?view=graph-rest-beta) action on [windowsAutopilotSettings](/graph/api/resources/intune_enrollment_windowsautopilotsettings.md?view=graph-rest-beta) |
| Addition    | Beta    | Added the [assign](/graph/api/intune_enrollment_windowsautopilotdeploymentprofile_assign.md?view=graph-rest-beta) action on [windowsAutopilotDeploymentProfile](/graph/api/resources/intune_enrollment_windowsautopilotdeploymentprofile.md?view=graph-rest-beta) |
| Addition    | Beta    | Added the localActions action on [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy.md?view=graph-rest-beta) |
| Addition    | Beta    | Added the [setPriority](/graph/api/intune_onboarding_deviceenrollmentconfiguration_setpriority.md?view=graph-rest-beta) action on [deviceEnrollmentConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentconfiguration.md?view=graph-rest-beta) |
| Addition    | Beta    | Added the [assign](/graph/api/intune_onboarding_deviceenrollmentconfiguration_assign.md?view=graph-rest-beta) action on [deviceEnrollmentConfiguration](/graph/api/resources/intune_onboarding_deviceenrollmentconfiguration.md?view=graph-rest-beta) |
| Addition    | Beta    | Added the uploadDepToken action on [depOnboardingSetting](/graph/api/resources/intune_onboarding_deponboardingsetting.md?view=graph-rest-beta) collection |
| Addition    | Beta    | Added the syncWithAppleDeviceEnrollmentProgram action on [depOnboardingSetting](/graph/api/resources/intune_onboarding_deponboardingsetting.md?view=graph-rest-beta) collection |
| Addition    | Beta    | Added the updateMobileAppIdentifierDeployments action on [managedAppProtection](/graph/api/resources/intune_mam_managedappprotection.md?view=graph-rest-beta) |
| Addition    | Beta    | Added the assign action on [targetedManagedAppProtection](/graph/api/resources/intune_mam_targetedmanagedappprotection.md?view=graph-rest-beta) |
| Addition    | Beta    | Added the assign action on [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration.md?view=graph-rest-beta) |
| Addition    | Beta    | Added the assign action on [windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection.md?view=graph-rest-beta) |
| Addition    | Beta    | Added the getEncryptionPublicKey function on [depOnboardingSetting](/graph/api/resources/intune_onboarding_deponboardingsetting.md?view=graph-rest-beta) collection |
| Change      | Beta    | Added the **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders**, **requireCompanyPortalAppIntegrity** and **conditionStatementId** properties to the [androidCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidcompliancepolicy.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **requireAppVerify**, **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders** and **requireCompanyPortalAppIntegrity** properties to the [androidForWorkCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidforworkcompliancepolicy.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **blockCrossProfileCopyPaste** and **requireAppVerify** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **kioskModeApps** and **requireAppVerify** properties to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **kioskModeManagedApps** property from the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **cloudPkiProvider**, **createdDateTime**, **description**, **lastModifiedDateTime**, **displayName**, **syncStatus**, **lastSyncError**, **lastSyncDateTime**, **credentials**, **trustedRootCertificate** and **version** properties from the cloudPkiSubscription entity |
| Change      | Beta    | Removed the **assignmentStatus**, **assignmentProgress** and **assignmentErrorMessage** properties from the [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **adminConsent** property to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **vppTokenOrganizationName**, **vppTokenAccountType** and **vppTokenAppleId** properties to the [iosVppApp](/graph/api/resources/intune_apps_iosvppapp.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceEnrollmentType**, **wiFiMacAddress** and **deviceHealthAttestationState** properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **legacyAppConfiguration** property to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [managedDeviceMobileAppConfigurationDeviceSummary](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [managedDeviceMobileAppConfigurationUserSummary](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationusersummary.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **firewallBlockStatefulFTP**, **firewallIdleTimeoutForSecurityAssociationInSeconds**, **firewallPreSharedKeyEncodingMethod**, **firewallIPSecExemptionsAllowNeighborDiscovery**, **firewallIPSecExemptionsAllowICMP**, **firewallIPSecExemptionsAllowRouterDiscovery**, **firewallIPSecExemptionsAllowDHCP**, **firewallCertificateRevocationListCheckMethod**, **firewallMergeKeyingModuleSettings**, **firewallPacketQueueingMethod**, **firewallProfileDomain**, **firewallProfilePublic**, **firewallProfilePrivate**, **defenderAttackSurfaceReductionExcludedPaths**, **defenderOfficeAppsOtherProcessInjectionType**, **defenderOfficeAppsExecutableContentCreationOrLaunchType**, **defenderOfficeAppsLaunchChildProcessType**, **defenderOfficeMacroCodeAllowWin32ImportsType**, **defenderScriptObfuscatedMacroCodeType**, **defenderScriptDownloadedPayloadExecutionType**, **defenderEmailContentExecutionType**, **defenderGuardMyFoldersType**, **defenderGuardedFoldersAllowedAppPaths**, **defenderAdditionalGuardedFolders**, **defenderNetworkProtectionType**, **defenderExploitProtectionXml**, **defenderExploitProtectionXmlFileName**, **defenderSecurityCenterBlockExploitProtectionOverride**, **appLockerApplicationControl**, **applicationGuardBlockClipboardSharing**, **applicationGuardAllowPrintToPDF**, **applicationGuardAllowPrintToXPS**, **applicationGuardAllowPrintToLocalPrinters**, **applicationGuardAllowPrintToNetworkPrinters** and **bitLockerDisableWarningForOtherDiskEncryption** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **displayAppListWithGdiDPIScalingTurnedOn**, **displayAppListWithGdiDPIScalingTurnedOff**, **messagingBlockSync**, **messagingBlockMMS** and **messagingBlockRichCommunicationServices** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration.md?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **bluetoothDeviceName** property from the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration.md?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **deviceAccountBlockExchangeServices**, **deviceAccountEmailAddress**, **deviceAccountExchangeServerAddress**, **deviceAccountRequirePasswordRotation** and **deviceAccountSessionInitiationProtocolAddress** properties from the [windows10TeamGeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10teamgeneralconfiguration.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **localActions** navigation property to the [androidCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidcompliancepolicy.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **windowsAutopilotSettings**, **windowsAutopilotDeviceIdentities**, **windowsAutopilotDeploymentProfiles**, **deviceEnrollmentConfigurations**, **deviceManagementPartners** and **depOnboardingSettings** navigation properties to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement.md?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **cloudPkiSubscriptions** navigation property from the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **assignments** navigation property to the [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **assignments** navigation property to the [targetedManagedAppProtection](/graph/api/resources/intune_mam_targetedmanagedappprotection.md?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **assignments** navigation property to the [windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection.md?view=graph-rest-beta) entity |

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
| Addition        | Beta          | Added the [findRoomLists](/graph/api/user_findroomlists?view=graph-rest-beta) and [findRooms](/graph/api/user_findrooms?view=graph-rest-beta) functions to the [user](/graph/api/resources/user?view=graph-rest-beta) entity. |
| Addition        | Beta          | Added the **locations** property to the [event](/graph/api/resources/event?view=graph-rest-beta) entity to support organizing an event that attendees can attend from more than one location. |
| Addition        | Beta          | Added the **locationType** property to the [location](/graph/api/resources/location?view=graph-rest-beta) complex type. |
| Addition        | Beta          | Added the **uniqueId** and **uniqueIdType** properties to the [location](/graph/api/resources/location?view=graph-rest-beta) complex type. These properties are only for internal use at this point. |
| Change          | v1.0 and beta | This behavior enhancement is about getting a shared calendar or its event contents, when a user has shared a calendar with the signed-in user, or has delegated the user's mailbox to the signed-in user. In such situations, an app can specify that user's ID or user principal name to [get that shared calendar](/graph/api/calendar_get?view=graph-rest-1.0), or [get the events in that shared calendar](/graph/api/user_list_events?view=graph-rest-1.0), as long as the signed-in user has provided delegated permissions to the app. |

### Outlook contacts

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | This behavior enhancement is about getting a shared contact folder or its contact contents, when a user has shared a contact folder with the signed-in user, or has delegated the user's mailbox to the signed-in user. In such situations, an app can specify that user's ID or user principal name to [get that shared contact folder](/graph/api/contactfolder_get?view=graph-rest-1.0), or [get the contacts in that shared folder](/graph/api/user_list_contacts?view=graph-rest-1.0), as long as the signed-in user has provided delegated permissions to the app. |

### Outlook mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **internetMessageHeaders** property to the [message](/graph/api/resources/message?view=graph-rest-beta) entity. |
| Addition        | Beta        | Added the [internetMessageHeader](/graph/api/resources/internetmessageheader?view=graph-rest-beta) complex type. |
| Addition        | Beta        | Added the **messageRules** navigation property to the [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta) entity. **messageRules** is a collection of [messageRule](/graph/api/resources/messagerule?view=graph-rest-beta) instances. |
| Addition        | Beta        | Added the [messageRule](/graph/api/resources/messagerule?view=graph-rest-beta) entity, and [messageRuleActions](/graph/api/resources/messageruleactions?view=graph-rest-beta), [messageRulePredicates](/graph/api/resources/messagerulepredicates?view=graph-rest-beta), and [sizeRange](/graph/api/resources/sizerange?view=graph-rest-beta) complex types. |
| Addition        | Beta        | Added the following CRUD operations for message rules: [create](/graph/api/mailfolder_post_messagerules?view=graph-rest-beta), [list](/graph/api/mailfolder_list_messagerules?view=graph-rest-beta), [get](/graph/api/messagerule_get?view=graph-rest-beta), [update](/graph/api/messagerule_update?view=graph-rest-beta), and [delete](/graph/api/messagerule_delete?view=graph-rest-beta). |


### Outlook user choices

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the new **masterCategories** navigation property to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-beta) entity. **masterCategories** is a collection of [outlookCategory](/graph/api/resources/outlookCategory?view=graph-rest-beta) objects. |
| Addition        | Beta        | Added the [outlookCategory](/graph/api/resources/outlookCategory?view=graph-rest-beta) entity. |
| Addition        | Beta        | Added the following CRUD operations for [outlookCategory](/graph/api/resources/outlookCategory?view=graph-rest-beta): [create](/graph/api/outlookuser_post_mastercategories?view=graph-rest-beta), [get](/graph/api/outlookcategory_get?view=graph-rest-beta), [update](/graph/api/outlookcategory_update?view=graph-rest-beta), and [delete](/graph/api/outlookcategory_delete?view=graph-rest-beta). |
| Addition        | Beta        | Added the new [supportedLanguages](/graph/api/outlookuser_supportedlanguages?view=graph-rest-beta) function to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-beta) entity. |
| Addition        | Beta        | Added the new [supportedTimeZones](/graph/api/outlookuser_supportedtimezones?view=graph-rest-beta) function to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-beta) entity. |


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
| Addition        | Beta        | Added [groupLifecyclePolicy](/graph/api/resources/grouplifecyclepolicy?view=graph-rest-beta) entity. |
| Addition        | Beta        | Added the following APIs for group lifecycle policy: [create](/graph/api/grouplifecyclepolicy_post_grouplifecyclepolicies?view=graph-rest-beta), [list](/graph/api/grouplifecyclepolicy_list?view=graph-rest-beta), [get](/graph/api/grouplifecyclepolicy_get?view=graph-rest-beta), [update](/graph/api/grouplifecyclepolicy_update?view=graph-rest-beta), [delete](/graph/api/grouplifecyclepolicy_delete?view=graph-rest-beta), [add group](/graph/api/grouplifecyclepolicy_addgroup?view=graph-rest-beta), [remove group](/graph/api/grouplifecyclepolicy_removegroup?view=graph-rest-beta), and [renew a group](/graph/api/grouplifecyclepolicy_renewgroup?view=graph-rest-beta). |
| Addition        | Beta        | Added [List groupLifecylePolicies](/graph/api/group_list_grouplifecyclepolicies.md?view=graph-rest-beta) function to [group](/graph/api/resources/group?view=graph-rest-beta) entity. |

### Intune APIs
| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entity:<br/>[windowsPrivacyDataAccessControlItem](/graph/api/resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[configurationManagerClientEnabledFeatures](/graph/api/resources/intune_devices_configurationmanagerclientenabledfeatures?view=graph-rest-beta)<br/>[windowsDefenderScanActionResult](/graph/api/resources/intune_devices_windowsdefenderscanactionresult?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added the [windowsDefenderScan](/graph/api/intune_devices_manageddevice_windowsdefenderscan.md?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
| Addition    | Beta    | Added the [windowsDefenderUpdateSignatures](/graph/api/intune_devices_manageddevice_windowsdefenderupdatesignatures.md?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
| Addition    | Beta    | Added the [windowsPrivacyAccessControls](/graph/api/intune_deviceconfig_deviceconfiguration_windowsprivacyaccesscontrols.md?view=graph-rest-beta) action on [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration?view=graph-rest-beta) |
| Change      | Beta    | Added the **automaticallyUpdateApps** and **countryOrRegion** properties to the [appleVolumePurchaseProgramToken](/graph/api/resources/intune_apps_applevolumepurchaseprogramtoken?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **enableAuthenticationViaCompanyPortal** property to the [depEnrollmentProfile](/graph/api/resources/intune_corpenrollment_depenrollmentprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notificationMessageCCList** property to the [deviceComplianceActionItem](/graph/api/resources/intune_deviceconfig_devicecomplianceactionitem?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceComplianceDeviceOverview](/graph/api/resources/intune_deviceconfig_devicecompliancedeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceComplianceUserOverview](/graph/api/resources/intune_deviceconfig_devicecomplianceuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceConfigurationDeviceOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationdeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceConfigurationUserOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **configurationManagerClientEnabledFeatures** property to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **intuneBrand** property from the [organization](/graph/api/resources/intune_onboarding_organization?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **smartScreenEnableInShell**, **smartScreenBlockOverrideForFiles**, **applicationGuardEnabled**, **applicationGuardBlockFileTransfer**, **applicationGuardBlockNonEnterpriseContent**, **applicationGuardAllowPersistence** and **applicationGuardForceAuditing** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **searchBlockDiacritics**, **searchDisableAutoLanguageDetection**, **searchDisableIndexingEncryptedItems**, **searchEnableRemoteQueries**, **searchDisableUseLocation**, **searchDisableIndexerBackoff**, **searchDisableIndexingRemovableDrive**, **searchEnableAutomaticIndexSizeManangement**, **smartScreenEnableAppInstallControl** and **privacyAdvertisingId** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **settingsDeviceName** property from the [windows10TeamGeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10teamgeneralconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **restartMode** property from the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **detectedApps** and **managedDevices** navigation properties to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **privacyAccessControls** navigation property to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **secureByDefault** property to the [deviceManagementSettings](/graph/api/resources/intune_deviceconfig_devicemanagementsettings?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **restartMode** property to the [windowsUpdateScheduledInstall](/graph/api/resources/intune_deviceconfig_windowsupdatescheduledinstall?view=graph-rest-beta) complex type |

### OneNote

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and Beta | Added the [onenote](/graph/api/resources/onenote?view=graph-rest-1.0) navigation property to **site**. |
| Addition        | Beta          | Added the target *siteCollectionId* and target *siteId* parameters for the copy operations. For example: [CopyNotebook](/graph/api/notebook_copynotebook?view=graph-rest-1.0). |

### People

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the [People APIs](/graph/api/resources/person?view=graph-rest-1.0) to v1.0. For details about the People API, see [Get relevant information about people](people_example.md). |
| Addition        | v1.0        | Added People.Read.All permission. To learn more, please see [Permissions](permissions_reference.md). |
| Addition        | v1.0        | Added the [personType](/graph/api/resources/persontype?view=graph-rest-1.0) resource. |
| Change          | v1.0        | The [scoredEmailAddress](/graph/api/resources/scoredemailaddress?view=graph-rest-1.0) resource replaced the **rankedEmailAddress** resource. |
| Change          | v1.0        | The [person](/graph/api/resources/person?view=graph-rest-1.0) resource was updated as follows:<ul><li>The **scoredEmailAddresses** property (a collection of [scoredEmailAddress](/graph/api/resources/scoredemailaddress?view=graph-rest-1.0) type) replaced the **emailAddresses** property</li><li>The **jobTitle** property replaced the **title** property</li><li>Removed **sources** and **mailboxType** properties</li><li>The **personType** property is now of [personType](/graph/api/resources/persontype?view=graph-rest-1.0) type instead of string type and replaces functionality of the previous **sources** and **mailboxType** properties</li><li>Added **imAddress** property</li></ul> |
| Deletion        | v1.0        | Removed the **personDataSource** resource. |

### User

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added **employeeId** property to [user](/graph/api/resources/user.md?view=graph-rest-beta) |

## July 2017

### Group settings

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added support for group settings.<br/>New resource types: [groupSetting](/graph/api/resources/groupsetting?view=graph-rest-1.0), [groupSettingTemplate](/graph/api/resources/groupsettingtemplate?view=graph-rest-1.0), [settingValue](/graph/api/resources/settingvalue?view=graph-rest-1.0), and [settingTemplateValue](/graph/api/resources/settingtemplatevalue?view=graph-rest-1.0) |
| Change          | v1.0        | Added property **classification** and navigation property **settings**  to [group](/graph/api/resources/group?view=graph-rest-1.0) |

### Intune APIs

| Change&nbsp;type | Version | Description                              |
| :--------------- | :------ | :--------------------------------------- |
| Addition         | Beta    | Added the [assign](/graph/api/intune_apps_iosmobileappconfiguration_assign?view=graph-rest-beta) action on [iosMobileAppConfiguration](/graph/api/resources/intune_apps_iosmobileappconfiguration?view=graph-rest-beta) |
| Addition         | Beta    | Added the [syncDevice](/graph/api/intune_devices_manageddevice_syncdevice?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
| Change           | Beta    | Added the **appsInstallAllowList**, **appsLaunchBlockList** and **appsHideList** properties to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **disableAppEncryptionIfDeviceEncryptionIsEnabled** property to the [androidManagedAppProtection](/graph/api/resources/intune_mam_androidmanagedappprotection?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **disableAppEncryptionIfDeviceEncryptionIsEnabled** property to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [deviceComplianceDeviceStatus](/graph/api/resources/intune_deviceconfig_devicecompliancedevicestatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [deviceComplianceSettingState](/graph/api/resources/intune_deviceconfig_devicecompliancesettingstate?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [deviceConfigurationDeviceStatus](/graph/api/resources/intune_deviceconfig_deviceconfigurationdevicestatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **subscriptions** property to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **version** property to the [deviceManagementExchangeConnector](/graph/api/resources/intune_onboarding_devicemanagementexchangeconnector?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **utcTimeOffsetInMinutes** property to the [iosUpdateConfiguration](/graph/api/resources/intune_deviceconfig_iosupdateconfiguration?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [iosUpdateDeviceStatus](/graph/api/resources/intune_deviceconfig_iosupdatedevicestatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **preSharedKey** property to the [macOSWiFiConfiguration](/graph/api/resources/intune_deviceconfig_macoswificonfiguration?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **phoneNumber**, **androidSecurityPatchLevel** and **userDisplayName** properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **userName**, **deviceModel**, **platform** and **complianceGracePeriodExpirationDateTime** properties to the [managedDeviceMobileAppConfigurationDeviceStatus](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **userPrincipalName** property to the [mobileAppInstallStatus](/graph/api/resources/intune_apps_mobileappinstallstatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **overrideDefaultRule** property to the [onPremisesConditionalAccessSettings](/graph/api/resources/intune_onboarding_onpremisesconditionalaccesssettings?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **userPrincipalName** property to the [userAppInstallStatus](/graph/api/resources/intune_apps_userappinstallstatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **connectAppBlockAutoLaunch**, **deviceAccountBlockExchangeServices**, **deviceAccountEmailAddress**, **deviceAccountExchangeServerAddress**, **deviceAccountRequirePasswordRotation**, **deviceAccountSessionInitiationProtocolAddress**, **settingsBlockMyMeetingsAndFiles**, **settingsBlockSessionResume**, **settingsBlockSigninSuggestions**, **settingsDefaultVolume**, **settingsScreenTimeoutInMinutes**, **settingsSessionTimeoutInMinutes** and **settingsSleepTimeoutInMinutes** properties to the [windows10TeamGeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10teamgeneralconfiguration?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **deploymentSummary** navigation property to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceCompliancePolicySettingState](/graph/api/resources/intune_deviceconfig_devicecompliancepolicysettingstate?view=graph-rest-beta) complex type |
| Change           | Beta    | Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceConfigurationSettingState](/graph/api/resources/intune_deviceconfig_deviceconfigurationsettingstate?view=graph-rest-beta) complex type |
| Change           | Beta    | Added the **unknownCount** property to the [deviceOperatingSystemSummary](/graph/api/resources/intune_devices_deviceoperatingsystemsummary?view=graph-rest-beta) complex type |



## June 2017

### Project Rome

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the following resources and APIs:<br/>[Activity](/graph/api/resources/projectrome_activity?view=graph-rest-beta)<br/>[Create or replace an activity](/graph/api/projectrome_put_activity?view=graph-rest-beta)<br/>[Delete an activity](/graph/api/projectrome_delete_activity?view=graph-rest-beta)<br/>[History item](/graph/api/resources/projectrome_historyitem?view=graph-rest-beta)<br/>[Create or replace a history item](/graph/api/projectrome_put_historyitem?view=graph-rest-beta)<br/>[Delete a history item](/graph/api/projectrome_delete_historyitem?view=graph-rest-beta) |

### Outlook calendar

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Promoted the following 4 [calendar](/graph/api/resources/calendar?view=graph-rest-1.0) properties to v1.0: **canEdit**, **canShare**, **canViewPrivateItems**, and **owner**. |


### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[defaultDeviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_defaultdevicecompliancepolicy?view=graph-rest-beta)<br/>[deviceConfigurationUserStateSummary](/graph/api/resources/intune_deviceconfig_deviceconfigurationuserstatesummary?view=graph-rest-beta)<br/>[deviceManagementScriptDeviceState](/graph/api/resources/intune_devicefe_devicemanagementscriptdevicestate?view=graph-rest-beta)<br/>[deviceManagementScriptRunSummary](/graph/api/resources/intune_devicefe_devicemanagementscriptrunsummary?view=graph-rest-beta)<br/>[deviceManagementScriptUserState](/graph/api/resources/intune_devicefe_devicemanagementscriptuserstate?view=graph-rest-beta)<br/>[iosUpdateDeviceStatus](/graph/api/resources/intune_deviceconfig_iosupdatedevicestatus?view=graph-rest-beta)<br/>[windowsManagedDevice](/graph/api/resources/intune_devicefe_windowsmanageddevice?view=graph-rest-beta)<br/>[windowsManagementAppHealthState](/graph/api/resources/intune_devicefe_windowsmanagementapphealthstate?view=graph-rest-beta)<br/>[windowsManagementAppHealthSummary](/graph/api/resources/intune_devicefe_windowsmanagementapphealthsummary?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[bitLockerFixedDrivePolicy](/graph/api/resources/intune_deviceconfig_bitlockerfixeddrivepolicy?view=graph-rest-beta)<br/>[bitLockerRecoveryOptions](/graph/api/resources/intune_deviceconfig_bitlockerrecoveryoptions?view=graph-rest-beta)<br/>[bitLockerRemovableDrivePolicy](/graph/api/resources/intune_deviceconfig_bitlockerremovabledrivepolicy?view=graph-rest-beta)<br/>[deleteUserFromSharedAppleDeviceActionResult](/graph/api/resources/intune_devicefe_deleteuserfromsharedappledeviceactionresult?view=graph-rest-beta)<br/>[iosNetworkUsageRule](/graph/api/resources/intune_deviceconfig_iosnetworkusagerule?view=graph-rest-beta)<br/> |
| Deletion    | Beta    | Removed the following entities:<br/>**deviceManagementScriptState**<br/> |
| Deletion    | Beta    | Removed the wipeByDeviceTag action on [user](/graph/api/resources/intune_devicefe_user?view=graph-rest-beta) |
| Change      | Beta    | Added the **innerAuthenticationProtocolForEapTtls**, **innerAuthenticationProtocolForPeap** and **outerIdentityPrivacyTemporaryValue** properties to the [androidEnterpriseWiFiConfiguration](/graph/api/resources/intune_deviceconfig_androidenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **nonEapAuthenticationMethodForEapTtls**, **nonEapAuthenticationMethodForPeap** and **enableOuterIdentityPrivacy** properties from the [androidEnterpriseWiFiConfiguration](/graph/api/resources/intune_deviceconfig_androidenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [androidManagedAppProtection](/graph/api/resources/intune_mam_androidmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **instanceDisplayName** and **settingPlatform** properties from the [complianceSettingStateSummary](/graph/api/resources/complianceSettingStateSummary?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **excludeGroup** property to the [deviceCompliancePolicyGroupAssignment](/graph/api/resources/intune_deviceconfig_devicecompliancepolicygroupassignment?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **instanceDisplayName** and **settingPlatform** properties from the [deviceCompliancePolicySettingStateSummary](/graph/api/resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **devicePlatform** property from the [deviceComplianceSettingState](/graph/api/resources/intune_deviceconfig_devicecompliancesettingstate?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **assignmentStatus**, **assignmentProgress** and **assignmentErrorMessage** properties to the [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **intuneBrand** property to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **enforceSignatureCheck** and **fileName** properties to the [deviceManagementScript](/graph/api/resources/intune_devicefe_devicemanagementscript?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **innerAuthenticationProtocolForEapTtls** and **outerIdentityPrivacyTemporaryValue** properties to the [iosEnterpriseWiFiConfiguration](/graph/api/resources/intune_deviceconfig_iosenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **nonEapAuthenticationMethodForEapTtls** and **enableOuterIdentityPrivacy** properties from the [iosEnterpriseWiFiConfiguration](/graph/api/resources/intune_deviceconfig_iosenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **classroomAppForceUnpromptedScreenObservation**, **keyboardBlockDictation**, **networkUsageRules** and **wiFiConnectOnlyToConfiguredNetworks** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_iosgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **preSharedKey** property to the [iosWiFiConfiguration](/graph/api/resources/intune_deviceconfig_ioswificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **innerAuthenticationProtocolForEapTtls** and **outerIdentityPrivacyTemporaryValue** properties to the [macOSEnterpriseWiFiConfiguration](/graph/api/resources/intune_deviceconfig_macosenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **nonEapAuthenticationMethodForEapTtls** and **enableOuterIdentityPrivacy** properties from the [macOSEnterpriseWiFiConfiguration](/graph/api/resources/intune_deviceconfig_macosenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **lastModifiedTime** and **deployedAppCount** properties from the [managedAppPolicy](/graph/api/resources/intune_mam_managedapppolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **serialNumber** property to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **managementAgents** property from the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **bitLockerFixedDrivePolicy** and **bitLockerRemovableDrivePolicy** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **enterpriseCloudPrintDiscoveryEndPoint**, **enterpriseCloudPrintOAuthAuthority**, **enterpriseCloudPrintOAuthClientIdentifier**, **enterpriseCloudPrintResourceIdentifier**, **enterpriseCloudPrintDiscoveryMaxLimit**, **enterpriseCloudPrintMopriaDiscoveryResourceIdentifier**, **edgeBlockAddressBarDropdown**, **edgeBlockCompatibilityList**, **edgeClearBrowsingDataOnExit**, **edgeAllowStartPagesModification**, **edgeDisableFirstRunPage**, **edgeBlockLiveTileDataCollection** and **edgeSyncFavoritesWithInternetExplorer** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **availableVersion** property to the [windowsManagementApp](/graph/api/resources/intune_devicefe_windowsmanagementapp?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **onboardingStatus**, **deployedVersion** and **lastModifiedTime** properties from the [windowsManagementApp](/graph/api/resources/intune_devicefe_windowsmanagementapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **packageIdentityName** property to the [windowsStoreForBusinessApp](/graph/api/resources/intune_apps_windowsstoreforbusinessapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [androidManagedAppProtection](/graph/api/resources/intune_mam_androidmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** navigation property to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceConfigurationUserStateSummaries** and **iosUpdateStatuses** navigation properties to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **complianceSettingStateSummaries** navigation property from the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **runSummary**, **deviceRunStates** and **userRunStates** navigation properties to the [deviceManagementScript](/graph/api/resources/intune_devicefe_devicemanagementscript?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **runStates** navigation property from the [deviceManagementScript](/graph/api/resources/intune_devicefe_devicemanagementscript?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties from the [managedAppPolicy](/graph/api/resources/intune_mam_managedapppolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **healthSummary** and **healthStates** navigation properties to the [windowsManagementApp](/graph/api/resources/intune_devicefe_windowsmanagementapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **applicationId**, **appName**, **platformId**, **userFailures** and **deviceFailures** properties to the [appInstallationFailure](/graph/api/resources/intune_apps_appinstallationfailure?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **encryptionMethod**, **startupAuthenticationRequired**, **startupAuthenticationBlockWithoutTpmChip**, **startupAuthenticationTpmUsage**, **startupAuthenticationTpmPinUsage**, **startupAuthenticationTpmKeyUsage**, **startupAuthenticationTpmPinAndKeyUsage**, **recoveryOptions** and **prebootRecoveryEnableMessageAndUrl** properties to the [bitLockerSystemDrivePolicy](/graph/api/resources/intune_deviceconfig_bitlockersystemdrivepolicy?view=graph-rest-beta) complex type |
| Change      | Beta    | Removed the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties from the [deviceCompliancePolicySettingState](/graph/api/resources/intune_deviceconfig_devicecompliancepolicysettingstate?view=graph-rest-beta) complex type |
| Change      | Beta    | Removed the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties from the [deviceConfigurationSettingState](/graph/api/resources/intune_deviceconfig_deviceconfigurationsettingstate?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties to the [deviceManagementSettings](/graph/api/resources/intune_deviceconfig_devicemanagementsettings?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **address** property to the [vpnServer](/graph/api/resources/intune_deviceconfig_vpnserver?view=graph-rest-beta) complex type |


## May 2017

### Application API changes

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Application API update. This is first set of changes including property renaming and restructuring of the [application](/graph/api/resources/application?view=graph-rest-beta) entity.<br/>**New entities:** [api](../api-reference/beta/resources/api]), [informationalUrl](/graph/api/resources/informationalUrl?view=graph-rest-beta), [installedClient](/graph/api/resources/installedclient?view=graph-rest-beta), [permissionScope](/graph/api/resources/permissionscope?view=graph-rest-beta), [preauthorizedApplication](/graph/api/resources/preauthorizedapplication?view=graph-rest-beta), [web](/graph/api/resources/web?view=graph-rest-beta).<br/>**Removed properties:** addIns, appRoles, availableToOtherOrganizations, knownClientApplications, oauth2AllowUrlPathMatching, recordConsentConditions.<br/>**Renamed properties:** appId to id, identifierUris to applicationAliases, availableToOtherTenants to orgRestrictions, mainLogo to logo, oauth2Permissions to publishedPermissionsScopes, publicClient to allowPublicClient, replyUrls to redirectUrls.<br/>**New properties:** tags. |

### Remove Deprecated Planner API
| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Deletion        | Beta        | Removed the following entities:<br/>**task**<br/>**plan**<br/>**bucket**<br/>**taskDetails**<br/>**planDetails**<br/>**taskBoardTaskFormat**<br/>**planTaskBoard** |

### Project Rome

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added support for Project Rome, including [getting a list of devices](/graph/api/user_list_devices?view=graph-rest-beta), [sending a command to a device](/graph/api/send_device_command?view=graph-rest-beta), and [checking the status of a command](/graph/api/get_device_command_status?view=graph-rest-beta). |
| Addition        | Beta        | Added support for user [activities](/graph/api/resources/projectrome_activity?view=graph-rest-beta) and [historyItems](/graph/api/resources/projectrome_historyitem?view=graph-rest-beta), including [upserting an activity](/graph/api/projectrome_put_activity?view=graph-rest-beta) and [upserting a historyItem](/graph/api/projectrome_put_historyitem?view=graph-rest-beta). |

### Administrative units property changes

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Changed roleMemberInfo property type to [identity](/graph/api/resources/identity?view=graph-rest-1.0) for [scopedRoleMembership](/graph/api/resources/scopedrolemembership?view=graph-rest-beta) entity |
| Change          | Beta        | Changed navigation property scopedAdministratorOf to scopedRoleMemberOf for [user](/graph/api/resources/user?view=graph-rest-beta) entity |
| Change          | Beta        | Changed navigation property scopedAdministrators to scopedRoleMembers for [administrativeUnit](/graph/api/resources/administrativeunit?view=graph-rest-beta) entity |
| Change          | Beta        | Changed navigation property scopedAdministrators to scopedMembers for [directoryRole](/graph/api/resources/directoryrole?view=graph-rest-beta) entity |

### Add users and groups webhook support in preview

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
| Change        | Beta       | Added support to [webhooks](/graph/api/resources/webhooks?view=graph-rest-beta) for users and groups.

### Add delta query to v1.0

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Add delta function support to v1.0. Add to the following entities to perform [delta query](../concepts/delta_query_overview):<br/>contact<br/>contactFolder<br/>event<br/>group<br/>mailFolder<br/>message<br/>user<br/>See the following for examples:<br/>[Get incremental changes to groups](../concepts/delta_query_groups)<br/>[Get incremental changes to messages in a folder](../concepts/delta_query_messages)<br/>[Get incremental changes to users](../concepts/delta_query_users) |
| Change          | Beta        | Add additional optional query filtering capability (by id) to [users](/graph/api/user_delta?view=graph-rest-beta) and [groups](/graph/api/group_delta?view=graph-rest-beta). |

### Added user resource support for deleted items

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added support for [restoring and permanently deleting users](/graph/api/resources/directory?view=graph-rest-beta). |

### Added OnPremisesProvisioningError

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | New entity: [OnPremisesProvisioningError](/graph/api/resources/onpremisesprovisioningerror?view=graph-rest-beta) |
| Change          | beta        | Added OnPremisesProvisioningError property to [user](/graph/api/resources/user?view=graph-rest-beta), [group](/graph/api/resources/group?view=graph-rest-beta), and [orgcontact](/graph/api/resources/orgcontact?view=graph-rest-beta) |

### Added deletedDateTime property

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Change|beta|Added deletedDateTime property to [user](/graph/api/resources/user?view=graph-rest-beta) entity.
|Change|beta|Added deletedDateTime property to [group](/graph/api/resources/group?view=graph-rest-beta) entity.
|Change|beta|Added deletedDateTime property to [application](/graph/api/resources/application?view=graph-rest-beta) entity.

### Added domain operations to v1.0

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added operations on [domains](/graph/api/resources/domain?view=graph-rest-1.0).<br/>New entities:</br>[domain](/graph/api/resources/domain?view=graph-rest-1.0)<br/>[domainDnsRecord](/graph/api/resources/domaindnsrecord?view=graph-rest-1.0)<br/>[domainDnsCnameRecord](/graph/api/resources/domainDnsCnameRecord?view=graph-rest-1.0)<br/>[domainDnsMxRecord](/graph/api/resources/domainDnsMxRecord?view=graph-rest-1.0)<br/>[domainDnsSrvRecord](/graph/api/resources/domainDnsSrvRecord?view=graph-rest-1.0)<br/>[domainDnsTxtRecord](/graph/api/resources/domainDnsTxtRecord?view=graph-rest-1.0)<br/>[domainDnsUnavailableRecord](/graph/api/resources/domainDnsUnavailableRecord?view=graph-rest-1.0)<br/>New actions:</br>[verify](/graph/api/domain_verify?view=graph-rest-1.0) |

### Added contracts to v1.0

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | New entity:</br>[contract](/graph/api/resources/contract?view=graph-rest-1.0) |

### Added licenseDetails to v1.0

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | New entity:</br>[licenseDetails](/graph/api/resources/licensedetails?view=graph-rest-1.0) |
| Change          | v1.0        | New [licensedetails](/graph/api/user_list_licensedetails?view=graph-rest-1.0) navigation property on [users](/graph/api/resources/user?view=graph-rest-1.0) |


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
| Addition        | v1.0          | Support for [openTypeExtension](/graph/api/resources/opentypeextension?view=graph-rest-1.0) in the following resources - [device](/graph/api/resources/device?view=graph-rest-1.0), [group](/graph/api/resources/group?view=graph-rest-1.0),[organization](/graph/api/resources/organization?view=graph-rest-1.0), [user](/graph/api/resources/user?view=graph-rest-1.0). |
| Addition        | v1.0 and beta | When the user is signed-in with a personal Microsoft account, support for open extensions in the following resources - event, post, group, message, contact, and user. (This is in addition to these resources, plus device, group, organization and user, supporting open extensions when the user signs in using a work or school account.) |
| Addition        | v1.0 and beta | Support for `$expand` to [get open extensions](/graph/api/opentypeextension_get?view=graph-rest-1.0) in the following resources: [device](/graph/api/resources/device?view=graph-rest-1.0), [group](/graph/api/resources/group?view=graph-rest-1.0),[organization](/graph/api/resources/organization?view=graph-rest-1.0), [post](/graph/api/resources/post?view=graph-rest-1.0), [user](/graph/api/resources/user?view=graph-rest-1.0). |
| Addition        | Beta          | Support for `$expand` to [get open extensions](/graph/api/opentypeextension_get?view=graph-rest-1.0) in [administrativeUnit](/graph/api/resources/administrativeunit?view=graph-rest-beta). |


### Extensions (schema extensions)

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | New resource [schemaExtension](/graph/api/resources/schemaextension?view=graph-rest-1.0) and CRUD methods to manage extension definitions for the following resources: [contact](/graph/api/resources/contact?view=graph-rest-1.0), [device](/graph/api/resources/device?view=graph-rest-1.0), [event](/graph/api/resources/event?view=graph-rest-1.0), [group](/graph/api/resources/group?view=graph-rest-1.0), [message](/graph/api/resources/message?view=graph-rest-1.0), [organization](/graph/api/resources/organization?view=graph-rest-1.0), [post](/graph/api/resources/post?view=graph-rest-1.0), [user](/graph/api/resources/user?view=graph-rest-1.0). Note that support for [administrativeUnit](/graph/api/resources/administrativeunit?view=graph-rest-beta) is still limited to the beta version as before. |
| Addition        | v1.0          | The existing POST, GET, and PATCH methods of the following resources - [contact](/graph/api/resources/contact?view=graph-rest-1.0), [device](/graph/api/resources/device?view=graph-rest-1.0), [event](/graph/api/resources/event?view=graph-rest-1.0), [group](/graph/api/resources/group?view=graph-rest-1.0), [message](/graph/api/resources/message?view=graph-rest-1.0), [organization](/graph/api/resources/organization?view=graph-rest-1.0), [post](/graph/api/resources/post?view=graph-rest-1.0), [user](/graph/api/resources/user?view=graph-rest-1.0) - now support adding, getting, and updating or deleting custom data stored as schema extensions in the corresponding resource instances. |
| Addition        | v1.0 and beta | You can now use `$filter` to look for resource instances with properties that match specific extension property values, such as extension name. See this [example](../concepts/extensibility_schema_groups#5-get-a-group-and-its-extension-data) for details. |
| Change          | v1.0 and beta | [Deleting a schema extension definition](/graph/api/schemaextension_delete?view=graph-rest-1.0) no longer affects accessing custom data that has been added based on that definition. |
| Change          | v1.0 and beta | You can now set a schema extension complex type to null, to remove a schema extension from a resource instance. |


### Group

|**Change type**|**Version**|**Description**|
|:--------------|:----------|:--------------|
| Addition | v1.0 and beta | Added the **drives** and **sites** navigation properties to **group**.

### Insights APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added [Shared API](/graph/api/resources/insights_shared?view=graph-rest-beta).<br />New resources:<br />[sharingDetail](/graph/api/resources/insights_sharingdetail?view=graph-rest-beta) <br />[insightIdentity](/graph/api/resources/insights_insightidentity?view=graph-rest-beta) <br />
|Addition|Beta|Added [Used API](/graph/api/resources/insights_used?view=graph-rest-beta).<br />New resources:<br />[usageDetails](/graph/api/resources/insights_usagedetails?view=graph-rest-beta) <br />
|Change|Beta|New **Type** property in the:<br />[resourceVisualization](/graph/api/resources/insights_resourcevisualization?view=graph-rest-beta) resource. <br />
|Deletion|Beta|Removed the following entities:<br/>**workingWith**<br/>**trendingAround**<br/>|

### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[androidForWorkMobileAppConfiguration](/graph/api/resources/intune_apps_androidforworkmobileappconfiguration?view=graph-rest-beta)<br/>[cartToClassAssociation](/graph/api/resources/intune_deviceconfig_carttoclassassociation?view=graph-rest-beta)<br/>[deviceCompliancePolicySettingStateSummary](/graph/api/resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary?view=graph-rest-beta)<br/>[eBookInstallSummary](/graph/api/resources/intune_books_ebookinstallsummary?view=graph-rest-beta)<br/>[eBookVppGroupAssignment](/graph/api/resources/intune_books_ebookvppgroupassignment?view=graph-rest-beta)<br/>[iosUpdateConfiguration](/graph/api/resources/intune_deviceconfig_iosupdateconfiguration?view=graph-rest-beta)<br/>[remoteAssistancePartner](/graph/api/resources/intune_remoteassistance_remoteassistancepartner?view=graph-rest-beta)<br/>[windows10EndpointProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10endpointprotectionconfiguration?view=graph-rest-beta)<br/>[windowsDeviceMalwareState](/graph/api/resources/intune_endpointprotection_windowsdevicemalwarestate?view=graph-rest-beta)<br/>[windowsInformationProtectionAppLearningSummary](/graph/api/resources/intune_wip_windowsinformationprotectionapplearningsummary?view=graph-rest-beta)<br/>[windowsMalwareInformation](/graph/api/resources/intune_endpointprotection_windowsmalwareinformation?view=graph-rest-beta)<br/>[windowsProtectionState](/graph/api/resources/intune_endpointprotection_windowsprotectionstate?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[androidPermissionAction](/graph/api/resources/intune_apps_androidpermissionaction?view=graph-rest-beta)<br/>[bitLockerSystemDrivePolicy](/graph/api/resources/intune_deviceconfig_bitlockersystemdrivepolicy?view=graph-rest-beta)<br/>[defenderDetectedMalwareActions](/graph/api/resources/intune_deviceconfig_defenderdetectedmalwareactions?view=graph-rest-beta)<br/>[settingSource](/graph/api/resources/intune_deviceconfig_settingsource?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added the [assign](/graph/api/intune_books_managedebook_assign?view=graph-rest-beta) action on [managedEBook](/graph/api/resources/intune_books_managedebook?view=graph-rest-beta) |
| Addition    | Beta    | Added the [beginOnboarding](/graph/api/intune_remoteassistance_remoteassistancepartner_beginonboarding?view=graph-rest-beta) action on [remoteAssistancePartner](/graph/api/resources/intune_remoteassistance_remoteassistancepartner?view=graph-rest-beta) |
| Addition    | Beta    | Added the [disconnect](/graph/api/intune_remoteassistance_remoteassistancepartner_disconnect?view=graph-rest-beta) action on [remoteAssistancePartner](/graph/api/resources/intune_remoteassistance_remoteassistancepartner?view=graph-rest-beta) |
| Deletion    | Beta    | Removed the following entities:<br/>**outlookTask**<br/>**outlookTaskFolder**<br/>**outlookTaskGroup**<br/>**outlookUser**<br/>**windowsManagementAppHealthState**<br/> |
| Deletion    | Beta    | Removed the following complex types:<br/>**applePushNotificationCertificateSetting**<br/>**eventCreationOptions**<br/> |
| Change      | Beta    | Added the **workProfilePasswordBlockFingerprintUnlock**, **workProfilePasswordBlockTrustAgents**, **workProfilePasswordExpirationDays**, **workProfilePasswordMinimumLength**, **workProfilePasswordMinutesOfInactivityBeforeScreenTimeout**, **workProfilePasswordPreviousPasswordBlockCount**, **workProfilePasswordSignInFailureCountBeforeFactoryReset**, **workProfilePasswordRequiredType** and **workProfileRequirePassword** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [androidForWorkPkcsCertificateProfile](/graph/api/resources/intune_deviceconfig_androidforworkpkcscertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [androidForWorkScepCertificateProfile](/graph/api/resources/intune_deviceconfig_androidforworkscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **kioskModeManagedApps** property to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **kioskModeManagedAppId** property from the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [androidPkcsCertificateProfile](/graph/api/resources/intune_deviceconfig_androidpkcscertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [androidScepCertificateProfile](/graph/api/resources/intune_deviceconfig_androidscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **hexColor** property from the [calendar](/graph/api/resources/calendar?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **setting** and **platformType** properties to the [complianceSettingStateSummary](/graph/api/resources/intune_deviceconfig_compliancesettingstatesummary?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **windowsManagementAppEnabled** property from the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **userName**, **deviceModel** and **platform** properties to the [deviceComplianceDeviceStatus](/graph/api/resources/intune_deviceconfig_devicecompliancedevicestatus?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **userPrincipalName** and **deviceModel** properties to the [deviceComplianceSettingState](/graph/api/resources/intune_deviceconfig_devicecompliancesettingstate?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **platformType**, **setting**, **userId** and **userEmail** properties to the [deviceComplianceSettingState](/graph/api/resources/intune_deviceconfig_devicecompliancesettingstate?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **inGracePeriodCount** property to the [deviceCompliancePolicyDeviceStateSummary](/graph/api/resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **userName**, **deviceModel** and **platform** properties to the [deviceConfigurationDeviceStatus](/graph/api/resources/intune_deviceconfig_deviceconfigurationdevicestatus?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **creationOptions** property from the [event](/graph/api/resources/event?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **isDelegated** property from the [eventMessage](/graph/api/resources/eventMessage?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **unseenConversationsCount** and **unseenMessagesCount** properties from the [group](/graph/api/resources/group?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **settingXml** and **settings** properties to the [iosMobileAppConfiguration](/graph/api/resources/intune_apps_iosmobileappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [iosPkcsCertificateProfile](/graph/api/resources/intune_deviceconfig_iospkcscertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [iosScepCertificateProfile](/graph/api/resources/intune_deviceconfig_iosscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **systemIntegrityProtectionEnabled** property to the [macOSCompliancePolicy](/graph/api/resources/intune_deviceconfig_macoscompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [macOSScepCertificateProfile](/graph/api/resources/intune_deviceconfig_macosscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **complianceGracePeriodExpirationDateTime**, **userPrincipalName**. and **imei** properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **settingXml** and **settings** properties from the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **useSharedComputerActivation**, **updateChannel**, **officePlatformArchitecture** and **localesToInstall** properties to the [officeSuiteApp](/graph/api/resources/intune_apps_officesuiteapp?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **applePushNotificationCertificateSetting** property from the [organization](/graph/api/resources/intune_onboarding_organization?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the following properties on the [post](/graph/api/resources/post?view=graph-rest-beta) entity:<br/>**sender** from optional to required<br/> |
| Change      | Beta    | Added the **compliantUserCount**, **nonCompliantUserCount**, **remediatedUserCount**, **errorUserCount**, **unknownUserCount**, **conflictUserCount** and **notApplicableUserCount** properties to the [softwareUpdateStatusSummary](/graph/api/resources/intune_deviceconfig_softwareupdatestatussummary?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **bluetoothAllowedServices**, **bluetoothBlockPrePairing**, **cellularData**, **defenderDetectedMalwareActions**, **defenderPotentiallyUnwantedAppAction**, **lockScreenAllowTimeoutConfiguration**, **lockScreenBlockCortana**, **lockScreenBlockToastNotifications**, **lockScreenTimeoutInSeconds**, **passwordBlockSimple**, **privacyAutoAcceptPairingAndConsentPrompts**, **privacyBlockInputPersonalization**, **startMenuHideChangeAccountSettings**, **startMenuHideHibernate**, **startMenuHideLock**, **startMenuHideShutDown**, **startMenuHideSignOut**, **startMenuHideSleep**, **startMenuHideSwitchAccount**, **settingsBlockAppsPage**, **settingsBlockGamingPage**, **windowsSpotlightBlockConsumerSpecificFeatures**, **windowsSpotlightBlocked**, **windowsSpotlightBlockOnActionCenter**, **windowsSpotlightBlockTailoredExperiences**, **windowsSpotlightBlockThirdPartyNotifications**, **windowsSpotlightBlockWelcomeExperience**, **windowsSpotlightBlockWindowsTips**, **windowsSpotlightConfigureOnLockScreen** and **connectedDevicesServiceBlocked** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **automaticUpdateMode**, **automaticUpdateSchedule**, **automaticUpdateTime**, **prereleaseFeatures**, **experienceBlockWindowsSpotlight**, **experienceBlockWindowsTips** and **experienceBlockConsumerSpecificFeatures** properties from the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [windows10PkcsCertificateProfile](/graph/api/resources/intune_deviceconfig_windows10pkcscertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [windows81SCEPCertificateProfile](/graph/api/resources/intune_deviceconfig_windows81scepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **indexingEncryptedStoresOrItemsBlocked** and **smbAutoEncryptedFileExtensions** properties to the [windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the following properties on the [windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection?view=graph-rest-beta) entity:<br/>**rightsManagementServicesTemplateId** from required to optional<br/> |
| Change      | Beta    | Changed the following properties on the [windowsMobileMSI](/graph/api/resources/intune_apps_windowsmobilemsi?view=graph-rest-beta) entity:<br/>**productCode** from required to optional<br/> |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [windowsPhone81SCEPCertificateProfile](/graph/api/resources/intune_deviceconfig_windowsphone81scepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **mobileAppConfigurations** navigation property to the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **cartToClassAssociations**, **deviceCompliancePolicySettingStateSummaries**, **remoteAssistancePartners**, **windowsInformationProtectionAppLearningSummaries** and **windowsMalwareInformation** navigation properties to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **eBook** navigation property to the [eBookGroupAssignment](/graph/api/resources/intune_books_ebookgroupassignment?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **windowsProtectionState** navigation property to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **installSummary** navigation property to the [managedEBook](/graph/api/resources/intune_books_managedebook?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **outlook** navigation property from the [user](/graph/api/resources/intune_deviceconfig_user?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **healthStates** navigation property from the [windowsManagementApp](/graph/api/resources/intune_deviceconfig_windowsmanagementapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **androidForWorkRestrictions** property to the [defaultDeviceEnrollmentRestrictions](/graph/api/resources/intune_onboarding_defaultdeviceenrollmentrestrictions?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **userPrincipalName** and **sources** properties to the [deviceCompliancePolicySettingState](/graph/api/resources/intune_deviceconfig_devicecompliancepolicysettingstate?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **userPrincipalName** and **sources** properties to the [deviceConfigurationSettingState](/graph/api/resources/intune_deviceconfig_deviceconfigurationsettingstate?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceConfigurationSettingState](/graph/api/resources/intune_deviceconfig_deviceconfigurationsettingstate?view=graph-rest-beta) complex type |
| Change      | Beta    | Removed the **archiveFolder** property from the [mailboxSettings](/graph/api/resources/mailboxSettings?view=graph-rest-beta) complex type |


### Outlook calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | For **findMeetingTimes**, added new enum value **unrestricted** that you specify as the **activityDomain** property, part of the **timeConstraint** parameter. This lets **findMeetingTimes** look for times appropriate for the type of activity you're scheduling for. See details in the [request body](/graph/api/user_findmeetingtimes#request-body?view=graph-rest-1.0) section. |
| Addition        | Beta          | Support getting an **event** body in plain text, as an alternative to the default HTML format. See [get](/graph/api/event_get?view=graph-rest-beta) and [list](/graph/api/user_list_events?view=graph-rest-beta) events for details. |

### Outlook mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Support getting a **message** body in plain text, as an alternative to the default HTML format. See [get](/graph/api/message_get?view=graph-rest-beta) and [list](/graph/api/user_list_messages?view=graph-rest-beta) events for details. |


### Outlook tasks

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | New **outlook** navigation property added to [user](/graph/api/resources/user?view=graph-rest-beta), to access Outlook tasks. |
| Addition        | Beta        | New entities - [outlookuser](/graph/api/resources/outlookuser?view=graph-rest-beta), [outlookTaskGroup](/graph/api/resources/outlooktaskgroup?view=graph-rest-beta), [outlookTaskFolder](/graph/api/resources/outlooktaskfolder?view=graph-rest-beta), and [outlookTask](/graph/api/resources/outlooktask?view=graph-rest-beta) - and their methods support organizing and accessing Outlook tasks. |
| Addition        | Beta        | Outlook tasks support attachments ([attachment](/graph/api/resources/attachment?view=graph-rest-beta), [fileAttachment](/graph/api/resources/fileattachment?view=graph-rest-beta), [itemAttachment](/graph/api/resources/itemattachment?view=graph-rest-beta), and [referenceAttachment](/graph/api/resources/referenceattachment?view=graph-rest-beta) resources). |
| Addition        | Beta        | Outlook tasks support [extended properties](/graph/api/resources/extended-properties-overview?view=graph-rest-beta) ([singleValueLegacyExtendedProperty](/graph/api/resources/singlevaluelegacyextendedproperty?view=graph-rest-beta) and [multiValueLegacyExtendedProperty](/graph/api/resources/multivaluelegacyextendedproperty?view=graph-rest-beta) resources). |

### Planner APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added [Planner API](/graph/api/resources/planner_overview?view=graph-rest-1.0).<br />New resources:<br />[plannerPlan](/graph/api/resources/plannerPlan?view=graph-rest-1.0) <br />[plannerTask](/graph/api/resources/plannerTask?view=graph-rest-1.0) <br />[plannerPlanDetails](/graph/api/resources/plannerPlanDetails?view=graph-rest-1.0) <br />[plannerTaskDetails](/graph/api/resources/plannerTaskDetails?view=graph-rest-1.0) <br />[plannerBucket](/graph/api/resources/plannerBucket?view=graph-rest-1.0) <br />[plannerAssignedToTaskBoardTaskFormat](/graph/api/resources/plannerassignedtotaskboardtaskformat?view=graph-rest-1.0) <br />[plannerBucketTaskBoardTaskFormat](/graph/api/resources/plannerbuckettaskboardtaskformat?view=graph-rest-1.0) <br />[plannerProgressTaskBoardTaskFormat](/graph/api/resources/plannerprogresstaskboardtaskformat?view=graph-rest-1.0) |

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
| Change          | Beta        | The [application](/graph/api/resources/application?view=graph-rest-beta) and [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta) APIs will be updated in preview (beta). The first set of changes will be applied on May 15, 2017. The changes include property renaming and restructuring. Some properties (such as appRoles and addIns) will not be available until the changes are completed. The changes will be released in preview (beta) prior to releasing to v1.0. |

### Added preview support for Cloud Solution Provider developers

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new preview capability to allow Cloud Solution Provider pre-consented applications to call Microsoft Graph, described in a new [authorization topic](../concepts/auth_cloudsolutionprovider). |

### Added onPremises properties to user entity

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new onPremises properties onPremisesDomainName, OnPremisesSamAccountName, and onPremisesUserPrincipalName to the [user](/graph/api/resources/user?view=graph-rest-beta) entity. |

### New Planner APIs and an update to the group visibility property

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Added **HiddenMembership** as an additional value for the visibility property to the [Group](/graph/api/resources/group?view=graph-rest-beta) entity |
| Addition        | Beta        | Added new [Planner API](/graph/api/resources/planner_overview?view=graph-rest-beta).<br />New resources:<br />[plannerPlan](/graph/api/resources/plannerPlan?view=graph-rest-beta) <br />[plannerTask](/graph/api/resources/plannerTask?view=graph-rest-beta) <br />[plannerPlanDetails](/graph/api/resources/plannerPlanDetails?view=graph-rest-beta) <br />[plannerTaskDetails](/graph/api/resources/plannerTaskDetails?view=graph-rest-beta) <br />[plannerBucket](/graph/api/resources/plannerBucket?view=graph-rest-beta) <br />[plannerAssignedToTaskBoardTaskFormat](/graph/api/resources/plannerassignedtotaskboardtaskformat?view=graph-rest-beta) <br />[plannerBucketTaskBoardTaskFormat](/graph/api/resources/plannerbuckettaskboardtaskformat?view=graph-rest-beta) <br />[plannerProgressTaskBoardTaskFormat](/graph/api/resources/plannerprogresstaskboardtaskformat?view=graph-rest-beta) |

### Intune APIs
| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new entities:<br/>[androidForWorkCompliancePolicy](/graph/api/resources/intune_deviceconfig_androidforworkcompliancepolicy?view=graph-rest-beta)<br/>[deviceComplianceSettingState](/graph/api/resources/intune_deviceconfig_devicecompliancesettingstate?view=graph-rest-beta)<br/>[deviceInstallState](/graph/api/resources/intune_books_deviceinstallstate?view=graph-rest-beta)<br/>[deviceManagementScript](/graph/api/resources/intune_deviceconfig_devicemanagementscript?view=graph-rest-beta)<br/>[deviceManagementScriptGroupAssignment](/graph/api/resources/intune_deviceconfig_devicemanagementscriptgroupassignment?view=graph-rest-beta)<br/>[deviceManagementScriptState](/graph/api/resources/intune_deviceconfig_devicemanagementscriptstate?view=graph-rest-beta)<br/>[eBookGroupAssignment](/graph/api/resources/intune_books_ebookgroupassignment?view=graph-rest-beta)<br/>[iosVppEBook](/graph/api/resources/intune_books_iosvppebook?view=graph-rest-beta)<br/>[managedEBook](/graph/api/resources/intune_books_managedebook?view=graph-rest-beta)<br/>[userInstallStateSummary](/graph/api/resources/intune_books_userinstallstatesummary?view=graph-rest-beta)<br/>[windowsManagementApp](/graph/api/resources/intune_deviceconfig_windowsmanagementapp?view=graph-rest-beta)<br/>[windowsManagementAppHealthState](/graph/api/resources/intune_deviceconfig_windowsmanagementapphealthstate?view=graph-rest-beta)<br/> |
| Addition        | Beta        | Added new complex types:<br/>[dailySchedule](/graph/api/resources/intune_deviceconfig_dailyschedule?view=graph-rest-beta)<br/>[hourlySchedule](/graph/api/resources/intune_deviceconfig_hourlyschedule?view=graph-rest-beta)<br/>[iosBookmark](/graph/api/resources/intune_deviceconfig_iosbookmark?view=graph-rest-beta)<br/>[iosWebContentFilterAutoFilter](/graph/api/resources/intune_deviceconfig_ioswebcontentfilterautofilter?view=graph-rest-beta)<br/>[iosWebContentFilterBase](/graph/api/resources/intune_deviceconfig_ioswebcontentfilterbase?view=graph-rest-beta)<br/>[iosWebContentFilterSpecificWebsitesAccess](/graph/api/resources/intune_deviceconfig_ioswebcontentfilterspecificwebsitesaccess?view=graph-rest-beta)<br/>[runSchedule](/graph/api/resources/intune_deviceconfig_runschedule?view=graph-rest-beta)<br/>[sharedAppleDeviceUser](/graph/api/resources/intune_deviceconfig_sharedappledeviceuser?view=graph-rest-beta)<br/>[windows10NetworkProxyServer](/graph/api/resources/intune_deviceconfig_windows10networkproxyserver?view=graph-rest-beta)<br/> |
| Addition        | Beta        | Added the [requestRemoteAssistance](/graph/api/intune_devices_manageddevice_requestremoteassistance?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
| Addition        | Beta        | Added the [cleanWindowsDevice](/graph/api/intune_devices_manageddevice_cleanwindowsdevice?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
| Addition        | Beta        | Added the [logoutSharedAppleDeviceActiveUser](/graph/api/intune_devices_manageddevice_logoutsharedappledeviceactiveuser?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
| Addition        | Beta        | Added the [deleteUserFromSharedAppleDevice](/graph/api/intune_devices_manageddevice_deleteuserfromsharedappledevice?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
| Addition        | Beta        | Added the [assign](/graph/api/intune_deviceconfig_devicemanagementscript_assign?view=graph-rest-beta) action on [deviceManagementScript](/graph/api/resources/intune_deviceconfig_devicemanagementscript?view=graph-rest-beta) |
| Addition        | Beta        | Added the [syncLicenses](/graph/api/intune_onboarding_applevolumepurchaseprogramtoken_synclicenses?view=graph-rest-beta) action on [appleVolumePurchaseProgramToken](/graph/api/resources/intune_apps_applevolumepurchaseprogramtoken?view=graph-rest-beta) |
| Addition        | Beta        | Added the **getTopMobileApps** function on [mobileApp](/graph/api/resources/intune_apps_mobileapp?view=graph-rest-beta) collection |
| Addition        | Beta        | Added the [downloadApplePushNotificationCertificateSigningRequest](/graph/api/intune_deviceconfig_applepushnotificationcertificate_downloadapplepushnotificationcertificatesigningrequest?view=graph-rest-beta) function on [applePushNotificationCertificate](/graph/api/resources/intune_deviceconfig_applepushnotificationcertificate?view=graph-rest-beta) |
| Addition        | Beta        | Added the [getDeviceComplianceSettingStates](/graph/api/intune_deviceconfig_devicemanagement_getdevicecompliancesettingstates?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) |
| Addition        | Beta        | Added the [deviceConfigurationUserActivity](/graph/api/intune_deviceconfig_reportroot_deviceconfigurationuseractivity?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune_deviceconfig_reportroot?view=graph-rest-beta) |
| Addition        | Beta        | Added the [deviceConfigurationDeviceActivity](/graph/api/intune_deviceconfig_reportroot_deviceconfigurationdeviceactivity?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune_deviceconfig_reportroot?view=graph-rest-beta) |
| Deletion        | Beta        | Removed the following complex types:<br/>**enterpriseCloudResource**<br/>**windowsInformationProtectionAppRule**<br/>**windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate**<br/>**windowsInformationProtectionAppRuleDesktopTemplate**<br/>**windowsInformationProtectionAppRuleStoreAppTemplate**<br/>**windowsInformationProtectionAppRuleTemplate**<br/>**windowsInformationProtectionCorporateNetworkLocation**<br/>**windowsInformationProtectionProtectedLocation**<br/>**windowsInformationProtectionProtectedLocationEnterpriseCloudResources**<br/>**windowsInformationProtectionProtectedLocationEnterpriseInternalProxyServers**<br/>**windowsInformationProtectionProtectedLocationEnterpriseIPv4Ranges**<br/>**windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges**<br/>**windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames**<br/>**windowsInformationProtectionProtectedLocationEnterpriseProxyServers**<br/>**windowsInformationProtectionProtectedLocationNeutralResources**<br/> |
| Change          | Beta        | Added the **deviceSharingAllowed** property to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Removed the **deviceSharingBlocked** property from the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **minimumRequiredSdkVersion** property to the [defaultManagedAppProtection](/graph/api/resources/intune_mam_defaultmanagedappprotection?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **windowsManagementAppEnabled** property to the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **notificationTemplateId** property to the [deviceComplianceActionItem](/graph/api/resources/intune_deviceconfig_devicecomplianceactionitem?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **excludeGroup** property to the [deviceConfigurationGroupAssignment](/graph/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment?view=graph-rest-beta) entity |
| Change          | Beta        | Changed the following properties on the [iosCustomConfiguration](/graph/api/resources/intune_deviceconfig_ioscustomconfiguration?view=graph-rest-beta) entity:<br/>**payloadFileName** from required to optional<br/> |
| Change          | Beta        | Added the **contentFilterSettings** property to the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune_deviceconfig_iosdevicefeaturesconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **cellularBlockPersonalHotspot** and **passcodeBlockFingerprintModification** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_iosgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **minimumRequiredSdkVersion** property to the [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection?view=graph-rest-beta) entity |
| Change          | Beta        | Changed the following properties on the [macOSCustomConfiguration](/graph/api/resources/intune_deviceconfig_macoscustomconfiguration?view=graph-rest-beta) entity:<br/>**payloadFileName** from required to optional<br/> |
| Change          | Beta        | Added the **disableAppPinIfDevicePinIsSet**, **minimumRequiredOsVersion**, **minimumWarningOsVersion**, **minimumRequiredAppVersion** and **minimumWarningAppVersion** properties to the [managedAppProtection](/graph/api/resources/intune_mam_managedappprotection?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **remoteAssistanceSessionUrl**, **isEncrypted**, **model** and **manufacturer** properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity |
| Change          | Beta        | Changed the following properties on the [getMobileAppCount](../docs/api-reference/beta/api/intune_apps_mobileapp_getmobileappcount) entity:<br/>**bindingParameter** from **mobileApp** to a **collection** of *mobileApp*<br/>**status** from a GUID to a String<br/> |
| Change          | Beta        | Added the **vpnConfigurationId** property to the [mobileAppGroupAssignment](/graph/api/resources/intune_apps_mobileappgroupassignment?view=graph-rest-beta) entity |
| Change          | Beta        | Removed the **fromEmailAddress** property from the [notificationMessageTemplate](/graph/api/resources/intune_deviceconfig_notificationmessagetemplate?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **excludedApps** property to the [officeSuiteApp](/graph/api/resources/intune_apps_officesuiteapp?view=graph-rest-beta) entity |
| Change          | Beta        | Removed the **excludedOfficeApps** property from the [officeSuiteApp](/graph/api/resources/intune_apps_officesuiteapp?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **enabled** property to the [sharedPCConfiguration](/graph/api/resources/intune_deviceconfig_sharedpcconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **networkProxyApplySettingsDeviceWide**, **networkProxyDisableAutoDetect**, **networkProxyAutomaticConfigurationUrl**, **networkProxyServer**, **bluetoothDeviceName**, **wiFiScanInterval**, **wirelessDisplayBlockProjectionToThisDevice**, **wirelessDisplayBlockUserInputFromReceiver**, **wirelessDisplayRequirePinForPairing**, **experienceBlockDeviceDiscovery**, **experienceBlockErrorDialogWhenNoSIM**, **experienceBlockTaskSwitcher**, **startMenuPinnedFolderDocuments**, **startMenuPinnedFolderDownloads**, **startMenuPinnedFolderFileExplorer**, **startMenuPinnedFolderHomeGroup**, **startMenuPinnedFolderMusic**, **startMenuPinnedFolderNetwork**, **startMenuPinnedFolderPersonalFolder**, **startMenuPinnedFolderPictures**, **startMenuPinnedFolderSettings**, **startMenuPinnedFolderVideos**, **startMenuAppListVisibility**, **startMenuHideFrequentlyUsedApps**, **startMenuHideRecentJumpLists**, **startMenuHideRecentlyAddedApps**, **startMenuHideRestartOptions**, **startMenuHideUserTile**, **startMenuHidePowerButton**, **startMenuLayoutEdgeAssetsXml**, **personalizationDesktopImageUrl** and **personalizationLockScreenImageUrl** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Changed the type of the following properties on the [windowsMobileMSI](/graph/api/resources/intune_apps_windowsmobilemsi?view=graph-rest-beta) entity:<br/>**productCode** from Guid to String<br/> |
| Change          | Beta        | Changed the following properties on the [windowsPhone81AppX](/graph/api/resources/intune_apps_windowsphone81appx?view=graph-rest-beta) entity:<br/>**phoneProductIdentifier** from required to optional<br/>**phonePublisherId** from required to optional<br/> |
| Change          | Beta        | Changed the following properties on the [windowsPhone81AppXBundle](/graph/api/resources/intune_apps_windowsphone81appxbundle?view=graph-rest-beta) entity:<br/>**appXPackageInformationList** from required to optional<br/> |
| Change          | Beta        | Added the **productKey** and **licenseType** properties to the [windowsStoreForBusinessApp](/graph/api/resources/intune_apps_windowsstoreforbusinessapp?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **previewBuildSetting** property to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **windowsManagementApp** and **managedEBooks** navigation properties to the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **deviceManagementScripts**, **managedDeviceOverview** and **cloudPkiSubscriptions** navigation properties to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **osMinimumVersion** and **osMaximumVersion** properties to the [deviceEnrollmentPlatformRestrictions](/graph/api/resources/intune_onboarding_deviceenrollmentplatformrestrictions?view=graph-rest-beta) complex type |
| Change          | Beta        | Added the **isSharedDevice** and **sharedDeviceCachedUsers** properties to the [hardwareInformation](/graph/api/resources/intune_deviceconfig_hardwareinformation?view=graph-rest-beta) complex type |
| Change          | Beta        | Changed the following properties on the [omaSettingBase64](/graph/api/resources/intune_deviceconfig_omasettingbase64?view=graph-rest-beta) complex type:<br/>**fileName** from required to optional<br/> |
| Change          | Beta        | Changed the following properties on the [omaSettingStringXml](/graph/api/resources/intune_deviceconfig_omasettingstringxml?view=graph-rest-beta) complex type:<br/>**fileName** from required to optional<br/> |

## March 2017

### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[androidForWorkApp](/graph/api/resources/intune_apps_androidforworkapp?view=graph-rest-beta)<br/>[androidForWorkAppConfigurationSchema](/graph/api/resources/intune_androidforwork_androidforworkappconfigurationschema?view=graph-rest-beta)<br/>[androidForWorkSettings](/graph/api/resources/intune_androidforwork_androidforworksettings?view=graph-rest-beta)<br/>[androidForWorkVpnConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkvpnconfiguration?view=graph-rest-beta)<br/>[applePushNotificationCertificate](/graph/api/resources/intune_deviceconfig_applepushnotificationcertificate?view=graph-rest-beta)<br/>[complianceSettingStateSummary](/graph/api/resources/intune_deviceconfig_compliancesettingstatesummary?view=graph-rest-beta)<br/>[deviceCompliancePolicyDeviceStateSummary](/graph/api/resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary?view=graph-rest-beta)<br/>[deviceCompliancePolicyState](/graph/api/resources/intune_deviceconfig_devicecompliancepolicystate?view=graph-rest-beta)<br/>[deviceConfigurationDeviceStateSummary](/graph/api/resources/intune_deviceconfig_deviceconfigurationdevicestatesummary?view=graph-rest-beta)<br/>[deviceConfigurationState](/graph/api/resources/intune_deviceconfig_deviceconfigurationstate?view=graph-rest-beta)<br/>[enterpriseCodeSigningCertificate](/graph/api/resources/intune_apps_enterprisecodesigningcertificate?view=graph-rest-beta)<br/>[iosEduDeviceConfiguration](/graph/api/resources/intune_deviceconfig_iosedudeviceconfiguration?view=graph-rest-beta)<br/>[managedDeviceCertificateState](/graph/api/resources/intune_devices_manageddevicecertificatestate?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationDeviceSummary](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationUserSummary](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationusersummary?view=graph-rest-beta)<br/>[mdmWindowsInformationProtectionPolicy](/graph/api/resources/intune_mam_mdmwindowsinformationprotectionpolicy?view=graph-rest-beta)<br/>[mobileAppInstallSummary](/graph/api/resources/intune_apps_mobileappinstallsummary?view=graph-rest-beta)<br/>[mobileAppProvisioningConfigGroupAssignment](/graph/api/resources/intune_apps_mobileappprovisioningconfiggroupassignment?view=graph-rest-beta)<br/>[mobileThreatDefenseConnector](/graph/api/resources/intune_onboarding_mobilethreatdefenseconnector?view=graph-rest-beta)<br/>[officeSuiteApp](/graph/api/resources/intune_apps_officesuiteapp?view=graph-rest-beta)<br/>[settingStateDeviceSummary](/graph/api/resources/intune_deviceconfig_settingstatedevicesummary?view=graph-rest-beta)<br/>[softwareUpdateStatusSummary](/graph/api/resources/intune_deviceconfig_softwareupdatestatussummary?view=graph-rest-beta)<br/>[symantecCodeSigningCertificate](/graph/api/resources/intune_apps_symanteccodesigningcertificate?view=graph-rest-beta)<br/>[windowsDefenderAdvancedThreatProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windowsdefenderadvancedthreatprotectionconfiguration?view=graph-rest-beta)<br/>[windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection?view=graph-rest-beta)<br/>[windowsInformationProtectionAppLockerFile](/graph/api/resources/intune_mam_windowsinformationprotectionapplockerfile?view=graph-rest-beta)<br/>[windowsInformationProtectionPolicy](/graph/api/resources/intune_mam_windowsinformationprotectionpolicy?view=graph-rest-beta)<br/>[windowsMobileMSI](/graph/api/resources/intune_apps_windowsmobilemsi?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[androidForWorkAppConfigurationExample](/graph/api/resources/intune_androidforwork_androidforworkappconfigurationexample?view=graph-rest-beta)<br/>[androidForWorkAppConfigurationExampleJson](/graph/api/resources/intune_androidforwork_androidforworkappconfigurationexamplejson?view=graph-rest-beta)<br/>[androidForWorkAppConfigurationSchemaItem](/graph/api/resources/intune_androidforwork_androidforworkappconfigurationschemaitem?view=graph-rest-beta)<br/>[deviceCompliancePolicySettingState](/graph/api/resources/intune_deviceconfig_devicecompliancepolicysettingstate?view=graph-rest-beta)<br/>[deviceConfigurationSettingState](/graph/api/resources/intune_deviceconfig_deviceconfigurationsettingstate?view=graph-rest-beta)<br/>[deviceExchangeAccessStateSummary](/graph/api/resources/intune_deviceconfig_deviceexchangeaccessstatesummary?view=graph-rest-beta)<br/>[edgeSearchEngine](/graph/api/resources/intune_deviceconfig_edgesearchengine?view=graph-rest-beta)<br/>[edgeSearchEngineBase](/graph/api/resources/intune_deviceconfig_edgesearchenginebase?view=graph-rest-beta)<br/>[edgeSearchEngineCustom](/graph/api/resources/intune_deviceconfig_edgesearchenginecustom?view=graph-rest-beta)<br/>[excludedApps](/graph/api/resources/intune_apps_excludedapps?view=graph-rest-beta)<br/>[iosEduCertificateSettings](/graph/api/resources/intune_deviceconfig_ioseducertificatesettings?view=graph-rest-beta)<br/>[ipRange](/graph/api/resources/intune_deviceconfig_iprange?view=graph-rest-beta)<br/>[windowsInformationProtectionApp](/graph/api/resources/intune_mam_windowsinformationprotectionapp?view=graph-rest-beta)<br/>[windowsInformationProtectionCloudResource](/graph/api/resources/intune_mam_windowsinformationprotectioncloudresource?view=graph-rest-beta)<br/>[windowsInformationProtectionCloudResourceCollection](/graph/api/resources/intune_mam_windowsinformationprotectioncloudresourcecollection?view=graph-rest-beta)<br/>[windowsInformationProtectionDesktopApp](/graph/api/resources/intune_mam_windowsinformationprotectiondesktopapp?view=graph-rest-beta)<br/>[windowsInformationProtectionIPRangeCollection](/graph/api/resources/intune_mam_windowsinformationprotectioniprangecollection?view=graph-rest-beta)<br/>[windowsInformationProtectionResourceCollection](/graph/api/resources/intune_mam_windowsinformationprotectionresourcecollection?view=graph-rest-beta)<br/>[windowsInformationProtectionStoreApp](/graph/api/resources/intune_mam_windowsinformationprotectionstoreapp?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added the [requestSignupUrl](/graph/api/intune_androidforwork_androidforworksettings_requestsignupurl?view=graph-rest-beta) action on [androidForWorkSettings](/graph/api/resources/intune_androidforwork_androidforworksettings?view=graph-rest-beta) |
| Addition    | Beta    | Added the [completeSignup](/graph/api/intune_androidforwork_androidforworksettings_completesignup?view=graph-rest-beta) action on [androidForWorkSettings](/graph/api/resources/intune_androidforwork_androidforworksettings?view=graph-rest-beta) |
| Addition    | Beta    | Added the [syncApps](/graph/api/intune_androidforwork_androidforworksettings_syncapps?view=graph-rest-beta) action on [androidForWorkSettings](/graph/api/resources/intune_androidforwork_androidforworksettings?view=graph-rest-beta) |
| Addition    | Beta    | Added the [unbind](/graph/api/intune_androidforwork_androidforworksettings_unbind?view=graph-rest-beta) action on [androidForWorkSettings](/graph/api/resources/intune_androidforwork_androidforworksettings?view=graph-rest-beta) |
| Addition    | Beta    | Added the [assign](/graph/api/intune_apps_ioslobappprovisioningconfiguration_assign?view=graph-rest-beta) action on [iosLobAppProvisioningConfiguration](/graph/api/resources/intune_apps_ioslobappprovisioningconfiguration?view=graph-rest-beta) |
| Addition    | Beta    | Added the [recoverPasscode](/graph/api/intune_devices_manageddevice_recoverpasscode?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) |
| Addition    | Beta    | Added the [removeApplePushNotificationCertificate](/graph/api/intune_onboarding_organization_removeapplepushnotificationcertificate?view=graph-rest-beta) action on [organization](/graph/api/resources/intune_onboarding_organization?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateMobileAppIdentifierDeployments](/graph/api/intune_mam_iosmanagedappprotection_updatemobileappidentifierdeployments?view=graph-rest-beta) action on [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateMobileAppIdentifierDeployments](/graph/api/intune_mam_androidmanagedappprotection_updatemobileappidentifierdeployments?view=graph-rest-beta) action on [androidManagedAppProtection](/graph/api/resources/intune_mam_androidmanagedappprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateMobileAppIdentifierDeployments](/graph/api/intune_mam_targetedmanagedappconfiguration_updatemobileappidentifierdeployments?view=graph-rest-beta) action on [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune_mam_iosmanagedappprotection_updatetargetedsecuritygroups?view=graph-rest-beta) action on [iosManagedAppProtection](/graph/api/resources/intune_mam_iosmanagedappprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune_mam_androidmanagedappprotection_updatetargetedsecuritygroups?view=graph-rest-beta) action on [androidManagedAppProtection](/graph/api/resources/intune_mam_androidmanagedappprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune_mam_windowsinformationprotection_updatetargetedsecuritygroups?view=graph-rest-beta) action on [windowsInformationProtection](/graph/api/resources/intune_mam_windowsinformationprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune_mam_windowsinformationprotection_updatetargetedsecuritygroups?view=graph-rest-beta) action on [windowsInformationProtectionPolicy](/graph/api/resources/intune_mam_windowsinformationprotectionpolicy?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune_mam_mdmwindowsinformationprotectionpolicy_updatetargetedsecuritygroups?view=graph-rest-beta) action on [mdmWindowsInformationProtectionPolicy](/graph/api/resources/intune_mam_mdmwindowsinformationprotectionpolicy?view=graph-rest-beta) |
| Addition    | Beta    | Added the [wipeManagedAppRegistrationByDeviceTag](/graph/api/intune_mam_user_wipemanagedappregistrationbydevicetag?view=graph-rest-beta) action on [user](/graph/api/resources/intune_deviceconfig_user?view=graph-rest-beta) |
| Addition    | Beta    | Added the [getTopMobileApps](/graph/api/intune_apps_mobileapp_gettopmobileapps?view=graph-rest-beta) function on [mobileApp](/graph/api/resources/intune_apps_mobileapp?view=graph-rest-beta) |
| Addition    | Beta    | Added the [verifyWindowsEnrollmentAutoDiscovery](/graph/api/intune_corpenrollment_devicemanagement_verifywindowsenrollmentautodiscovery?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) |
| Deletion    | Beta    | Removed the following entities:<br/>**appProvisioningConfigGroupAssignment**<br/>**defaultManagedAppConfiguration**<br/>**enterpriseCertificate**<br/>**managedDeviceMobileAppProvisioningConfigurationDeviceStatus**<br/>**symantecCertificate**<br/>**windows10WindowsInformationProtectionConfiguration**<br/> |
| Deletion    | Beta    | Removed the following complex types:<br/>**mobileAppInstallSummary**<br/>**windowsArchitecture**<br/>**windowsDeviceType**<br/> |
| Change      | Beta    | Added the **webBrowserBlockPopups** property to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **webBrowserAllowPopups** property from the [androidGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **appIdentifier** property to the [androidStoreApp](/graph/api/resources/intune_apps_androidstoreapp?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **applicationCount**, **failedApplicationCount** and **appInstallFailures** properties from the [appReportingOverviewStatus](/graph/api/resources/appReportingOverviewStatus?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **sharedIPadMaximumUserCount** and **enableSharedIPad** properties to the [depEnrollmentProfile](/graph/api/resources/intune_corpenrollment_depenrollmentprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **shareTokenWithSchoolDataSyncService** and **lastSyncErrorCode** properties to the [depOnboardingSetting](/graph/api/resources/intune_onboarding_deponboardingsetting?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceComplianceDeviceOverview](/graph/api/resources/intune_deviceconfig_devicecompliancedeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **numberOfPendingDevices**, **numberOfSucceededDevices**, **numberOfErrorDevices**, **numberOfFailedDevices**, **lastUpdateTime** and **policyRevision** properties from the [deviceComplianceDeviceOverview](/graph/api/resources/intune_deviceconfig_devicecompliancedeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceComplianceUserOverview](/graph/api/resources/intune_deviceconfig_devicecomplianceuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **numberOfPendingUsers**, **numberOfSucceededUsers**, **numberOfErrorUsers**, **numberOfFailedUsers**, **lastUpdateTime** and **policyRevision** properties from the [deviceComplianceUserOverview](/graph/api/resources/intune_deviceconfig_devicecomplianceuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceConfigurationDeviceOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationdeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **numberOfPendingDevices**, **numberOfSucceededDevices**, **numberOfErrorDevices**, **numberOfFailedDevices**, **lastUpdateTime** and **policyRevision** properties from the [deviceConfigurationDeviceOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationdeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceConfigurationUserOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **numberOfPendingUsers**, **numberOfSucceededUsers**, **numberOfErrorUsers**, **numberOfFailedUsers**, **lastUpdateTime** and **policyRevision** properties from the [deviceConfigurationUserOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subscriptionState** property to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedEmailProfileRequired** property to the [iosCompliancePolicy](/graph/api/resources/intune_deviceconfig_ioscompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **appsSingleAppModeList** property to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_iosgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **appsSingleAppModeBundleIds** property from the [iosGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_iosgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **expirationDateTime** property to the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune_apps_ioslobappprovisioningconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **expiration** property from the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune_apps_ioslobappprovisioningconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **passwordMinimumCharacterSetCount**, **osMinimumVersion**, **osMaximumVersion**, **deviceThreatProtectionEnabled**, **deviceThreatProtectionRequiredSecurityLevel** and **storageRequireEncryption** properties to the [macOSCompliancePolicy](/graph/api/resources/intune_deviceconfig_macoscompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **manifest** property from the [managedAndroidLobApp](/graph/api/resources/intune_apps_managedandroidlobapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **isSupervised**, **exchangeLastSuccessfulSyncDateTime**, **exchangeAccessState** and **exchangeAccessStateReason** properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceExchangeAccessStateSummary** property to the [managedDeviceOverview](/graph/api/resources/intune_devices_manageddeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **manifest** property from the [managedIOSLobApp](/graph/api/resources/intune_apps_managedioslobapp?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **installSummary** property from the [mobileApp](/graph/api/resources/intune_apps_mobileapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **uploadState** property to the [mobileAppContentFile](/graph/api/resources/intune_apps_mobileappcontentfile?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the following properties on the [mobileAppContentFile](/graph/api/resources/intune_apps_mobileappcontentfile?view=graph-rest-beta) entity:<br/>**azureStorageUriExpirationDateTime** from required to optional<br/> |
| Change      | Beta    | Added the **initiatedByUserPrincipalName**, **deviceOwnerUserPrincipalName**, **deviceIMEI** and **actionState** properties to the [remoteActionAudit](/graph/api/resources/intune_deviceconfig_remoteactionaudit?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **oneDriveDisableFileSync**, **safeSearchFilter**, **edgeSearchEngine**, **settingsBlockSettingsApp**, **settingsBlockSystemPage**, **settingsBlockDevicesPage**, **settingsBlockNetworkInternetPage**, **settingsBlockPersonalizationPage**, **settingsBlockAccountsPage**, **settingsBlockTimeLanguagePage**, **settingsBlockEaseOfAccessPage**, **settingsBlockPrivacyPage**, **settingsBlockUpdateSecurityPage**, **experienceBlockWindowsSpotlight**, **experienceBlockWindowsTips**, **experienceBlockConsumerSpecificFeatures**, **startMenuLayoutXml**, **startMenuMode**, **logonBlockFastUserSwitching** and **startBlockUnpinningAppsFromTaskbar** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **allowPrinting**, **allowScreenCapture** and **allowTextSuggestion** properties to the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune_deviceconfig_windows10secureassessmentconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **blockPrinting**, **blockScreenCapture** and **blockTextSuggestion** properties from the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune_deviceconfig_windows10secureassessmentconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **identityName** property to the [windowsAppX](/graph/api/resources/intune_apps_windowsappx?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [windowsAppX](/graph/api/resources/intune_apps_windowsappx?view=graph-rest-beta) entity:<br/>**applicableArchitectures** from [windowsArchitecture](/graph/api/resources/windowsArchitecture?view=graph-rest-beta) to String<br/> |
| Change      | Beta    | Added the **identityName** property to the [windowsPhone81AppX](/graph/api/resources/intune_apps_windowsphone81appx?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [windowsPhone81AppX](/graph/api/resources/intune_apps_windowsphone81appx?view=graph-rest-beta) entity:<br/>**applicableArchitectures** from [windowsArchitecture](/graph/api/resources/windowsArchitecture?view=graph-rest-beta) to String<br/> |
| Change      | Beta    | Added the **identityName**, **identityPublisherHash** and **identityResourceIdentifier** properties to the [windowsUniversalAppX](/graph/api/resources/intune_apps_windowsuniversalappx?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [windowsUniversalAppX](/graph/api/resources/intune_apps_windowsuniversalappx?view=graph-rest-beta) entity:<br/>**applicableArchitectures** from [windowsArchitecture](/graph/api/resources/windowsArchitecture?view=graph-rest-beta) to String<br/>**applicableDeviceTypes** from [windowsDeviceType](/graph/api/resources/windowsDeviceType?view=graph-rest-beta) to String<br/> |
| Change      | Beta    | Added the **restartMode** property to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [androidForWorkScepCertificateProfile](/graph/api/resources/intune_deviceconfig_androidforworkscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [androidScepCertificateProfile](/graph/api/resources/intune_deviceconfig_androidscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **enterpriseCodeSigningCertificates**, **symantecCodeSigningCertificate**, **sideLoadingKeys**, **managedAppPolicies**, **iosManagedAppProtections**, **androidManagedAppProtections**, **defaultManagedAppProtections**, **targetedManagedAppConfigurations**, **mdmWindowsInformationProtectionPolicies**, **windowsInformationProtectionPolicies**, **managedAppRegistrations** and **managedAppStatuses** navigation properties to the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **appReportingOverview**, **enterpriseCerts** and **symantecCert** navigation properties from the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceSettingStateSummaries** navigation property to the [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceSettingStateSummaries** navigation property to the [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **termsAndConditions**, **androidForWorkSettings**, **androidForWorkAppConfigurationSchemas**, **applePushNotificationCertificate**, **softwareUpdateStatusSummary**, **deviceCompliancePolicyDeviceStateSummary**, **complianceSettingStateSummaries**, **deviceConfigurationDeviceStateSummaries** and **mobileThreatDefenseConnectors** navigation properties to the [deviceManagement](/graph/api/resources/intune_shared_devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **teacherRootCertificates**, **teacherIdentityCertificate**, **studentRootCertificates** and **studentIdentityCertificate** navigation properties from the [iosEducationDeviceConfiguration](/graph/api/resources/intune_deviceconfig_ioseducationdeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune_apps_ioslobappprovisioningconfiguration?view=graph-rest-beta) entity:<br/>**deviceStatuses** from [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](/graph/api/resources/managedDeviceMobileAppProvisioningConfigurationDeviceStatus?view=graph-rest-beta) collection to [managedDeviceMobileAppConfigurationDeviceStatus](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus?view=graph-rest-beta) collection<br/>**groupAssignments** from [appProvisioningConfigGroupAssignment](/graph/api/resources/appProvisioningConfigGroupAssignment?view=graph-rest-beta) collection to [mobileAppProvisioningConfigGroupAssignment](/graph/api/resources/intune_apps_mobileappprovisioningconfiggroupassignment?view=graph-rest-beta) collection<br/> |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [iosScepCertificateProfile](/graph/api/resources/intune_deviceconfig_iosscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [macOSScepCertificateProfile](/graph/api/resources/intune_deviceconfig_macosscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceConfigurationStates** and **deviceCompliancePolicyStates** navigation properties to the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceStatusSummary** and **userStatusSummary** navigation properties to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune_apps_manageddevicemobileappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **installSummary** navigation property to the [mobileApp](/graph/api/resources/intune_apps_mobileapp?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **sideLoadingKeys** navigation property from the [organization](/graph/api/resources/intune_onboarding_organization?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [windows81SCEPCertificateProfile](/graph/api/resources/intune_deviceconfig_windows81scepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [windowsPhone81SCEPCertificateProfile](/graph/api/resources/intune_deviceconfig_windowsphone81scepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **applicationId**, **appName**, **platformId**, **userFailures** and **deviceFailures** properties from the [appInstallationFailure](/graph/api/resources/intune_apps_appinstallationfailure?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **displayName** property to the [iosHomeScreenFolderPage](/graph/api/resources/intune_deviceconfig_ioshomescreenfolderpage?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **displayName** property to the [iosHomeScreenPage](/graph/api/resources/intune_deviceconfig_ioshomescreenpage?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **subjectName**, **description**, **expirationDateTime** and **certificate** properties to the [windowsInformationProtectionDataRecoveryCertificate](/graph/api/resources/intune_mam_windowsinformationprotectiondatarecoverycertificate?view=graph-rest-beta) complex type |
| Change      | Beta    | Removed the **dataRecoveryCertificate** and **certificateFileName** properties from the [windowsInformationProtectionDataRecoveryCertificate](/graph/api/resources/intune_mam_windowsinformationprotectiondatarecoverycertificate?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **displayName** property to the [windowsPackageInformation](/graph/api/resources/intune_apps_windowspackageinformation?view=graph-rest-beta) complex type |
| Change      | Beta    | Changed the type of the following properties on the [windowsPackageInformation](/graph/api/resources/intune_apps_windowspackageinformation?view=graph-rest-beta) complex type:<br/>**applicableArchitecture** from [windowsArchitecture](/graph/api/resources/windowsArchitecture?view=graph-rest-beta) to String<br/> |
| Change      | Beta    | Changed the following properties on the [windowsPackageInformation](/graph/api/resources/intune_apps_windowspackageinformation?view=graph-rest-beta) complex type:<br/>**applicableArchitecture** from optional to required<br/> |

### Add contracts to Microsoft Graph

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | New resource:</br>[contract](/graph/api/resources/contract?view=graph-rest-beta) |

### Add domain operations to Microsoft Graph

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added functions on [domains](/graph/api/resources/domain?view=graph-rest-beta).<br/>New entities:</br>[domain](/graph/api/resources/domain?view=graph-rest-beta)<br/>[domainDnsRecord](/graph/api/resources/domaindnsrecord?view=graph-rest-beta)<br/>[domainDnsCnameRecord](/graph/api/resources/domainDnsCnameRecord?view=graph-rest-beta)<br/>[domainDnsMxRecord](/graph/api/resources/domainDnsMxRecord?view=graph-rest-beta)<br/>[domainDnsSrvRecord](/graph/api/resources/domainDnsSrvRecord?view=graph-rest-beta)<br/>[domainDnsTxtRecord](/graph/api/resources/domainDnsTxtRecord?view=graph-rest-beta)<br/>[domainDnsUnavailableRecord](/graph/api/resources/domainDnsUnavailableRecord?view=graph-rest-beta)<br/>New actions:</br>[forceDelete](/graph/api/domain_forcedelete?view=graph-rest-beta)</br>[verify](/graph/api/domain_verify?view=graph-rest-beta) |

### Add custom data to Microsoft Graph using schema extensions

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Extend Microsoft Graph with application data by using [schema extensions](../concepts/extensibility_overview#schema-extensions-preview).  This is supported on the following resources:<br/>administrative unit<br/>calendar event<br/>device<br/>group<br/>message<br/>organization<br/>personal contact<br/>post<br/>user<br/>See the following example:<br/>[Add custom data to groups using Schema Extensions (preview)](../concepts/extensibility_schema_groups) |
| Addition        | Beta        | Provided an alternative way to create a schema extension definition without requiring a verified .com vanity domain. See [schema extensions](../concepts/extensibility_overview#schema-extensions-preview) for details. |

### Add custom data to Microsoft Graph using open extensions

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | Renamed former "Office 365 data extensions" as "open extensions". |
| Addition        | Beta          | Added resources that support [open extensions](../concepts/extensibility_overview#open-extensions): <br/>administrative unit<br/>device<br/>group<br/>organization<br/>user<br/>See the following example:<br/>[Add custom data to users using open extensions (preview)](../concepts/extensibility_open_users) |

### Directory APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added support for [restoring and permanently deleting groups](/graph/api/resources/directory?view=graph-rest-beta).<br/>New entity: directory with deleteditems navigation property. |
| Addition        | Beta        | New entity:</br>[Endpoint](/graph/api/resources/endpoint?view=graph-rest-beta) |
| Change          | Beta        | New [endpoints](/graph/api/group_list_endpoints?view=graph-rest-beta) navigation property on [groups](/graph/api/resources/group?view=graph-rest-beta) |
| Addition        | Beta        | New entity:</br>[licenseDetails](/graph/api/resources/licensedetails?view=graph-rest-beta) |
| Change          | Beta        | New [licensedetails](/graph/api/user_list_licensedetails?view=graph-rest-beta) navigation property on [users](/graph/api/resources/user?view=graph-rest-beta) |

### Reports APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Introduced the new preview API for Office 365 Reports. You can use it to get usage reports of how people in your business are using Office 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who may not need an Office 365 license at all. For more details, see [report](/graph/api/resources/report?view=graph-rest-beta). |

### Directory APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | New entity:</br>[contract](/graph/api/resources/contract?view=graph-rest-beta) |

## February 2017

### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[androidForWorkCertificateProfileBase](/graph/api/resources/intune_deviceconfig_androidforworkcertificateprofilebase?view=graph-rest-beta)<br/>[androidForWorkEasEmailProfileBase](/graph/api/resources/intune_deviceconfig_androidforworkeasemailprofilebase?view=graph-rest-beta)<br/>[androidForWorkEnterpriseWiFiConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkenterprisewificonfiguration?view=graph-rest-beta)<br/>[androidForWorkGmailEasConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkgmaileasconfiguration?view=graph-rest-beta)<br/>[androidForWorkNineWorkEasConfiguration](/graph/api/resources/intune_deviceconfig_androidforworknineworkeasconfiguration?view=graph-rest-beta)<br/>[androidForWorkPkcsCertificateProfile](/graph/api/resources/intune_deviceconfig_androidforworkpkcscertificateprofile?view=graph-rest-beta)<br/>[androidForWorkScepCertificateProfile](/graph/api/resources/intune_deviceconfig_androidforworkscepcertificateprofile?view=graph-rest-beta)<br/>[androidForWorkTrustedRootCertificate](/graph/api/resources/intune_deviceconfig_androidforworktrustedrootcertificate?view=graph-rest-beta)<br/>[androidForWorkWiFiConfiguration](/graph/api/resources/intune_deviceconfig_androidforworkwificonfiguration?view=graph-rest-beta)<br/>[appleDeviceFeaturesConfigurationBase](/graph/api/resources/intune_deviceconfig_appledevicefeaturesconfigurationbase?view=graph-rest-beta)<br/>[appProvisioningConfigGroupAssignment](/graph/api/resources/intune_apps_appprovisioningconfiggroupassignment?view=graph-rest-beta)<br/>[deviceComplianceUserOverview](/graph/api/resources/intune_deviceconfig_devicecomplianceuseroverview?view=graph-rest-beta)<br/>[deviceConfigurationUserOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationuseroverview?view=graph-rest-beta)<br/>[enterpriseCertificate](/graph/api/resources/intune_apps_enterprisecertificate?view=graph-rest-beta)<br/>[iosEducationDeviceConfiguration](/graph/api/resources/intune_deviceconfig_ioseducationdeviceconfiguration?view=graph-rest-beta)<br/>[macOSDeviceFeaturesConfiguration](/graph/api/resources/intune_deviceconfig_macosdevicefeaturesconfiguration?view=graph-rest-beta)<br/>[managedAndroidLobApp](/graph/api/resources/intune_apps_managedandroidlobapp?view=graph-rest-beta)<br/>[managedDeviceMobileAppProvisioningConfigurationDeviceStatus](/graph/api/resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus?view=graph-rest-beta)<br/>[managedIOSLobApp](/graph/api/resources/intune_apps_managedioslobapp?view=graph-rest-beta)<br/>[managedMobileLobApp](/graph/api/resources/intune_apps_managedmobilelobapp?view=graph-rest-beta)<br/>[symantecCertificate](/graph/api/resources/intune_apps_symanteccertificate?view=graph-rest-beta)<br/>[windowsAppX](/graph/api/resources/intune_apps_windowsappx?view=graph-rest-beta)<br/>[windowsCertificateProfileBase](/graph/api/resources/intune_deviceconfig_windowscertificateprofilebase?view=graph-rest-beta)<br/>[windowsPhone81AppX](/graph/api/resources/intune_apps_windowsphone81appx?view=graph-rest-beta)<br/>[windowsPhone81AppXBundle](/graph/api/resources/intune_apps_windowsphone81appxbundle?view=graph-rest-beta)<br/>[windowsPhoneXAP](/graph/api/resources/intune_apps_windowsphonexap?view=graph-rest-beta)<br/>[windowsUniversalAppX](/graph/api/resources/intune_apps_windowsuniversalappx?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[airPrintDestination](/graph/api/resources/intune_deviceconfig_airprintdestination?view=graph-rest-beta)<br/>[windowsArchitecture](/graph/api/resources/intune_apps_windowsarchitecture?view=graph-rest-beta)<br/>[windowsDeviceType](/graph/api/resources/intune_apps_windowsdevicetype?view=graph-rest-beta)<br/>[windowsMinimumOperatingSystem](/graph/api/resources/intune_apps_windowsminimumoperatingsystem?view=graph-rest-beta)<br/>[windowsPackageInformation](/graph/api/resources/intune_apps_windowspackageinformation?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added the [assign](/graph/api/intune_apps_ioslobappprovisioningconfiguration_assign?view=graph-rest-beta) action on the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune_apps_ioslobappprovisioningconfiguration?view=graph-rest-beta) entity |
| Addition    | Beta    | Added the [scheduleActionsForRules](/graph/api/intune_deviceconfig_devicecompliancepolicy_scheduleactionsforrules?view=graph-rest-beta) action on the [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-beta) entity |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune_mam_targetedmanagedappconfiguration_updatetargetedsecuritygroups?view=graph-rest-beta) action on the [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-beta) entity |
| Addition    | Beta    | Added the [getScopesForUser](/graph/api/intune_rbac_resourceoperation_getscopesforintune_devices_user?view=graph-rest-beta) function on the [resourceOperation](/graph/api/resources/intune_rbac_resourceoperation?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **manifest** property from the [androidLobApp](/graph/api/resources/intune_apps_androidlobapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **assetTagTemplate**, **lockScreenFootnote**, **homeScreenDockIcons** and **homeScreenPages** properties to the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune_deviceconfig_iosdevicefeaturesconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **deviceSharingAssetTagInformation**, **deviceSharingLockScreenFootnote**, **homeScreenLayoutDockIcons** and **homeScreenLayoutPages** properties from the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune_deviceconfig_iosdevicefeaturesconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **appsSingleAppModeBundleIds** property to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune_deviceconfig_iosgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **manifest** property from the [iosLobApp](/graph/api/resources/intune_apps_ioslobapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **createdDateTime**, **description**, **lastModifiedDateTime**, **displayName** and **version** properties to the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune_apps_ioslobappprovisioningconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **createdDateTime** and **lastModifiedDateTime** properties to the [managedAppPolicy](/graph/api/resources/intune_mam_managedapppolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **deviceRegistrationState** property from the [managedDevice](/graph/api/resources/intune_devices_manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **manifest** property to the [mobileAppContentFile](/graph/api/resources/intune_apps_mobileappcontentfile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **osDescription** and **userName** properties to the [mobileAppInstallStatus](/graph/api/resources/intune_apps_mobileappinstallstatus?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **deviceType** property from the [mobileAppInstallStatus](/graph/api/resources/intune_apps_mobileappinstallstatus?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [mobileAppInstallStatus](/graph/api/resources/intune_apps_mobileappinstallstatus?view=graph-rest-beta) entity:<br/>**mobileAppInstallStatusValue** from Int32 to String |
| Change      | Beta    | Added the **targetedSecurityGroupIds** and **targetedSecurityGroupsCount** properties to the [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **numberOfTargetedSecurityGroups** property from the [targetedManagedAppConfiguration](/graph/api/resources/intune_mam_targetedmanagedappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **id** property to the [user](/graph/api/resources/intune_devices_user?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **renewalThresholdPercentage**, **keyStorageProvider**, **subjectNameFormat**, **subjectAlternativeNameType**, **certificateValidityPeriodValue** and **certificateValidityPeriodScale** properties from the [windows10CertificateProfileBase](/graph/api/resources/intune_deviceconfig_windows10certificateprofilebase?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **renewalThresholdPercentage**, **keyStorageProvider**, **subjectNameFormat**, **subjectAlternativeNameType**, **certificateValidityPeriodValue** and **certificateValidityPeriodScale** properties from the [windows81CertificateProfileBase](/graph/api/resources/intune_deviceconfig_windows81certificateprofilebase?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **applyToWindows10Mobile** property from the [windowsPhone81GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windowsphone81generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **enterpriseCerts**, **iosLobAppProvisioningConfigurations** and **symantecCert** navigation properties to the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **userStatusOverview** navigation property to the [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **userStatusOverview** navigation property to the [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **groupAssignments**, **deviceStatuses** and **userStatuses** navigation properties to the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune_apps_ioslobappprovisioningconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [windows10VpnConfiguration](/graph/api/resources/intune_deviceconfig_windows10vpnconfiguration?view=graph-rest-beta) entity:<br/>**identityCertificate** from [windows10CertificateProfileBase](/graph/api/resources/intune_deviceconfig_windows10certificateprofilebase?view=graph-rest-beta) to [windowsCertificateProfileBase](/graph/api/resources/intune_deviceconfig_windowscertificateprofilebase?view=graph-rest-beta) |
| Change      | Beta    | Added the **deviceComplianceCheckinThresholdDays** and **isScheduledActionEnabled** properties to the [deviceManagementSettings](/graph/api/resources/intune_deviceconfig_devicemanagementsettings?view=graph-rest-beta) complex type |
| Change      | Beta    | Removed the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties from the [deviceManagementSettings](/graph/api/resources/intune_deviceconfig_devicemanagementsettings?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **bundleID**, **appName**, **publisher**, **enabled** and **showOnLockScreen** properties to the [iosNotificationSettings](/graph/api/resources/intune_deviceconfig_iosnotificationsettings?view=graph-rest-beta) complex type |
| Change      | Beta    | Removed the **bundleIdentifier**, **notificationsEnabled** and **showInLockScreen** properties from the [iosNotificationSettings](/graph/api/resources/intune_deviceconfig_iosnotificationsettings?view=graph-rest-beta) complex type |



## January 2017

### Outlook calendar

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | New action [findMeetingTimes](/graph/api/user_findmeetingtimes?view=graph-rest-1.0) for the [user](/graph/api/resources/user?view=graph-rest-1.0) resource. |
| Addition        | v1.0        | New complex type [attendeeBase](/graph/api/resources/attendeebase?view=graph-rest-1.0) which consists of a type property for the attendee type. |
| Addition        | v1.0        | New complex types:<br/>[attendeeAvailability](/graph/api/resources/attendeeavailability?view=graph-rest-1.0)<br/>[locationConstraint](/graph/api/resources/locationconstraint?view=graph-rest-1.0) <br/>[locationConstraintItem](/graph/api/resources/locationconstraintitem?view=graph-rest-1.0)<br/>[meetingTimeSuggestion](/graph/api/resources/meetingtimesuggestion?view=graph-rest-1.0)<br/>[meetingTimeSuggestionsResult](/graph/api/resources/meetingtimesuggestionsresult?view=graph-rest-1.0)<br/>[timeConstraint](/graph/api/resources/timeconstraint?view=graph-rest-1.0)<br/>[timeSlot](/graph/api/resources/timeslot?view=graph-rest-1.0) |
| Change          | v1.0        | The [attendee](/graph/api/resources/attendee?view=graph-rest-1.0) complex type is now derived from attendeeBase, which in turn is derived from [recipient](/graph/api/resources/recipient?view=graph-rest-1.0). Including the inherited properties, it consists of the same **status**, **type** and **emailAddress** properties as before. |
| Addition        | Beta        | hexColor added to the [calendar](/graph/api/resources/calendar?view=graph-rest-beta) resource. |

### Intune APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new entities: <br/>[appReportingOverviewStatus](/graph/api/resources/intune_apps_appreportingoverviewstatus?view=graph-rest-beta)<br/>[deviceComplianceDeviceOverview](..//api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview)<br/>[deviceConfigurationDeviceOverview](/graph/api/resources/intune_deviceconfig_deviceconfigurationdeviceoverview?view=graph-rest-beta)<br/>[deviceManagementExchangeOnpremisesPolicy](/graph/api/resources/intune_onboarding_devicemanagementexchangeonpremisespolicy?view=graph-rest-beta)<br/>[iosDeviceFeaturesConfiguration](/graph/api/resources/intune_deviceconfig_iosdevicefeaturesconfiguration?view=graph-rest-beta)<br/>[iosEducationDeviceConfiguration](/graph/api/resources/intune_deviceconfig_ioseducationdeviceconfiguration?view=graph-rest-beta)<br/>[iosLobAppProvisioningConfiguration](/graph/api/resources/intune_apps_ioslobappprovisioningconfiguration?view=graph-rest-beta)<br/>[onpremisesConditionalAccessSettings](/graph/api/resources/intune_onboarding_onpremisesconditionalaccesssettings?view=graph-rest-beta)<br/>[sharedPCConfiguration](/graph/api/resources/intune_deviceconfig_sharedpcconfiguration?view=graph-rest-beta)<br/>[windows10EnterpriseModernAppManagementConfiguration](/graph/api/resources/intune_deviceconfig_windows10enterprisemodernappmanagementconfiguration?view=graph-rest-beta)<br/>[windows10SecureAssessmentConfiguration](/graph/api/resources/intune_deviceconfig_windows10secureassessmentconfiguration?view=graph-rest-beta)<br/>[windows10WindowsInformationProtectionConfiguration](/graph/api/resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added new complex types: <br/> [appInstallationFailure](/graph/api/resources/intune_apps_appinstallationfailure?view=graph-rest-beta)<br/>[enterpriseCloudResource](/graph/api/resources/intune_deviceconfig_enterprisecloudresource?view=graph-rest-beta)<br/>[iosHomeScreenApp](/graph/api/resources/intune_deviceconfig_ioshomescreenapp?view=graph-rest-beta)<br/>[iosHomeScreenFolder](/graph/api/resources/intune_deviceconfig_ioshomescreenfolder?view=graph-rest-beta)<br/>[iosHomeScreenFolderPage](/graph/api/resources/intune_deviceconfig_ioshomescreenfolderpage?view=graph-rest-beta)<br/>[iosHomeScreenItem](/graph/api/resources/intune_deviceconfig_ioshomescreenitem?view=graph-rest-beta)<br/>[iosHomeScreenPage](/graph/api/resources/intune_deviceconfig_ioshomescreenpage?view=graph-rest-beta)<br/>[iosNotificationSettings](/graph/api/resources/intune_deviceconfig_iosnotificationsettings?view=graph-rest-beta)<br/>[iPv6Range](/graph/api/resources/intune_deviceconfig_ipv6range?view=graph-rest-beta)<br/>[sharedPCAccountManagerPolicy](/graph/api/resources/intune_deviceconfig_sharedpcaccountmanagerpolicy?view=graph-rest-beta)<br/>[windowsInformationProtectionAppRule](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionapprule?view=graph-rest-beta)<br/>[windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionappruleapplockerpolicyfiletemplate?view=graph-rest-beta)<br/>[windowsInformationProtectionAppRuleDesktopTemplate](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionappruledesktoptemplate?view=graph-rest-beta)<br/>[windowsInformationProtectionAppRuleStoreAppTemplate](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionapprulestoreapptemplate?view=graph-rest-beta)<br/>[windowsInformationProtectionAppRuleTemplate](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionappruletemplate?view=graph-rest-beta)<br/>[windowsInformationProtectionCorporateNetworkLocation](/graph/api/resources/intune_deviceconfig_windowsinformationprotectioncorporatenetworklocation?view=graph-rest-beta)<br/>[windowsInformationProtectionDataRecoveryCertificate](/graph/api/resources/intune_deviceconfig_windowsinformationprotectiondatarecoverycertificate?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocation](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocation?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseCloudResources](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterprisecloudresources?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseInternalProxyServers](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseinternalproxyservers?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseIPv4Ranges](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseipv4ranges?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseipv6ranges?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterprisenetworkdomainnames?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseProxyServers](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseproxyservers?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationNeutralResources](/graph/api/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationneutralresources?view=graph-rest-beta)
|Deletion|Beta|Removed the following complex types and replaced with microsoft.graph.Json:<br/>managedAppDeploymentSummary <br/>managedAppSummary<br /> |
|Change|Beta|Replaced the property type appConfigComplianceStatus with complianceStatus on the following entities: <br/>[managedDeviceMobileAppConfigurationDeviceStatus](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationUserStatus](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationuserstatus?view=graph-rest-beta)|
|Change|Beta|For resource [managedAppStatusRaw](/graph/api/resources/intune_mam_managedappstatusraw?view=graph-rest-beta), changed type of property content from managedAppSummary to Json.|
|Change|Beta|Removed the getUsersWithFlaggedAppRegistration function from the [managedAppRegistration](/graph/api/resources/intune_mam_managedappregistration?view=graph-rest-beta) collection.|
|Change|Beta|Changed the **vppToken** navigation property of the [iosVppApp](/graph/api/resources/intune_apps_iosvppapp?view=graph-rest-beta) entity to no longer be a contained collection.|
|Change|Beta|Added the **deviceStatusOverview** property to the [deviceConfiguration](/graph/api/resources/intune_deviceconfig_deviceconfiguration?view=graph-rest-beta) and [deviceCompliancePolicy](/graph/api/resources/intune_deviceconfig_devicecompliancepolicy?view=graph-rest-beta) entities.|
|Change|Beta|Added the **appReportingOverview** property to the [deviceAppManagement](/graph/api/resources/intune_apps_deviceappmanagement?view=graph-rest-beta) singleton.|
|Change|Beta|Added the **deviceDisplayName** and **userPrincipalName** properties to the [deviceConfigurationDeviceStatus](/graph/api/resources/intune_deviceconfig_deviceconfigurationdevicestatus?view=graph-rest-beta), [deviceComplianceDeviceStatus](/graph/api/resources/intune_deviceconfig_devicecompliancedevicestatus?view=graph-rest-beta) and [managedDeviceMobileAppConfigurationDeviceStatus](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus?view=graph-rest-beta) entities.|
|Change|Beta|Add the **ruleName** property to the [deviceComplianceScheduledActionForRule](/graph/api/resources/intune_deviceconfig_devicecompliancescheduledactionforrule?view=graph-rest-beta) entity.|
|Change|Beta|Added the **devicesCount**, **userDisplayName** and **userPrincipalName** properties to the [deviceConfigurationUserStatus](/graph/api/resources/intune_deviceconfig_deviceconfigurationuserstatus?view=graph-rest-beta), [deviceComplianceUserStatus](/graph/api/resources/intune_deviceconfig_devicecomplianceuserstatus?view=graph-rest-beta), and [managedDeviceMobileAppConfigurationUserStatus](/graph/api/resources/intune_apps_manageddevicemobileappconfigurationuserstatus?view=graph-rest-beta) entities.|
|Change|Beta|Added the [notificationMessageTemplates](/graph/api/resources/intune_notification_notificationmessagetemplate?view=graph-rest-beta) collection to the [deviceManagement](/graph/api/resources/intune_deviceconfig_devicemanagement?view=graph-rest-beta) singleton.|
|Change|Beta|Added the **isDefault**, **lastModifiedDateTime**, **locale**, **messageTemplate** and **subject** properties to the[localizedNotificationMessage](/graph/api/resources/intune_deviceconfig_localizednotificationmessage?view=graph-rest-beta) entity.|
|Change|Beta|Added the **azureActiveDirectoryDeviceId**, **deviceCategory**, **deviceRegistrationState** and **managementAgent** properties to the [managedDevice](/graph/api/resources/intune_onboarding_manageddevice?view=graph-rest-beta) entity.|
|Change|Beta|Added the **lastModifiedDateTime** property to the [mobileAppCategory](/graph/api/resources/intune_apps_mobileappcategory?view=graph-rest-beta) entity.|
|Change|Beta|Added the **brandingOptions**, **defaultLocale**, **displayName**, **fromEmailAddress**, **lastModifiedDateTime**, **localizedNotificationMessages** properties to the [notificationMessageTemplate](/graph/api/resources/intune_notification_notificationmessagetemplate?view=graph-rest-beta) entity.|
|Change|Beta|Added the **appsAllowTrustedAppsSideloading**, **appsBlockWindowsStoreOriginatedApps**, **developerUnlockSetting**, **edgeBlockAccessToAboutFlags**, **edgeBlockDeveloperTools**, **edgeBlockExtensions**, **edgeBlockInPrivateBrowsing**, **edgeFirstRunUrl**, **edgeHomepageUrls**, **gameDvrBlocked**, **settingsBlockAddProvisioningPackage**, **settingsBlockChangeLanguage**, **settingsBlockChangePowerSleep**, **settingsBlockChangeRegion**, **settingsBlockChangeSystemTime**, **settingsBlockEditDeviceName**, **settingsBlockRemoveProvisioningPackage**, **sharedUserAppDataAllowed**, **smartScreenBlockPromptOverride**, **smartScreenBlockPromptOverrideForFiles**, **storageRestrictAppDataToSystemVolume**, **storageRestrictAppInstallToSystemVolume**, **webRtcBlockLocalhostIpAddress**, **windowsStoreBlockAutoUpdate** and **windowsStoreEnablePrivateStoreOnly** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune_deviceconfig_windows10generalconfiguration?view=graph-rest-beta) entity.|

## December 2016

### Delta query

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | A new delta function add to the following entities to perform [delta query](../concepts/delta_query_overview):<br/>contact<br/>contactFolder<br/>event<br/>group<br/>mailFolder<br/>message<br/>user<br/>See the following for examples:<br/>[Get incremental changes to groups (preview)](../concepts/delta_query_groups)<br/>[Get incremental changes to messages in a folder (preview)](../concepts/delta_query_messages)<br/>[Get incremental changes to users (preview)](../concepts/delta_query_users) |

### Excel APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added workbookPivotTable resource, refresh and refreshAll action on pivotTables, workbookRangeView resource, visibleView action on the filtered range to return workbookRangeView to the user, get rows collection and range resource off of visibleView, columnsAfter, columnsBefore, resizedRange, rowsAbove, and rowsBelow functions off of range resource, and new table properties. |

### Intune APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added resources and method APIs for Microsoft Intune. This is a large set of resources and methods to support the public preview of Intune on Azure Portal. For information about the Intune service, see the [Intune documentation](https://go.microsoft.com/fwlink/?linkid=836405). For information about the Intune resources and APIs, see [Working with Intune in Microsoft Graph](/graph/api/resources/intune_graph_overview?view=graph-rest-beta). |

## October 2016

### Authorization provider

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | The v2.0 auth endpoint now supports the client_credentials OAuth grant, which can be used for [daemon & long running processes in business scenarios](https://docs.microsoft.com/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow). |
| Addition        | v1.0 and beta | The v2.0 auth endpoint now supports [permission scopes that require administrator's consent](../concepts/permissions_reference), via the [admin consent endpoint](https://docs.microsoft.com/azure/active-directory/develop/v2-permissions-and-consent#admin-restricted-permissions). |
| Addition        | v1.0 and beta | The v2.0 auth endpoint now supports administrative consent for all users in a tenant, via the [admin consent endpoint](https://docs.microsoft.com/azure/active-directory/develop/v2-permissions-and-consent#admin-restricted-permissions). |

### Invitation APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added invitedUserType property to the invitation entity type, that defines the type of user (**Guest** or **Member**) that is invited. |
| Deletion        | Beta        | We will be removing the invitedToGroups property from the invitation entity-type on 11/11/2016. This means that you will no longer be able to add an invited user to a group using this API. Instead, use the [add member API](/graph/api/group_post_members?view=graph-rest-1.0) to add a user to a group. |

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
| Addition        | v1.0        | [Extended properties](/graph/api/resources/extended-properties-overview?view=graph-rest-1.0) are now supported by the following resources: message, mailFolder, event, calendar, contact, contactFolder, group event, group calendar, group post. |

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
| Addition        | v1.0        | Apps can use v1.0 Outlook Mail, Calendar, and Contacts APIs to access on-premises mailboxes in a hybrid deployment with Exchange 2016 Cumulative Update 3 (CU3). Find more details about REST API support in specific [hybrid deployments](../overview/hybrid_rest_support). **Note:** If you're using these sets of API in v1.0, you can now find your apps, including production apps, working for on-premises mailboxes that meet the specific hybrid deployment requirements. This capability is only in preview. |

### IdentityRiskEvents

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | As part of the schema change where the type of two location properties is being replaced by a new complex type in the identityRiskEvents endpoint, the following properties are changed/added in the identityRiskEvents endpoint:</br>**location**  changed from Edm.String to ComplexType signInLocation.<br/>**previousLocation** changed from Edm.String to ComplexType signInLocation.<br/>**signInLocation** new ComplexType that contains city, state, countryOrRegion and geoCoordinates properties.<br/>**geoCoordinates** new ComplexType that contains latitude and longitude properties. |

### Invitation manager

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Invitation manager APIs are now available in the Microsoft Graph beta endpoint. You can use invitation manager APIs to create an invite, in order to add an external user to the organization. As part of the invitation, you can also choose to add the invited user to an Office 365 group. For more details, see [invitation manager](/graph/api/resources/invitation?view=graph-rest-beta). |

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
| Addition        | v1.0        | Added the **onlineMeetingUrl** property to the [event](/graph/api/resources/event?view=graph-rest-1.0) resource. |
| Addition        | Beta        | Added [forward](/graph/api/event_forward?view=graph-rest-beta) action to the event resource. |
| Addition        | Beta        | Added the following properties to the [calendar](/graph/api/resources/calendar?view=graph-rest-beta) resource to support calendar sharing: **canEdit**, **canShare**, **canViewPrivateItems**, **isShared**, **isShareWithMe**, and **owner**. |

### Outlook mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-1.0) complex type, which includes the **automaticRepliesSetting**, **timeZone**, and **language** properties. |
| Addition        | v1.0        | Added the **mailboxSettings** property to the [user](/graph/api/resources/user?view=graph-rest-1.0) resource. |
| Addition        | Beta        | Added support for creating, listing, getting, and deleting one or more instances of [mention](/graph/api/resources/mention?view=graph-rest-beta) in a message. Mentions support calling out to get the attention of other users in a message. |
| Addition        | Beta        | Added support for the [getMailTips](/graph/api/user_getmailtips?view=graph-rest-beta) action to get any MailTips for specific recipients. Added the following resources: [automaticRepliesMailTips](/graph/api/resources/automaticrepliesmailtips.md?view=graph-rest-beta), [mailTips](/graph/api/resources/mailtips.md?view=graph-rest-beta), [mailTipsError](/graph/api/resources/mailtipserror.md?view=graph-rest-beta). |

### Query parameters

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Query parameters without $ prefixes are supported as of 09/26/16. The $ prefix in query parameters is optional. For details, see the [Supporting query parameters without $ prefixes in Microsoft Graph](https://dev.office.com/queryparametersinMicrosoftGraph) blog post. |

### SharePoint

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Access to SharePoint sites and [lists by ID](/graph/api/list_get?view=graph-rest-beta) or [path/URL](/graph/api/baseitem_getbyurl?view=graph-rest-beta). |
| Addition        | Beta        | Support for [listing, creating, getting, and deleting instances of listItem](/graph/api/resources/listitem?view=graph-rest-beta). |

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
| Addition        | Beta        | Privileged Identity Management (PIM) REST APIs now are available in the Microsoft Graph beta endpoint. [Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-configure) provides just in time activation for privileged Azure AD organizational roles such as Global Administrator, Billing Administrator, and so on. You can use the published APIs to write applications that retrieve and update privileged role assignments, and activate users into roles. For details, see [Microsoft Graph: Azure AD Privileged Identity Management Preview APIs available in Beta](https://developer.microsoft.com/office/blogs/microsoft-graph-azure-ad-privileged-identity-management-apis-beta/) and [Azure AD Privileged Identity Management](/graph/api/resources/privilegedidentitymanagement_root?view=graph-rest-beta). |

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
| Addition        | Beta        | We are adding new Excel REST APIs that let you read and modify data in an Excel workbook. It is now possible to build smart apps that allows users to get value out of the content stored in an Excel workbook by providing insights into the data. Take advantage of analytical powers of Excel, create tables and charts and extract visually appealing chart image - all from within your app. For details, see [Working with Excel in Microsoft Graph](/graph/api/resources/excel?view=graph-rest-beta). |

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