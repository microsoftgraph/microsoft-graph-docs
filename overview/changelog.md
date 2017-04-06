# Changelog for Microsoft Graph

This changelog covers what's changed in Microsoft Graph, including the v1.0 and beta endpoint Microsoft Graph APIs.  

## April 2017

### Admininistrative units property changes

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Change|Beta|Changed roleMemberInfo property type to [Identity](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/identity) for [scopedRoleMembership](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/scopedrolemembership) entity |
|Change|Beta|Changed navigation property scopedAdministratorOf to scopedRoleMemberOf for [user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/user) entity |
|Change|Beta|Changed navigation property scopedAdministrators to scopedRoleMembers for [administrativeUnit](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/administrativeunit) entity |
|Change|Beta|Changed navigation property scopedAdministrators to scopedMembers for [directoryRole](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/directoryrole) entity |

## March 2017

### Intune APIs

|Change type|Version|Description|
|---|---|---|
|Addition|Beta|Added new entities:<br/>[androidForWorkApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_androidforworkapp)<br/>[androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationschema)<br/>[androidForWorkSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_androidforworksettings)<br/>[androidForWorkVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidforworkvpnconfiguration)<br/>[applePushNotificationCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_devicefe_applepushnotificationcertificate)<br/>[complianceSettingStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_compliancesettingstatesummary)<br/>[deviceCompliancePolicyDeviceStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary)<br/>[deviceCompliancePolicyState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicystate)<br/>[deviceConfigurationDeviceStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdevicestatesummary)<br/>[deviceConfigurationState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfigurationstate)<br/>[enterpriseCodeSigningCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_enterprisecodesigningcertificate)<br/>[iosEduDeviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iosedudeviceconfiguration)<br/>[managedDeviceCertificateState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_manageddevicecertificatestate)<br/>[managedDeviceMobileAppConfigurationDeviceSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary)<br/>[managedDeviceMobileAppConfigurationUserSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationusersummary)<br/>[mdmWindowsInformationProtectionPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_mdmwindowsinformationprotectionpolicy)<br/>[mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileappinstallsummary)<br/>[mobileAppProvisioningConfigGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileappprovisioningconfiggroupassignment)<br/>[mobileThreatDefenseConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_onboarding_mobilethreatdefenseconnector)<br/>[officeSuiteApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_officesuiteapp)<br/>[settingStateDeviceSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_settingstatedevicesummary)<br/>[softwareUpdateStatusSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_softwareupdatestatussummary)<br/>[symantecCodeSigningCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_symanteccodesigningcertificate)<br/>[windowsDefenderAdvancedThreatProtectionConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsdefenderadvancedthreatprotectionconfiguration)<br/>[windowsInformationProtection](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotection)<br/>[windowsInformationProtectionAppLockerFile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectionapplockerfile)<br/>[windowsInformationProtectionPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectionpolicy)<br/>[windowsMobileMSI](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsmobilemsi)<br/>|
|Addition|Beta|Added new complex types:<br/>[androidForWorkAppConfigurationExample](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationexample)<br/>[androidForWorkAppConfigurationExampleJson](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationexamplejson)<br/>[androidForWorkAppConfigurationSchemaItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationschemaitem)<br/>[deviceCompliancePolicySettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstate)<br/>[deviceConfigurationSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate)<br/>[deviceExchangeAccessStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_devicefe_deviceexchangeaccessstatesummary)<br/>[edgeSearchEngine](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_edgesearchengine)<br/>[edgeSearchEngineBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_edgesearchenginebase)<br/>[edgeSearchEngineCustom](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_edgesearchenginecustom)<br/>[excludedApps](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_excludedapps)<br/>[iosEduCertificateSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioseducertificatesettings)<br/>[ipRange](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iprange)<br/>[windowsInformationProtectionApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectionapp)<br/>[windowsInformationProtectionCloudResource](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectioncloudresource)<br/>[windowsInformationProtectionCloudResourceCollection](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectioncloudresourcecollection)<br/>[windowsInformationProtectionDesktopApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectiondesktopapp)<br/>[windowsInformationProtectionIPRangeCollection](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectioniprangecollection)<br/>[windowsInformationProtectionResourceCollection](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectionresourcecollection)<br/>[windowsInformationProtectionStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectionstoreapp)<br/>|
|Addition|Beta|Added the [requestSignupUrl](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_androidforwork_androidforworksettings_requestsignupurl) action on [androidForWorkSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_androidforworksettings) |
|Addition|Beta|Added the [completeSignup](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_androidforwork_androidforworksettings_completesignup) action on [androidForWorkSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_androidforworksettings) |
|Addition|Beta|Added the [syncApps](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_androidforwork_androidforworksettings_syncapps) action on [androidForWorkSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_androidforworksettings) |
|Addition|Beta|Added the [unbind](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_androidforwork_androidforworksettings_unbind) action on [androidForWorkSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_androidforworksettings) |
|Addition|Beta|Added the [assign](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_apps_ioslobappprovisioningconfiguration_assign) action on [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration) |
|Addition|Beta|Added the [recoverPasscode](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_devicefe_manageddevice_recoverpasscode) action on [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_manageddevice) |
|Addition|Beta|Added the [removeApplePushNotificationCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_onboarding_organization_removeapplepushnotificationcertificate) action on [organization](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_onboarding_organization) |
|Addition|Beta|Added the [updateMobileAppIdentifierDeployments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_mam_iosmanagedappprotection_updatemobileappidentifierdeployments) action on [iosManagedAppProtection](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_iosmanagedappprotection) |
|Addition|Beta|Added the [updateMobileAppIdentifierDeployments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_mam_androidmanagedappprotection_updatemobileappidentifierdeployments) action on [androidManagedAppProtection](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_androidmanagedappprotection) |
|Addition|Beta|Added the [updateMobileAppIdentifierDeployments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_mam_targetedmanagedappconfiguration_updatemobileappidentifierdeployments) action on [targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration) |
|Addition|Beta|Added the [updateTargetedSecurityGroups](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_mam_iosmanagedappprotection_updatetargetedsecuritygroups) action on [iosManagedAppProtection](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_iosmanagedappprotection) |
|Addition|Beta|Added the [updateTargetedSecurityGroups](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_mam_androidmanagedappprotection_updatetargetedsecuritygroups) action on [androidManagedAppProtection](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_androidmanagedappprotection) |
|Addition|Beta|Added the [updateTargetedSecurityGroups](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_mam_windowsinformationprotection_updatetargetedsecuritygroups) action on [windowsInformationProtection](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotection) |
|Addition|Beta|Added the [updateTargetedSecurityGroups](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_mam_windowsinformationprotection_updatetargetedsecuritygroups.mdPolicy) action on [windowsInformationProtectionPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectionpolicy) |
|Addition|Beta|Added the [updateTargetedSecurityGroups](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_mam_mdmwindowsinformationprotectionpolicy_updatetargetedsecuritygroups) action on [mdmWindowsInformationProtectionPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_mdmwindowsinformationprotectionpolicy) |
|Addition|Beta|Added the [wipeManagedAppRegistrationByDeviceTag](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_mam_user_wipemanagedappregistrationbydevicetag) action on [user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_devicefe_user) |
|Addition|Beta|Added the [getTopMobileApps](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_apps_mobileapp_gettopmobileapps) function on [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileapp) |
|Addition|Beta|Added the [verifyWindowsEnrollmentAutoDiscovery](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_corpenrollment_devicemanagement_verifywindowsenrollmentautodiscovery) function on [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_devicemanagement) |
|Deletion|Beta|Removed the following entities:<br/>**appProvisioningConfigGroupAssignment**<br/>**defaultManagedAppConfiguration**<br/>**enterpriseCertificate**<br/>**managedDeviceMobileAppProvisioningConfigurationDeviceStatus**<br/>**symantecCertificate**<br/>**windows10WindowsInformationProtectionConfiguration**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**mobileAppInstallSummary**<br/>**windowsArchitecture**<br/>**windowsDeviceType**<br/>|
|Change|Beta|Added the **webBrowserBlockPopups** property to the [androidGeneralDeviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration) entity|
|Change|Beta|Removed the **webBrowserAllowPopups** property from the [androidGeneralDeviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration) entity|
|Change|Beta|Added the **appIdentifier** property to the [androidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_androidstoreapp) entity|
|Change|Beta|Removed the **applicationCount**, **failedApplicationCount** and **appInstallFailures** properties from the [appReportingOverviewStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/appReportingOverviewStatus) entity|
|Change|Beta|Added the **sharedIPadMaximumUserCount** and **enableSharedIPad** properties to the [depEnrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_corpenrollment_depenrollmentprofile) entity|
|Change|Beta|Added the **shareTokenWithSchoolDataSyncService** and **lastSyncErrorCode** properties to the [depOnboardingSetting](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_onboarding_deponboardingsetting) entity|
|Change|Beta|Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceComplianceDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview) entity|
|Change|Beta|Removed the **numberOfPendingDevices**, **numberOfSucceededDevices**, **numberOfErrorDevices**, **numberOfFailedDevices**, **lastUpdateTime** and **policyRevision** properties from the [deviceComplianceDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview) entity|
|Change|Beta|Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceComplianceUserOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecomplianceuseroverview) entity|
|Change|Beta|Removed the **numberOfPendingUsers**, **numberOfSucceededUsers**, **numberOfErrorUsers**, **numberOfFailedUsers**, **lastUpdateTime** and **policyRevision** properties from the [deviceComplianceUserOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecomplianceuseroverview) entity|
|Change|Beta|Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceConfigurationDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview) entity|
|Change|Beta|Removed the **numberOfPendingDevices**, **numberOfSucceededDevices**, **numberOfErrorDevices**, **numberOfFailedDevices**, **lastUpdateTime** and **policyRevision** properties from the [deviceConfigurationDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview) entity|
|Change|Beta|Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceConfigurationUserOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview) entity|
|Change|Beta|Removed the **numberOfPendingUsers**, **numberOfSucceededUsers**, **numberOfErrorUsers**, **numberOfFailedUsers**, **lastUpdateTime** and **policyRevision** properties from the [deviceConfigurationUserOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview) entity|
|Change|Beta|Added the **subscriptionState** property to the [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_devicemanagement) entity|
|Change|Beta|Added the **managedEmailProfileRequired** property to the [iosCompliancePolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioscompliancepolicy) entity|
|Change|Beta|Added the **appsSingleAppModeList** property to the [iosGeneralDeviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration) entity|
|Change|Beta|Removed the **appsSingleAppModeBundleIds** property from the [iosGeneralDeviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration) entity|
|Change|Beta|Added the **expirationDateTime** property to the [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration) entity|
|Change|Beta|Removed the **expiration** property from the [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration) entity|
|Change|Beta|Added the **passwordMinimumCharacterSetCount**, **osMinimumVersion**, **osMaximumVersion**, **deviceThreatProtectionEnabled**, **deviceThreatProtectionRequiredSecurityLevel** and **storageRequireEncryption** properties to the [macOSCompliancePolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_macoscompliancepolicy) entity|
|Change|Beta|Removed the **manifest** property from the [managedAndroidLobApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_managedandroidlobapp) entity|
|Change|Beta|Added the **isSupervised**, **exchangeLastSuccessfulSyncDateTime**, **exchangeAccessState** and **exchangeAccessStateReason** properties to the [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_manageddevice) entity|
|Change|Beta|Added the **deviceExchangeAccessStateSummary** property to the [managedDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_devicefe_manageddeviceoverview) entity|
|Change|Beta|Removed the **manifest** property from the [managedIOSLobApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_managedioslobapp) entity|
|Change|Beta|Removed the **installSummary** property from the [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileapp) entity|
|Change|Beta|Added the **uploadState** property to the [mobileAppContentFile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileappcontentfile) entity|
|Change|Beta|Changed the following properties on the [mobileAppContentFile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileappcontentfile) entity:<br/>**azureStorageUriExpirationDateTime** from required to optional<br/>|
|Change|Beta|Added the **initiatedByUserPrincipalName**, **deviceOwnerUserPrincipalName**, **deviceIMEI** and **actionState** properties to the [remoteActionAudit](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_devicefe_remoteactionaudit) entity|
|Change|Beta|Added the **oneDriveDisableFileSync**, **safeSearchFilter**, **edgeSearchEngine**, **settingsBlockSettingsApp**, **settingsBlockSystemPage**, **settingsBlockDevicesPage**, **settingsBlockNetworkInternetPage**, **settingsBlockPersonalizationPage**, **settingsBlockAccountsPage**, **settingsBlockTimeLanguagePage**, **settingsBlockEaseOfAccessPage**, **settingsBlockPrivacyPage**, **settingsBlockUpdateSecurityPage**, **experienceBlockWindowsSpotlight**, **experienceBlockWindowsTips**, **experienceBlockConsumerSpecificFeatures**, **startMenuLayoutXml**, **startMenuMode**, **logonBlockFastUserSwitching** and **startBlockUnpinningAppsFromTaskbar** properties to the [windows10GeneralConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration) entity|
|Change|Beta|Added the **allowPrinting**, **allowScreenCapture** and **allowTextSuggestion** properties to the [windows10SecureAssessmentConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration) entity|
|Change|Beta|Removed the **blockPrinting**, **blockScreenCapture** and **blockTextSuggestion** properties from the [windows10SecureAssessmentConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration) entity|
|Change|Beta|Added the **identityName** property to the [windowsAppX](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsappx) entity|
|Change|Beta|Changed the type of the following properties on the [windowsAppX](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsappx) entity:<br/>**applicableArchitectures** from [windowsArchitecture](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/windowsArchitecture) to String<br/>|
|Change|Beta|Added the **identityName** property to the [windowsPhone81AppX](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsphone81appx) entity|
|Change|Beta|Changed the type of the following properties on the [windowsPhone81AppX](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsphone81appx) entity:<br/>**applicableArchitectures** from [windowsArchitecture](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/windowsArchitecture) to String<br/>|
|Change|Beta|Added the **identityName**, **identityPublisherHash** and **identityResourceIdentifier** properties to the [windowsUniversalAppX](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsuniversalappx) entity|
|Change|Beta|Changed the type of the following properties on the [windowsUniversalAppX](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsuniversalappx) entity:<br/>**applicableArchitectures** from [windowsArchitecture](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/windowsArchitecture) to String<br/>**applicableDeviceTypes** from [windowsDeviceType](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/windowsDeviceType) to String<br/>|
|Change|Beta|Added the **restartMode** property to the [windowsUpdateForBusinessConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration) entity|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [androidForWorkScepCertificateProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidforworkscepcertificateprofile) entity|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [androidScepCertificateProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidscepcertificateprofile) entity|
|Change|Beta|Added the **enterpriseCodeSigningCertificates**, **symantecCodeSigningCertificate**, **sideLoadingKeys**, **managedAppPolicies**, **iosManagedAppProtections**, **androidManagedAppProtections**, **defaultManagedAppProtections**, **targetedManagedAppConfigurations**, **mdmWindowsInformationProtectionPolicies**, **windowsInformationProtectionPolicies**, **managedAppRegistrations** and **managedAppStatuses** navigation properties to the [deviceAppManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_deviceappmanagement) entity|
|Change|Beta|Removed the **appReportingOverview**, **enterpriseCerts** and **symantecCert** navigation properties from the [deviceAppManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_deviceappmanagement) entity|
|Change|Beta|Added the **deviceSettingStateSummaries** navigation property to the [deviceCompliancePolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy) entity|
|Change|Beta|Added the **deviceSettingStateSummaries** navigation property to the [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfiguration) entity|
|Change|Beta|Added the **termsAndConditions**, **androidForWorkSettings**, **androidForWorkAppConfigurationSchemas**, **applePushNotificationCertificate**, **softwareUpdateStatusSummary**, **deviceCompliancePolicyDeviceStateSummary**, **complianceSettingStateSummaries**, **deviceConfigurationDeviceStateSummaries** and **mobileThreatDefenseConnectors** navigation properties to the [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_androidforwork_devicemanagement) entity|
|Change|Beta|Removed the **teacherRootCertificates**, **teacherIdentityCertificate**, **studentRootCertificates** and **studentIdentityCertificate** navigation properties from the [iosEducationDeviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioseducationdeviceconfiguration) entity|
|Change|Beta|Changed the type of the following properties on the [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration) entity:<br/>**deviceStatuses** from [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/managedDeviceMobileAppProvisioningConfigurationDeviceStatus) collection to [managedDeviceMobileAppConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus) collection<br/>**groupAssignments** from [appProvisioningConfigGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/appProvisioningConfigGroupAssignment) collection to [mobileAppProvisioningConfigGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileappprovisioningconfiggroupassignment) collection<br/>|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [iosScepCertificateProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iosscepcertificateprofile) entity|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [macOSScepCertificateProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_macosscepcertificateprofile) entity|
|Change|Beta|Added the **deviceConfigurationStates** and **deviceCompliancePolicyStates** navigation properties to the [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_manageddevice) entity|
|Change|Beta|Added the **deviceStatusSummary** and **userStatusSummary** navigation properties to the [managedDeviceMobileAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration) entity|
|Change|Beta|Added the **installSummary** navigation property to the [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileapp) entity|
|Change|Beta|Removed the **sideLoadingKeys** navigation property from the [organization](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_onboarding_organization) entity|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [windows81SCEPCertificateProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows81scepcertificateprofile) entity|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [windowsPhone81SCEPCertificateProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsphone81scepcertificateprofile) entity|
|Change|Beta|Removed the **applicationId**, **appName**, **platformId**, **userFailures** and **deviceFailures** properties from the [appInstallationFailure](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_appinstallationfailure) complex type|
|Change|Beta|Added the **displayName** property to the [iosHomeScreenFolderPage](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioshomescreenfolderpage) complex type|
|Change|Beta|Added the **displayName** property to the [iosHomeScreenPage](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioshomescreenpage) complex type|
|Change|Beta|Added the **subjectName**, **description**, **expirationDateTime** and **certificate** properties to the [windowsInformationProtectionDataRecoveryCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectiondatarecoverycertificate) complex type|
|Change|Beta|Removed the **dataRecoveryCertificate** and **certificateFileName** properties from the [windowsInformationProtectionDataRecoveryCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_windowsinformationprotectiondatarecoverycertificate) complex type|
|Change|Beta|Added the **displayName** property to the [windowsPackageInformation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowspackageinformation) complex type|
|Change|Beta|Changed the type of the following properties on the [windowsPackageInformation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowspackageinformation) complex type:<br/>**applicableArchitecture** from [windowsArchitecture](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/windowsArchitecture) to String<br/>|
|Change|Beta|Changed the following properties on the [windowsPackageInformation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowspackageinformation) complex type:<br/>**applicableArchitecture** from optional to required<br/>|

### Add contracts to Microsoft Graph

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|New resource:</br>[contract](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/contract) |

### Add domain operations to Microsoft Graph

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added functions on [domains](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/domain).<br/>New entities:</br>[domain](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/domain)<br/>[domainDnsRecord](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/domaindnsrecord)<br/>[domainDnsCnameRecord](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/domainDnsCnameRecord)<br/>[domainDnsMxRecord](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/domainDnsMxRecord)<br/>[domainDnsSrvRecord](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/domainDnsSrvRecord)<br/>[domainDnsTxtRecord](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/domainDnsTxtRecord)<br/>[domainDnsUnavailableRecord](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/domainDnsUnavailableRecord)<br/>New actions:</br>[forceDelete](https://graph.microsoft.io/en-us/docs/api-reference/beta/api/domain_forcedelete)</br>[verify](https://graph.microsoft.io/en-us/docs/api-reference/beta/api/domain_verify) |

### Add custom data to Microsoft Graph using schema extensions

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Extend Microsoft Graph with application data by using [schema extensions](https://developer.microsoft.com/en-us/graph/docs/concepts/extensibility_overview#schema-extensions-preview).  This is supported on the following resources:<br/>administrative unit<br/>calendar event<br/>device<br/>group<br/>message<br/>organization<br/>personal contact<br/>post<br/>user<br/>See the following example:<br/>[Add custom data to groups using Schema Extensions (preview)](https://developer.microsoft.com/en-us/graph/docs/concepts/extensibility_schema_groups)|
|Addition|Beta|Provided an alternative way to create a schema extension definition without requiring a verified .com vanity domain. See [schema extensions](https://developer.microsoft.com/en-us/graph/docs/concepts/extensibility_overview#schema-extensions-preview) for details.|

### Add custom data to Microsoft Graph using open extensions

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Change| v1.0 and beta | Renamed former "Office 365 data extensions" as "open extensions". |
|Addition|Beta|Added resources that support [open extensions](https://developer.microsoft.com/en-us/graph/docs/concepts/extensibility_overview#open-extensions): <br/>administrative unit<br/>device<br/>group<br/>organization<br/>user<br/>See the following example:<br/>[Add custom data to users using open extensions (preview)](https://developer.microsoft.com/en-us/graph/docs/concepts/extensibility_open_users)|

### Directory APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added support for [restoring and permanently deleting groups](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/directory).<br/>New entity: directory with deleteditems navigation property. |
|Addition|Beta|New entity:</br>[Endpoint](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/endpoint) |
|Change  |Beta|New [endpoints](https://graph.microsoft.io/en-us/docs/api-reference/beta/api/group_list_endpoints) navigation property on [groups](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/group) |
|Addition|Beta|New entity:</br>[licenseDetails](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/licensedetails) |
|Change  |Beta|New [licensedetails](https://graph.microsoft.io/en-us/docs/api-reference/beta/api/user_list_licensedetails) navigation property on [users](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/user) |

### Reports APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Introduced the new preview API for Office 365 Reports. You can use it to get usage reports of how people in your business are using Office 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who may not need an Office 365 license at all. For more details, see [report](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/report).|

### Directory APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|New entity:</br>[contract](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/contract) |

## February 2017

### Intune APIs

|Change type|Version|Description|
|---|---|---|
|Addition|Beta|Added new entities:<br/>[androidForWorkCertificateProfileBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidforworkcertificateprofilebase)<br/>[androidForWorkEasEmailProfileBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidforworkeasemailprofilebase)<br/>[androidForWorkEnterpriseWiFiConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidforworkenterprisewificonfiguration)<br/>[androidForWorkGmailEasConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidforworkgmaileasconfiguration)<br/>[androidForWorkNineWorkEasConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidforworknineworkeasconfiguration)<br/>[androidForWorkPkcsCertificateProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidforworkpkcscertificateprofile)<br/>[androidForWorkScepCertificateProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidforworkscepcertificateprofile)<br/>[androidForWorkTrustedRootCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidforworktrustedrootcertificate)<br/>[androidForWorkWiFiConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_androidforworkwificonfiguration)<br/>[appleDeviceFeaturesConfigurationBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_appledevicefeaturesconfigurationbase)<br/>[appProvisioningConfigGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_appprovisioningconfiggroupassignment)<br/>[deviceComplianceUserOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecomplianceuseroverview)<br/>[deviceConfigurationUserOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview)<br/>[enterpriseCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_enterprisecertificate)<br/>[iosEducationDeviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioseducationdeviceconfiguration)<br/>[macOSDeviceFeaturesConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_macosdevicefeaturesconfiguration)<br/>[managedAndroidLobApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_managedandroidlobapp)<br/>[managedDeviceMobileAppProvisioningConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus)<br/>[managedIOSLobApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_managedioslobapp)<br/>[managedMobileLobApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_managedmobilelobapp)<br/>[symantecCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_symanteccertificate)<br/>[windowsAppX](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsappx)<br/>[windowsCertificateProfileBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowscertificateprofilebase)<br/>[windowsPhone81AppX](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsphone81appx)<br/>[windowsPhone81AppXBundle](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsphone81appxbundle)<br/>[windowsPhoneXAP](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsphonexap)<br/>[windowsUniversalAppX](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsuniversalappx)<br/>|
|Addition|Beta|Added new complex types:<br/>[airPrintDestination](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_airprintdestination)<br/>[windowsArchitecture](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsarchitecture)<br/>[windowsDeviceType](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsdevicetype)<br/>[windowsMinimumOperatingSystem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowsminimumoperatingsystem)<br/>[windowsPackageInformation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_windowspackageinformation)<br/>|
|Addition|Beta|Added the [assign](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_apps_ioslobappprovisioningconfiguration_assign) action on the [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration) entity|
|Addition|Beta|Added the [scheduleActionsForRules](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_deviceconfig_devicecompliancepolicy_scheduleactionsforrules) action on the [deviceCompliancePolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy) entity|
|Addition|Beta|Added the [updateTargetedSecurityGroups](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_mam_targetedmanagedappconfiguration_updatetargetedsecuritygroups) action on the [targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration) entity|
|Addition|Beta|Added the [getScopesForUser](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/intune_rbac_resourceoperation_getscopesforintune_devices_user) function on the [resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_rbac_resourceoperation) entity|
|Change|Beta|Removed the **manifest** property from the [androidLobApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_androidlobapp) entity|
|Change|Beta|Added the **assetTagTemplate**, **lockScreenFootnote**, **homeScreenDockIcons** and **homeScreenPages** properties to the [iosDeviceFeaturesConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration) entity|
|Change|Beta|Removed the **deviceSharingAssetTagInformation**, **deviceSharingLockScreenFootnote**, **homeScreenLayoutDockIcons** and **homeScreenLayoutPages** properties from the [iosDeviceFeaturesConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration) entity|
|Change|Beta|Added the **appsSingleAppModeBundleIds** property to the [iosGeneralDeviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration) entity|
|Change|Beta|Removed the **manifest** property from the [iosLobApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_ioslobapp) entity|
|Change|Beta|Added the **createdDateTime**, **description**, **lastModifiedDateTime**, **displayName** and **version** properties to the [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration) entity|
|Change|Beta|Added the **createdDateTime** and **lastModifiedDateTime** properties to the [managedAppPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_managedapppolicy) entity|
|Change|Beta|Removed the **deviceRegistrationState** property from the [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_devices_manageddevice) entity|
|Change|Beta|Added the **manifest** property to the [mobileAppContentFile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileappcontentfile) entity|
|Change|Beta|Added the **osDescription** and **userName** properties to the [mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileappinstallstatus) entity|
|Change|Beta|Removed the **deviceType** property from the [mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileappinstallstatus) entity|
|Change|Beta|Changed the type of the following properties on the [mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileappinstallstatus) entity:<br/>**mobileAppInstallStatusValue** from Int32 to String|
|Change|Beta|Added the **targetedSecurityGroupIds** and **targetedSecurityGroupsCount** properties to the [targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration) entity|
|Change|Beta|Removed the **numberOfTargetedSecurityGroups** property from the [targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration) entity|
|Change|Beta|Added the **id** property to the [user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_devices_user) entity|
|Change|Beta|Removed the **renewalThresholdPercentage**, **keyStorageProvider**, **subjectNameFormat**, **subjectAlternativeNameType**, **certificateValidityPeriodValue** and **certificateValidityPeriodScale** properties from the [windows10CertificateProfileBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows10certificateprofilebase) entity|
|Change|Beta|Removed the **renewalThresholdPercentage**, **keyStorageProvider**, **subjectNameFormat**, **subjectAlternativeNameType**, **certificateValidityPeriodValue** and **certificateValidityPeriodScale** properties from the [windows81CertificateProfileBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows81certificateprofilebase) entity|
|Change|Beta|Removed the **applyToWindows10Mobile** property from the [windowsPhone81GeneralConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsphone81generalconfiguration) entity|
|Change|Beta|Added the **enterpriseCerts**, **iosLobAppProvisioningConfigurations** and **symantecCert** navigation properties to the [deviceAppManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_deviceappmanagement) entity|
|Change|Beta|Added the **userStatusOverview** navigation property to the [deviceCompliancePolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy) entity|
|Change|Beta|Added the **userStatusOverview** navigation property to the [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfiguration) entity|
|Change|Beta|Added the **groupAssignments**, **deviceStatuses** and **userStatuses** navigation properties to the [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration) entity|
|Change|Beta|Changed the type of the following properties on the [windows10VpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows10vpnconfiguration) entity:<br/>**identityCertificate** from [windows10CertificateProfileBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows10certificateprofilebase) to [windowsCertificateProfileBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowscertificateprofilebase)|
|Change|Beta|Added the **deviceComplianceCheckinThresholdDays** and **isScheduledActionEnabled** properties to the [deviceManagementSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings) complex type|
|Change|Beta|Removed the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties from the [deviceManagementSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings) complex type|
|Change|Beta|Added the **bundleID**, **appName**, **publisher**, **enabled** and **showOnLockScreen** properties to the [iosNotificationSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iosnotificationsettings) complex type|
|Change|Beta|Removed the **bundleIdentifier**, **notificationsEnabled** and **showInLockScreen** properties from the [iosNotificationSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iosnotificationsettings) complex type|



## January 2017

### Outlook calendar

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0|New action [findMeetingTimes](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/user_findmeetingtimes) for the [user](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/user) resource.|
|Addition|v1.0|New complex type [attendeeBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/attendeebase) which consists of a type property for the attendee type.|
|Addition|v1.0|New complex types:<br/>[attendeeAvailability](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/attendeeavailability)<br/>[locationConstraint](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/locationconstraint) <br/>[locationConstraintItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/locationconstraintitem)<br/>[meetingTimeSuggestion](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/meetingtimesuggestion)<br/>[meetingTimeSuggestionsResult](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/meetingtimesuggestionsresult)<br/>[timeConstraint](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/timeconstraint)<br/>[timeSlot](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/timeslot)|
|Change|v1.0|The [attendee](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/attendee) complex type is now derived from attendeeBase, which in turn is derived from [recipient](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/recipient). Including the inherited properties, it consists of the same **status**, **type** and **emailAddress** properties as before.|
|Addition|Beta|hexColor added to the [calendar](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/calendar) resource.|

### Intune APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added new entities: <br/>[appReportingOverviewStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_appreportingoverviewstatus)<br/>[deviceComplianceDeviceOverview](https://developer.microsoft.com/en-us/graph/docs//api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview)<br/>[deviceConfigurationDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview)<br/>[deviceManagementExchangeOnpremisesPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_onboarding_devicemanagementexchangeonpremisespolicy)<br/>[iosDeviceFeaturesConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration)<br/>[iosEducationDeviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioseducationdeviceconfiguration)<br/>[iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration)<br/>[onpremisesConditionalAccessSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_onboarding_onpremisesconditionalaccesssettings)<br/>[sharedPCConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_sharedpcconfiguration)<br/>[windows10EnterpriseModernAppManagementConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows10enterprisemodernappmanagementconfiguration)<br/>[windows10SecureAssessmentConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration)<br/>[windows10WindowsInformationProtectionConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration)|
|Addition|Beta|Added new complex types: <br/> [appInstallationFailure](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_appinstallationfailure)<br/>[enterpriseCloudResource](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_enterprisecloudresource)<br/>[iosHomeScreenApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioshomescreenapp)<br/>[iosHomeScreenFolder](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioshomescreenfolder)<br/>[iosHomeScreenFolderPage](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioshomescreenfolderpage)<br/>[iosHomeScreenItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioshomescreenitem)<br/>[iosHomeScreenPage](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ioshomescreenpage)<br/>[iosNotificationSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_iosnotificationsettings)<br/>[iPv6Range](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_ipv6range)<br/>[sharedPCAccountManagerPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_sharedpcaccountmanagerpolicy)<br/>[windowsInformationProtectionAppRule](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionapprule)<br/>[windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionappruleapplockerpolicyfiletemplate)<br/>[windowsInformationProtectionAppRuleDesktopTemplate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionappruledesktoptemplate)<br/>[windowsInformationProtectionAppRuleStoreAppTemplate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionapprulestoreapptemplate)<br/>[windowsInformationProtectionAppRuleTemplate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionappruletemplate)<br/>[windowsInformationProtectionCorporateNetworkLocation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectioncorporatenetworklocation)<br/>[windowsInformationProtectionDataRecoveryCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectiondatarecoverycertificate)<br/>[windowsInformationProtectionProtectedLocation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocation)<br/>[windowsInformationProtectionProtectedLocationEnterpriseCloudResources](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterprisecloudresources)<br/>[windowsInformationProtectionProtectedLocationEnterpriseInternalProxyServers](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseinternalproxyservers)<br/>[windowsInformationProtectionProtectedLocationEnterpriseIPv4Ranges](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseipv4ranges)<br/>[windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseipv6ranges)<br/>[windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterprisenetworkdomainnames)<br/>[windowsInformationProtectionProtectedLocationEnterpriseProxyServers](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseproxyservers)<br/>[windowsInformationProtectionProtectedLocationNeutralResources](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationneutralresources)
|Deletion|Beta|Removed the following complex types and replaced with microsoft.graph.Json:<br/>managedAppDeploymentSummary <br/>managedAppSummary<br /> |
|Change|Beta|Replaced the property type appConfigComplianceStatus with complianceStatus on the following entities: <br/>[managedDeviceMobileAppConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus)<br/>[managedDeviceMobileAppConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationuserstatus)|
|Change|Beta|For resource [managedAppStatusRaw](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_managedappstatusraw), changed type of property content from managedAppSummary to Json.|
|Change|Beta|Removed the getUsersWithFlaggedAppRegistration function from the [managedAppRegistration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_mam_managedappregistration) collection.|
|Change|Beta|Changed the **vppToken** navigation property of the [iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_iosvppapp) entity to no longer be a contained collection.|
|Change|Beta|Added the **deviceStatusOverview** property to the [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfiguration) and [deviceCompliancePolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy) entities.|
|Change|Beta|Added the **appReportingOverview** property to the [deviceAppManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_deviceappmanagement) singleton.|
|Change|Beta|Added the **deviceDisplayName** and **userPrincipalName** properties to the [deviceConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdevicestatus), [deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecompliancedevicestatus) and [managedDeviceMobileAppConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus) entities.|
|Change|Beta|Add the **ruleName** property to the [deviceComplianceScheduledActionForRule](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecompliancescheduledactionforrule) entity.|
|Change|Beta|Added the **devicesCount**, **userDisplayName** and **userPrincipalName** properties to the [deviceConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuserstatus), [deviceComplianceUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicecomplianceuserstatus), and [managedDeviceMobileAppConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationuserstatus) entities.|
|Change|Beta|Added the [notificationMessageTemplates](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_notification_notificationmessagetemplate) collection to the [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_devicemanagement) singleton.|
|Change|Beta|Added the **isDefault**, **lastModifiedDateTime**, **locale**, **messageTemplate** and **subject** properties to the[localizedNotificationMessage](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_localizednotificationmessage.md ) entity.|
|Change|Beta|Added the **azureActiveDirectoryDeviceId**, **deviceCategory**, **deviceRegistrationState** and **managementAgent** properties to the [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_onboarding_manageddevice) entity.|
|Change|Beta|Added the **lastModifiedDateTime** property to the [mobileAppCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_apps_mobileappcategory) entity.|
|Change|Beta|Added the **brandingOptions**, **defaultLocale**, **displayName**, **fromEmailAddress**, **lastModifiedDateTime**, **localizedNotificationMessages** properties to the [notificationMessageTemplate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_notification_notificationmessagetemplate) entity.|
|Change|Beta|Added the **appsAllowTrustedAppsSideloading**, **appsBlockWindowsStoreOriginatedApps**, **developerUnlockSetting**, **edgeBlockAccessToAboutFlags**, **edgeBlockDeveloperTools**, **edgeBlockExtensions**, **edgeBlockInPrivateBrowsing**, **edgeFirstRunUrl**, **edgeHomepageUrls**, **gameDvrBlocked**, **settingsBlockAddProvisioningPackage**, **settingsBlockChangeLanguage**, **settingsBlockChangePowerSleep**, **settingsBlockChangeRegion**, **settingsBlockChangeSystemTime**, **settingsBlockEditDeviceName**, **settingsBlockRemoveProvisioningPackage**, **sharedUserAppDataAllowed**, **smartScreenBlockPromptOverride**, **smartScreenBlockPromptOverrideForFiles**, **storageRestrictAppDataToSystemVolume**, **storageRestrictAppInstallToSystemVolume**, **webRtcBlockLocalhostIpAddress**, **windowsStoreBlockAutoUpdate** and **windowsStoreEnablePrivateStoreOnly** properties to the [windows10GeneralConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration) entity.|

## December 2016

### Delta query

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|A new delta function add to the following entities to perform [delta query](https://developer.microsoft.com/en-us/graph/docs/concepts/delta_query_overview):<br/>contact<br/>contactFolder<br/>event<br/>group<br/>mailFolder<br/>message<br/>user<br/>See the following for examples:<br/>[Get incremental changes to groups (preview)](https://developer.microsoft.com/en-us/graph/docs/concepts/delta_query_groups)<br/>[Get incremental changes to messages in a folder (preview)](https://developer.microsoft.com/en-us/graph/docs/concepts/delta_query_message)<br/>[Get incremental changes to users (preview)](https://developer.microsoft.com/en-us/graph/docs/concepts/delta_query_users)|

### Excel APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0|Added workbookPivotTable resource, refresh and refreshAll action on pivotTables, workbookRangeView resource, visibleView action on the filtered range to return workbookRangeView to the user, get rows collection and range resource off of visibleView, columnsAfter, columnsBefore, resizedRange, rowsAbove, and rowsBelow functions off of range resource, and new table properties.|

### Intune APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added resources and method APIs for Microsoft Intune. This is a large set of resources and methods to support the public preview of Intune on Azure Portal. For information about the Intune service, see the [Intune documentation](https://go.microsoft.com/fwlink/?linkid=836405). For information about the Intune resources and APIs, see [Working with Intune in Microsoft Graph](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/intune_graph_overview).|

## October 2016

### Authorization provider

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0 and beta|The v2.0 auth endpoint now supports the client_credentials OAuth grant, which can be used for [daemon & long running processes in business scenarios](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-protocols-oauth-client-creds/).|
|Addition|v1.0 and beta|The v2.0 auth endpoint now supports [permission scopes that require administrator's consent](http://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes#permission-scope-details), via the [admin consent endpoint](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-scopes/#admin-restricted-scopes).|
|Addition|v1.0 and beta|The v2.0 auth endpoint now supports administrative consent for all users in a tenant, via the [admin consent endpoint](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-scopes/#admin-restricted-scopes).|

### Invitation APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added invitedUserType property to the invitation entity type, that defines the type of user (**Guest** or **Member**) that is invited.|
|Deletion|Beta|We will be removing the invitedToGroups property from the invitation entity-type on 11/11/2016. This means that you will no longer be able to add an invited user to a group using this API. Instead, use the [add member API](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/group_post_members) to add a user to a group.|

## September 2016

### Azure AD application proxy

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Azure AD Application Proxy APIs are now available in the Microsoft Graph beta endpoint. These APIs allow for secure publishing of on-premises applications to users outside the corporate network using Azure AD as the common control plane for access. You can use the published APIs to write applications that can retrieve and update various aspects of application proxy, such as _connectors_, _connectorGroups_ and the _onPremisesPublishing_ settings of an application.|

### Drive

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added _shared_ collection to allow accessing shared driveItems by shareId or sharing URL.|
|Addition|Beta|Added _search_ function to a drive, which allows searching for more items than just those in the drive's root folder.|


### DriveItem

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added support for _createUploadSession_, which allows uploading files larger than 4 MB to OneDrive, OneDrive for Business, and SharePoint document libraries.|
|Addition|Beta|Added _sharepointIds_ property to driveItem that returns traditional SharePoint API identifiers for driveItems stored in SharePoint.|
|Addition|Beta|Added additional properties on _remoteItem_.|
|Addition|Beta|Added the _quickXorHash_ value for files in OneDrive for Business.|
|Addition|Beta|Added scope to the _createSharingLink_ to allow creating company sharable links or anonymous sharing links.|

### Extended properties

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|[Extended properties](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/extended-properties-overview) are now supported by the following resources: message, mailFolder, event, calendar, contact, contactFolder, group event, group calendar, group post.|

### Groups

Added support for dynamic group membership through the public preview API, including the additions listed in the following table.

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added **membershipRule** property contains rules that controls the memberships for this group, if the group is a dynamic group.|
|Addition|Beta|Added **membershipRuleProcessingState** property to control whether dynamic membership processing is on or paused for this group.|
|Addition|Beta|Set the **groupTypes** property to contain **"DynamicMembership"** to light up the dynamic groups capability for this group.|
|Addition|Beta|Added **preferredLanguage** property to indicate the preferred language for an Office 365 group.|
|Addition|Beta|Added **theme** property to specify an Office 365 group's color theme.|

### Hybrid deployment support

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Apps can use v1.0 Outlook Mail, Calendar, and Contacts APIs to access on-premises mailboxes in a hybrid deployment with Exchange 2016 Cumulative Update 3 (CU3). Find more details about REST API support in specific [hybrid deployments](https://developer.microsoft.com/en-us/graph/docs/overview/hybrid_rest_support). **Note:** If you're using these sets of API in v1.0, you can now find your apps, including production apps, working for on-premises mailboxes that meet the specific hybrid deployment requirements. This capability is only in preview.|

### IdentityRiskEvents

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Change|Beta|As part of the schema change where the type of two location properties is being replaced by a new complex type in the identityRiskEvents endpoint, the following properties are changed/added in the identityRiskEvents endpoint:</br>**location**  changed from Edm.String to ComplexType signInLocation.<br/>**previousLocation** changed from Edm.String to ComplexType signInLocation.<br/>**signInLocation** new ComplexType that contains city, state, countryOrRegion and geoCoordinates properties.<br/>**geoCoordinates** new ComplexType that contains latitude and longitude properties.|

### Invitation manager

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Invitation manager APIs are now available in the Microsoft Graph beta endpoint. You can use invitation manager APIs to create an invite, in order to add an external user to the organization. As part of the invitation, you can also choose to add the invited user to an Office 365 group. For more details, see [invitation manager](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/invitation).|

### OneDrive

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added **CreateUploadSession** method on **driveItem**, which allows large file and resumable uploads.|
|Addition|v1.0|Added properties for tracking SharePoint IDs on items from SharePoint (**sharepointIds**) and a property to identify root folders (**root**).|
|Addition|v1.0|Added **Shares** root collection, which can be used with shareIds or sharing links to access shared items in OneDrive and SharePoint. Returns a new type, sharedDriveItem.|
|Addition|v1.0|Added **Invite** method on driveItem, which allows adding permissions to items. |
|Addition|v1.0|Added **Search** method on drive, which allows searching across items in the drive and shared items. |
|Addition|v1.0|Added **processingMetadata** property on file complex type quickXorHash property on hashes complex type. |
|Addition|v1.0|Added **quickXorHash** property on hashes complex type. |

### Outlook calendar

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added the **onlineMeetingUrl** property to the [event](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/event) resource.|
|Addition|Beta|Added [forward](http://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/event_forward) action to the event resource.|
|Addition|Beta|Added the following properties to the [calendar](http://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/calendar) resource to support calendar sharing: **canEdit**, **canShare**, **canViewPrivateItems**, **isShared**, **isShareWithMe**, and **owner**.|

### Outlook mail

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added the [mailboxSettings](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/mailboxsettings) complex type, which includes the **automaticRepliesSetting**, **timeZone**, and **language** properties.|
|Addition|v1.0|Added the **mailboxSettings** property to the [user](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/user) resource.|
|Addition|Beta|Added support for creating, listing, getting, and deleting one or more instances of [mention](http://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/mention) in a message. Mentions support calling out to get the attention of other users in a message.|
|Addition|Beta|Added support for the [getMailTips](http://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/user_getmailtips) action to get any MailTips for specific recipients. Added the following resources: automaticRepliesMailTips, mailTips, mailTipsError.|

### Query parameters

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Change|Beta|Query parameters without $ prefixes are supported as of 09/26/16. The $ prefix in query parameters is optional. For details, see the [Supporting query parameters without $ prefixes in Microsoft Graph](http://dev.office.com/queryparametersinMicrosoftGraph) blog post.|

### SharePoint

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Access to SharePoint sites and [lists by ID](http://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/list_get) or [path/URL](http://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/baseitem_getbyurl).|
|Addition|Beta|Support for [listing, creating, getting, and deleting instances of listItem](http://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/listitem).|

### Users

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added **refreshTokensValidFromDateTime** read-only property to indicate when refresh or session tokens are valid from. Any tokens issued before this time are invalid, and any attempt to use them would force a new sign-in for the user.|
|Addition|Beta|Added **showInAddressList** property to control if the Outlook global address list should contain this user.|
|Addition|Beta|Added **invalidateAllRefreshTokens** service action that invalidates all of the user's refresh and session tokens issued to applications, by resetting the **refreshTokensValidFromDateTime** user property to the current date-time.|


### Webhooks

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added Drive root items to Webhooks as a resource that is available to subscribe to.|

## August 2016

### Contacts

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|As part of the schema change where a few properties are being removed and corresponding collections are being added to contacts endpoint, the following properties have been added to the contacts endpoint: _Websites Collection(ComplexType: Website)_,_Phones Collection (ComplexType: Phone)_, _PostalAddress Collection(ComplexType: PhysicalAddress)_. For details, see the [Upcoming changes to Contacts and People APIs](https://blogs.msdn.microsoft.com/exchangedev/2016/06/09/upcoming-changes-to-contacts-and-people-apis/) blog post.|
|Deletion|Beta|As part of the schema change where a few properties are being removed and corresponding collections are being added to contacts endpoint, the following properties have been removed from the contacts endpoint: _BusinessHomePage_,_HomePhones_, _MobilePhone1_, _BusinessPhones_, _HomeAddress_, _BusinessAddress_, _OtherAddress_. For details, see the [Upcoming changes to Contacts and People APIs](https://blogs.msdn.microsoft.com/exchangedev/2016/06/09/upcoming-changes-to-contacts-and-people-apis/) blog post.|

### Excel APIs

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Excel REST API on Microsoft Graph is generally available. Now you can build rich and deep integrations with Excel workbooks in Office 365. See the [Power your apps with the new Excel REST API on the Microsoft Graph](http://dev.office.com/blogs/power-your-apps-with-the-new-excel-rest-api) blog post for more details.|

### People

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Change|Beta|Property _WebSite_ is renamed to _Websites_. For details, see [Upcoming changes to Contacts and People APIs](https://blogs.msdn.microsoft.com/exchangedev/2016/06/09/upcoming-changes-to-contacts-and-people-apis/).|

### Privileged Identity Management

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Privileged Identity Management (PIM) REST APIs now are available in the Microsoft Graph beta endpoint. [Privileged Identity Management](https://azure.microsoft.com/en-us/documentation/articles/active-directory-privileged-identity-management-configure/) provides just in time activation for privileged Azure AD organizational roles such as Global Administrator, Billing Administrator, and so on. You can use the published APIs to write applications that retrieve and update privileged role assignments, and activate users into roles. For details, see [Microsoft Graph: Azure AD Privileged Identity Management Preview APIs available in Beta](http://dev.office.com/blogs/microsoft-graph-azure-ad-privileged-identity-management-apis-beta) and [Azure AD Privileged Identity Management](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/privilegedidentitymanagement_root).|

## July 2016

### Administrative Units

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Introduced the new Administrative Unites preview API. Administrative units allow organizations to subdivide their Azure Active Directory, and delegate administrative duties to those subdivisions. Subdivisions can represent regions, departments, cost centers, etc. This can now be managed through the Microsoft Graph API.|

## June 2016

### IdentityRiskEvents

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Introduced the new IdentityRiskEvents preview API. This API works in conjunction with Azure Active Directory Identity Protection. You can use it to query risk events generated by Identity Protection. For more details, see the [Introduction of a new preview API to Microsoft Graph: IdentityRiskEvents](http://dev.office.com/blogs/identityriskevents-api-preview) blog post.

### Subscriptions

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|App-only scopes are now supported for _mail_ and _contacts_ subscriptions.|

## May 2016

### Calendar

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Breaking change|Beta|Changes to the findMeetingTimes API. For more information, see the [Microsoft Graph findMeetingTimes API update](http://dev.office.com/microsoft-graph-findmeetingtimes-api-update) blog post. This change took effect May 19th, 2016.

### Contact

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _extensions_, which is abstract type to support the OData v4 open type openTypeExtension.|

### Directory

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Breaking change|Beta|_settingTemplateId_ is renamed to _templateId_. This change will take effect May 19th, 2016.|

### Event

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _extensions_, which is abstract type to support the OData v4 open type openTypeExtension.|

### EventMessages

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _inferenceClassification_ and _extensions_ to _eventMessages_.|
|Addition|Beta|Added _responseRequested_ to _eventMessageRequest_.|

### Messages

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _inferenceClassification_ and _extensions_ to _messages_.|
|Addition|Beta|Added _wellknownname_ to _contactFolder_.|Changes to _findMeetingTimes_ API. For more information, see the [Microsoft Graph findMeetingTimes API update](http://dev.office.com/microsoft-graph-findmeetingtimes-api-update) blog post. This change will take effect May 19th, 2016.|

### Post

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _extensions_, which is abstract type to support the OData v4 open type openTypeExtension.|

### User

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _inferenceClassification_ resource type.|
|Addition|Beta|Added _timeZone_ to _mailboxsettings_.|
|Addition|Beta|Added API _findMeetingTimes_to _user_.|

## April 2016

### General

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and Beta|Added support for honoring _Accept-Encoding:gzip_.|
|Addition|v1.0|Added support for cast segment in expand path. For example, 'https://graph.microsoft.com/v1.0/me/messages?$expand=microsoft.graph.eventMessage/event'.|
|Addition|Beta|Added support for PATCH request against structural properties. For example: 'PATCH /me/mailboxSettings'.|
|Addition|Beta|Azure Active Directory is now used as a fallback for /beta/users/id/photo requests when Outlook is unable to service the request, for example when the user has no mailbox license or the tenant does not have an Exchange Online subscription. NOTE: this fallback is available for both GET and PATCH.|
|Addition|Beta|Added support for cast segment in expand path. For example: 'https://graph.microsoft.com/v1.0/me/messages?$expand=microsoft.graph.eventMessage/event'.|

### OneDrive

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Fix|v1.0|Fixed the issue that OneDrive createLink requests failing with 500 and "Unsupported extension property type."|

## March 2016

### Calendar

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties.|
|Addition|Beta|Added _suggestionHint_ property to _meetingTimeCandidate_.|
|Addition|Beta|Added _locationUri_ property to _location_.|
|Addition|Beta|Added _type_ and _postOfficeBox_ to _physicalAddress_.|
|Change|Beta|_findMeetingTimes_ now takes new parameter _ReturnSuggestionHints_.|
|Change|Beta|_findMeetingTimes_ now returns a collection of _meetingTimeCandidate_.|

### Drive

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and beta|Added _recent_ function to list a set of items that have been recently used by the signed in user. This list includes items that are in the user's drive as well as items they have access tofrom other drives. Example: GET /me/drive/recent.|
|Addition|v1.0 and beta|Added _sharedWithMe_ function to list the set of items that are shared with the current user. Example: GET /me/drive/sharedWithMe.|

### DriveItem

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and beta|Added _remoteItem_ type to provide a link to an item in another drive.|
|Addition|v1.0 and beta|Added _sharingInvitation_ type to provide details of any associated sharing invitation for this permission.|
|Addition|v1.0 and beta|Added _delta_ function to track changes to items in a drive. Example: GET /me/drive/items/{item-id}/delta|
|Addition|v1.0 and beta|Added _copy_ that creates a copy of a _driveItem_ (including any children), under a new parent or with a new name. Example: POST /me/drive/items/{item-id}/copy.|
|Addition|v1.0 and beta|_conflictBehavior_ instance attributes is now applicable to _driveItem_.|
|Addition|Beta|Added _invite_ function to send a sharing invitation to an existing item. A sharing invitation creates a unique sharing link and sends an email to the recipient of the invitation that includes the sharing link. Example: POST /drive/items/{item-id}/invite.

### Event

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added new property _onlineMeetingUrl_ and new method _cancel_.|

### Event messages

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added _startDateTime_, _endDateTime_, _location_, _type_, _recurrence_, _isOutOfDate_, _conversationIndex_, _unsubscribe_, _unsubscribeData_, _unsubscribeEnabled_ and _flag_ properties to _eventmessage_ object.|
|Addition|Beta|Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties.|
|Addition|Beta|Added new method _unsubscribe_.|

### Excel

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|We are adding new Excel REST APIs that let you read and modify data in an Excel workbook. It is now possible to build smart apps that allows users to get value out of the content stored in an Excel workbook by providing insights into the data. Take advantage of analytical powers of Excel, create tables and charts and extract visually appealing chart image - all from within your app. For details, see [Working with Excel in Microsoft Graph](http://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/excel).|

### General

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and beta|Improved error message when resolving tenant alias and rejected JWT (AAD) tokens.|
|Addition|v1.0 and beta|The location of the authorization service endpoint is now returned in the _www-authenticate_ header when a request is received with an empty bearer token.|
|Addition|v1.0 and beta|The ability to filter on an entity's id property is now fixed. Example: GET https://graph.microsoft.com/v1.0/users?$filter=id+eq+'x'<br/>Previously, any POST requests to service actions and functions require prefixing the action or function name with the microsoft.graph prefix. For example: POST https://graph.microsoft.com/v1.0/me/Microsoft.Graph.getMemberGroups.<br/>The prefix is now no longer required (although it can still be specified). So the following would now also work: POST https://graph.microsoft.com/v1.0/me/getMemberGroups.|
|Change|Beta|Cleaned up subscription property names.|
|Addition|Beta|We've added the capability to discover (through _directorySettingTemplates_) and override the default behavior (by creating a _setting_ from the template) for entities and their associated functionality. Initially this only template provided is to control behaviors on Office groups.|

### Mail folder

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added _wellKnownName_ and _userConfigurations_ properties.|
|Addition|Beta|Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties|

### Messages

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _mobilePhone_ property.|
|Addition|v1.0 and beta|Added _internetMessageId_ property. The message ID in the format specified by [RFC2822](http://www.ietf.org/rfc/rfc2822.txt).|
|Change|Beta|Renamed _mobilePhone1_ property to _mobilePhone_.|
|Change|Beta|_createReply_ and _createReplyAll_take new parameter _Message_ and _comment_.|
|Change|Beta|_createForward_ takes new parameter _Message_, _ToRecipients_ and _comment_.|
|Change|Beta|_reply_, _replyAll_ and _forward_ take new parameter _Message_.|

### Permission

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and beta|Added _sharingInvitation_ property to provide details of any associated sharing invitation for this permission.|

### Person

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added new properties _birthday_, _personNotes_, _isFavorite_, _phones_, _permission_, _postalAddresses_,_websites_,_yomiCompany_, _department_, _profession_, _mailboxType_ and _personType_.|
|Addition|Beta|Added new enum types _physicalAddressType_, _webSite_, _phone_ and _webSiteType_.|

### Reference attachment

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added new properties _sourceUrl_, _providerType_, _thumbnailUrl_, _previewUrl_, _permission_ and _isFolder_.|
|Addition|Beta|Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties.|
|Addition|Beta|Added new enum types _referenceAttachmentProvider_ and _referenceAttachmentPermission_.|

### Subscriptions

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Webhooks are now GA on V1.0 endpoint via the _/Subscriptions_ resource. Create, Read, Renew and Delete subscriptions to receive notifications on data from Outlook and Office 365 group conversations.|

### User

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added _mailboxSettings_ property and corresponding types.|

## February 2016

### DriveItem

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and beta|New _remoteItem_ property on driveItem for Microsoft accounts.|

### General

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Change|v1.0 and beta|-_/me/drive_ now works for both Microsoft accounts and Work and School accounts.|
|Change|v1.0 and beta|Drive requests for accounts whose OneDrive storage was provisioned on demand work more reliably and work in more scenarios where tenant default SharePoint sites use non-standard names.|
|Deletion|Beta|Removed various unimplemented types from the beta schema to more closely match the 1.0 schema.|

### Subscriptions

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|notificationUrl validation on subscription creation. For details, see [Microsoft Graph WebHooks Update - January 2016](http://dev.office.com/blogs/Microsoft-Graph-WebHooks-Update-January-2016).|
|Addition|Beta|Subscription entities can now be deleted: DELETE https://graph.microsoft.com/beta/subscriptions/|

### Users

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Change|v1.0 and beta|_displayName_ is now returned for Microsoft accounts.|

## January 2016

### Contacts

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added mobilePhone property to personal contacts entity-set.|

### directoryObjects

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Fix|v1.0 and beta|Fixed calling actions that are bound to directoryObjects, which were failing with the following error:  The return type from the operation is not possible with the given entity set. This applies to the following actions: _microsoft.graph.checkMemberObjects_, _microsoft.graph.getMemberObjects_, _microsoft.graph.checkMemberGroups_, _microsoft.graph.assignLicense_, _microsoft.graph.changePassword_.|

## December 2015

### Contacts

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added mobilePhone property to personal contacts entity-set.|

### General

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Fix|v1.0 and beta|Fixed requests using $filter expressions that specified the same property more than once, which were failing with the following 500 error: An item with the same key has already been added.|
|Fix|v1.0 and beta|Fixed case insensitivity for action parameter names and values.|
|Fix|v1.0 and beta|Fixed request processing for payloads containing null values for some embedded complex properties, which were failing with a null reference exception.|
|Addition|v1.0 and beta|Added support for complex type property sorting and filtering.|
|Addition|v1.0 and beta|Added authorization_uri property in the www-authenticate header on a 401 response. This uri can be used to start the token acquisition flow.|
|Addition|v1.0 and beta|Improved error messages across users and groups.|

### Groups

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Fix|v1.0 and beta|Fixed calling the following group actions: _microsoft.graph.addFavorite_, _microsoft.graph.removeFavorite_ and _microsoft.graph.resetUnseenCount_.|

### Messages

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added eventMessageRequest subtype of eventMessage and startDateTime, endDateTime, location, type, recurrence and isOutOfDate properties to eventMessage type.|

### Users

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Fix|v1.0 and beta|Fixed being able to select certain user properties on other users, when referencing the user by user principal name (UPN). For example: https://graph.microsoft.com/v1.0/users/anotherUser@contoso.com?$select=aboutMe|
|Fix|v1.0 and beta|Fixed calling the _microsoft.graph.reminderView_ user bound function, which was failing with the following error: Could not find a property named businessPhones on type  Microsoft.OutlookServices.Reminder.|
|Fix|v1.0 and beta|Fixed user creation and update (POST/PATCH /v1.0/users), which was failing with a 400 error.|
