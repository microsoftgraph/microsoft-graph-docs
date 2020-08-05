# Changelog for Microsoft Graph
---
author: dkershaw
localization_priority: Normal
ms.prod: identity and access reports
ms.date: 04/25/2019
---

This changelog covers what's changed in the Reports node in Microsoft Graph for the beta endpoint of Microsoft Graph APIs.

For details about known issues with Microsoft Graph APIs, see [Known issues](known_issues.md).

## April 2019

### Credentials Usage APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta      | Added APIs which provides summary data for Credentials Registration [Reports Credentials Registration Summary API](https://graph.microsoft.com/beta/reports/getCredentialUserRegistrationCount) end points. 
| Addition        | beta      | Added APIs which provides user details of Credentials Registration data [Reports Credentials Registration Details API](https://graph.microsoft.com/beta/reports/credentialUserRegistrationDetails) end points.
| Addition        | beta      | Added APIs which provides summary data for Credentials Usage [Reports Credentials Usage Summary API](https://graph.microsoft.com/beta/reports/getCredentialUsageSummary) end points. 
| Addition        | beta      | Added APIs which provides user details of Credentials Usage data [Reports Credentials Usage Details API](https://graph.microsoft.com/beta/reports/userCredentialUsageDetails) end points.




| Addition | beta | Add the **signInSessionsValidFromDateTime** property on the [user](/graph/api/resources/user?view=graph-rest-beta) resource. This is a rename of the **refreshTokensValidFromDateTime** properties, but both properties will be supported to allow clients to migrate smoothly. In the next couple months the old property, **refreshTokensValidFromDateTime** will be removed.|
| Addition | beta | Add the **revokeSignInSessions** action on the [user](/graph/api/resources/user?view=graph-rest-beta) resource. This is a rename of the **invalidateAllRefreshTokens** action, but both service actions will be supported to allow clients to migrate smoothly. In the next couple months the old service action, **invalidateAllRefreshTokens** will be removed. |

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerCompliancePolicy](/graph/api/resources/intune-deviceconfig-androiddeviceownercompliancepolicy?view=graph-rest-beta)<br/><br/>[macOSExtensionsConfiguration](/graph/api/resources/intune-deviceconfig-macosextensionsconfiguration?view=graph-rest-beta)<br/><br/>[mobileAppDependency](/graph/api/resources/intune-apps-mobileappdependency?view=graph-rest-beta)<br/><br/>[mobileAppRelationship](/graph/api/resources/intune-apps-mobileapprelationship?view=graph-rest-beta)<br/><br/>|
|Addition|beta|Added new complex types:<br/>[macOSKernelExtension](/graph/api/resources/intune-deviceconfig-macoskernelextension?view=graph-rest-beta)<br/><br/>[macOSLaunchItem](/graph/api/resources/intune-deviceconfig-macoslaunchitem?view=graph-rest-beta)<br/><br/>[mobileAppRelationshipState](/graph/api/resources/intune-apps-mobileapprelationshipstate?view=graph-rest-beta)<br/><br/>[win32LobAppFileSystemRequirement](/graph/api/resources/intune-apps-win32lobappfilesystemrequirement?view=graph-rest-beta)<br/><br/>[win32LobAppPowerShellScriptRequirement](/graph/api/resources/intune-apps-win32lobapppowershellscriptrequirement?view=graph-rest-beta)<br/><br/>[win32LobAppRegistryRequirement](/graph/api/resources/intune-apps-win32lobappregistryrequirement?view=graph-rest-beta)<br/><br/>[win32LobAppRequirement](/graph/api/resources/intune-apps-win32lobapprequirement?view=graph-rest-beta)<br/><br/>|
|Addition|beta|Added new enum types:<br/>[androidDeviceOwnerPlayStoreMode](/graph/api/resources/intune-deviceconfig-androiddeviceownerplaystoremode?view=graph-rest-beta)<br/><br/>[mobileAppDependecyType](/graph/api/resources/intune-apps-mobileappdependecytype?view=graph-rest-beta)<br/><br/>[win32LobAppPowerShellScriptDetectionType](/graph/api/resources/intune-apps-win32lobapppowershellscriptdetectiontype?view=graph-rest-beta)<br/><br/>|
|Addition|beta|Added the [updateRelationships](/graph/api/intune-apps-mobileapp-updaterelationships?view=graph-rest-beta)<br/> action on [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta)<br/> |
|Addition|beta|Added the **import** action on [importedWindowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentity?view=graph-rest-beta)<br/> collection |
|Addition|beta|Added the [getRelatedAppStates](/graph/api/intune-apps-mobileapp-getrelatedappstates?view=graph-rest-beta)<br/> function on [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta)<br/> |
|Addition|beta|Added the **kioskModeBluetoothConfigurationEnabled**, **kioskModeWiFiConfigurationEnabled**, **passwordMinimumLetterCharacters**, **passwordMinimumLowerCaseCharacters**, **passwordMinimumNonLetterCharacters**, **passwordMinimumNumericCharacters**, **passwordMinimumSymbolCharacters**, **passwordMinimumUpperCaseCharacters** and **playStoreMode** properties to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidForWorkCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androidforworkcertificateprofilebase?view=graph-rest-beta)<br/> entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidForWorkPkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkpkcscertificateprofile?view=graph-rest-beta)<br/> entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidForWorkScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkscepcertificateprofile?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidWorkProfileCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androidworkprofilecertificateprofilebase?view=graph-rest-beta)<br/> entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidWorkProfilePkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilepkcscertificateprofile?view=graph-rest-beta)<br/> entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidWorkProfileScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilescepcertificateprofile?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **deviceNameTemplate** property to the [depEnrollmentBaseProfile](/graph/api/resources/intune-enrollment-depenrollmentbaseprofile?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **importId** property to the [importedWindowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentity?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **autoLaunchItems**, **adminShowHostInfo**, **loginWindowText**, **authorizedUsersListHidden**, **authorizedUsersListHideLocalUsers**, **authorizedUsersListHideMobileAccounts**, **authorizedUsersListIncludeNetworkUsers**, **authorizedUsersListHideAdminUsers**, **authorizedUsersListShowOtherManagedUsers**, **shutDownDisabled**, **restartDisabled**, **sleepDisabled**, **consoleAccessDisabled**, **shutDownDisabledWhileLoggedIn**, **restartDisabledWhileLoggedIn**, **powerOffDisabledWhileLoggedIn**, **logOutDisabledWhileLoggedIn** and **screenLockDisableImmediate** properties to the [macOSDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-macosdevicefeaturesconfiguration?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **dependentAppCount** property to the [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **requirementRules** property to the [win32LobApp](/graph/api/resources/intune-apps-win32lobapp?view=graph-rest-beta)<br/> entity|
|Deletion|beta|Removed the **tpmRequired** property from the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **groupTag** property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **users** navigation property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **relationships** navigation property to the [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **customPrivacyMessage** property to the [intuneBrand](/graph/api/resources/intune-onboarding-intunebrand?view=graph-rest-beta)<br/> complex type|
|Addition|beta|Added the **dependencyFailedToInstall**, **dependencyWithRequirementsNotMet**, **dependencyPendingReboot**, **dependencyWithAutoInstallDisabled**, **autoInstallDisabled**, **installingDependencies**, **powerShellScriptRequirementNotMet**, **registryRequirementNotMet** and **fileSystemRequirementNotMet** members to the [resultantAppStateDetail](/graph/api/resources/intune-apps-resultantappstatedetail?view=graph-rest-beta)<br/> enum type|
|Addition|beta|Added the **doesNotExist** member to the [win32LobAppFileSystemDetectionType](/graph/api/resources/intune-apps-win32lobappfilesystemdetectiontype?view=graph-rest-beta)<br/> enum type|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[deviceManagementAbstractComplexSettingDefinition](/graph/api/resources/intune-deviceintent-devicemanagementabstractcomplexsettingdefinition?view=graph-rest-beta)<br/>[deviceManagementAbstractComplexSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance?view=graph-rest-beta)<br/>[deviceManagementBooleanSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementbooleansettinginstance?view=graph-rest-beta)<br/>[deviceManagementCollectionSettingDefinition](/graph/api/resources/intune-deviceintent-devicemanagementcollectionsettingdefinition?view=graph-rest-beta)<br/>[deviceManagementCollectionSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementcollectionsettinginstance?view=graph-rest-beta)<br/>[deviceManagementComplexSettingDefinition](/graph/api/resources/intune-deviceintent-devicemanagementcomplexsettingdefinition?view=graph-rest-beta)<br/>[deviceManagementComplexSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementcomplexsettinginstance?view=graph-rest-beta)<br/>[deviceManagementIntegerSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementintegersettinginstance?view=graph-rest-beta)<br/>[deviceManagementIntent](/graph/api/resources/intune-deviceintent-devicemanagementintent?view=graph-rest-beta)<br/>[deviceManagementIntentAssignment](/graph/api/resources/intune-deviceintent-devicemanagementintentassignment?view=graph-rest-beta)<br/>[deviceManagementIntentDeviceSettingStateSummary](/graph/api/resources/intune-deviceintent-devicemanagementintentdevicesettingstatesummary?view=graph-rest-beta)<br/>[deviceManagementIntentDeviceState](/graph/api/resources/intune-deviceintent-devicemanagementintentdevicestate?view=graph-rest-beta)<br/>[deviceManagementIntentDeviceStateSummary](/graph/api/resources/intune-deviceintent-devicemanagementintentdevicestatesummary?view=graph-rest-beta)<br/>[deviceManagementIntentSettingCategory](/graph/api/resources/intune-deviceintent-devicemanagementintentsettingcategory?view=graph-rest-beta)<br/>[deviceManagementIntentUserState](/graph/api/resources/intune-deviceintent-devicemanagementintentuserstate?view=graph-rest-beta)<br/>[deviceManagementIntentUserStateSummary](/graph/api/resources/intune-deviceintent-devicemanagementintentuserstatesummary?view=graph-rest-beta)<br/>[deviceManagementSettingCategory](/graph/api/resources/intune-deviceintent-devicemanagementsettingcategory?view=graph-rest-beta)<br/>[deviceManagementSettingDefinition](/graph/api/resources/intune-deviceintent-devicemanagementsettingdefinition?view=graph-rest-beta)<br/>[deviceManagementSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementsettinginstance?view=graph-rest-beta)<br/>[deviceManagementStringSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementstringsettinginstance?view=graph-rest-beta)<br/>[deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta)<br/>[deviceManagementTemplateSettingCategory](/graph/api/resources/intune-deviceintent-devicemanagementtemplatesettingcategory?view=graph-rest-beta)<br/>[securityBaselineDeviceState](/graph/api/resources/intune-deviceintent-securitybaselinedevicestate?view=graph-rest-beta)<br/>[securityBaselineSettingState](/graph/api/resources/intune-deviceintent-securitybaselinesettingstate?view=graph-rest-beta)<br/>[securityBaselineState](/graph/api/resources/intune-deviceintent-securitybaselinestate?view=graph-rest-beta)<br/>[securityBaselineStateSummary](/graph/api/resources/intune-deviceintent-securitybaselinestatesummary?view=graph-rest-beta)<br/>[securityBaselineTemplate](/graph/api/resources/intune-deviceintent-securitybaselinetemplate?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceManagementConstraint](/graph/api/resources/intune-deviceintent-devicemanagementconstraint?view=graph-rest-beta)<br/>[deviceManagementEnumConstraint](/graph/api/resources/intune-deviceintent-devicemanagementenumconstraint?view=graph-rest-beta)<br/>[deviceManagementEnumValue](/graph/api/resources/intune-deviceintent-devicemanagementenumvalue?view=graph-rest-beta)<br/>[deviceManagementSettingBooleanConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingbooleanconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingDependency](/graph/api/resources/intune-deviceintent-devicemanagementsettingdependency?view=graph-rest-beta)<br/>[deviceManagementSettingIntegerConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingintegerconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingRegexConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingregexconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingStringLengthConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingstringlengthconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingXmlConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingxmlconstraint?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[deviceManangementIntentValueType](/graph/api/resources/intune-deviceintent-devicemanangementintentvaluetype?view=graph-rest-beta)<br/>[securityBaselineComplianceState](/graph/api/resources/intune-deviceintent-securitybaselinecompliancestate?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [createInstance](/graph/api/intune-deviceintent-devicemanagementtemplate-createinstance?view=graph-rest-beta) action on [deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta) |
|Addition|beta|Added the [updateSettings](/graph/api/intune-deviceintent-devicemanagementintent-updatesettings?view=graph-rest-beta) action on [deviceManagementIntent](/graph/api/resources/intune-deviceintent-devicemanagementintent?view=graph-rest-beta) |
|Addition|beta|Added the [assign](/graph/api/intune-deviceintent-devicemanagementintent-assign?view=graph-rest-beta) action on [deviceManagementIntent](/graph/api/resources/intune-deviceintent-devicemanagementintent?view=graph-rest-beta) |
|Addition|beta|Added the **intents**, **settingDefinitions**, **templates** and **categories** navigation properties to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **securityBaselineStates** navigation property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|

### Messages

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | beta          | Added support for a new [Mail.ReadBasic (Preview) permission](permissions-reference.md#mail-permissions) for [List Messages](/graph/api/user-list-messages?view=graph-rest-beta) and [Get Message](/graph/api/message-get?view=graph-rest-beta).            |

### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |v1.0 | Added support for application permissions to the [installedApps](/graph/api/resources/teamsappinstallation?view=graph-rest-1.0) resource.|
|Addition |v1.0| Added the **email** and **webUrl** properties to [channel](/graph/api/resources/channel?view=graph-rest-1.0).|

## March 2019

### Risky users API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta| Introduced [Confirm riskyUsers compromised](/graph/api/resources/riskyusers-confirmcompromised?view=graph-rest-beta) method, which allows admins to confirm users as compromised in Azure AD Identity Protection. |
|Addition |beta| Introduced [Dismiss riskyUsers](/graph/api/resources/riskyusers-dismiss?view=graph-rest-beta) method, which allows admins to dismiss users marked as risky in Azure AD Identity Protection. |
|Addition |beta| Introduced **isProcessing** property to the [riskyUsers](/graph/api/resources/riskyuser?view=graph-rest-beta) resource. |

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Add the **passwordNotificationWindowInDays** and **passwordValidityPeriodInDays** properties on the [domain](/graph/api/resources/domain?view=graph-rest-1.0) resource.|
| Addition | beta and v1.0 | Add the **complianceExpirationDateTime**, **profileType** and **systemLabels** properties on the [device](/graph/api/resources/device?view=graph-rest-1.0) resource.|
| Addition | beta and v1.0 | Add the **isResourceAccount** property on the [user](/graph/api/resources/user?view=graph-rest-1.0) resource.|

### Dynamics 365 Business Central API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added financials APIs for Dynamics 365 Business Central. For details, see the [Financials API reference](/graph/api/resources/dynamics-graph-reference?view=graph-rest-v1.0).|

### Education APIs
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Add the new [educationCategory](/graph/api/resources/educationCategory?view=graph-rest-beta) resource.|
| Addition | beta | Add APIs to manage [educationCategory](/graph/api/resources/educationCategory?view=graph-rest-beta) resources on [educationClass](/graph/api/resources/educationClass?view=graph-rest-beta) and [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta).|
| Addition | beta | Add the new [educationFormResource](/graph/api/resources/educationFormResource?view=graph-rest-beta) resource.|
| Addition | beta | Add the **recipients** property on the [educationAssignmentIndividualRecipient](/graph/api/resources/educationAssignmentIndividualRecipient?view=graph-rest-beta) resource.|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[windowsHealthMonitoringConfiguration](/graph/api/resources/intune-deviceconfig-windowshealthmonitoringconfiguration?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[windowsFirewallRule](/graph/api/resources/intune-deviceconfig-windowsfirewallrule?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidManagedAppSafetyNetAppsVerificationType](/graph/api/resources/intune-mam-androidmanagedappsafetynetappsverificationtype?view=graph-rest-beta)<br/>[androidManagedAppSafetyNetDeviceAttestationType](/graph/api/resources/intune-mam-androidmanagedappsafetynetdeviceattestationtype?view=graph-rest-beta)<br/>[windowsAutopilotDeviceType](/graph/api/resources/intune-enrollment-windowsautopilotdevicetype?view=graph-rest-beta)<br/>[windowsFirewallRuleInterfaceTypes](/graph/api/resources/intune-deviceconfig-windowsfirewallruleinterfacetypes?view=graph-rest-beta)<br/>[windowsFirewallRuleNetworkProfileTypes](/graph/api/resources/intune-deviceconfig-windowsfirewallrulenetworkprofiletypes?view=graph-rest-beta)<br/>[windowsFirewallRuleTrafficDirectionType](/graph/api/resources/intune-deviceconfig-windowsfirewallruletrafficdirectiontype?view=graph-rest-beta)<br/>[windowsHealthMonitoringScope](/graph/api/resources/intune-deviceconfig-windowshealthmonitoringscope?view=graph-rest-beta)<br/>[windowsUpdateNotificationDisplayOption](/graph/api/resources/intune-deviceconfig-windowsupdatenotificationdisplayoption?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [searchExistingIdentities](o:searchExistingIdentities:Collection(microsoft.graph.importedDeviceIdentity)) action on [importedDeviceIdentity](/graph/api/resources/intune-enrollment-importeddeviceidentity?view=graph-rest-beta) collection |
|Addition|beta|Added the [assignResourceAccountToDevice](/graph/api/intune-enrollment-windowsautopilotdeviceidentity-assignresourceaccounttodevice?view=graph-rest-beta) action on [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) |
|Addition|beta|Added the [unassignResourceAccountFromDevice](/graph/api/intune-enrollment-windowsautopilotdeviceidentity-unassignresourceaccountfromdevice?view=graph-rest-beta) action on [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) |
|Deletion|beta|Removed the following enum types:<br/>**defenderScheduleScanDay**<br/>|
|Addition|beta|Added the **requiredAndroidSafetyNetDeviceAttestationType**, **appActionIfAndroidSafetyNetDeviceAttestationFailed**, **requiredAndroidSafetyNetAppsVerificationType** and **appActionIfAndroidSafetyNetAppsVerificationFailed** properties to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **supportsOemConfig** property to the [androidManagedStoreApp](/graph/api/resources/intune-apps-androidmanagedstoreapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **appSupportsOemConfig** property to the [androidManagedStoreAppConfiguration](/graph/api/resources/intune-apps-androidmanagedstoreappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **requiredAndroidSafetyNetDeviceAttestationType**, **appActionIfAndroidSafetyNetDeviceAttestationFailed**, **requiredAndroidSafetyNetAppsVerificationType** and **appActionIfAndroidSafetyNetAppsVerificationFailed** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **iCloudStorageDisabled** and **chooseYourLockScreenDisabled** properties to the [depMacOSEnrollmentProfile](/graph/api/resources/intune-enrollment-depmacosenrollmentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **allowedOutboundClipboardSharingExceptionLength** property to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **fastFirstSignIn** property to the [sharedPCConfiguration](/graph/api/resources/intune-deviceconfig-sharedpcconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **tpmRequired** property to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **firewallRules** property to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **authenticationWebSignIn**, **privacyDisableLaunchExperience** and **appManagementPackageFamilyNamesToLaunchAfterLogOn** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **defenderScheduleScanDay** property from the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceType** property to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **resourceName**, **skuNumber**, **systemFamily**, **azureActiveDirectoryDeviceId** and **managedDeviceId** properties to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **edgeKioskResetAfterIdleTimeInMinutes** property from the [windowsKioskConfiguration](/graph/api/resources/intune-deviceconfig-windowskioskconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **userWindowsUpdateScanAccess** and **updateNotificationLevel** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **teams** property to the [excludedApps](/graph/api/resources/intune-apps-excludedapps?view=graph-rest-beta) complex type|
|Addition|beta|Added the **autoLaunch** property to the [windowsKioskAppBase](/graph/api/resources/intune-deviceconfig-windowskioskappbase?view=graph-rest-beta) complex type|
|Addition|beta|Added the **allowAccessToDownloadsFolder** property to the [windowsKioskMultipleApps](/graph/api/resources/intune-deviceconfig-windowskioskmultipleapps?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lowSecurityBiometric** member to the [androidDeviceOwnerRequiredPasswordType](/graph/api/resources/intune-deviceconfig-androiddeviceownerrequiredpasswordtype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **androidBootloaderUnlocked** and **androidFactoryRomModified** members to the [managedAppFlaggedReason](/graph/api/resources/intune-mam-managedappflaggedreason?view=graph-rest-beta) enum type|

### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Removal |beta| Removed the **deleted** property from [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta). Use **deletedDateTime** instead. |
| Addition | beta | Added the [schedule](/api-reference/beta/resources/schedule.md), [schedulingGroup](/api-reference/beta/resources/schedulinggroup.md), [shift](/api-reference/beta/resources/shift.md), [timeOffReason](/api-reference/beta/resources/timeoffreason.md) and [timeOff](/api-reference/beta/resources/timeoff.md) resources and associated methods. |

### OneDrive and SharePoint APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the **subscriptions** navigation property to the [driveItem](/graph/api/resources/driveItem?view=graph-rest-1.0) entity |
| Addition        | Beta        | Added the **expirationDateTime** property to the [driveItem_invite](/graph/api/resources/driveItem_invite?view=graph-rest-beta) DateTimeOffset type. |
| Addition        | Beta        | Added the **password** property to the [driveItem_invite](/graph/api/resources/driveItem_invite?view=graph-rest-beta) string type. |

### Outlook calendar
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition | v1.0 | Added the [getSchedule](/graph/api/calendar-getschedule?view=graph-rest-1.0) action, and the [freeBusyError](/graph/api/resources/freebusyerror?view=graph-rest-1.0), [scheduleInformation](/graph/api/resources/scheduleinformation?view=graph-rest-1.0), and [scheduleItem](/graph/api/resources/scheduleitem?view=graph-rest-1.0) complex types to support [getting the free/busy, availability information for users, distribution lists, and resources for a given period of time](outlook-get-free-busy-schedule.md). |
|Change | Beta | Rolled back the type changes related to [findMeetingTimes](/graph/api/user-findmeetingtimes?view=graph-rest-beta) documented in [February 2019](#february-2019). The specific changes are listed in the following rows.|
|Change | Beta | Changed the data type of the following parameters of [findMeetingTimes](/graph/api/user-findmeetingtimes?view=graph-rest-beta): <br>**attendees**: from **attendeeDataModel** back to [attendeeBase](/graph/api/resources/attendeebase?view=graph-rest-beta) <br>**locationConstraint**: from **locationConstraints** back to [locationConstraint](/graph/api/resources/locationconstraint?view=graph-rest-beta) <br> **timeConstraint**: from **findMeetingTimesTimeConstraints** back to [timeConstraint](/graph/api/resources/timeconstraint?view=graph-rest-beta)|
|Change | Beta | Changed the return type of **findMeetingTimes** from **findMeetingTimesResponse** back to [meetingTimeSuggestionsResult](/graph/api/resources/meetingTimeSuggestionsResult?view=graph-rest-beta) |
|Change | Beta | Changed the base type of [locationConstraintItem](/graph/api/resources/locationconstraintitem?view=graph-rest-beta) from **locationDataModel** back to [location](/graph/api/resources/location?view=graph-rest-beta) |
|Change | Beta | Changed the data types of the following properties of [meetingTimeSuggestion](/graph/api/resources/meetingtimesuggestion?view=graph-rest-beta): <br> **attendeeAvailability**: from collection of **attendeeAvailabilityDataModel** back to collection of [attendeeAvailability](/graph/api/resources/attendeeavailability?view=graph-rest-beta) <br> **locations**: from collection of **locationDataModel** back to collection of [location](/graph/api/resources/location?view=graph-rest-beta) <br> **meetingTimeSlot**: from **meetingTimeSlotDataModel** back to [timeSlot](/graph/api/resources/timeslot?view=graph-rest-beta) <br> **organizerAvailability**: from **availabilityStatus** back to **freeBusyStatus** |
|Deletion | Beta | Complex types: <br> **attendeeAvailabilityDataModel** <br> **attendeeDataModel** <br> **findMeetingTimesResponse** <br> **findMeetingTimesTimeConstraints** <br> **locationConstraints** <br> **meetingTimeSlotDataModel** <br> **searchWindowTimeSlot**|
|Deletion | Beta | Enumerations: <br> **addressType** <br> **availabilityStatus** |
|Addition | Beta | Restored the following complex types: <br> [attendeeAvailability](/graph/api/resources/attendeeavailability?view=graph-rest-beta) <br> [locationConstraint](/graph/api/resources/locationconstraint?view=graph-rest-beta) <br> [meetingTimeSuggestionsResult](/graph/api/resources/meetingtimesuggestionsresult?view=graph-rest-beta) <br>[timeConstraint](/graph/api/resources/timeconstraint?view=graph-rest-beta) |


## February 2019

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added new resource type [directoryObjectPartnerReference](/graph/api/resources/directoryobjectpartnerreference?view=graph-rest-1.0). |
| Addition | beta and v1.0 | Add the **createdDateTime** property on [organization](/graph/api/resources/organization?view=graph-rest-1.0). |
| Change | beta and v1.0 | Updated the **companyName** property on the [user](/graph/api/resources/user?view=graph-rest-1.0) resource to be writeable. |
| Change | beta | The [targetResource](/graph/api/resources/targetresource?view=graph-rest-beta) type now includes properties previously available to derived types that are no longer supported. |
| Deletion | beta | The following derived types are no longer supported and have been removed: **targetResourceDevice**, **targetResourceDirectory**, **targetResourceGroup**, **targetResourcePolicy**, **targetResourceRole**, **targetResourceServicePrincipal**, **targetResourceUser**, and **targetResourceOther**. |
| Addition |beta | Add the **passwordNotificationWindowInDays** and **passwordValidityPeriodInDays** properties on the [domain](/graph/api/resources/domain?view=graph-rest-beta) resource.|

### Dynamics 365 Business Central API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added financials APIs for Dynamics 365 Business Central. For details, see the [Financials API reference](/graph/api/resources/dynamics-graph-reference?view=graph-rest-v1.0).|

### Education APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta|Introduced new relatedContacts property on [educationUser](/graph/api/resources/educationUser?view=graph-rest-beta).|
|Addition |v1.0|Introduced new relatedContacts property on [educationUser](/graph/api/resources/educationUser?view=graph-rest-v1.0).|

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidOmaCpConfiguration](/graph/api/resources/intune-deviceconfig-androidomacpconfiguration?view=graph-rest-beta)<br/>[managedDeviceEncryptionState](/graph/api/resources/intune-deviceconfig-manageddeviceencryptionstate?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deliveryOptimizationBandwidth](/graph/api/resources/intune-deviceconfig-deliveryoptimizationbandwidth?view=graph-rest-beta)<br/>[deliveryOptimizationBandwidthAbsolute](/graph/api/resources/intune-deviceconfig-deliveryoptimizationbandwidthabsolute?view=graph-rest-beta)<br/>[deliveryOptimizationBandwidthBusinessHoursLimit](/graph/api/resources/intune-deviceconfig-deliveryoptimizationbandwidthbusinesshourslimit?view=graph-rest-beta)<br/>[deliveryOptimizationBandwidthHoursWithPercentage](/graph/api/resources/intune-deviceconfig-deliveryoptimizationbandwidthhourswithpercentage?view=graph-rest-beta)<br/>[deliveryOptimizationBandwidthPercentage](/graph/api/resources/intune-deviceconfig-deliveryoptimizationbandwidthpercentage?view=graph-rest-beta)<br/>[deliveryOptimizationGroupIdCustom](/graph/api/resources/intune-deviceconfig-deliveryoptimizationgroupidcustom?view=graph-rest-beta)<br/>[deliveryOptimizationGroupIdSource](/graph/api/resources/intune-deviceconfig-deliveryoptimizationgroupidsource?view=graph-rest-beta)<br/>[deliveryOptimizationGroupIdSourceOptions](/graph/api/resources/intune-deviceconfig-deliveryoptimizationgroupidsourceoptions?view=graph-rest-beta)<br/>[deliveryOptimizationMaxCacheSize](/graph/api/resources/intune-deviceconfig-deliveryoptimizationmaxcachesize?view=graph-rest-beta)<br/>[deliveryOptimizationMaxCacheSizeAbsolute](/graph/api/resources/intune-deviceconfig-deliveryoptimizationmaxcachesizeabsolute?view=graph-rest-beta)<br/>[deliveryOptimizationMaxCacheSizePercentage](/graph/api/resources/intune-deviceconfig-deliveryoptimizationmaxcachesizepercentage?view=graph-rest-beta)<br/>[encryptionReportPolicyDetails](/graph/api/resources/intune-deviceconfig-encryptionreportpolicydetails?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[advancedBitLockerState](/graph/api/resources/intune-deviceconfig-advancedbitlockerstate?view=graph-rest-beta)<br/>[deliveryOptimizationGroupIdOptionsType](/graph/api/resources/intune-deviceconfig-deliveryoptimizationgroupidoptionstype?view=graph-rest-beta)<br/>[deliveryOptimizationRestrictPeerSelectionByOptions](/graph/api/resources/intune-deviceconfig-deliveryoptimizationrestrictpeerselectionbyoptions?view=graph-rest-beta)<br/>[deviceTypes](/graph/api/resources/intune-deviceconfig-devicetypes?view=graph-rest-beta)<br/>[edgeKioskModeRestrictionType](/graph/api/resources/intune-deviceconfig-edgekioskmoderestrictiontype?view=graph-rest-beta)<br/>[encryptionReadinessState](/graph/api/resources/intune-deviceconfig-encryptionreadinessstate?view=graph-rest-beta)<br/>[encryptionState](/graph/api/resources/intune-deviceconfig-encryptionstate?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **roleScopeTagIds** property to the [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) entity|
|Addition|beta|Added the **autoFillForceAuthentication**, **cellularBlockPlanModification**, **classroomForceAutomaticallyJoinClasses**, **classroomForceUnpromptedAppAndDeviceLock**, **esimBlockModification**, **proximityBlockSetupToNewDevice**, **softwareUpdatesEnforcedDelayInDays** and **softwareUpdatesForceDelayed** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **softwareUpdatesEnforcedDelayInDays**, **softwareUpdatesForceDelayed** and **contentCachingBlocked** properties to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **licensingType** property to the [microsoftStoreForBusinessApp](/graph/api/resources/intune-apps-microsoftstoreforbusinessapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **defenderSecurityCenterDisableClearTpmUI**, **defenderSecurityCenterDisableNotificationAreaUI**, **defenderSecurityCenterDisableVulnerableTpmFirmwareUpdateUI**, **defenderAdobeReaderLaunchChildProcess** and **defenderOfficeCommunicationAppsLaunchChildProcess** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **edgeKioskModeRestriction**, **edgeKioskResetAfterIdleTimeInMinutes**, **defenderScheduleScanEnableLowCpuPriority**, **defenderDisableCatchupQuickScan**, **defenderDisableCatchupFullScan** and **edgeBlockSearchEngineCustomization** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **enableWhiteGlove** property to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **restrictPeerSelectionBy**, **groupIdSource**, **bandwidthMode**, **backgroundDownloadFromHttpDelayInSeconds**, **foregroundDownloadFromHttpDelayInSeconds**, **minimumRamAllowedToPeerInGigabytes**, **minimumDiskSizeAllowedToPeerInGigabytes**, **minimumFileSizeToCacheInMegabytes**, **minimumBatteryPercentageAllowedToUpload**, **modifyCacheLocation**, **maximumCacheAgeInDays**, **maximumCacheSize** and **vpnPeerCaching** properties to the [windowsDeliveryOptimizationConfiguration](/graph/api/resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **lastCheckInDateTime** property to the [windowsInformationProtectionWipeAction](/graph/api/resources/intune-mam-windowsinformationprotectionwipeaction?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceEncryptionStates** navigation property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **endpointProtection** and **officeApps** properties to the [configurationManagerClientEnabledFeatures](/graph/api/resources/intune-devices-configurationmanagerclientenabledfeatures?view=graph-rest-beta) complex type|
|Addition|beta|Added the **productName** and **publisher** properties to the [win32LobAppMsiInformation](/graph/api/resources/intune-apps-win32lobappmsiinformation?view=graph-rest-beta) complex type|
|Addition|beta|Added the **warn** member to the [managedAppRemediationAction](/graph/api/resources/intune-mam-managedappremediationaction?view=graph-rest-beta) enum type|

### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta and v1.0| Added the **internalId** property to the [team](/graph/api/resources/team?view=graph-rest-v1.0) resource.|
|Addition |beta and v1.0| Added support for configuring Word, Excel, PowerPoint, PDF, and document library [tabs](teams-configuring-builtin-tabs.md). |
|Addition |beta| Introduced the [Send a message to a channel](/graph/api/channel-post-chatmessage?view=graph-rest-beta) API. |
|Addition |beta| Introduced the [Reply to a message in a channel](/graph/api/channel-post-messagereply?view=graph-rest-beta) API. |
|Deletion |beta| Removed the POST /teams/{id}/channels/{id}/chatThreads API. Use [Create a message in a channel](/graph/api/channel-post-chatmessage?view=graph-rest-beta) instead. |
|Addition |beta | Added support for application permissions to the [installedApps](/graph/api/resources/teamsappinstallation?view=graph-rest-beta) resource.|

### OneDrive and SharePoint APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **expirationDateTime** property to the [driveItem_invite](/graph/api/resources/driveItem_invite?view=graph-rest-beta) DateTimeOffset type. |
| Addition        | Beta        | Added the **password** property to the [driveItem_invite](/graph/api/resources/driveItem_invite?view=graph-rest-beta) string type. |

### OneNote

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | beta and v1.0 | Added the [getNotebookFromWebUrl](/graph/api/notebook-getnotebookfromweburl?view=graph-rest-1.0) method. |

### Outlook calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Change | Beta | Changed the data type of the following parameters of [findMeetingTimes](/graph/api/user-findmeetingtimes?view=graph-rest-beta): <br>**attendees**: from **attendeeBase** to [attendeeDataModel](/graph/api/resources/attendeedatamodel?view=graph-rest-beta) <br>**locationConstraint**: from **locationConstraint** to [locationConstraints](/graph/api/resources/locationconstraints?view=graph-rest-beta) <br> **timeConstraint**: from **timeConstraint** to [findMeetingTimesTimeConstraints](/graph/api/resources/findmeetingtimestimeconstraints?view=graph-rest-beta)|
|Change | Beta | Changed the return type of **findMeetingTimes** from **meetingTimeSuggestionsResult** to [findMeetingTimesResponse](/graph/api/resources/findmeetingtimesresponse?view=graph-rest-beta) |
|Change | Beta | Changed the response payload of **findMeetingTimes** to exclude the **type** of each attendee that identifies whether the attendee is required, optional, or is a resource |
|Change | Beta | Changed the base type of [locationConstraintItem](/graph/api/resources/locationconstraintitem?view=graph-rest-beta) from [location](/graph/api/resources/location?view=graph-rest-beta) to [locationDataModel](/graph/api/resources/locationdatamodel?view=graph-rest-beta) |
|Change | Beta | Changed the data types of the following properties of [meetingTimeSuggestion](/graph/api/resources/meetingtimesuggestion?view=graph-rest-beta): <br> **attendeeAvailability**: from collection of **attendeeAvailability** to collection of [attendeeAvailabilityDataModel](/graph/api/resources/attendeeavailabilitydatamodel?view=graph-rest-beta) <br> **locations**: from collection of [location](/graph/api/resources/location?view=graph-rest-beta) to collection of [locationDataModel](/graph/api/resources/locationdatamodel?view=graph-rest-beta) <br> **meetingTimeSlot**: from [timeSlot](/graph/api/resources/timeslot?view=graph-rest-beta) to [meetingTimeSlotDataModel](/graph/api/resources/meetingtimeslotdatamodel?view=graph-rest-beta) <br> **organizerAvailability**: from **freeBusyStatus** to **availabilityStatus** |
|Addition | Beta | New complex types: <br> [attendeeAvailabilityDataModel](/graph/api/resources/attendeeavailabilitydatamodel?view=graph-rest-beta) <br> [attendeeDataModel](/graph/api/resources/attendeedatamodel?view=graph-rest-beta) <br> [findMeetingTimesResponse](/graph/api/resources/findmeetingtimesresponse?view=graph-rest-beta) <br> [findMeetingTimesTimeConstraints](/graph/api/resources/findmeetingtimestimeconstraints?view=graph-rest-beta) <br> [locationConstraints](/graph/api/resources/locationconstraints?view=graph-rest-beta) <br> [locationDataModel](/graph/api/resources/locationdatamodel?view=graph-rest-beta) <br> [meetingTimeSlotDataModel](/graph/api/resources/meetingtimeslotdatamodel?view=graph-rest-beta) <br> [postalAddress](/graph/api/resources/postaladdress?view=graph-rest-beta) <br> [searchWindowTimeSlot](/graph/api/resources/searchwindowtimeslot?view=graph-rest-beta)|
|Addition | Beta | New enumerations: <br> **addressType** <br> **availabilityStatus** |
|Addition | Beta | Added the **order** property to [meetingTimeSuggestion](/graph/api/resources/meetingtimesuggestion?view=graph-rest-beta) |
|Deletion | Beta | Removed the following complex types: <br> **attendeeAvailability** <br> **locationConstraint** <br> **meetingTimeSuggestionsResult** <br>**timeConstraint** |

### Security APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added the threat intelligence (TI) indicator APIs to the [security API](/graph/api/resources/security-api-overview?view=graph-rest-beta), including the following resources and operations:<br/>[tiindicator](/graph/api/resources/tiindicator?view=graph-rest-beta) (and related entities)<br/> [Get tiIndicator](/graph/api/tiindicator-get?view=graph-rest-beta)<br/>[Create tiIndicator](/graph/api/tiindicators-post?view=graph-rest-beta)<br/>[List tiIndicators](/graph/api/tiindicators-list?view=graph-rest-beta)<br/>[Update tiIndicator](/graph/api/tiindicator-update?view=graph-rest-beta) <br/>[Delete tiIndicator](/graph/api/tiindicator-delete?view=graph-rest-beta) <br/>[deleteTiIndicators](/graph/api/tiindicator-deletetiindicators?view=graph-rest-beta) <br/>[deleteTiIndicatorsByExternalId](/graph/api/tiindicator-deletetiindicatorsbyexternalid?view=graph-rest-beta) <br/>[submitTiIndicators](/graph/api/tiindicator-submittiindicators?view=graph-rest-beta) <br/>[updateTiIndicators](/graph/api/tiindicator-updatetiindicators?view=graph-rest-beta)|
| Addition        | Beta       | Added the security action APIs to the [security API](/graph/api/resources/security-api-overview?view=graph-rest-beta), including the following resources and operations:<br/>[securityAction](/graph/api/resources/securityaction?view=graph-rest-beta) (and related entities)<br/> [Get securityAction](/graph/api/securityaction-get?view=graph-rest-beta)<br/>[Create securityAction](/graph/api/securityactions-post?view=graph-rest-beta)<br/>[List securityAction](/graph/api/securityactions-list?view=graph-rest-beta)<br/>[Cancel securityAction](/graph/api/securityaction-cancelsecurityaction?view=graph-rest-beta)
| Addition        | Beta        | Introduced new complex type [historyStates](/graph/api/resources/alerthistorystate?view=graph-rest-beta) collection to alert. </br>Added [updateAlerts](/graph/api/alert-updatealerts?view=graph-rest-beta) functionality to update multiple alerts in one request. |

## January 2019

### Azure AD APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |v1.0|Introduced new resource type [identityProvider](/graph/api/resources/identityprovider?view=graph-rest-v1.0) entity and the [create](/graph/api/identityprovider-post-identityproviders?view=graph-rest-v1.0), [list](/graph/api/identityprovider-list?view=graph-rest-v1.0), [get](/graph/api/identityprovider-get?view=graph-rest-v1.0), [update](/graph/api/identityprovider-update?view=graph-rest-v1.0), and [delete](/graph/api/identityprovider-delete?view=graph-rest-v1.0) operations.|

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added new method transitiveMembers on [groups](/graph/api/group-list-transitivemembers?view=graph-rest-1.0). This method returns a flat list of members including nested members.|
| Addition | v1.0 | Added new method transitiveMemberOf on [users](/graph/api/user-list-transitivemembersof?view=graph-rest-1.0), [groups](/graph/api/group-list-transitivemembersof?view=graph-rest-beta) and [devices](/graph/api/device-list-transitivemembersof?view=graph-rest-1.0).|
| Addition | v1.0 | Added new properties to [users](/graph/api/resources/user?view=graph-rest-1.0): **employeeId**, **faxNumber**, **onPremisesDistinguishedName**, **showInAddressList** and **otherMails**.|
| Addition | v1.0 | Added the **forceChangePasswordNextSignInWithMfa** property to the [passwordProfile](/graph/api/resources/passwordprofile?view=graph-rest-v1.0) complex type.|
| Addition | v1.0 | Added the **licenseAssignmentStates** property to the [User](/graph/api/resources/user?view=graph-rest-1.0) entity for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|
| Addition | v1.0 | Added the **licenseAssignmentState** resource for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).| 
| Addition | v1.0 | Added the **assignedLicenses**, **licenseProcessingState** and **hasMembersWithLicenseErrors** properties and **membersWithLicenseErrors** relationship to [Group](/graph/api/resources/group?view=graph-rest-1.0) entity for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|
| Addition | beta | Added the **createdDateTime** property to the [user](/graph/api/resources/user?view=graph-rest-beta) resource.|

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[appleVppTokenTroubleshootingEvent](/graph/api/resources/intune-troubleshooting-applevpptokentroubleshootingevent?view=graph-rest-beta)<br/>[appLogCollectionRequest](/graph/api/resources/intune-devices-applogcollectionrequest?view=graph-rest-beta)<br/>[windowsUpdateState](/graph/api/resources/intune-deviceconfig-windowsupdatestate?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[appLogCollectionDownloadDetails](/graph/api/resources/intune-devices-applogcollectiondownloaddetails?view=graph-rest-beta)<br/>**deviceManagementTroubleshootingErrorDetails**<br/>[deviceManagementTroubleshootingErrorResource](/graph/api/resources/intune-troubleshooting-devicemanagementtroubleshootingerrorresource?view=graph-rest-beta)<br/>[win32LobAppAssignmentSettings](/graph/api/resources/intune-apps-win32lobappassignmentsettings?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[appLogDecryptionAlgorithm](/graph/api/resources/intune-devices-applogdecryptionalgorithm?view=graph-rest-beta)<br/>[appLogUploadState](/graph/api/resources/intune-devices-apploguploadstate?view=graph-rest-beta)<br/>[win32LobAppNotification](/graph/api/resources/intune-apps-win32lobappnotification?view=graph-rest-beta)<br/>[windowsUpdateStatus](/graph/api/resources/intune-deviceconfig-windowsupdatestatus?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **createDownloadUrl** action on [appLogCollectionRequest](/graph/api/resources/intune-devices-applogcollectionrequest?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**deviceManagementApplicabilityRuleOsEdition**<br/>**deviceManagementApplicabilityRuleOsVersion**<br/>|
|Addition|beta|Added the **passwordSignInFailureCountBeforeFactoryReset** property to the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **passwordSignInFailureCountBeforeFactoryReset** property to the [androidForWorkCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidforworkcompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **passwordSignInFailureCountBeforeFactoryReset** property to the [androidWorkProfileCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidworkprofilecompliancepolicy?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **defaultProfileDisplayName** property from the [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) entity|
|Addition|beta|Added the **runAs32Bit** property to the [deviceManagementScript](/graph/api/resources/intune-devices-devicemanagementscript?view=graph-rest-beta) entity|
|Addition|beta|Added the **troubleshootingErrorDetails**, **eventName** and **additionalInformation** properties to the [deviceManagementTroubleshootingEvent](/graph/api/resources/intune-troubleshooting-devicemanagementtroubleshootingevent?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [macOSCertificateProfileBase](/graph/api/resources/intune-deviceconfig-macoscertificateprofilebase?view=graph-rest-beta) entity:<br/>**subjectAlternativeNameType** from required to optional<br/>|
|Addition|beta|Added the **certificateStore** and **customSubjectAlternativeNames** properties to the [macOSScepCertificateProfile](/graph/api/resources/intune-deviceconfig-macosscepcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **officeConfigurationXml** property to the [officeSuiteApp](/graph/api/resources/intune-apps-officesuiteapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **createdDateTime** property to the [organization](/graph/api/resources/intune-onboarding-organization?view=graph-rest-beta) entity|
|Addition|beta|Added the **bitLockerAllowStandardUserEncryption** property to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **localSecurityOptionsEnableAdministratorAccount**, **localSecurityOptionsEnableGuestAccount** and **lanManagerWorkstationEnableInsecureGuestLogons** properties from the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **useSecurityKeyForSignin** property to the [windowsIdentityProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windowsidentityprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **mobileAppTroubleshootingEvents** navigation property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **appLogCollectionRequests** navigation property to the [mobileAppTroubleshootingEvent](/graph/api/resources/intune-devices-mobileapptroubleshootingevent?view=graph-rest-beta) entity|

### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta| Added educationStandard, educationClass, educationProfessionalLearningCommunity, educationStaff, and unknownFutureValue to the [teamSpecialization](/graph/api/resources/teamspecialization?view=graph-rest-beta) enum.|

### Reports APIs

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition        | Beta  | Added the **office365Active** and **office365Inactive** properties to the [office365ServicesUserCounts](/graph/api/resources/office365ServicesUserCounts?view=graph-rest-beta) entity.|

## December 2018

### Data Policy API

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Addition |v1.0| Added new entity [dataPolicyOperation](/graph/api/resources/datapolicyoperation?view=graph-rest-1.0). This represents a submitted data policy operation for tracking purposes.
|Addition |v1.0| Added the [exportPersonalData](/graph/api/user-exportpersonaldata?view=graph-rest-1.0) action on [users](/graph/api/resources/users?view=graph-rest-1.0). This action submits a data policy operation request to export personal data stored by Microsoft for a user. |
|Addition |v1.0| Added method [dataPolicyOperations](/graph/api/datapolicyoperation-get?view=graph-rest-1.0). This retrieves properties of the dataPolicyOperation object.|

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added new property `expirationDateTime` to [groups](https://docs.microsoft.com/en-us/graph/api/group-list-transitivemembers?view=graph-rest-beta) for [group expiration](https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/groups-lifecycle).|
| Addition | beta | Added new resource type [directoryObjectPartnerReference](/graph/api/resources/directoryobjectpartnerreference?view=graph-rest-beta).|
| Addition | beta | Added the `createdDateTime` property to the [organization](/graph/api/resources/organization?view=graph-rest-beta) resource.|
| Addition | v1.0 | Added method `memberOf` to get a [devices](/graph/api/resources/device?view=graph-rest-1.0) direct [membership](/graph/api/device-list-memberOf?view=graph-rest-1.0). This method has been added for getting the list of memberships including nested memberships.|
| Change    | Beta | Restructured the [organizational contacts](/graph/api/resources/orgcontact?view=graph-rest-beta) resource. The physical address properties (`city`, `country`, `postalCode`, `streetAddress`, and `state`) and `officeLocation` are now in an `addresses` collection (of new [physicalOfficeAddress](/graph/api/resources/physicalofficeaddress?view=graph-rest-beta) resource type), and `mobilePhone`, `businessPhones` and `faxNumber` are now in a `phones` collection. `companyName` and `imAddresses` have also been added|

### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta| Introduced new resource type [teamsTemplate](/graph/api/resources/teamstemplate?view=graph-rest-beta).|
|Addition |beta| Introduced new resource type [teamSpecialization](/graph/api/resources/teamspecialization?view=graph-rest-beta).|
|Addition |beta| Added the isFavoriteByDefault, email, and webUrl properties to [channel](/graph/api/resources/channel?view=graph-rest-beta).|
|Addition |beta| Added the displayName property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the description property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the classification property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the [specialization](/graph/api/resources/teamspecialization?view=graph-rest-beta) property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the [visibility](/graph/api/resources/teamvisibilitytype?view=graph-rest-beta) property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the [template](/graph/api/resources/teamstemplate?view=graph-rest-beta) property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the owners collection to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Introduced new enum member unknownFutureValue to teamVisibilityType.|
|Addition |beta| Introduced new enum member unknownFutureValue to giphyRatingType.|
|Addition |beta| Introduced new enum member unknownFutureValue to teamsAsyncOperationType.|
|Addition |beta| Introduced new enum member unknownFutureValue to teamsAsyncOperationStatus.|
|Addition |beta| Introduced new enum member unknownFutureValue to teamsAppDistributionMethod.|
|Addition |beta| Introduced new resource [/teamsTemplates](/graph/api/resources/teamstemplate?view=graph-rest-beta).|
|Addition | v1.0 | Added admin permissions support to [team](/graph/api/resources/team?view=graph-rest-1.0), [channel](/graph/api/resources/channel?view=graph-rest-1.0), and [tab](/graph/api/resources/teamstab?view=graph-rest-1.0) operations. |

### Privileged Identity Management APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added property `registeredRoot` to the [governanceResource](/graph/api/resources/governanceresource?view=graph-rest-beta) entity.|
| Change | beta | Renamed property `onboardDateTime` of the [governanceResource](/graph/api/resources/governanceresource?view=graph-rest-beta) entity to `registeredDateTime`.|
| Addition | beta | Added new action [register resource](/graph/api/governanceresource-register?view=graph-rest-beta).|
| Removal | beta | Removed the `isPermanent` property on [governanceRoleAssignment](/graph/api/resources/governanceroleassignment?view=graph-rest-beta) entity.|
| Removal | beta | Removed the `roleAssignmentStartDateTime` property on [governanceRoleAssignmentRequest](/graph/api/resources/governanceroleassignmentrequest?view=graph-rest-beta) entity.|
| Removal | beta | Removed the `roleAssignmentEndDateTime` property on [governanceRoleAssignmentRequest](/graph/api/resources/governanceroleassignmentrequest?view=graph-rest-beta) entity.|

### Security APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Introduced new complex type [complianceInformation](/graph/api/complianceInformation/team?view=graph-rest-beta).|
| Addition        | Beta        | Introduced new complex type [certificationControl](/graph/api/certificationControl/team?view=graph-rest-beta).|

## November 2018

### Data Policy Operations API

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added new  **progress** property to [dataPolicyOperation](/graph/api/resources/dataPolicyOperation?view=graph-rest-beta). This specifies the progress of an operation.

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the [forceDelete](/graph/api/domain-forcedelete?view=graph-rest-1.0) action to [domains](/graph/api/resources/domain?view=graph-rest-1.0).|
| Addition | beta | Added new method transitiveMembers on [groups](/graph/api/group-list-transitivemembers?view=graph-rest-beta). This method returns a flat list of members including nested members.|
| Addition | beta | Added new method transitiveMemberOf on [users](/graph/api/user-list-transitivemembersof?view=graph-rest-beta), [groups](/graph/api/group-list-transitivemembersof?view=graph-rest-beta), [devices](/graph/api/device-list-transitivemembersof?view=graph-rest-beta) and [service principals](/graph/api/serviceprincipal-list-transitivemembersof?view=graph-rest-beta).|
| Addition | beta | Added method memberOf to get a devices direct [membership](/graph/api/device-list-members?view=graph-rest-beta). This method has been added for getting the list of memberships including nested memberships.|
| Addition | beta | Added new properties to [users](/graph/api/resources/user?view=graph-rest-beta): **faxNumber**, **onPremisesDistinguishedName**, and **otherMails**.|
| Addition | beta | Added the **forceChangePasswordNextSignInWithMfa** property to the [passwordProfile](/graph/api/resources/passwordprofile?view=graph-rest-beta) complex type.|
| Addition    | beta | Added the 'externalUserState' and 'externalUserStateChangeDateTime' properties to the [user](/graph/api/resources/user?view=graph-rest-beta) object.|

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
|Addition |v1.0| Introduced new action [Clone team](/graph/api/team-clone?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new action [Archive team](/graph/api/team-archive?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new action [Unarchive team](/graph/api/team-unarchive?view=graph-rest-1.0). |
|Addition         | Beta          | Added application permissions support to [clone team](/graph/api/team-clone?view=graph-rest-beta). |
|Addition |beta| Introduced [/teams/{id}/installedApps](/graph/api/resources/teamsappinstallation?view=graph-rest-beta), which will replace /teams/{id}/apps with some differences in payload. |
|Addition |beta| Introduced [/appCatalogs/teamsApps/{id}/appDefinition](/graph/api/resources/teamsappdefinition?view=graph-rest-beta), which will replace the version property on [/appCatalogs/teamsApps/{id}](/graph/api/resources/teamsapp?view=graph-rest-beta). |
|Change   |beta| Renamed the type of [/appCatalogs/teamsApps](/graph/api/resources/teamsapp?view=graph-rest-beta) from teamsCatalogApp to teamsApp. |
|Change   |beta| Renamed the type of the distributionMethod property on [/appCatalogs/teamsApps](/graph/api/resources/teamsapp?view=graph-rest-beta) from teamsCatalogAppDistributionMethod to teamsAppDistributionMethod  |
|Removal |beta| teamsCatalogAppDistributionMethod has been renamed to teamsAppDistributionMethod  |
|Addition |beta| Introduced [/teams/{id}/installedApps](/graph/api/resources/teamsappinstallation?view=graph-rest-beta), which will replace /teams/{id}/apps with some differences in payload. |
|Addition |beta| Added the displayName property to [teamsTab](/graph/api/resources/teamstab?view=graph-rest-beta) |
|Addition |beta| Added the messageId property to [teamsTab](/graph/api/resources/teamstab?view=graph-rest-beta) |
|Addition |beta| Added the teamsApp property to [teamsTab](/graph/api/resources/teamstab?view=graph-rest-beta) |
|Addition |beta| Introduced new resource type [teamsAppInstallation](/graph/api/resources/teamsappinstallation?view=graph-rest-beta).|
|Addition |beta| Introduced new resource type [teamsApp](/graph/api/resources/teamsapp?view=graph-rest-beta).|
|Addition |beta| Introduced new resource type [teamsAppDefinition](/graph/api/resources/teamsappdefinition?view=graph-rest-beta).|
|Addition |beta| Introduced new enum member hiddenMembership to teamVisibilityType.|
|Addition |beta| Introduced new enum member createTeam to teamsAsyncOperationType.|
|Addition |beta| Introduced new enum member teamsAppDistributionMethod.|
|Addition |beta| Introduced new upgrade app action under [/teams/{id}/installedApps](/graph/api/resources/teamsappinstallation?view=graph-rest-beta). |

### Reports APIs

| Change type | Version                                    | Description                              |
| :---------- | :----------------------------------------- | :--------------------------------------- |
| Addition    | Beta version in Microsoft Graph China operated by 21Vianet | Added the following APIs:<br>[getEmailActivityUserDetail](/graph/api/reportroot-getemailactivityuserdetail?view=graph-rest-beta)<br>[getEmailActivityCounts](/graph/api/reportroot-getemailactivitycounts?view=graph-rest-beta)<br>[getEmailActivityUserCounts](/graph/api/reportroot-getemailactivityusercounts?view=graph-rest-beta)<br>[getEmailAppUsageUserDetail](/graph/api/reportroot-getemailappusageuserdetail?view=graph-rest-beta)<br>[getEmailAppUsageAppsUserCounts](/graph/api/reportroot-getemailappusageappsusercounts?view=graph-rest-beta)<br>[getEmailAppUsageUserCounts](/graph/api/reportroot-getemailappusageusercounts?view=graph-rest-beta)<br>[getEmailAppUsageVersionsUserCounts](/graph/api/reportroot-getemailappusageversionsusercounts?view=graph-rest-beta)<br>[getMailboxUsageDetail](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-beta)<br>[getMailboxUsageMailboxCounts](/graph/api/reportroot-getmailboxusagemailboxcounts?view=graph-rest-beta)<br>[getMailboxUsageQuotaStatusMailboxCounts](/graph/api/reportroot-getmailboxusagequotastatusmailboxcounts?view=graph-rest-beta)<br>[getMailboxUsageStorage](/graph/api/reportroot-getmailboxusagestorage?view=graph-rest-beta)<br>[getOffice365ActivationsUserDetail](/graph/api/reportroot-getoffice365activationsuserdetail?view=graph-rest-beta)<br>[getOffice365ActivationCounts](/graph/api/reportroot-getoffice365activationcounts?view=graph-rest-beta)<br>[getOffice365ActivationsUserCounts](/graph/api/reportroot-getoffice365activationsusercounts?view=graph-rest-beta)<br>[getOffice365ActiveUserDetail](/graph/api/reportroot-getoffice365activeuserdetail?view=graph-rest-beta)<br>[getOffice365ActiveUserCounts](/graph/api/reportroot-getoffice365activeusercounts?view=graph-rest-beta)<br>[getOffice365ServicesUserCounts](/graph/api/reportroot-getoffice365servicesusercounts?view=graph-rest-beta)<br>[getOffice365GroupsActivityDetail](/graph/api/reportroot-getoffice365groupsactivitydetail?view=graph-rest-beta)<br> [getOffice365GroupsActivityCounts](/graph/api/reportroot-getoffice365groupsactivitycounts?view=graph-rest-beta)<br>[getOffice365GroupsActivityGroupCounts](/graph/api/reportroot-getoffice365groupsactivitygroupcounts?view=graph-rest-beta)<br>[getOffice365GroupsActivityStorage](/graph/api/reportroot-getoffice365groupsactivitystorage?view=graph-rest-beta)<br>[getOffice365GroupsActivityFileCounts](/graph/api/reportroot-getoffice365groupsactivityfilecounts?view=graph-rest-beta)<br>[getOneDriveActivityUserDetail](/graph/api/reportroot-getonedriveactivityuserdetail?view=graph-rest-beta)<br>[getOneDriveActivityUserCounts](/graph/api/reportroot-getonedriveactivityusercounts?view=graph-rest-beta)<br>[getOneDriveActivityFileCounts](/graph/api/reportroot-getonedriveactivityfilecounts?view=graph-rest-beta)<br>[getOneDriveUsageAccountDetail](/graph/api/reportroot-getonedriveusageaccountdetail?view=graph-rest-beta)<br>[getOneDriveUsageAccountCounts](/graph/api/reportroot-getonedriveusageaccountcounts?view=graph-rest-beta)<br>[getOneDriveUsageFileCounts](/graph/api/reportroot-getonedriveusagefilecounts?view=graph-rest-beta)<br>[getOneDriveUsageStorage](/graph/api/reportroot-getonedriveusagestorage?view=graph-rest-beta)<br>[getSharePointActivityUserDetail](/graph/api/reportroot-getsharepointactivityuserdetail?view=graph-rest-beta)<br>[getSharePointActivityFileCounts](/graph/api/reportroot-getsharepointactivityfilecounts?view=graph-rest-beta)<br>[getSharePointActivityUserCounts](/graph/api/reportroot-getsharepointactivityusercounts?view=graph-rest-beta)<br>[getSharePointActivityPages](/graph/api/reportroot-getsharepointactivitypages?view=graph-rest-beta)<br>[getSharePointSiteUsageDetail](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-beta)<br>[getSharePointSiteUsageFileCounts](/graph/api/reportroot-getsharepointsiteusagefilecounts?view=graph-rest-beta)<br>[getSharePointSiteUsageSiteCounts](/graph/api/reportroot-getsharepointsiteusagesitecounts?view=graph-rest-beta)<br>[getSharePointSiteUsageStorage](/graph/api/reportroot-getsharepointsiteusagestorage?view=graph-rest-beta)<br>[getSharePointSiteUsagePages](/graph/api/reportroot-getsharepointsiteusagepages?view=graph-rest-beta)<br>[getSkypeForBusinessActivityUserDetail](/graph/api/reportroot-getskypeforbusinessactivityuserdetail?view=graph-rest-beta)<br>[getSkypeForBusinessActivityCounts](/graph/api/reportroot-getskypeforbusinessactivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessActivityUserCounts](/graph/api/reportroot-getskypeforbusinessactivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageUserDetail](/graph/api/reportroot-getskypeforbusinessdeviceusageuserdetail?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageDistributionUserCounts](/graph/api/reportroot-getskypeforbusinessdeviceusagedistributionusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageUserCounts](/graph/api/reportroot-getskypeforbusinessdeviceusageusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityUserCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivityminutecounts?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityUserCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivityminutecounts?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityUserCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivityminutecounts?view=graph-rest-beta). |

## October 2018

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added new method transitiveMembers on [groups](/graph/api/group-list-transitivemembers?view=graph-rest-beta). This method returns a flat list of members including nested members.|
| Addition | beta | Added new method transitiveMemberOf on [users](/graph/api/user-list-transitivemembersof?view=graph-rest-beta), [groups](/graph/api/group-list-transitivemembersof?view=graph-rest-beta), [devices](/graph/api/device-list-transitivemembersof?view=graph-rest-beta) and [service principals](/graph/api/serviceprincipal-list-transitivemembersof?view=graph-rest-beta).|
| Addition | beta | Added method memberOf to get a devices direct [membership](/graph/api/device-list-members?view=graph-rest-beta). This method has been added for getting the list of memberships including nested memberships.|
| Addition | beta | Added new properties to [users](/graph/api/resources/user?view=graph-rest-beta): **faxNumber**, **onPremisesDistinguishedName**, and **otherMails**.|

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

| **Change type** | **Version** | **Description**                  |
|:------------|:--------|:-----------------------------------------|
| Addition    | Beta   | Added [delta query](delta-query-overview.md) capability for [directoryObject](/graph/api/directoryobject-delta?view=graph-rest-beta) |
| Change      | v1.0 and beta  | Alternative behavior to return changed properties only in JSON response for [users](/graph/api/user-delta?view=graph-rest-1.0) and [groups](/graph/api/group-delta?view=graph-rest-1.0). |
| Addition    | v1.0   | Added [delta](/graph/api/directoryrole-delta?view=graph-rest-1.0) function for [directoryRole](/graph/api/resources/directoryrole?view=graph-rest-1.0) to support [change tracking using delta query](delta-query-overview.md). |

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the **licenseAssignmentStates** property to the [User](/graph/api/resources/user?view=graph-rest-beta) entity for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|
| Addition | Beta | Added the **licenseAssignmentState** resource for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|
| Addition | Beta | Added the **assignedLicenses**, **licenseProcessingState**, **hasMembersWithLicenseErrors** and **membersWithLicenseErrors** properties to [Group](/graph/api/resources/group?view=graph-rest-beta) entity for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added the **tenantLockdownRequireNetworkDuringOutOfBoxExperience** property to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **v12_0** property to the [iosMinimumOperatingSystem](/graph/api/resources/intune-apps-iosminimumoperatingsystem?view=graph-rest-1.0) complex type|
|Addition|beta|Added the **lastReportAggregationDateTime** property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added new entities:<br/>[intuneBrandingProfile](/graph/api/resources/intune-wip-intunebrandingprofile?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceAndAppManagementAssignedRoleIds](/graph/api/resources/intune-rbac-deviceandappmanagementassignedroleids?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[applicationGuardEnabledOptions](/graph/api/resources/intune-deviceconfig-applicationguardenabledoptions?view=graph-rest-beta)<br/>[autoRestartNotificationDismissalMethod](/graph/api/resources/intune-deviceconfig-autorestartnotificationdismissalmethod?view=graph-rest-beta)<br/>[meteredConnectionLimitType](/graph/api/resources/intune-deviceconfig-meteredconnectionlimittype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [enableLegacyPcManagement](/graph/api/intune-deviceconfig-devicemanagement-enablelegacypcmanagement?view=graph-rest-beta) action on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the [extendFeatureUpdatesPause](/graph/api/intune-deviceconfig-windowsupdateforbusinessconfiguration-extendfeatureupdatespause?view=graph-rest-beta) action on [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) |
|Addition|beta|Added the [extendQualityUpdatesPause](/graph/api/intune-deviceconfig-windowsupdateforbusinessconfiguration-extendqualityupdatespause?view=graph-rest-beta) action on [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) |
|Addition|beta|Added the [unassignUserFromDevice](/graph/api/intune-enrollment-windowsautopilotdeviceidentity-unassignuserfromdevice?view=graph-rest-beta) action on [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) |
|Addition|beta|Added the [getAssignedRoleIdsForLoggedInUser](/graph/api/intune-rbac-devicemanagement-getassignedroleidsforloggedinuser?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the [getManagedDevicesWithAppFailures](/graph/api/intune-troubleshooting-user-getmanageddeviceswithappfailures?view=graph-rest-beta) function on [user](/graph/api/resources/intune-devices-user?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentAbandonmentSummary](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmentabandonmentsummary?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentAbandonmentDetails](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmentabandonmentdetails?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidForWorkCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androidforworkcertificateprofilebase?view=graph-rest-beta) entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidForWorkPkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkpkcscertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore**, **customSubjectAlternativeNames** and **subjectAlternativeNameType** properties to the [androidForWorkScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkscepcertificateprofile?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidWorkProfileCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androidworkprofilecertificateprofilebase?view=graph-rest-beta) entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidWorkProfilePkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilepkcscertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore**, **customSubjectAlternativeNames** and **subjectAlternativeNameType** properties to the [androidWorkProfileScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilescepcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **legacyPcManangementEnabled** property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **pinRequiredOnLaunchInsteadOfBiometric** property from the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **applicationGuardEnabledOptions** property to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **selectedMobileAppIds** property to the [windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune-onboarding-windows10enrollmentcompletionpageconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **engagedRestartDeadlineInDays**, **engagedRestartSnoozeScheduleInDays**, **engagedRestartTransitionScheduleInDays**, **autoRestartNotificationDismissal**, **scheduleRestartWarningInHours** and **scheduleImminentRestartWarningInMinutes** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **preSharedKey** and **meteredConnectionLimit** properties to the [windowsWifiConfiguration](/graph/api/resources/intune-deviceconfig-windowswificonfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **intuneBrandingProfiles** navigation property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **v6_0**, **v7_0**, **v7_1**, **v8_0**, **v8_1** and **v9_0** properties to the [androidMinimumOperatingSystem](/graph/api/resources/intune-apps-androidminimumoperatingsystem?view=graph-rest-beta) complex type|
|Addition|beta|Added the **v12_0** property to the [iosMinimumOperatingSystem](/graph/api/resources/intune-apps-iosminimumoperatingsystem?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **runAsLoggedOnUser** property from the [win32LobAppPowerShellScriptDetection](/graph/api/resources/intune-apps-win32lobapppowershellscriptdetection?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [osVersionCount](/graph/api/resources/intune-devices-osversioncount?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareCategoryCount](/graph/api/resources/intune-devices-windowsmalwarecategorycount?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareExecutionStateCount](/graph/api/resources/intune-devices-windowsmalwareexecutionstatecount?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareNameCount](/graph/api/resources/intune-devices-windowsmalwarenamecount?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareStateCount](/graph/api/resources/intune-devices-windowsmalwarestatecount?view=graph-rest-beta) complex type|

### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added application permissions support to [archive team](/graph/api/team-archive?view=graph-rest-beta) and [unarchive team](/graph/api/team-unarchive?view=graph-rest-beta) APIs.|

### Outlook contacts

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Removal         | v1.0        | This is a correction to the documentation: removed the **flag** property from the [contact](/graph/api/resources/contact?view=graph-rest-1.0) entity topic. The property was never made available in the **contact** entity.|

### Privileged Identity Management APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change | beta | Change the [privilegedapproval](/graph/api/resources/privilegedapproval?view=graph-rest-beta) entity.|
| Addition | beta | Added the [privilegedroleassignmentrequest](/graph/api/resources/privilegedroleassignmentrequest?view=graph-rest-beta) entity, and following methods and actions:<br> [List](/graph/api/privilegedroleassignmentrequest-list?view=graph-rest-beta) <br> [Create](/graph/api/privilegedroleassignmentrequest-post?view=graph-rest-beta) <br> [Cancel](/graph/api/privilegedroleassignmentrequest-cancel?view=graph-rest-beta) <br> [My](/graph/api/privilegedroleassignmentrequest-my?view=graph-rest-beta) |
| Addition | beta | Added [Update](/graph/api/privilegedrolesettings-update?view=graph-rest-beta) for [privilegedRoleSettings](/graph/api/resources/privilegedrolesettings?view=graph-rest-beta)|
| Removal |beta| Deprecated the [Self Activate Role Assignment](/graph/api/privilegedrole_selfactivate?view=graph-rest-beta)|

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the **Site ID** property to [getSharePointSiteUsageDetail](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-1.0). |

## September 2018

### Calls and online meetings API

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | The [application](/graph/api/resources/application?view=graph-rest-beta) resource was updated to add a calls collection. |
| Change          | Beta        | The [operation](/graph/api/resources/operation?view=graph-rest-beta) resource was updated to support long-running calls and meetings APIs. |
| Addition        | Beta        | Added the [call](/graph/api/resources/call?view=graph-rest-beta) resource for managing audio/video calls (initially, in Microsoft Teams), including APIs for [creating calls](/graph/api/application-post-calls?view=graph-rest-beta), [retrieving a a call](/graph/api/call-get?view=graph-rest-beta), [deleting (hanging up) a call](/graph/api/call-delete?view=graph-rest-beta), [answering a call](/graph/api/call-answer?view=graph-rest-beta), [rejecting a call](/graph/api/call-reject?view=graph-rest-beta), [redirecting a call](/graph/api/call-redirect?view=graph-rest-beta), and [transferring a call](/graph/api/call-transfer?view=graph-rest-beta). We've also added APIs to support [IVR scenarios](/graph/api/resources/calls-api-ivr-overview?view=graph-rest-beta): [playing a prompt](/graph/api/call-playprompt?view=graph-rest-beta), [recording a call](/graph/api/call-record?view=graph-rest-beta), [cancel media processing](/graph/api/call-cancelmediaprocessing?view=graph-rest-beta), and [subscribing to touch tone notifications](/graph/api/call-subscribetotone?view=graph-rest-beta). |
| Addition        | Beta        | Added the [participant](/graph/api/resources/call?view=graph-rest-beta) resource and APIs for managing the participants in audio/video calls and meetings, including [retrieving a participant object](/graph/api/participant-get?view=graph-rest-beta), [configuring the audio mixer for a participant](/graph/api/participant-configuremixer?view=graph-rest-beta), muting [one](/graph/api/participant-mute?view=graph-rest-beta) or [all](/graph/api/participant-muteall?view=graph-rest-beta) of the participants, [retrieving a list of the participants](/graph/api/call-list-participants?view=graph-rest-beta) in a call/meeting, and [inviting participants](/graph/api/participant-invite?view=graph-rest-beta) to a call/meeting. |
| Addition        | Beta        | Added APIs for applications to manage and participate in calls and meetings, including the ability to [share content](/graph/api/call-changescreensharingrole?view=graph-rest-beta), [mute and unmute itself](/graph/api/call-unmute?view=graph-rest-beta), and [update the metadata associated with a call](/graph/api/call-updatemetadata?view=graph-rest-beta). |
| Addition        | Beta        | Added the [audio routing group](/graph/api/resources/audioroutinggroup?view=graph-rest-beta) resource and APIs for managing private audio routes between participants in a multiparty conversation, including [creating audio routing groups](/graph/api/call-post-audioroutinggroups?view=graph-rest-beta), [retrieving a list of them](/graph/api/audioroutinggroup-get?view=graph-rest-beta), and [updating](/graph/api/audioroutinggroup-update?view=graph-rest-beta) and [deleting](/graph/api/audioroutinggroup-delete?view=graph-rest-beta) them. |
| Addition        | Beta        | Added the [online meeting](/graph/api/resources/audioroutinggroup?view=graph-rest-beta) resource and APIs for managing Microsoft Teams online meetings. Initially, there is only one API for online meetings, to [retrieve an online meeting object](/graph/api/onlinemeeting-get?view=graph-rest-beta). A related resource for the [audio conference information](/graph/api/resources/audioconferencing?view=graph-rest-beta) associated with a meeting (e.g. dial-in URL, passcodes, and phone numbers) was also added. |
| Addition        | Beta        | Many of the calls and meetings APIs take time to complete, so resources for these long-running operations were added: [calling-specific operations](/graph/api/resources/commsoperation?view=graph-rest-beta), [playing audio prompts](/graph/api/resources/playpromptoperation?view=graph-rest-beta), and [recording](/graph/api/resources/recordoperation?view=graph-rest-beta).  |

### Dynamics 365 Business Central API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added financials APIs for Dynamics 365 Business Central. For details, see the [Financials API reference](/graph/api/resources/dynamics-graph-reference?view=graph-rest-beta)

### Microsoft Graph data connect

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition         | Not applicable| Introduced the ability to access Office 365 data in bulk. For details, see [Microsoft Graph data connect (preview)](data-connect-overview.md).|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added the [assign](/graph/api/intune-apps-manageddevicemobileappconfiguration-assign?view=graph-rest-1.0) action on [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-1.0) |
|Addition|beta|Added new entities:<br/>[officeClientConfiguration](/graph/api/resources/intune-cirrus-officeclientconfiguration?view=graph-rest-beta)<br/>[officeClientConfigurationAssignment](/graph/api/resources/intune-cirrus-officeclientconfigurationassignment?view=graph-rest-beta)<br/>[officeConfiguration](/graph/api/resources/intune-cirrus-officeconfiguration?view=graph-rest-beta)<br/>[windowsOfficeClientConfiguration](/graph/api/resources/intune-cirrus-windowsofficeclientconfiguration?view=graph-rest-beta)<br/>[windowsOfficeClientSecurityConfiguration](/graph/api/resources/intune-cirrus-windowsofficeclientsecurityconfiguration?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[officeClientCheckinStatus](/graph/api/resources/intune-cirrus-officeclientcheckinstatus?view=graph-rest-beta)<br/>[officeConfigurationAssignmentTarget](/graph/api/resources/intune-cirrus-officeconfigurationassignmenttarget?view=graph-rest-beta)<br/>[officeConfigurationGroupAssignmentTarget](/graph/api/resources/intune-cirrus-officeconfigurationgroupassignmenttarget?view=graph-rest-beta)<br/>[officeUserCheckinSummary](/graph/api/resources/intune-cirrus-officeusercheckinsummary?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [assign](/graph/api/intune-cirrus-officeclientconfiguration-assign?view=graph-rest-beta) action on [officeClientConfiguration](/graph/api/resources/intune-cirrus-officeclientconfiguration?view=graph-rest-beta) |
|Addition|beta|Added the **updatePrioritie** action on [officeClientConfiguration](/graph/api/resources/intune-cirrus-officeclientconfiguration?view=graph-rest-beta) collection |
|Addition|beta|Added new entities:<br/>[deviceConfigurationConflictSummary](/graph/api/resources/intune-deviceconfig-deviceconfigurationconflictsummary?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload?view=graph-rest-beta)<br/>[win32LobApp](/graph/api/resources/intune-apps-win32lobapp?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceConfigurationTargetedUserAndDevice](/graph/api/resources/intune-deviceconfig-deviceconfigurationtargeteduseranddevice?view=graph-rest-beta)<br/>[win32LobAppDetection](/graph/api/resources/intune-apps-win32lobappdetection?view=graph-rest-beta)<br/>[win32LobAppFileSystemDetection](/graph/api/resources/intune-apps-win32lobappfilesystemdetection?view=graph-rest-beta)<br/>[win32LobAppInstallExperience](/graph/api/resources/intune-apps-win32lobappinstallexperience?view=graph-rest-beta)<br/>[win32LobAppMsiInformation](/graph/api/resources/intune-apps-win32lobappmsiinformation?view=graph-rest-beta)<br/>[win32LobAppPowerShellScriptDetection](/graph/api/resources/intune-apps-win32lobapppowershellscriptdetection?view=graph-rest-beta)<br/>[win32LobAppProductCodeDetection](/graph/api/resources/intune-apps-win32lobappproductcodedetection?view=graph-rest-beta)<br/>[win32LobAppRegistryDetection](/graph/api/resources/intune-apps-win32lobappregistrydetection?view=graph-rest-beta)<br/>[win32LobAppReturnCode](/graph/api/resources/intune-apps-win32lobappreturncode?view=graph-rest-beta)<br/>[windows10AppsForceUpdateSchedule](/graph/api/resources/intune-deviceconfig-windows10appsforceupdateschedule?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[administratorConfiguredDeviceComplianceState](/graph/api/resources/intune-deviceconfig-administratorconfigureddevicecompliancestate?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUploadStatus](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityuploadstatus?view=graph-rest-beta)<br/>[microsoftStoreForBusinessPortalSelectionOptions](/graph/api/resources/intune-onboarding-microsoftstoreforbusinessportalselectionoptions?view=graph-rest-beta)<br/>[win32LobAppDetectionOperator](/graph/api/resources/intune-apps-win32lobappdetectionoperator?view=graph-rest-beta)<br/>[win32LobAppFileSystemDetectionType](/graph/api/resources/intune-apps-win32lobappfilesystemdetectiontype?view=graph-rest-beta)<br/>[win32LobAppMsiPackageType](/graph/api/resources/intune-apps-win32lobappmsipackagetype?view=graph-rest-beta)<br/>[win32LobAppRegistryDetectionType](/graph/api/resources/intune-apps-win32lobappregistrydetectiontype?view=graph-rest-beta)<br/>[win32LobAppReturnCodeType](/graph/api/resources/intune-apps-win32lobappreturncodetype?view=graph-rest-beta)<br/>[windows10AppsUpdateRecurrence](/graph/api/resources/intune-deviceconfig-windows10appsupdaterecurrence?view=graph-rest-beta)<br/>[windowsAppStartLayoutTileSize](/graph/api/resources/intune-deviceconfig-windowsappstartlayouttilesize?view=graph-rest-beta)<br/>[windowsAutopilotProfileAssignmentDetailedStatus](/graph/api/resources/intune-enrollment-windowsautopilotprofileassignmentdetailedstatus?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **overrideComplianceState** action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Addition|beta|Added the **getTargetedUsersAndDevices** action on [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) collection |
|Addition|beta|Added the [autopilotDeviceStream](/graph/api/intune-enrollment-importedwindowsautopilotdeviceidentityupload-autopilotdevicestream?view=graph-rest-beta) function on [importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload?view=graph-rest-beta) |
|Addition|beta|Added the **restrictedApps** property to the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **tokenCreationDateTime** property to the [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **restrictedApps** property from the [androidForWorkCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidforworkcompliancepolicy?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **restrictedApps** property from the [androidWorkProfileCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidworkprofilecompliancepolicy?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [appleVpnConfiguration](/graph/api/resources/intune-deviceconfig-applevpnconfiguration?view=graph-rest-beta) entity:<br/>**enablePerApp** from required to optional<br/>|
|Addition|beta|Added the **disableProtectionOfManagedOutboundOpenInData** and **protectInboundDataFromUnknownSources** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **microsoftStoreForBusinessPortalSelection** property to the [deviceAppManagement](/graph/api/resources/intune-shared-deviceappmanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **passcodeMinutesOfInactivityBeforeScreenTimeout** property to the [iosCompliancePolicy](/graph/api/resources/intune-deviceconfig-ioscompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **useOAuth** property to the [iosEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **kioskModeBlockVolumeButtons**, **classroomForceRequestPermissionToLeaveClasses**, **keychainBlockCloudSync**, **pkiBlockOTAUpdates**, **privacyForceLimitAdTracking**, **enterpriseBookBlockBackup**, **enterpriseBookBlockMetadataSync**, **airPrintBlocked**, **airPrintBlockCredentialsStorage**, **airPrintForceTrustedTLS**, **airPrintBlockiBeaconDiscovery**, **blockSystemAppRemoval** and **vpnBlockCreation** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **disableProtectionOfManagedOutboundOpenInData** and **protectInboundDataFromUnknownSources** properties to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **gatekeeperAllowedAppSource** property to the [macOSCompliancePolicy](/graph/api/resources/intune-deviceconfig-macoscompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **keychainBlockCloudSync**, **airPrintBlocked**, **airPrintForceTrustedTLS** and **airPrintBlockiBeaconDiscovery** properties to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceModel** and **deviceManufacturer** properties to the [managedAppRegistration](/graph/api/resources/intune-mam-managedappregistration?view=graph-rest-beta) entity|
|Addition|beta|Added the **enabledForScopeValidation** property to the [resourceOperation](/graph/api/resources/intune-rbac-resourceoperation?view=graph-rest-beta) entity|
|Addition|beta|Added the **claimTokenManagementFromExternalMdm** property to the [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) entity|
|Addition|beta|Added the **windows10AppsForceUpdateSchedule** property to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **deploymentProfileAssignmentDetailedStatus** property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceConfigurationConflictSummary** and **importedWindowsAutopilotDeviceIdentityUploads** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedDeploymentProfile** navigation property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Addition|beta|Added the **startLayoutTileSize** and **name** properties to the [windowsKioskAppBase](/graph/api/resources/intune-deviceconfig-windowskioskappbase?view=graph-rest-beta) complex type|
|Addition|beta|Added the **desktopApplicationId** and **desktopApplicationLinkPath** properties to the [windowsKioskDesktopApp](/graph/api/resources/intune-deviceconfig-windowskioskdesktopapp?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **name** property from the [windowsKioskDesktopApp](/graph/api/resources/intune-deviceconfig-windowskioskdesktopapp?view=graph-rest-beta) complex type|
|Addition|beta|Added the **disallowDesktopApps** property to the [windowsKioskMultipleApps](/graph/api/resources/intune-deviceconfig-windowskioskmultipleapps?view=graph-rest-beta) complex type|
|Change|beta|Changed the following properties on the [windowsKioskMultipleApps](/graph/api/resources/intune-deviceconfig-windowskioskmultipleapps?view=graph-rest-beta) complex type:<br/>**startMenuLayoutXml** from required to optional<br/>|
|Addition|beta|Added the **v10_1607**, **v10_1703**, **v10_1709** and **v10_1803** properties to the [windowsMinimumOperatingSystem](/graph/api/resources/intune-apps-windowsminimumoperatingsystem?view=graph-rest-beta) complex type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidWorkProfileVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **remoteLock** member to the [deviceComplianceActionType](/graph/api/resources/intune-deviceconfig-devicecomplianceactiontype?view=graph-rest-beta) enum type|


### Microsoft Teams APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added API for [Tabs](/graph/api/resources/teamstab?view=graph-rest-beta).|
|Addition|beta|Added API for [publishing apps for your organization](/graph/api/resources/teamsapp?view=graph-rest-beta).|
|Addition|beta|Added application permissions support to [GET /teams/{id}](/graph/api/team-get?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [GET /teams/{id}/channels](/graph/api/group-list-channels?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [GET /teams/{id}/channels/{id}](/graph/api/channel-get?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [PUT /groups/{id}/team](/graph/api/team-put-teams?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [PATCH /teams/{id}](/graph/api/team-update?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [Create channel](/graph/api/channel-post?view=graph-rest-beta), [Update channel](/graph/api/channel-patch?view=graph-rest-beta), and [Delete channel](/graph/api/channel-delete?view=graph-rest-beta). |
|Deletion|beta| Removed isBlocks and installedState properties from [teamsApp](/graph/api/resources/teamsapp?view=graph-rest-beta).|
|Change| beta | The context property on [teamsApp](/graph/api/resources/teamsapp?view=graph-rest-beta) has been renamed to distributionMethod.|

### OneDrive and SharePoint APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **deferCommit** argument to the [createUploadSession](/graph/api/driveitem-createuploadsession?view=graph-rest-beta) action on [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta)|
| Addition        | Beta        | Added the [storagePlanInformation](/graph/api/resources/storageplaninformation?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **storagePlanInformation** property to the [quota](/graph/api/resources/quota?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **following** navigation property to the [drive](/graph/api/resources/drive?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [follow](/graph/api/driveitem-follow?view=graph-rest-beta) action on [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) |
| Addition        | Beta        | Added the [unfollow](/graph/api/driveitem-unfollow?view=graph-rest-beta) API |
| Addition        | Beta        | Added the **hasPassword** property to the [permission](/graph/api/resources/permission?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **preventsDownload** property to the [sharingLink](/graph/api/resources/sharinglink?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **permission** navigation property to the [sharedDriveItem](/graph/api/resources/shareddriveitem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **geolocation** property to the [columnDefinition](/graph/api/resources/columndefinition?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [geolocationColumn](/graph/api/resources/geolocationcolumn?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **analytics** property to the [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **analytics** property to the [site](/graph/api/resources/site?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **analytics** property to the [listItem](/graph/api/resources/listitem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [site](/graph/api/resources/site?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [listItem](/graph/api/resources/listitem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [itemAnalytics](/graph/api/resources/itemanalytics?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [itemActivityStat](/graph/api/resources/itemactivity?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [itemActionStat](/graph/api/resources/itemactionstat?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the [accessAction](/graph/api/resources/accessaction?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the [incompleteData](/graph/api/resources/incompletedata?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **access** property to the [itemActivity](/graph/api/resources/itemactivity?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **location** property to the [itemActivity](/graph/api/resources/itemactivity?view=graph-rest-beta) complex type |
| Addition        | v1.0        | Added the **preview** action on the [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) entity |
| Addition        | v1.0        | Added the [itemPreviewInfo](/graph/api/resources/itempreviewinfo?view=graph-rest-1.0) complex type |

### Outlook mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | The **internetMessageHeaders** property of the [message](/graph/api/resources/message?view=graph-rest-1.0) entity is now writeable on message creation. |


### Project Rome notifications API

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition          | Beta        | Added the [notification](/graph/api/resources/projectrome-notification?view=graph-rest-beta) resource type. |
| Addition          | Beta        | Added the [Create and publish notification] (/graph/api/projectrome_notification_post?view=graph-rest-beta) API.|

### Security APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added the Secure Score APIs to the [security API](/graph/api/resources/securescore-api-overview?view=graph-rest-beta), including the following resources and operations:<br/>[secureScores](/graph/api/resources/securescores?view=graph-rest-beta) (and related entities)<br/>[List secureScores](/graph/api/securescores-list?view=graph-rest-beta)<br/>[secureScoreControlProfiles](/graph/api/resources/securescorecontrolprofiles?view=graph-rest-beta)<br/>[List secureScoreControlProfiles](/graph/api/securescorecontrolprofiles-list?view=graph-rest-beta)<br/>[Update secureScoreControlProfiles](/graph/api/securescorecontrolprofiles-update?view=graph-rest-beta) |
| Addition        | Beta        | Introduced new complex type [secureScoreControlStateUpdate](/graph/api/resources/securescorecontrolstateupdate?view=graph-rest-beta) |


## August 2018

### Delta query

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added [delta query](delta-query-overview.md) capability for the following entities in Azure AD:<br/>[application](/graph/api/application-delta?view=graph-rest-beta)<br/>[directoryRole](/graph/api/directoryrole-delta?view=graph-rest-beta)<br/>[servicePrincipal](/graph/api/serviceprincipal-delta?view=graph-rest-beta) |

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added  isMultipleDataLocationsForServicesEnabled property to [Organization](/graph/api/resources/organization?view=graph-rest-beta) resource that allows apps to verify that tenant is enabled for Multi-Geo capabilities. Added preferredDataLocation property to [user](/graph/api/resources/user?view=graph-rest-beta) and [group](/graph/api/resources/group?view=graph-rest-beta) resources that allow setting preferred data location for a user and group.|
| Addition | v1.0 | Added  [onPremisesProvisioningErrors](/graph/api/resources/onpremisesprovisioningerror?view=graph-rest-1.0) property to the [User](/graph/api/resources/user?view=graph-rest-1.0) and [Group](/graph/api/resources/group?view=graph-rest-1.0) entities that represents directory synchronization errors when synchronizing on-premises directories to Azure Active Directory when using Microsoft synchronization product (including Azure AD Connect, DirSync and MIM + Connector).|
| Addition | v1.0 | Added  [onPremisesExtensionAttributes](/graph/api/resources/onpremisesextensionattributes?view=graph-rest-1.0) property to the [User](/graph/api/resources/user?view=graph-rest-1.0) entity that contains fifteen custom extension attribute properties. For an onPremisesSyncEnabled user, this set of properties is mastered in on-premises Active Directory and synchronized to Azure AD, and is read-only. For a cloud-only user (where onPremisesSyncEnabled is false), these properties may be set during creation or update.|
|Addition|v1.0|Added the **onPremisesDomainName**, **onPremisesSamAccountName**, and **onPremisesUserPrincipalName** properties to the [User](/graph/api/resources/user?view=graph-rest-1.0) entity|

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[androidWorkProfileCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidworkprofilecompliancepolicy?view=graph-rest-1.0)<br/>[androidWorkProfileCustomConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilecustomconfiguration?view=graph-rest-1.0)<br/>[androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegeneraldeviceconfiguration?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new enum types:<br/>[androidWorkProfileCrossProfileDataSharingType](/graph/api/resources/intune-deviceconfig-androidworkprofilecrossprofiledatasharingtype?view=graph-rest-1.0)<br/>[androidWorkProfileDefaultAppPermissionPolicyType](/graph/api/resources/intune-deviceconfig-androidworkprofiledefaultapppermissionpolicytype?view=graph-rest-1.0)<br/>[androidWorkProfileRequiredPasswordType](/graph/api/resources/intune-deviceconfig-androidworkprofilerequiredpasswordtype?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the [managedDeviceEnrollmentFailureDetails](/graph/api/intune-shared-reportroot-manageddeviceenrollmentfailuredetails?view=graph-rest-1.0) function on [reportRoot](/graph/api/resources/intune-shared-reportroot?view=graph-rest-1.0) |
|Addition|v1.0|Added the [managedDeviceEnrollmentTopFailures](/graph/api/intune-shared-reportroot-manageddeviceenrollmenttopfailures?view=graph-rest-1.0) function on [reportRoot](/graph/api/resources/intune-shared-reportroot?view=graph-rest-1.0) |
|Addition|v1.0|Added the **kioskModeBuiltInAppId** property to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **notAssigned** member to the [complianceStatus](/graph/api/resources/intune-shared-compliancestatus?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **pushNotification** member to the [deviceComplianceActionType](/graph/api/resources/intune-deviceconfig-devicecomplianceactiontype?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **userAbandonment** member to the [deviceEnrollmentFailureReason](/graph/api/resources/intune-troubleshooting-deviceenrollmentfailurereason?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **compromised** and **misconfigured** members to the [managedDevicePartnerReportedHealthState](/graph/api/resources/intune-devices-manageddevicepartnerreportedhealthstate?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **assignedToExternalMDM** member to the [vppTokenState](/graph/api/resources/intune-onboarding-vpptokenstate?view=graph-rest-1.0) enum type|
||
|Addition|beta|Added new entities:<br/>[advancedThreatProtectionOnboardingDeviceSettingState](/graph/api/resources/intune-deviceconfig-advancedthreatprotectiononboardingdevicesettingstate?view=graph-rest-beta)<br/>[advancedThreatProtectionOnboardingStateSummary](/graph/api/resources/intune-deviceconfig-advancedthreatprotectiononboardingstatesummary?view=graph-rest-beta)<br/>[depEnrollmentBaseProfile](/graph/api/resources/intune-enrollment-depenrollmentbaseprofile?view=graph-rest-beta)<br/>[depEnrollmentProfile](/graph/api/resources/intune-enrollment-depenrollmentprofile?view=graph-rest-beta)<br/>[depIOSEnrollmentProfile](/graph/api/resources/intune-enrollment-depiosenrollmentprofile?view=graph-rest-beta)<br/>[depMacOSEnrollmentProfile](/graph/api/resources/intune-enrollment-depmacosenrollmentprofile?view=graph-rest-beta)<br/>[enrollmentProfile](/graph/api/resources/intune-enrollment-enrollmentprofile?view=graph-rest-beta)<br/>[importedAppleDeviceIdentity](/graph/api/resources/intune-enrollment-importedappledeviceidentity?view=graph-rest-beta)<br/>[importedAppleDeviceIdentityResult](/graph/api/resources/intune-enrollment-importedappledeviceidentityresult?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload?view=graph-rest-beta)<br/>[roleScopeTag](/graph/api/resources/intune-rbac-rolescopetag?view=graph-rest-beta)<br/>[windowsIdentityProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windowsidentityprotectionconfiguration?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[configurationManagerClientHealthState](/graph/api/resources/intune-devices-configurationmanagerclienthealthstate?view=graph-rest-beta)<br/>[customSubjectAlternativeName](/graph/api/resources/intune-deviceconfig-customsubjectalternativename?view=graph-rest-beta)<br/>[deviceManagementUserRightsLocalUserOrGroup](/graph/api/resources/intune-deviceconfig-devicemanagementuserrightslocaluserorgroup?view=graph-rest-beta)<br/>[deviceManagementUserRightsSetting](/graph/api/resources/intune-deviceconfig-devicemanagementuserrightssetting?view=graph-rest-beta)<br/>[managementCertificateWithThumbprint](/graph/api/resources/intune-enrollment-managementcertificatewiththumbprint?view=graph-rest-beta)<br/>[mobileAppSupportedDeviceType](/graph/api/resources/intune-troubleshooting-mobileappsupporteddevicetype?view=graph-rest-beta)<br/>[osVersionCount](/graph/api/resources/intune-devices-osversioncount?view=graph-rest-beta)<br/>[windowsMalwareCategoryCount](/graph/api/resources/intune-devices-windowsmalwarecategorycount?view=graph-rest-beta)<br/>[windowsMalwareExecutionStateCount](/graph/api/resources/intune-devices-windowsmalwareexecutionstatecount?view=graph-rest-beta)<br/>[windowsMalwareNameCount](/graph/api/resources/intune-devices-windowsmalwarenamecount?view=graph-rest-beta)<br/>[windowsMalwareOverview](/graph/api/resources/intune-devices-windowsmalwareoverview?view=graph-rest-beta)<br/>[windowsMalwareStateCount](/graph/api/resources/intune-devices-windowsmalwarestatecount?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[configurationManagerClientState](/graph/api/resources/intune-devices-configurationmanagerclientstate?view=graph-rest-beta)<br/>[depTokenType](/graph/api/resources/intune-enrollment-deptokentype?view=graph-rest-beta)<br/>[discoverySource](/graph/api/resources/intune-enrollment-discoverysource?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUploadStatus](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityuploadstatus?view=graph-rest-beta)<br/>[iTunesPairingMode](/graph/api/resources/intune-enrollment-itunespairingmode?view=graph-rest-beta)<br/>[lanManagerAuthenticationLevel](/graph/api/resources/intune-deviceconfig-lanmanagerauthenticationlevel?view=graph-rest-beta)<br/>[localSecurityOptionsMinimumSessionSecurity](/graph/api/resources/intune-deviceconfig-localsecurityoptionsminimumsessionsecurity?view=graph-rest-beta)<br/>[resultantAppStateDetail](/graph/api/resources/intune-apps-resultantappstatedetail?view=graph-rest-beta)<br/>[vpnProviderType](/graph/api/resources/intune-deviceconfig-vpnprovidertype?view=graph-rest-beta)<br/>[windowsMalwareThreatState](/graph/api/resources/intune-devices-windowsmalwarethreatstate?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [uploadDepToken](/graph/api/intune-enrollment-deponboardingsetting-uploaddeptoken?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [syncWithAppleDeviceEnrollmentProgram](/graph/api/intune-enrollment-deponboardingsetting-syncwithappledeviceenrollmentprogram?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [setDefaultProfile](/graph/api/intune-enrollment-enrollmentprofile-setdefaultprofile?view=graph-rest-beta) action on [enrollmentProfile](/graph/api/resources/intune-enrollment-enrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the **importAppleDeviceIdentityList** action on [importedAppleDeviceIdentity](/graph/api/resources/intune-enrollment-importedappledeviceidentity?view=graph-rest-beta) collection |
|Addition|beta|Added the [updateDeviceProfileAssignment](/graph/api/intune-enrollment-enrollmentprofile-updatedeviceprofileassignment?view=graph-rest-beta) action on [enrollmentProfile](/graph/api/resources/intune-enrollment-enrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the [shareForSchoolDataSyncService](/graph/api/intune-enrollment-deponboardingsetting-shareforschooldatasyncservice?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [unshareForSchoolDataSyncService](/graph/api/intune-enrollment-deponboardingsetting-unshareforschooldatasyncservice?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [assignUserToDevice](/graph/api/intune-enrollment-windowsautopilotdeviceidentity-assignusertodevice?view=graph-rest-beta) action on [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) |
|Addition|beta|Added the [getRoleScopeTagsByResource](/graph/api/intune-rbac-devicemanagement-getrolescopetagsbyresource?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the [getRoleScopeTagsByIds](/graph/api/intune-rbac-devicemanagement-getrolescopetagsbyids?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the [getEncryptionPublicKey](/graph/api/intune-enrollment-deponboardingsetting-getencryptionpublickey?view=graph-rest-beta) function on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [exportMobileConfig](/graph/api/intune-enrollment-enrollmentprofile-exportmobileconfig?view=graph-rest-beta) function on [enrollmentProfile](/graph/api/resources/intune-enrollment-enrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the [autopilotDeviceStream](/graph/api/intune-enrollment-importedwindowsautopilotdeviceidentityupload-autopilotdevicestream?view=graph-rest-beta) function on [importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload?view=graph-rest-beta) |
|Deletion|beta|Removed the **uploadDepToken** collection |
|Deletion|beta|Removed the **syncWithAppleDeviceEnrollmentProgram** action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) collection |
|Deletion|beta|Removed the **getEncryptionPublicKey** function on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) collection |
|Addition|beta|Added the **restrictedApps** property to the [androidForWorkCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidforworkcompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **vpnAlwaysOnPackageIdentifier** and **vpnEnableAlwaysOnLockdownMode** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **packageName** property from the [androidForWorkMobileAppConfiguration](/graph/api/resources/intune-apps-androidforworkmobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **restrictedApps** property to the [androidWorkProfileCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidworkprofilecompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **vpnAlwaysOnPackageIdentifier** and **vpnEnableAlwaysOnLockdownMode** properties to the [androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **optInToDeviceIdSharing** property to the [appleVpnConfiguration](/graph/api/resources/intune-deviceconfig-applevpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **tokenType**, **tokenName**, **syncedDeviceCount**, **defaultProfileDisplayName** and **dataSharingConsentGranted** properties to the [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** and **supportsScopeTags** properties to the [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **windowsMalwareOverview** property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [iosCertificateProfileBase](/graph/api/resources/intune-deviceconfig-ioscertificateprofilebase?view=graph-rest-beta) entity:<br/>**subjectAlternativeNameType** from required to optional<br/>|
|Addition|beta|Added the **restrictedApps** property to the [iosCompliancePolicy](/graph/api/resources/intune-deviceconfig-ioscompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore** and **customSubjectAlternativeNames** properties to the [iosScepCertificateProfile](/graph/api/resources/intune-deviceconfig-iosscepcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **enforcedSoftwareUpdateDelayInDays** property to the [iosUpdateConfiguration](/graph/api/resources/intune-deviceconfig-iosupdateconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **providerType**, **userDomain**, **strictEnforcement**, **cloudName** and **excludeList** properties to the [iosVpnConfiguration](/graph/api/resources/intune-deviceconfig-iosvpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **safariBlockAutofill**, **cameraBlocked**, **iTunesBlockMusicService**, **spotlightBlockInternetResults**, **keyboardBlockDictation**, **definitionLookupBlocked**, **appleWatchBlockAutoUnlock**, **iTunesBlockFileSharing**, **iCloudBlockDocumentSync**, **iCloudBlockMail**, **iCloudBlockAddressBook**, **iCloudBlockCalendar**, **iCloudBlockReminders**, **iCloudBlockBookmarks**, **iCloudBlockNotes**, **airDropBlocked**, **passwordBlockModification** and **passwordBlockFingerprintUnlock** properties to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds**, **windowsActiveMalwareCount**, **windowsRemediatedMalwareCount**, **notes** and **configurationManagerClientHealthState** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **installStateDetail** property to the [mobileAppInstallStatus](/graph/api/resources/intune-apps-mobileappinstallstatus?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [notificationMessageTemplate](/graph/api/resources/intune-notification-notificationmessagetemplate?view=graph-rest-beta) entity|
|Addition|beta|Added the **targetVersion** and **updateVersion** properties to the [officeSuiteApp](/graph/api/resources/intune-apps-officesuiteapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **resource** property to the [resourceOperation](/graph/api/resources/intune-rbac-resourceoperation?view=graph-rest-beta) entity|
|Addition|beta|Added the **localStorage**, **setPowerPolicies** and **signInOnResume** properties to the [sharedPCConfiguration](/graph/api/resources/intune-deviceconfig-sharedpcconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **configurationManagerComplianceRequired** property to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **userRightsAccessCredentialManagerAsTrustedCaller**, **userRightsAllowAccessFromNetwork**, **userRightsBlockAccessFromNetwork**, **userRightsActAsPartOfTheOperatingSystem**, **userRightsLocalLogOn**, **userRightsBackupData**, **userRightsChangeSystemTime**, **userRightsCreateGlobalObjects**, **userRightsCreatePageFile**, **userRightsCreatePermanentSharedObjects**, **userRightsCreateSymbolicLinks**, **userRightsCreateToken**, **userRightsDebugPrograms**, **userRightsRemoteDesktopServicesLogOn**, **userRightsDelegation**, **userRightsGenerateSecurityAudits**, **userRightsImpersonateClient**, **userRightsIncreaseSchedulingPriority**, **userRightsLoadUnloadDrivers**, **userRightsLockMemory**, **userRightsManageAuditingAndSecurityLogs**, **userRightsManageVolumes**, **userRightsModifyFirmwareEnvironment**, **userRightsModifyObjectLabels**, **userRightsProfileSingleProcess**, **userRightsRemoteShutdown**, **userRightsRestoreData**, **userRightsTakeOwnership**, **userRightsRegisterProcessAsService**, **localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients**, **localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers**, **lanManagerAuthenticationLevel** and **lanManagerWorkstationEnableInsecureGuestLogons** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **passwordMinimumAgeInDays**, **tenantLockdownRequireNetworkDuringOutOfBoxExperience** and **dataProtectionBlockDirectMemoryAccess** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **extendedKeyUsages** property to the [windows10PkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-windows10pkcscertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **enableDnsRegistration** and **dnsSuffixes** properties to the [windows10VpnConfiguration](/graph/api/resources/intune-deviceconfig-windows10vpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customSubjectAlternativeNames** property to the [windows81CertificateProfileBase](/graph/api/resources/intune-deviceconfig-windows81certificateprofilebase?view=graph-rest-beta) entity|
|Addition|beta|Added the **extractHardwareHash** and **deviceNameTemplate** properties to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **addressableUserName** and **userPrincipalName** properties to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Addition|beta|Added the **threatState** property to the [windowsDeviceMalwareState](/graph/api/resources/intune-devices-windowsdevicemalwarestate?view=graph-rest-beta) entity|
|Addition|beta|Added the **qualityUpdatesPauseStartDateTime**, **featureUpdatesPauseStartDateTime**, **featureUpdatesRollbackWindowInDays**, **qualityUpdatesWillBeRolledBack**, **featureUpdatesWillBeRolledBack**, **qualityUpdatesRollbackStartDateTime** and **featureUpdatesRollbackStartDateTime** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **trustedServerCertificateNames** property to the [windowsWifiEnterpriseEAPConfiguration](/graph/api/resources/intune-deviceconfig-windowswifienterpriseeapconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **defaultIosEnrollmentProfile**, **defaultMacOsEnrollmentProfile**, **enrollmentProfiles** and **importedAppleDeviceIdentities** navigation properties to the [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTags** navigation property to the [deviceAndAppManagementRoleAssignment](/graph/api/resources/intune-rbac-deviceandappmanagementroleassignment?view=graph-rest-beta) entity|
|Addition|beta|Added the **advancedThreatProtectionOnboardingStateSummary**, **roleScopeTags** and **importedWindowsAutopilotDeviceIdentityUploads** navigation properties to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **supportedDeviceTypes** property to the [mobileAppIntentAndStateDetail](/graph/api/resources/intune-troubleshooting-mobileappintentandstatedetail?view=graph-rest-beta) complex type|
|Addition|beta|Added the **hideEscapeLink** property to the [outOfBoxExperienceSettings](/graph/api/resources/intune-enrollment-outofboxexperiencesettings?view=graph-rest-beta) complex type|
|Addition|beta|Added the **zscalerPrivateAccess**, **f5Access2018**, **citrixSso** and **paloAltoGlobalProtectV2** members to the [appleVpnConnectionType](/graph/api/resources/intune-deviceconfig-applevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **userAbandonment** member to the [deviceEnrollmentFailureReason](/graph/api/resources/intune-troubleshooting-deviceenrollmentfailurereason?view=graph-rest-beta) enum type|
|Addition|beta|Added the **blocked** member to the [enrollmentState](/graph/api/resources/intune-enrollment-enrollmentstate?view=graph-rest-beta) enum type|
|Addition|beta|Added the **microsoft365ManagedMdm** member to the [managementAgentType](/graph/api/resources/intune-devices-managementagenttype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **domainNameService** member to the [subjectAlternativeNameType](/graph/api/resources/intune-deviceconfig-subjectalternativenametype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **wpa2Personal** and **wpa2Enterprise** members to the [wiFiSecurityType](/graph/api/resources/intune-deviceconfig-wifisecuritytype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **enterpriseUnwantedSoftware**, **ransom** and **hipsRule** members to the [windowsMalwareCategory](/graph/api/resources/intune-devices-windowsmalwarecategory?view=graph-rest-beta) enum type|

### Outlook calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the [getSchedule](/graph/api/calendar-getschedule?view=graph-rest-beta) action, and the [freeBusyError](/graph/api/resources/freebusyerror?view=graph-rest-beta), [scheduleInformation](/graph/api/resources/scheduleinformation?view=graph-rest-beta), and [scheduleItem](/graph/api/resources/scheduleitem?view=graph-rest-beta) complex types to support [getting the free/busy, availability information for users, distribution lists, and resources for a given period of time](outlook-get-free-busy-schedule.md). |

### Outlook mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0        | Added support for the [getMailTips](/graph/api/user-getmailtips?view=graph-rest-1.0) action to get any MailTips for specific recipients. Added the following resources: [automaticRepliesMailTips](/graph/api/resources/automaticrepliesmailtips?view=graph-rest-1.0), [mailTips](/graph/api/resources/mailtips?view=graph-rest-1.0), [mailTipsError](/graph/api/resources/mailtipserror?view=graph-rest-1.0). |

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the **Activated On Shared Computer** property to [getoffice365activationsuserdetail](/graph/api/reportroot-getoffice365activationsuserdetail?view=graph-rest-1.0). |
| Addition    | v1.0    | Added the **Shared Computer Activation** property to [getoffice365activationsusercounts](/graph/api/reportroot-getoffice365activationsusercounts?view=graph-rest-1.0). |

### Security APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta       | Added **activityGroupName**, **cloudAppStates**, **confidence**, and **registryKeyStates** properties to [alert](/graph/api/resources/alert?view=graph-rest-beta ). |
|Deletion|beta| Removed **activityGroupStates**, **applicationStates**, **malwareWasRunning**, **riskScore** and **type** properties from [alert](/graph/api/resources/alert?view=graph-rest-beta ). |
|Change|beta| Changed **comments** type from a `String` to a `String collection`, and changed **severity** type from a `String` to a [alertSeverity](/graph/api/resources/alertseverityenumtype?view=graph-rest-beta) enum in [alert](/graph/api/resources/alert?view=graph-rest-beta). |
| Addition        | beta       | Added the following resource types: <br/> [cloudAppSecurityState](/graph/api/resources/cloudappsecuritystate?view=graph-rest-beta) <br/> [fileHash](/graph/api/resources/filehash?view=graph-rest-beta) <br/> [registryKeyState](/graph/api/resources/registrykeystate?view=graph-rest-beta) |
|Deletion|beta| Removed the following resource types: <br/> **activityGroupState**  <br/> **applicationSecurityState** |
| Addition        | beta       | Added the following enums: <br/> [alertSeverity](/graph/api/resources/alertseverityenumtype?view=graph-rest-beta) <br/> [connectionDirection](/graph/api/resources/connectiondirectionenumtype?view=graph-rest-beta) <br/> [connectionStatus](/graph/api/resources/connectionstatusenumtype?view=graph-rest-beta) <br/> [emailRole](/graph/api/resources/emailroleenumtype?view=graph-rest-beta) <br/> [fileHashType](/graph/api/resources/filehashtypeenumtype?view=graph-rest-beta) <br/> [registryHive](/graph/api/resources/registryhiveenumtype?view=graph-rest-beta)  <br/> [registryOperation](/graph/api/resources/registryoperationenumtype?view=graph-rest-beta) <br/> [registryValueType](/graph/api/resources/registryvaluetypeenumtype?view=graph-rest-beta)|
|Deletion|beta| Removed the following enum types: <br/> **alertType** <br/> **applicationPermissionsRequired** |
| Addition        | beta       | Added **fileHash** property to [fileSecurityState](/graph/api/resources/filesecuritystate?view=graph-rest-beta ).|
|Deletion|beta| Removed **authenticodeHash256** and **sha256** properties from [fileSecurityState](/graph/api/resources/filesecuritystate?view=graph-rest-beta). |
| Addition | beta | Added **os** property to [hostSecurityState](/graph/api/resources/hostsecuritystate?view=graph-rest-beta).|
| Addition | beta | Added **category**, **family**, and **wasRunning** properties to [malwareState](/graph/api/resources/malwarestate?view=graph-rest-beta).|
|Deletion|beta| Removed **aliases** property from [malwareState](/graph/api/resources/malwarestate?view=graph-rest-beta). |
|Change|beta| Moved **malwareWasRunning** property from  [alert](/graph/api/resources/alert?view=graph-rest-beta ) to [malwareState](/graph/api/resources/malwarestate?view=graph-rest-beta) and renamed to **wasRunning**. |
| Addition        | beta       | Added **applicationName**, **destinationDomain**, **direction**, **domainRegisteredDateTime**, **localDnsName**, **natDestinationAddress**, **natDestinationPort**, **natSourceAddress**, **natSourcePort**, **riskScore**, **status**, and **urlParameters** properties to [networkConnection](/graph/api/resources/networkconnection?view=graph-rest-beta ).|
|Change|beta| Changed **uri** property to **destinationUrl** in [networkConnection](/graph/api/resources/networkconnection?view=graph-rest-beta ). |
| Addition        | beta       | Added **fileHash** property to [process](/graph/api/resources/process?view=graph-rest-beta ).|
|Deletion|beta| Removed **authenticodeHash256** and **sha256** properties from [process](/graph/api/resources/process?view=graph-rest-beta ). |
| Addition        | beta       | Added **aadUserId**, **emailRole**, **isVpn**, and **logonIp** properties to [userSecurityState](/graph/api/resources/usersecuritystate?view=graph-rest-beta).|
|Change|beta| Changed **logonIpAddress** property to **logonIp** in [userSecurityState](/graph/api/resources/usersecuritystate?view=graph-rest-beta). |
| Addition        | beta       | Added **wasRunning** property to [vulnerabilityState](/graph/api/resources/vulnerabilitystate?view=graph-rest-beta).|
|Deletion|beta| Removed **name** property from [vulnerabilityState](/graph/api/resources/vulnerabilitystate?view=graph-rest-beta). |

## July 2018

### Application and servicePrincipal API changes

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | The [application](/graph/api/resources/application?view=graph-rest-beta) and [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta) APIs will be updated in preview (beta). The first set of changes will be applied on July 16, 2018. The changes include property renaming and restructuring. Most of the existing properties will not be available until the changes are completed. There will be new properties added. The changes will be released in preview (beta) prior to releasing to v1.0. |

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Change|beta|Updated [chatmessage](/graph/api/resources/chatmessage?view=graph-rest-beta) resource|
|Addition|beta|Added [Chat attachment](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat mention](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat reaction](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Addition|beta|Added [Get all channel messages API](/graph/api/channel-list-messages?view=graph-rest-beta) |
|Addition|beta|Added [Get channel message API](/graph/api/channel-get-message?view=graph-rest-beta) |
|Addition|beta|Added [Get all message replies API](/graph/api/channel-list-messagereplies?view=graph-rest-beta) |
|Addition|beta|Added [Get reply to a message API](/graph/api/channel-get-messagereply?view=graph-rest-beta) |

### Microsoft Teams APIs
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added application permissions support to [/users/{id}/joinedTeams](/graph/api/user-list-joinedteams?view=graph-rest-beta) |
|Addition|beta|Added [Get all channel messages API](/graph/api/channel-list-messages?view=graph-rest-beta) |
|Addition|beta|Added [Get channel message API](/graph/api/channel-get-message?view=graph-rest-beta) |
|Addition|beta|Added [Get all message replies API](/graph/api/channel-list-messagereplies?view=graph-rest-beta) |
|Addition|beta|Added [Get reply to a message API](/graph/api/channel-get-messagereply?view=graph-rest-beta) |
|Addition|beta|Added [Chat attachment](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat mention](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat reaction](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Change|beta|Updated [chatmessage](/graph/api/resources/chatmessage?view=graph-rest-beta)) resource|
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
|Addition|beta|Added API to [list all teams in organization](teams-list-all-teams.md). |

### Outlook contacts
| **Change type** | **Version**   | **Description**                          |
|:--------------- |:------------- |:---------------------------------------- |
|Addition |Beta | Added the complex type [typedEmailAddress](/graph/api/resources/typedemailaddress?view=graph-rest-beta). |
|Change | Beta | Changed the type of the **emailAddresses** property of [contact](/graph/api/resources/contact?view=graph-rest-beta) to be a collection of **typedEmailAddress** instances.|

### Synchronization APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added **progress** property to [sychronizationStatus](/graph/api/resources/synchronization-synchronizationstatus?view=graph-rest-beta) to permit clients to monitor the progress of a synchronization job.|

### Webhooks
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Breaking change | Beta and v1.0 | Reduced [webhooks](/graph/api/resources/webhooks?view=graph-rest-1.0) [maximum length of subscription expiration time](/graph/api/resources/subscription?view=graph-rest-1.0#maximum-length-of-subscription-per-resource-type) for drive root items to 3 days. |


## June 2018

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | All | New application permissions _Application.ReadWrite.All_ and _Application.ReadWrite.OwnedBy_ that allows a client app to create, read, update, and delete applications and service principals as described in the [permissions topic](permissions-reference.md#application-resource-permissions). |
| Addition | v1.0 | Added **ageGroup**, **legalAgeGroupClassification**, and **ConsentRequiredForMinor** properties to [user](/graph/api/resources/user?view=graph-rest-1.0) resource

### Identity and access APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta) feature to [Azure AD](/graph/api/resources/azure-ad-overview?view=graph-rest-beta). |

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added the **connectorServerName** property to the [deviceManagementExchangeConnector](/graph/api/resources/intune-onboarding-devicemanagementexchangeconnector?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **firewallEnabled**, **firewallBlockAllIncoming** and **firewallEnableStealthMode** properties to the [macOSCompliancePolicy](/graph/api/resources/intune-deviceconfig-macoscompliancepolicy?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **unknown** member to the [iosUpdatesInstallStatus](/graph/api/resources/intune-deviceconfig-iosupdatesinstallstatus?view=graph-rest-1.0) enum type|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownerwificonfiguration?view=graph-rest-beta)<br/>[iosVppAppAssignedDeviceLicense](/graph/api/resources/intune-apps-iosvppappassigneddevicelicense?view=graph-rest-beta)<br/>[iosVppAppAssignedLicense](/graph/api/resources/intune-apps-iosvppappassignedlicense?view=graph-rest-beta)<br/>[iosVppAppAssignedUserLicense](/graph/api/resources/intune-apps-iosvppappassigneduserlicense?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationState](/graph/api/resources/intune-deviceconfig-manageddevicemobileappconfigurationstate?view=graph-rest-beta)<br/>[userPFXCertificate](/graph/api/resources/intune-raimportcerts-userpfxcertificate?view=graph-rest-beta)<br/>[vppTokenLicenseSummary](/graph/api/resources/intune-onboarding-vpptokenlicensesummary?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[iosVppAppRevokeLicensesActionResult](/graph/api/resources/intune-apps-iosvppapprevokelicensesactionresult?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidDeviceOwnerSystemUpdateInstallType](/graph/api/resources/intune-deviceconfig-androiddeviceownersystemupdateinstalltype?view=graph-rest-beta)<br/>[androidDeviceOwnerWiFiSecurityType](/graph/api/resources/intune-deviceconfig-androiddeviceownerwifisecuritytype?view=graph-rest-beta)<br/>[userPfxIntendedPurpose](/graph/api/resources/intune-raimportcerts-userpfxintendedpurpose?view=graph-rest-beta)<br/>[userPfxPaddingScheme](/graph/api/resources/intune-raimportcerts-userpfxpaddingscheme?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [createGooglePlayWebToken](/graph/api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-creategoogleplaywebtoken?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [revokeAllLicenses](/graph/api/intune-apps-iosvppapp-revokealllicenses?view=graph-rest-beta) action on [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) |
|Addition|beta|Added the [revokeUserLicense](/graph/api/intune-apps-iosvppapp-revokeuserlicense?view=graph-rest-beta) action on [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) |
|Addition|beta|Added the [revokeDeviceLicense](/graph/api/intune-apps-iosvppapp-revokedevicelicense?view=graph-rest-beta) action on [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) |
|Addition|beta|Added the [sendCustomNotificationToCompanyPortal](/graph/api/intune-shared-devicemanagement-sendcustomnotificationtocompanyportal?view=graph-rest-beta) action on [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the **getLicensesForApp** function on [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) collection |
|Deletion|beta|Removed the following enum types:<br/>**windowsUpdateInsiderBuildControl**<br/>|
|Addition|beta|Added the **systemUpdateWindowStartMinutesAfterMidnight**, **systemUpdateWindowEndMinutesAfterMidnight** and **systemUpdateInstallType** properties to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|beta|Changed the type of the following properties on the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity:<br/>**passwordMinutesOfInactivityBeforeScreenTimeout** from Int64 to Int32<br/>|
|Addition|beta|Added the **customKeyValueData** property to the [androidForWorkVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkvpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customKeyValueData** property to the [androidVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidvpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customKeyValueData** property to the [androidWorkProfileVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customKeyValueData** property to the [appleVpnConfiguration](/graph/api/resources/intune-deviceconfig-applevpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **userId** and **userPrincipalName** properties to the [deviceCompliancePolicyState](/graph/api/resources/intune-deviceconfig-devicecompliancepolicystate?view=graph-rest-beta) entity|
|Addition|beta|Added the **userId** and **userPrincipalName** properties to the [deviceConfigurationState](/graph/api/resources/intune-deviceconfig-deviceconfigurationstate?view=graph-rest-beta) entity|
|Addition|beta|Added the **connectorServerName** property to the [deviceManagementExchangeConnector](/graph/api/resources/intune-onboarding-devicemanagementexchangeconnector?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **settingXml** property from the [iosMobileAppConfiguration](/graph/api/resources/intune-apps-iosmobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **vppTokenId** and **revokeLicenseActionResults** properties to the [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **firewallEnabled**, **firewallBlockAllIncoming** and **firewallEnableStealthMode** properties to the [macOSCompliancePolicy](/graph/api/resources/intune-deviceconfig-macoscompliancepolicy?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **remoteAssistanceSessionErrorString** property from the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **antivirusRequired** and **antiSpywareRequired** properties to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **defenderOfficeAppsOtherProcessInjection**, **defenderOfficeAppsExecutableContentCreationOrLaunch**, **defenderOfficeAppsLaunchChildProcess**, **defenderOfficeMacroCodeAllowWin32Imports**, **defenderScriptObfuscatedMacroCode**, **defenderScriptDownloadedPayloadExecution**, **defenderProcessCreation**, **defenderUntrustedUSBProcess**, **defenderUntrustedExecutable** and **defenderEmailContentExecution** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **searchDisableLocation**, **inkWorkspaceAccessState**, **defenderPotentiallyUnwantedAppActionSetting** and **defenderCloudExtendedTimeoutInSeconds** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **updatesMinimumAutoInstallClassification** property to the [windows81GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows81generalconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **previewBuildSetting** property from the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **userPfxCertificates** navigation property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **assignedLicenses** navigation property to the [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceMobileAppConfigurationStates** navigation property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **websiteList** property to the [iosWebContentFilterSpecificWebsitesAccess](/graph/api/resources/intune-deviceconfig-ioswebcontentfilterspecificwebsitesaccess?view=graph-rest-beta) complex type|
|Addition|beta|Added the **androidWorkProfile** member to the [devicePlatformType](/graph/api/resources/intune-deviceconfig-deviceplatformtype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **notConfigured** member to the [editionUpgradeLicenseType](/graph/api/resources/intune-deviceconfig-editionupgradelicensetype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **unknown** member to the [iosUpdatesInstallStatus](/graph/api/resources/intune-deviceconfig-iosupdatesinstallstatus?view=graph-rest-beta) enum type|
|Addition|beta|Added the **userRequestedInstall** member to the [mobileAppActionType](/graph/api/resources/intune-troubleshooting-mobileappactiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **notConfigured** member to the [windows10EditionType](/graph/api/resources/intune-deviceconfig-windows10editiontype?view=graph-rest-beta) enum type

### Microsoft Teams APIs
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition         | Beta          | Added team [archive](/graph/api/team-archive?view=graph-rest-beta) and [unarchive](/graph/api/team-unarchive?view=graph-rest-beta) APIs.|
|Addition         | Beta          | Added team [clone](/graph/api/team-clone?view=graph-rest-beta) operation. |
|Addition         | Beta          | Added APIs to add and remove [apps](/graph/api/resources/teamsapp?view=graph-rest-beta) to teams. |
|Change|Beta|Updated the path to the [team](/graph/api/resources/team?view=graph-rest-beta) entity.|
|Change|Beta|Updated the path to the [channel](/graph/api/resources/channel?view=graph-rest-beta) entity.|


### Privileged Identity Management APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [privilegedAccess](/graph/api/resources/privilegedaccess?view=graph-rest-beta) entity.|
| Addition | beta | Added the [governanceResource](/graph/api/resources/governanceresource?view=graph-rest-beta) entity, and the following methods and actions: <br> [List](/graph/api/governanceresource-list?view=graph-rest-beta) <br> [Get](/graph/api/governanceresource-get?view=graph-rest-beta)<br>|
| Addition | beta | Added the [governanceSubject](/graph/api/resources/governancesubject?view=graph-rest-beta) entity.|
| Addition | beta | Added the [governanceRoleDefinition](/graph/api/resources/governanceroledefinition?view=graph-rest-beta) entity, and tollowing methods and actions:<br> [List](/graph/api/governanceroledefinition-list?view=graph-rest-beta) <br> [Get](/graph/api/governanceroledefinition-get?view=graph-rest-beta) |
| Addition | beta | Added the [governanceRoleAssignment](/graph/api/resources/governanceroleassignment?view=graph-rest-beta) entity, and following methods and actions:<br> [List](/graph/api/governanceroleassignment-list?view=graph-rest-beta) <br> [Get](/graph/api/governanceroleassignment-get?view=graph-rest-beta) <br> [Export](/graph/api/governanceroleassignment-export?view=graph-rest-beta) |
| Addition | beta | Added the [governanceRoleAssignmentRequest](/graph/api/resources/governanceroleassignmentrequest?view=graph-rest-beta) entity, and following methods and actions:<br> [List](/graph/api/governanceroleassignmentrequest-list?view=graph-rest-beta) <br> [Get](/graph/api/governanceroleassignmentrequest-get?view=graph-rest-beta) <br> [Create](/graph/api/governanceroleassignmentrequest-post?view=graph-rest-beta) <br> [Cancel](/graph/api/governanceroleassignmentrequest-cancel?view=graph-rest-beta) <br> [Update](/graph/api/governanceroleassignmentrequest-update?view=graph-rest-beta) |
| Addition | beta | Added the [governanceRoleSetting](/graph/api/resources/governancerolesetting?view=graph-rest-beta) entity, and the following methods and actions:<br> [List](/graph/api/governancerolesetting-list?view=graph-rest-beta) <br> [Get](/graph/api/governancerolesetting-get?view=graph-rest-beta) <br> [Update](/graph/api/governancerolesetting-update?view=graph-rest-beta) |
| Addition | beta | Added the following complex types: <br> [governancePermission](/graph/api/resources/governancepermission?view=graph-rest-beta) <br> [governanceRoleAssignmentRequestStatus](/graph/api/resources/governanceroleassignmentrequeststatus?view=graph-rest-beta) <br> [governanceRuleSetting](/graph/api/resources/governancerulesetting?view=graph-rest-beta) <br> [governanceSchedule](/graph/api/resources/governanceschedule?view=graph-rest-beta)|

### Security APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | beta        | Added new enum types:<br/>[alertFeedback](/graph/api/resources/alertfeedbackenumtype?view=graph-rest-beta)<br/>[alertStatus](/graph/api/resources/alertstatusenumtype?view=graph-rest-beta)<br/>[alertType](/graph/api/resources/alerttypeenumtype?view=graph-rest-beta)<br/>[applicationPermissionsRequired](/graph/api/resources/applicationpermissionsrequiredenumtype?view=graph-rest-beta)<br/>[logonType](/graph/api/resources/logontypeenumtype?view=graph-rest-beta)<br/>[processIntegrityLevel](/graph/api/resources/processintegritylevelenumtype?view=graph-rest-beta)<br/>[securityNetworkProtocol](/graph/api/resources/securitynetworkprotocolenumtype?view=graph-rest-beta)<br/>[userAccountSecurityType](/graph/api/resources/useraccountsecuritytypeenumtype?view=graph-rest-beta)<br/>

## May 2018

### Azure AD APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change           | Beta          | Renamed the **creatorUserId** property of the [subscription](/graph/api/resources/subscription?view=graph-rest-beta) entity to **creatorId** to better reflect its meaning. |

### Directory APIs

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0        | Added [List deleted items owned by a user](/graph/api/directory-deleteditems-user-owned?view=graph-rest-1.0) action to [directory (deleted items)](/graph/api/resources/directory?view=graph-rest-1.0) resource |
| Addition | beta | Added the [getUserOwnedObjects](/graph/api/directory-deleteditems-user-owned?view=graph-rest-beta) function to the [directory](/graph/api/resources/directory?view=graph-rest-beta) resource to list the deleted groups owned by a given user. |

### Education API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | The scope **Members.Read.Hidden** is required to read or update the **Members** collection on an [educationClass](/graph/api/resources/educationclass?view=graph-rest-1.0) entity using app-only tokens. |
|Change           |Beta           |Updated the possible values of **educationSubmissionStatus** type in the status property of  [educationsubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta).|
|Change           |Beta           |Added the **educationAssignmentIndividualRecipient** complex type to the assignTo property of [educationAssignment](/graph/api/resources/educationassignment?view=graph-rest-beta).|
|Change           |Beta           |Added the **unsubmittedBy**, **unsubmittedDate**, **returnedBy**, **returnedDate** property of [educationSubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta).|
|Addition         |Beta           |Added the [return](/graph/api/educationsubmission-return?view=graph-rest-beta) and  [unsubmit](/graph/api/educationsubmission-unsubmit?view=graph-rest-beta) action to [educationSubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta).|
|Change           |Beta           |Removed the release and  recall action on [educationSubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta).|

### Groups

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | Added the **importance** property to the [post](/graph/api/resources/post?view=graph-rest-1.0) entity. |

### Insights API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added the [settings](/graph/api/resources/user-settings?view=graph-rest-beta) entity and the following CRUD methods: <br> [Get](/graph/api/user-get-settings?view=graph-rest-beta) <br> [Update](/graph/api/user-update-settings?view=graph-rest-beta) |

### Microsoft Bookings API

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added the [bookingBusiness](/graph/api/resources/bookingbusiness?view=graph-rest-beta) entity and the following CRUD methods and actions: <br> [List](/graph/api/bookingbusiness-list?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness-post-bookingbusinesses?view=graph-rest-beta) <br> [Get](/graph/api/bookingbusiness-get?view=graph-rest-beta) <br> [Update](/graph/api/bookingbusiness-update?view=graph-rest-beta) <br> [Delete](/graph/api/bookingbusiness-delete?view=graph-rest-beta) <br> [Publish](/graph/api/bookingbusiness-publish?view=graph-rest-beta) <br> [Unpublish](/graph/api/bookingbusiness-unpublish?view=graph-rest-beta). <br> Find out more about integrating with the [Microsoft Bookings API](booking-concept-overview.md). |
| Addition        | Beta          | Added the [bookingAppointment](/graph/api/resources/bookingappointment?view=graph-rest-beta) entity and the following CRUD methods and action: <br> [List](/graph/api/bookingbusiness-list-appointments?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness-post-appointments?view=graph-rest-beta) <br> [Get](/graph/api/bookingappointment-get?view=graph-rest-beta) <br> [Update](/graph/api/bookingappointment-update?view=graph-rest-beta) <br> [Delete](/graph/api/bookingappointment-delete?view=graph-rest-beta) <br> [Cancel](/graph/api/bookingappointment-cancel?view=graph-rest-beta). |
| Addition        | Beta          | Added the [bookingCurrency](/graph/api/resources/bookingcurrency?view=graph-rest-beta) entity and the following methods: <br> [List](/graph/api/bookingcurrency-list?view=graph-rest-beta) <br> [Get](/graph/api/bookingcurrency-get?view=graph-rest-beta). |
| Addition        | Beta          | Added the [bookingCustomer](/graph/api/resources/bookingcustomer?view=graph-rest-beta) entity and the following CRUD methods: <br> [List](/graph/api/bookingbusiness-list-customers?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness-post-customers?view=graph-rest-beta) <br> [Get](/graph/api/bookingcustomer-get?view=graph-rest-beta) <br> [Update](/graph/api/bookingcustomer-update?view=graph-rest-beta) <br> [Delete](/graph/api/bookingcustomer-delete?view=graph-rest-beta).|
| Addition        | Beta          | Added the [bookingService](/graph/api/resources/bookingservice?view=graph-rest-beta) entity and the following CRUD methods: <br> [List](/graph/api/bookingbusiness-list-services?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness-post-services?view=graph-rest-beta) <br> [Get](/graph/api/bookingservice-get?view=graph-rest-beta) <br> [Update](/graph/api/bookingservice-update?view=graph-rest-beta) <br> [Delete](/graph/api/bookingservice-delete?view=graph-rest-beta).|
| Addition        | Beta          | Added the [bookingStaffMember](/graph/api/resources/bookingstaffmember?view=graph-rest-beta) entity and the following CRUD methods: <br> [List](/graph/api/bookingbusiness-list-staffmembers?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness-post-staffmembers?view=graph-rest-beta) <br> [Get](/graph/api/bookingstaffmember-get?view=graph-rest-beta) <br> [Update](/graph/api/bookingstaffmember-update?view=graph-rest-beta) <br> [Delete](/graph/api/bookingstaffmember-delete?view=graph-rest-beta).|
| Addition        | Beta          | Added the following complex types: <br> [bookingNamedEntity](/graph/api/resources/bookingnamedentity?view=graph-rest-beta) <br> [bookingPerson](/graph/api/resources/bookingperson?view=graph-rest-beta) <br> [bookingReminder](/graph/api/resources/bookingreminder?view=graph-rest-beta) <br> [bookingWorkHours](/graph/api/resources/bookingworkhours?view=graph-rest-beta) <br> [bookingWorkTimeSlot](/graph/api/resources/bookingworktimeslot?view=graph-rest-beta).|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidWorkProfileCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidworkprofilecompliancepolicy?view=graph-rest-beta)<br/>[easEmailProfileConfigurationBase](/graph/api/resources/intune-deviceconfig-easemailprofileconfigurationbase?view=graph-rest-beta)<br/>[mobileAppIntentAndState](/graph/api/resources/intune-troubleshooting-mobileappintentandstate?view=graph-rest-beta)<br/>[mobileAppTroubleshootingEvent](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingevent?view=graph-rest-beta)<br/>[unsupportedDeviceConfiguration](/graph/api/resources/intune-deviceconfig-unsupporteddeviceconfiguration?view=graph-rest-beta)<br/>[windowsKioskConfiguration](/graph/api/resources/intune-deviceconfig-windowskioskconfiguration?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[managedDeviceCleanupSettings](/graph/api/resources/intune-devices-manageddevicecleanupsettings?view=graph-rest-beta)<br/>[mobileAppIntentAndStateDetail](/graph/api/resources/intune-troubleshooting-mobileappintentandstatedetail?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppPolicyCreationHistory](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingapppolicycreationhistory?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppStateHistory](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingappstatehistory?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppTargetHistory](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingapptargethistory?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppUpdateHistory](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingappupdatehistory?view=graph-rest-beta)<br/>[mobileAppTroubleshootingDeviceCheckinHistory](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingdevicecheckinhistory?view=graph-rest-beta)<br/>[mobileAppTroubleshootingHistoryItem](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootinghistoryitem?view=graph-rest-beta)<br/>[unsupportedDeviceConfigurationDetail](/graph/api/resources/intune-deviceconfig-unsupporteddeviceconfigurationdetail?view=graph-rest-beta)<br/>**windowsAutoPilotEnrollmentSettings**<br/>[windowsKioskActiveDirectoryGroup](/graph/api/resources/intune-deviceconfig-windowskioskactivedirectorygroup?view=graph-rest-beta)<br/>[windowsKioskAppBase](/graph/api/resources/intune-deviceconfig-windowskioskappbase?view=graph-rest-beta)<br/>[windowsKioskAppConfiguration](/graph/api/resources/intune-deviceconfig-windowskioskappconfiguration?view=graph-rest-beta)<br/>[windowsKioskAutologon](/graph/api/resources/intune-deviceconfig-windowskioskautologon?view=graph-rest-beta)<br/>[windowsKioskAzureADGroup](/graph/api/resources/intune-deviceconfig-windowskioskazureadgroup?view=graph-rest-beta)<br/>[windowsKioskAzureADUser](/graph/api/resources/intune-deviceconfig-windowskioskazureaduser?view=graph-rest-beta)<br/>[windowsKioskDesktopApp](/graph/api/resources/intune-deviceconfig-windowskioskdesktopapp?view=graph-rest-beta)<br/>[windowsKioskLocalGroup](/graph/api/resources/intune-deviceconfig-windowskiosklocalgroup?view=graph-rest-beta)<br/>[windowsKioskLocalUser](/graph/api/resources/intune-deviceconfig-windowskiosklocaluser?view=graph-rest-beta)<br/>[windowsKioskMultipleApps](/graph/api/resources/intune-deviceconfig-windowskioskmultipleapps?view=graph-rest-beta)<br/>[windowsKioskProfile](/graph/api/resources/intune-deviceconfig-windowskioskprofile?view=graph-rest-beta)<br/>[windowsKioskSingleUWPApp](/graph/api/resources/intune-deviceconfig-windowskiosksingleuwpapp?view=graph-rest-beta)<br/>[windowsKioskUser](/graph/api/resources/intune-deviceconfig-windowskioskuser?view=graph-rest-beta)<br/>[windowsKioskUWPApp](/graph/api/resources/intune-deviceconfig-windowskioskuwpapp?view=graph-rest-beta)<br/>[windowsKioskVisitor](/graph/api/resources/intune-deviceconfig-windowskioskvisitor?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[defenderScheduleScanDay](/graph/api/resources/intune-deviceconfig-defenderschedulescanday?view=graph-rest-beta)<br/>[defenderSubmitSamplesConsentType](/graph/api/resources/intune-deviceconfig-defendersubmitsamplesconsenttype?view=graph-rest-beta)<br/>[domainNameSource](/graph/api/resources/intune-deviceconfig-domainnamesource?view=graph-rest-beta)<br/>[localSecurityOptionsSmartCardRemovalBehaviorType](/graph/api/resources/intune-deviceconfig-localsecurityoptionssmartcardremovalbehaviortype?view=graph-rest-beta)<br/>[mobileAppActionType](/graph/api/resources/intune-troubleshooting-mobileappactiontype?view=graph-rest-beta)<br/>[mobileAppIntent](/graph/api/resources/intune-troubleshooting-mobileappintent?view=graph-rest-beta)<br/>[roleAssignmentScopeType](/graph/api/resources/intune-rbac-roleassignmentscopetype?view=graph-rest-beta)<br/>[usernameSource](/graph/api/resources/intune-deviceconfig-usernamesource?view=graph-rest-beta)<br/>[windowsDeviceUsageType](/graph/api/resources/intune-enrollment-windowsdeviceusagetype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [setDeviceName](/graph/api/intune-devices-manageddevice-setdevicename?view=graph-rest-beta)<br/>action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**depEnrollmentProfile**<br/>**enrollmentProfile**<br/>**importedAppleDeviceIdentity**<br/>**importedAppleDeviceIdentityResult**<br/>|
|Deletion|beta|Removed the following complex types:<br/>**managementCertificateWithThumbprint**<br/>|
|Deletion|beta|Removed the following enum types:<br/>**depTokenType**<br/>**discoverySource**<br/>**iTunesPairingMode**<br/>|
|Deletion|beta|Removed the importAppleDeviceIdentityList action on [importedAppleDeviceIdentity](/graph/api/resources/intune-corpenrollment-importedappledeviceidentity?view=graph-rest-beta) collection |
|Deletion|beta|Removed the [updateDeviceProfileAssignment](/graph/api/intune-corpenrollment-enrollmentprofile-updatedeviceprofileassignment?view=graph-rest-beta) action on [enrollmentProfile](/graph/api/resources/intune-corpenrollment-enrollmentprofile?view=graph-rest-beta) |
|Deletion|beta|Removed the setDefaultProfile action on [enrollmentProfile](/graph/api/resources/intune-corpenrollment-enrollmentprofile?view=graph-rest-beta) |
|Deletion|beta|Removed the shareForSchoolDataSyncService action on [depOnboardingSetting](/graph/api/resources/intune-onboarding-deponboardingsetting?view=graph-rest-beta) |
|Deletion|beta|Removed the unshareForSchoolDataSyncService action on [depOnboardingSetting](/graph/api/resources/intune-onboarding-deponboardingsetting?view=graph-rest-beta) |
|Deletion|beta|Removed the exportMobileConfig](/graph/api/intune_corpenrollment_enrollmentprofile_exportmobileconfig?view=graph-rest-beta) function on [enrollmentProfile](/graph/api/resources/intune-corpenrollment-enrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the **userDomainNameSource** and **customDomainName** properties to the [androidEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-androideasemailprofileconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **workProfileBlockCamera** and **workProfileBlockCrossProfileContactsSearch** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **workProfileBlockCamera** and **workProfileBlockCrossProfileContactsSearch** properties to the [androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **thirdPartyKeyboardsBlocked** and **filterOpenInToOnlyManagedApps** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **conflictCount** property to the [deviceComplianceUserOverview](/graph/api/resources/intune-deviceconfig-devicecomplianceuseroverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **conflictCount** property to the [deviceConfigurationUserOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationuseroverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceCleanupSettings** property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **usernameSource** property from the [iosEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **thirdPartyKeyboardsBlocked** and **filterOpenInToOnlyManagedApps** properties to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **ignoreVersionDetection** property to the [macOSLobApp](/graph/api/resources/intune-apps-macoslobapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **pinRequiredOnLaunchInsteadOfBiometric** and **pinRequiredInsteadOfBiometricTimeout** properties to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **autopilotEnrolled**, **requireUserEnrollmentApproval**, **iccid** and **udid** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **isAutopilotEnrolled** property from the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [managedDeviceMobileAppConfigurationDeviceSummary](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationdevicesummary?view=graph-rest-beta) entity|
|Addition|beta|Added the **conflictCount** property to the [managedDeviceMobileAppConfigurationUserSummary](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationusersummary?view=graph-rest-beta) entity|
|Addition|beta|Added the **scopeType** property to the [roleAssignment](/graph/api/resources/intune-rbac-roleassignment?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **usernameSource** property from the [windows10EasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-windows10easemailprofileconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees**, **localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers**, **localSecurityOptionsDisableServerDigitallySignCommunicationsAlways**, **localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees**, **localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares**, **localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts**, **localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares**, **localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange** and **localSecurityOptionsSmartCardRemovalBehavior** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **showInstallationProgress**, **blockDeviceSetupRetryByUser**, **allowDeviceResetOnInstallFailure**, **allowLogCollectionOnInstallFailure**, **customErrorMessage**, **installProgressTimeoutInMinutes** and **allowDeviceUseOnInstallFailure** properties to the [windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune-onboarding-windows10enrollmentcompletionpageconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **title**, **bodyText**, **moreInfoUrl** and **moreInfoText** properties from the [windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune-onboarding-windows10enrollmentcompletionpageconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **defenderBlockOnAccessProtection**, **defenderScheduleScanDay** and **defenderSubmitSamplesConsentType** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **language** and **enrollmentSettings** properties to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **useDeviceContext** property to the [windowsMobileMSI](/graph/api/resources/intune-apps-windowsmobilemsi?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **usernameSource** property from the [windowsPhoneEASEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-windowsphoneeasemailprofileconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **localActions** navigation property from the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **enrollmentProfiles** and **importedAppleDeviceIdentities** navigation properties from the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **mobileAppIntentAndStates** and **mobileAppTroubleshootingEvents** navigation properties to the [user](/graph/api/resources/intune-shared-user?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceUsageType** and **skipKeyboardSelectionPage** properties to the [outOfBoxExperienceSettings](/graph/api/resources/intune-enrollment-outofboxexperiencesettings?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **paloAltoGlobalProtect** member from the [androidForWorkVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidforworkvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **samAccountName** and **primarySmtpAddress** members to the [androidUsernameSource](/graph/api/resources/intune-deviceconfig-androidusernamesource?view=graph-rest-beta) enum type|
|Deletion|beta|Removed the **paloAltoGlobalProtect** member from the [androidVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [windows10VpnConnectionType](/graph/api/resources/intune-deviceconfig-windows10vpnconnectiontype?view=graph-rest-beta) enum type|

## April 2018

### Audit log API

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added the [directoryAudit](/graph/api/resources/directoryaudit?view=graph-rest-beta) and [signIn](/graph/api/resources/signin?view=graph-rest-beta) entities to support a new audit log API. |
|Addition|Beta|Added the following resources to support the audit log API: [appIndentity](/graph/api/resources/appidentity?view=graph-rest-beta), [auditActivityInitiator](/graph/api/resources/auditactivityinitiator?view=graph-rest-beta), [conditionalAccessPolicy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta), [deviceDetail](/graph/api/resources/devicedetail?view=graph-rest-beta), [mfaDetail](/graph/api/resources/mfadetail?view=graph-rest-beta), [modifiedProperty](/graph/api/resources/modifiedproperty?view=graph-rest-beta), [signinLocation](/graph/api/resources/signinlocation?view=graph-rest-beta), [signinStatus](/graph/api/resources/signinstatus?view=graph-rest-beta), [targetResource](/graph/api/resources/targetresource?view=graph-rest-beta), [targetResourceApp](/graph/api/resources/targetresourceapp?view=graph-rest-beta), [targetResourceDevice](/graph/api/resources/targetresourcedevice?view=graph-rest-beta), [targetResourceDirectory](/graph/api/resources/targetresourcedirectory?view=graph-rest-beta), [targetResourceGroup](/graph/api/resources/targetresourcegroup?view=graph-rest-beta), [targetResourceOther](/graph/api/resources/targetresourceother?view=graph-rest-beta), [targetResourcePolicy](/graph/api/resources/targetresourcepolicy?view=graph-rest-beta), [targetResourceRole](/graph/api/resources/targetresourcerole?view=graph-rest-beta), [targetResourceServicePrincipal](/graph/api/resources/targetresourceserviceprincipal?view=graph-rest-beta), [targetResourceUser](/graph/api/resources/targetresourceuser?view=graph-rest-beta), [userIdentity](/graph/api/resources/useridentity?view=graph-rest-beta) |

### Directory APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the **privacyProfile** complex type to the [organization](/graph/api/resources/organization?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the **legalAgeGroup, ageGroup and consentProvidedForMinor** complex type to the [user](/graph/api/resources/user?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added users and groups support to [webhook](/graph/api/resources/webhooks?view=graph-rest-1.0) notification subscriptions. |
| Addition        | beta        | Added [List deleted items owned by a user](/graph/api/directory-deleteditems-user-owned?view=graph-rest-beta) action to [directory (deleted items)](/graph/api/resources/directory?view=graph-rest-beta) resource |

### Education APIs

|Change type|Version|Description|
|:---|:---|:---|
|Change|Beta|Added the reportableIdentifier property to [educationsynchronizationerror](/graph/api/resources/educationsynchronizationerror?view=graph-rest-beta).|
|Change|Beta|Updated the response options for the [uploadUrl](/graph/api/educationsynchronizationprofile-uploadurl?view=graph-rest-beta) API.|
|Change|Beta|Updated the text for description of the [educationSynchronizationError](/graph/api/resources/educationsynchronizationerror?view=graph-rest-beta) resource type.|
|Change|Beta|Updated the text for description of the [get sync errors](/graph/api/educationsynchronizationerrors-get?view=graph-rest-beta) API.|


### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[managedDeviceMobileAppConfigurationDeviceStatus](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationdevicestatus?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new enum types:<br/>[managedDeviceOwnerType](/graph/api/resources/intune-devices-manageddeviceownertype?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the **managedDeviceOwnerType** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **deviceStatuses** navigation property to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **androidWorkProfile** member to the [policyPlatformType](/graph/api/resources/intune-deviceconfig-policyplatformtype?view=graph-rest-1.0) enum type|
|Addition|beta|Added new entities:<br/>[androidWorkProfileCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androidworkprofilecertificateprofilebase?view=graph-rest-beta)<br/>[androidWorkProfileCustomConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilecustomconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileEasEmailProfileBase](/graph/api/resources/intune-deviceconfig-androidworkprofileeasemailprofilebase?view=graph-rest-beta)<br/>[androidWorkProfileEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofileenterprisewificonfiguration?view=graph-rest-beta)<br/>[androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegeneraldeviceconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileGmailEasConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegmaileasconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileNineWorkEasConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilenineworkeasconfiguration?view=graph-rest-beta)<br/>[androidWorkProfilePkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilepkcscertificateprofile?view=graph-rest-beta)<br/>[androidWorkProfileScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilescepcertificateprofile?view=graph-rest-beta)<br/>[androidWorkProfileTrustedRootCertificate](/graph/api/resources/intune-deviceconfig-androidworkprofiletrustedrootcertificate?view=graph-rest-beta)<br/>[androidWorkProfileVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilewificonfiguration?view=graph-rest-beta)<br/>[restrictedAppsViolation](/graph/api/resources/intune-deviceconfig-restrictedappsviolation?view=graph-rest-beta)<br/>[windowsAutopilotDeploymentProfileAssignment](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofileassignment?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[managedDeviceModelsAndManufacturers](/graph/api/resources/intune-devices-manageddevicemodelsandmanufacturers?view=graph-rest-beta)<br/>[managedDeviceReportedApp](/graph/api/resources/intune-devices-manageddevicereportedapp?view=graph-rest-beta)<br/>[windowsEnrollmentStatusScreenSettings](/graph/api/resources/intune-enrollment-windowsenrollmentstatusscreensettings?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidWorkProfileCrossProfileDataSharingType](/graph/api/resources/intune-deviceconfig-androidworkprofilecrossprofiledatasharingtype?view=graph-rest-beta)<br/>[androidWorkProfileDefaultAppPermissionPolicyType](/graph/api/resources/intune-deviceconfig-androidworkprofiledefaultapppermissionpolicytype?view=graph-rest-beta)<br/>[androidWorkProfileRequiredPasswordType](/graph/api/resources/intune-deviceconfig-androidworkprofilerequiredpasswordtype?view=graph-rest-beta)<br/>[androidWorkProfileVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconnectiontype?view=graph-rest-beta)<br/>[bitLockerRecoveryInformationType](/graph/api/resources/intune-deviceconfig-bitlockerrecoveryinformationtype?view=graph-rest-beta)<br/>[localSecurityOptionsInformationShownOnLockScreenType](/graph/api/resources/intune-deviceconfig-localsecurityoptionsinformationshownonlockscreentype?view=graph-rest-beta)<br/>[managedAppRemediationAction](/graph/api/resources/intune-mam-managedappremediationaction?view=graph-rest-beta)<br/>[managedDeviceOwnerType](/graph/api/resources/intune-devices-manageddeviceownertype?view=graph-rest-beta)<br/>[restrictedAppsState](/graph/api/resources/intune-deviceconfig-restrictedappsstate?view=graph-rest-beta)<br/>[windows10VpnProfileTarget](/graph/api/resources/intune-deviceconfig-windows10vpnprofiletarget?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [playLostModeSound](/graph/api/intune-devices-manageddevice-playlostmodesound?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Deletion|beta|Removed the following enum types:<br/>**bitLockerRecoveryinformationType**<br/>**windowsUpdateRestartMode**<br/>|
|Addition|beta|Added the **workProfileBlockScreenCapture** and **workProfileBlockCrossProfileCallerId** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipePatchVersion**, **allowedAndroidDeviceManufacturers** and **appActionIfAndroidDeviceManufacturerNotAllowed** properties to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipeSdkVersion**, **minimumWipePatchVersion**, **allowedIosDeviceModels**, **appActionIfIosDeviceModelNotAllowed**, **allowedAndroidDeviceManufacturers** and **appActionIfAndroidDeviceManufacturerNotAllowed** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [deviceComplianceDeviceOverview](/graph/api/resources/intune-deviceconfig-devicecompliancedeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [deviceConfigurationDeviceOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationdeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **accountMoveCompletionDateTime** property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipeSdkVersion**, **allowedIosDeviceModels** and **appActionIfIosDeviceModelNotAllowed** properties to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipeOsVersion**, **minimumWipeAppVersion**, **appActionIfDeviceComplianceRequired** and **appActionIfMaximumPinRetriesExceeded** properties to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceOwnerType**, **preferMdmOverGroupPolicyAppliedDateTime**, **isAutopilotEnrolled** and **requestUserEnrollmentApproval** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceModelsAndManufacturers** property to the [managedDeviceOverview](/graph/api/resources/intune-devices-manageddeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **localSecurityOptionsMachineInactivityLimitInMinutes**, **localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool**, **localSecurityOptionsInformationShownOnLockScreen**, **defenderSecurityCenterDisableAccountUI**, **defenderSecurityCenterDisableHardwareUI**, **defenderSecurityCenterDisableRansomwareUI**, **defenderSecurityCenterDisableSecureBootUI** and **defenderSecurityCenterDisableTroubleshootingUI** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **printerNames**, **printerDefaultName**, **printerBlockAddition** and **searchBlockWebResults** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **profileTarget**, **enableAlwaysOn** and **enableDeviceTunnel** properties to the [windows10VpnConfiguration](/graph/api/resources/intune-deviceconfig-windows10vpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **enrollmentStatusScreenSettings** property to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceConfigurationRestrictedAppsViolations** navigation property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **assignments** navigation property to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **networkAccessConfigurations** navigation property to the [windowsDomainJoinConfiguration](/graph/api/resources/intune-deviceconfig-windowsdomainjoinconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **permissions** property from the [auditActor](/graph/api/resources/intune-auditing-auditactor?view=graph-rest-beta) complex type|
|Change|beta|Changed the type of the following properties on the [bitLockerRecoveryOptions](/graph/api/resources/intune-deviceconfig-bitlockerrecoveryoptions?view=graph-rest-beta) complex type:<br/>**recoveryInformationToStore** from [bitLockerRecoveryinformationType](/graph/api/resources/intune-deviceconfig-bitlockerrecoveryinformationtype?view=graph-rest-beta) to [bitLockerRecoveryInformationType](/graph/api/resources/intune-deviceconfig-bitlockerrecoveryinformationtype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **deviceInactivityBeforeRetirementInDay** property to the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added the **landingPageCustomizedImage** property to the [intuneBrand](/graph/api/resources/intune-onboarding-intunebrand?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **ipAddressOrFqdn** property from the [vpnServer](/graph/api/resources/intune-deviceconfig-vpnserver?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **restartMode** property from the [windowsUpdateScheduledInstall](/graph/api/resources/intune-deviceconfig-windowsupdatescheduledinstall?view=graph-rest-beta) complex type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidForWorkVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidforworkvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [appleVpnConnectionType](/graph/api/resources/intune-deviceconfig-applevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **androidWorkProfile** member to the [policyPlatformType](/graph/api/resources/intune-deviceconfig-policyplatformtype?view=graph-rest-beta) enum type|

### Microsoft Teams

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new [teamMemberSettings](/graph/api/resources/teammembersettings?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [teamGuestSettings](/graph/api/resources/teamguestsettings?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [teamMessagingSettings](/graph/api/resources/teammessagingsettings?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [teamFunSettings](/graph/api/resources/teamfunsettings?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [delete channel](/graph/api/channel-delete?view=graph-rest-beta) operation.|
|Addition|Beta|Added new [patch channel](/graph/api/channel-patch?view=graph-rest-beta) operation.|
|Addition|Beta|Added new webUrl property to [team](/graph/api/resources/team?view=graph-rest-beta) resource.|
|Change|Beta|Updated the path to the [channel](/graph/api/resources/channel?view=graph-rest-beta) entity.|

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
| Addition        | v1.0        | Added the following CRUD operations for message rules: [create](/graph/api/mailfolder-post-messagerules?view=graph-rest-1.0), [list](/graph/api/mailfolder-list-messagerules?view=graph-rest-1.0), [get](/graph/api/messagerule-get?view=graph-rest-1.0), [update](/graph/api/messagerule-update?view=graph-rest-1.0), and [delete](/graph/api/messagerule-delete?view=graph-rest-1.0). |
| Addition | Beta | Added [mailSearchFolder](/graph/api/resources/mailsearchfolder?view=graph-rest-beta). |
| Addition | Beta | Added the following APIs for mail search folder: [Create](/graph/api/mailsearchfolder-post?view=graph-rest-beta), [Update](/graph/api/mailsearchfolder-update?view=graph-rest-beta). |
| Change | Beta | Added support for mail search folder to [delete mailFolder](/graph/api/mailfolder-delete?view=graph-rest-beta), [get mailFolder](/graph/api/mailfolder-get?view=graph-rest-beta), and [list child folders](/graph/api/mailfolder-list-childfolders?view=graph-rest-beta). |


### Outlook user choices

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the new **masterCategories** navigation property to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-1.0) entity. **masterCategories** is a collection of [outlookCategory](/graph/api/resources/outlookcategory?view=graph-rest-1.0) objects. |
| Addition        | v1.0        | Added the [outlookCategory](/graph/api/resources/outlookcategory?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the following CRUD operations for [outlookCategory](/graph/api/resources/outlookcategory?view=graph-rest-1.0): [create](/graph/api/outlookuser-post-mastercategories?view=graph-rest-1.0), [get](/graph/api/outlookcategory-get?view=graph-rest-1.0), [update](/graph/api/outlookcategory-update?view=graph-rest-1.0), and [delete](/graph/api/outlookcategory-delete?view=graph-rest-1.0). |
| Addition        | v1.0        | Added the new [supportedLanguages](/graph/api/outlookuser-supportedlanguages?view=graph-rest-1.0) function to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the new [supportedTimeZones](/graph/api/outlookuser-supportedtimezones?view=graph-rest-1.0) function to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-1.0) entity. |
|Addition | v1.0 | Added the new **workingHours** property to [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-1.0). See [workingHours resource type](/graph/api/resources/workinghours?view=graph-rest-1.0) for information on the supported use cases.|
|Addition | v1.0 | Added the following new complex types: <br> [workingHours](/graph/api/resources/workinghours?view=graph-rest-1.0) <br> [timeZoneBase](/graph/api/resources/timezonebase?view=graph-rest-1.0) <br> [customTimeZone](/graph/api/resources/customtimezone?view=graph-rest-1.0) <br> [standardTimeZoneOffset](/graph/api/resources/standardtimezoneoffset?view=graph-rest-1.0) <br> [daylightTimeZoneOffset](/graph/api/resources/daylighttimezoneoffset?view=graph-rest-1.0)|


### Project Rome APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | v1.0 | Added [Get recent activities API](/graph/api/projectrome-get-recent-activities?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Get activities API](/graph/api/projectrome-get-activities?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Upsert Activity](/graph/api/projectrome-put-activity?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Upsert HistoryItem](/graph/api/projectrome-put-historyitem?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Delete Activity](/graph/api/projectrome-delete-activity?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Upsert HistoryItem](/graph/api/projectrome-delete-historyitem?view=graph-rest-1.0) |
| Addition | v1.0 | Added [activity](/graph/api/resources/projectrome-activity?view=graph-rest-1.0) |
| Addition | v.10 | Added [historyItem](/graph/api/resources/projectrome-historyitem?view=graph-rest-1.0) |
| Addition | v1.0 | Added [visualInfo](/graph/api/resources/projectrome-visualinfo?view=graph-rest-1.0) |
| Addition | v1.0 | Added [imageInfo](/graph/api/resources/projectrome-imageinfo?view=graph-rest-1.0) |
| Addition | v.10 | Added [Project Rome overview](/graph/api/resources/project-rome-overview?view=graph-rest-1.0) |
| Change | Beta | Added deep insert documentation to [Upsert Activity](/graph/api/projectrome-put-activity?view=graph-rest-beta) |

### Reports APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta| Added delegated access support. |
|Addition|v1.0| Added delegated access support. |

### Security APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added the [security API](/graph/api/resources/security-api-overview?view=graph-rest-beta), including the following resources and operations:<br/>[alert](/graph/api/resources/alert?view=graph-rest-beta) (and related entities)<br/>[Get alert](/graph/api/alert-get?view=graph-rest-beta)<br/>[List alerts](/graph/api/alert-list?view=graph-rest-beta)<br/>[Update alert](/graph/api/alert-update?view=graph-rest-beta)<br/><br/>Added the following supporting documentation:<br/>[Errors](/graph/api/resources/security-error-codes?view=graph-rest-beta)<br/>[Integrate with a SIEM](security-siemintegration.md)


## March 2018

### ActivityFeedService APIs

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added [Get recent activities API](/graph/api/projectrome-get-recent-activities?view=graph-rest-beta) |
| Addition        | Beta       | Added [Get activities API](/graph/api/projectrome-get-activities?view=graph-rest-beta) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert Activity](/graph/api/projectrome-put-activity?view=graph-rest-beta) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert HistoryItem](/graph/api/projectrome-put-historyitem?view=graph-rest-beta) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Delete Activity](/graph/api/projectrome-delete-activity?view=graph-rest-beta) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert HistoryItem](/graph/api/projectrome-delete-historyitem?view=graph-rest-beta) |
| Change | Beta | Added **status** property to [activity](/graph/api/resources/projectrome-activity?view=graph-rest-beta) |
| Change | Beta | Added **activity** navigation property to [historyItem](/graph/api/resources/projectrome-historyitem?view=graph-rest-beta) |
| Change | Beta | Added new APIs to [Project Rome overview](/graph/api/resources/project-rome-overview?view=graph-rest-beta) |

### Azure AD APIs

|Change type|Version|Description|
|:---|:---|:---|
|Change|beta|Added the **applicationID** and **creatorUserID** properties to the [subscription](/graph/api/resources/subscription?view=graph-rest-beta) resource. |
|Change|beta|Added the [list](/graph/api/subscription-list?view=graph-rest-beta) operation to the [subscription](/graph/api/resources/subscription?view=graph-rest-beta) entity. |

### Data Policy Operations

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added new entity [dataPolicyOperation](/graph/api/resources/datapolicyoperation?view=graph-rest-beta). This represents a submitted data policy operation for tracking purposes.
| Addition        | beta        | Added the [exportPersonalData](/graph/api/user-exportpersonaldata?view=graph-rest-beta) action on [users](/graph/api/resources/users?view=graph-rest-beta). This action submits a data policy operation request to export personal data stored by Microsoft for a user. |

### Directory APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **onPremisesExtensionAttributes** complex type to the [user](/graph/api/resources/user?view=graph-rest-beta) entity. This contains the on-premises AD extension attributes 1-15. |
| Addition        | Beta        | Added the **privacyProfile** complex type to the [organization](/graph/api/resources/organization?view=graph-rest-beta) entity. |
| Addition        | v1.0        | Added support for [restoring and permanently deleting users and groups](/graph/api/resources/directory?view=graph-rest-1.0). |

### Excel APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Change|v1.0|Added the **legacyId** property to the [Excel Table](/graph/api/resources/table?view=graph-rest-1.0) entity. This will contain the numeric value identifier (string data type) that will remain constact for a given Excel table. This is provided as an additional metadata if the application relied on the legacy identifier used in older Excel client applications. Note: The `id` and `legacyId` property should be treated as an opaque string value and should not be parsed to any other type within your application. |

### Group lifecycle policy

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added [groupLifecyclePolicy](/graph/api/resources/grouplifecyclepolicy?view=graph-rest-1.0) |
| Addition        | v1.0        | Added the following APIs for group lifecycle policy: [Create](/graph/api/grouplifecyclepolicy-post-grouplifecyclepolicies?view=graph-rest-1.0), [List](/graph/api/grouplifecyclepolicy-list?view=graph-rest-1.0), [Get](/graph/api/grouplifecyclepolicy-get?view=graph-rest-1.0), [Update](/graph/api/grouplifecyclepolicy-update?view=graph-rest-1.0), [Delete](/graph/api/grouplifecyclepolicy-delete?view=graph-rest-1.0), [Add group](/graph/api/grouplifecyclepolicy-addgroup?view=graph-rest-1.0), [Remove group](/graph/api/grouplifecyclepolicy-removegroup?view=graph-rest-1.0) |
| Addition        | v1.0        | Added [List groupLifecyclePolicies](/graph/api/group-list-grouplifecyclepolicies?view=graph-rest-1.0) function to [group](/graph/api/resources/group?view=graph-rest-1.0) |
| Change | v1.0 | Added renewedDateTime property and [renew](/graph/api/group-renew?view=graph-rest-1.0) to [group](/graph/api/resources/group?view=graph-rest-1.0) |

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[iosMobileAppConfiguration](/graph/api/resources/intune-apps-iosmobileappconfiguration?view=graph-rest-1.0)<br/>[vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new complex types:<br/>[appConfigurationSettingItem](/graph/api/resources/intune-apps-appconfigurationsettingitem?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the [syncLicenses](/graph/api/intune-onboarding-vpptoken-synclicenses?view=graph-rest-1.0) action on [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-1.0) |
|Addition|v1.0|Added the **vppTokens** navigation property to the [deviceAppManagement](/graph/api/resources/intune-shared-deviceappmanagement?view=graph-rest-1.0) entity|
|Addition|beta|Added the **managementCertificateExpirationDate** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **enhancedJailBreak** property to the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta)<br/>[androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta)<br/>[androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta)<br/>[androidManagedStoreAppConfigurationSchema](/graph/api/resources/intune-androidforwork-androidmanagedstoreappconfigurationschema?view=graph-rest-beta)<br/>[dataSharingConsent](/graph/api/resources/intune-devices-datasharingconsent?view=graph-rest-beta)<br/>[deviceConfigurationUserStateSummary](/graph/api/resources/intune-deviceconfig-deviceconfigurationuserstatesummary?view=graph-rest-beta)<br/>[macOSEndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-macosendpointprotectionconfiguration?view=graph-rest-beta)<br/>[macOSImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-macosimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[macOSLobApp](/graph/api/resources/intune-apps-macoslobapp?view=graph-rest-beta)<br/>[managedEBookCategory](/graph/api/resources/intune-books-managedebookcategory?view=graph-rest-beta)<br/>[microsoftStoreForBusinessContainedApp](/graph/api/resources/intune-apps-microsoftstoreforbusinesscontainedapp?view=graph-rest-beta)<br/>[mobileContainedApp](/graph/api/resources/intune-apps-mobilecontainedapp?view=graph-rest-beta)<br/>[windowsUniversalAppXContainedApp](/graph/api/resources/intune-apps-windowsuniversalappxcontainedapp?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[androidManagedStoreAppConfigurationSchemaItem](/graph/api/resources/intune-androidforwork-androidmanagedstoreappconfigurationschemaitem?view=graph-rest-beta)<br/>[deviceAndAppManagementData](/graph/api/resources/intune-onboarding-deviceandappmanagementdata?view=graph-rest-beta)<br/>[loggedOnUser](/graph/api/resources/intune-devices-loggedonuser?view=graph-rest-beta)<br/>[macOSFirewallApplication](/graph/api/resources/intune-deviceconfig-macosfirewallapplication?view=graph-rest-beta)<br/>[macOSLobChildApp](/graph/api/resources/intune-apps-macoslobchildapp?view=graph-rest-beta)<br/>[macOSMinimumOperatingSystem](/graph/api/resources/intune-apps-macosminimumoperatingsystem?view=graph-rest-beta)<br/>[windowsAppXAppAssignmentSettings](/graph/api/resources/intune-apps-windowsappxappassignmentsettings?view=graph-rest-beta)<br/>[windowsUniversalAppXAppAssignmentSettings](/graph/api/resources/intune-apps-windowsuniversalappxappassignmentsettings?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [requestSignupUrl](/graph/api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-requestsignupurl?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [completeSignup](/graph/api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-completesignup?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [syncApps](/graph/api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-syncapps?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [unbind](/graph/api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-unbind?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [revokeToken](/graph/api/intune-androidforwork-androiddeviceownerenrollmentprofile-revoketoken?view=graph-rest-beta) action on [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the [createToken](/graph/api/intune-androidforwork-androiddeviceownerenrollmentprofile-createtoken?view=graph-rest-beta) action on [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the [assign](/graph/api/intune-apps-manageddevicemobileappconfiguration-assign?view=graph-rest-beta) action on [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) |
|Addition|beta|Added the [consentToDataSharing](/graph/api/intune-devices-datasharingconsent-consenttodatasharing?view=graph-rest-beta) action on [dataSharingConsent](/graph/api/resources/intune-devices-datasharingconsent?view=graph-rest-beta) |
|Addition|beta|Added the [getLoggedOnManagedDevices](/graph/api/intune-devices-user-getloggedonmanageddevices?view=graph-rest-beta) function on [user](/graph/api/resources/intune-shared-user?view=graph-rest-beta) |
|Addition|beta|Added the [exportDeviceAndAppManagementData](/graph/api/intune-onboarding-user-exportdeviceandappmanagementdata?view=graph-rest-beta) function on [user](/graph/api/resources/intune-devices-user?view=graph-rest-beta) |
|Addition|beta|Added the [exportDeviceAndAppManagementData](/graph/api/intune-onboarding-user-exportdeviceandappmanagementdata?view=graph-rest-beta) function on [user](/graph/api/resources/intune-devices-user?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**appleVolumePurchaseProgramToken**<br/>**mdmAppConfigGroupAssignment**<br/>**windows10KioskConfiguration**<br/>|
|Deletion|beta|Removed the [assign](/graph/api/intune-apps-manageddevicemobileappconfiguration-assign?view=graph-rest-beta) action on [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) |
|Deletion|beta|Removed the [syncApps](/graph/api/intune-onboarding-applevolumepurchaseprogramtoken-syncapps?view=graph-rest-beta) action on [appleVolumePurchaseProgramToken](/graph/api/resources/intune-onboarding-applevolumepurchaseprogramtoken?view=graph-rest-beta) |
|Addition|beta|Added the **workProfileBluetoothEnableContactSharing** property to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [androidForWorkImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkimportedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [androidImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-androidimportedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [iosImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-iosimportedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **encodedSettingXml** property to the [iosMobileAppConfiguration](/graph/api/resources/intune-apps-iosmobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceId** and **azureADDeviceId** properties to the [managedAppRegistration](/graph/api/resources/intune-mam-managedappregistration?view=graph-rest-beta) entity|
|Addition|beta|Added the **usersLoggedOn** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **lastLoggedOnUserId** property from the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **lastModifiedDateTime** property to the [managedDeviceOverview](/graph/api/resources/intune-devices-manageddeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **isDependency** property to the [mobileAppContentFile](/graph/api/resources/intune-apps-mobileappcontentfile?view=graph-rest-beta) entity|
|Addition|beta|Added the **windowsEnabled**, **macEnabled**, **windowsDeviceBlockedOnMissingPartnerData** and **macDeviceBlockedOnMissingPartnerData** properties to the [mobileThreatDefenseConnector](/graph/api/resources/intune-onboarding-mobilethreatdefenseconnector?view=graph-rest-beta) entity|
|Addition|beta|Added the **shouldUninstallOlderVersionsOfOffice** property to the [officeSuiteApp](/graph/api/resources/intune-apps-officesuiteapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **dataSharingConsentGranted** property to the [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) entity|
|Addition|beta|Added the **localSecurityOptionsBlockRemoteLogonWithBlankPassword**, **localSecurityOptionsAdministratorAccountName**, **localSecurityOptionsEnableGuestAccount**, **localSecurityOptionsGuestAccountName**, **localSecurityOptionsAllowUndockWithoutHavingToLogon**, **localSecurityOptionsBlockUsersInstallingPrinterDrivers**, **localSecurityOptionsBlockRemoteOpticalDriveAccess**, **localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser**, **localSecurityOptionsMachineInactivityLimit**, **localSecurityOptionsDoNotRequireCtrlAltDel**, **localSecurityOptionsInformationDisplayedOnLockScreen**, **localSecurityOptionsHideLastSignedInUser**, **localSecurityOptionsHideUsernameAtSignIn**, **localSecurityOptionsLogOnMessageTitle**, **localSecurityOptionsLogOnMessageText**, **localSecurityOptionsAllowPKU2UAuthenticationRequests**, **localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager**, **localSecurityOptionsClearVirtualMemoryPageFile**, **localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn**, **localSecurityOptionsAllowUIAccessApplicationElevation**, **localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations**, **localSecurityOptionsOnlyElevateSignedExecutables**, **localSecurityOptionsAdministratorElevationPromptBehavior**, **localSecurityOptionsStandardUserElevationPromptBehavior**, **localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation**, **localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation**, **localSecurityOptionsAllowUIAccessApplicationsForSecureLocations**, **localSecurityOptionsUseAdminApprovalMode**, **localSecurityOptionsUseAdminApprovalModeForAdministrators**, **deviceGuardLocalSystemAuthorityCredentialGuardSettings**, **deviceGuardEnableVirtualizationBasedSecurity** and **deviceGuardEnableSecureBootWithDMA** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **defenderPasswordProtectedEmailContentExecutionType** property from the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [windows10ImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-windows10importedpfxcertificateprofile?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **printerNames**, **defaultPrinterName** and **blockAddingNewPrinter** properties from the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune-deviceconfig-windows10secureassessmentconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore** property to the [windows81SCEPCertificateProfile](/graph/api/resources/intune-deviceconfig-windows81scepcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **purchaseOrderIdentifier** property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [windowsCertificateProfileBase](/graph/api/resources/intune-deviceconfig-windowscertificateprofilebase?view=graph-rest-beta) entity:<br/>**subjectAlternativeNameType** from required to optional<br/>|
|Addition|beta|Added the **advancedThreatProtectionOnboardingFilename** and **advancedThreatProtectionOffboardingFilename** properties to the [windowsDefenderAdvancedThreatProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windowsdefenderadvancedthreatprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [windowsPhone81ImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-windowsphone81importedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **skipChecksBeforeRestart** and **updateWeeks** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedEBookCategories** navigation property to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **androidManagedStoreAccountEnterpriseSettings**, **androidManagedStoreAppConfigurationSchemas**, **androidDeviceOwnerEnrollmentProfiles**, **dataSharingConsents** and **deviceConfigurationUserStateSummaries** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **deviceSetupConfigurations** navigation property from the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **groupAssignments** navigation property from the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **categories** navigation property to the [managedEBook](/graph/api/resources/intune-books-managedebook?view=graph-rest-beta) entity|
|Addition|beta|Added the **containedApps** navigation property to the [microsoftStoreForBusinessApp](/graph/api/resources/intune-apps-microsoftstoreforbusinessapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **containedApps** navigation property to the [mobileAppContent](/graph/api/resources/intune-apps-mobileappcontent?view=graph-rest-beta) entity|
|Addition|beta|Added the **committedContainedApps** navigation property to the [windowsUniversalAppX](/graph/api/resources/intune-apps-windowsuniversalappx?view=graph-rest-beta) entity|

### OneDrive
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[baseItemVersion](/graph/api/resources/baseitemversion?view=graph-rest-1.0)<br/>[driveItemVersion](/graph/api/resources/driveitemversion?view=graph-rest-1.0)<br/>[listItemVersion](/graph/api/resources/listitemversion?view=graph-rest-1.0)<br/> |
|Addition|v1.0|Added new complex types:<br/>[publicationFacet](/graph/api/resources/publicationfacet?view=graph-rest-1.0)<br/> |
|Addition|v1.0|Added the <b>publication</b> property to the [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the <b>versions</b> navigation property to the [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the <b>versions</b> navigation property to the [listItem](/graph/api/resources/listitem?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the <b>root</b> property to the [siteCollection](/graph/api/resources/sitecollection?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the [restoreVersion](/graph/api/driveitemversion-restore?view=graph-rest-1.0) action for the [driveItemVersion](/graph/api/resources/driveitemversion?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the [restoreVersion](/graph/api/listitemversion-restore?view=graph-rest-1.0) action for the [listItemVersion](/graph/api/resources/listitemversion?view=graph-rest-1.0) entity |


### OneDrive
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new complex type:<br/>[itemPreviewInfo](/graph/api/resources/itempreviewinfo?view=graph-rest-beta)<br/> |
|Addition|beta|Added the <b>name</b> property to the [contentTypeInfo](/graph/api/resources/contenttypeinfo?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>objectType</b> property to the [deleteAction](/graph/api/resources/deleteaction?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>newName</b> property to the [renameAction](/graph/api/resources/renameaction?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>tenantId</b> property to the [sharepointIds](/graph/api/resources/renameaction?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>lastRecordedDateTime</b> property to the [itemActivityTimeSet](/graph/api/resources/itemactivitytimeset?view=graph-rest-beta) complex type |
|Addition|beta|Added the [preview](/graph/api/driveitem-preview?view=graph-rest-beta) action for the [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) entity |

### Reports APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Addition|beta|Added the **siteId** property to the [sharePointSiteUsageDetail](/graph/api/resources/sharepointsiteusagedetail?view=graph-rest-beta) entity.|

### Terms of use

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the [agreement](/graph/api/resources/agreement?view=graph-rest-beta) and [agreementAcceptance](/graph/api/resources/agreementacceptance?view=graph-rest-beta) resources. |
| Addition        | Beta        | Added the following APIs for [agreement](/graph/api/resources/agreement?view=graph-rest-beta): [Create](/graph/api/greement-post-agreements?view=graph-rest-beta), [List](/graph/api/agreement-list?view=graph-rest-beta), [Get](/graph/api/agreement-get?view=graph-rest-beta), [Update](/graph/api/agreement-update?view=graph-rest-beta), [Delete](/graph/api/agreement-delete?view=graph-rest-beta). |
| Addition        | Beta        | Added the [agreementAcceptance](/graph/api/resources/agreementacceptance?view=graph-rest-beta) relationships to the [user](/graph/api/resources/user?view=graph-rest-beta) resource. |

## February 2018

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidForWorkImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[androidImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-androidimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentity?view=graph-rest-beta)<br/>[iosImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-iosimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[windows10ImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-windows10importedpfxcertificateprofile?view=graph-rest-beta)<br/>[windows10KioskConfiguration](/graph/api/resources/intune-deviceconfig-windows10kioskconfiguration?view=graph-rest-beta)<br/>[windowsPhone81ImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-windowsphone81importedpfxcertificateprofile?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[importedWindowsAutopilotDeviceIdentityState](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentitystate?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [managedDeviceEnrollmentFailureDetails](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuredetails?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentFailureDetails](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuredetails?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentFailureTrends](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuretrends?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentTopFailures](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmenttopfailures?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentTopFailures](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmenttopfailures?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Change|beta|Removed the **requireAppVerify**, **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders** and **requireCompanyPortalAppIntegrity** properties from the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity|
|Change|beta|Removed the **requireAppVerify**, **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders** and **requireCompanyPortalAppIntegrity** properties from the [androidForWorkCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidforworkcompliancepolicy?view=graph-rest-beta) entity|
|Change|beta|Removed the **name**, **modifiedDateTime**, **totalEnrollmentCount** and **qrCode** properties from the [androidForWorkEnrollmentProfile](/graph/api/resources/intune-androidforwork-androidforworkenrollmentprofile?view=graph-rest-beta) entity|
|Change|beta|Removed the **nonEapAuthenticationMethodForEapTtls**, **nonEapAuthenticationMethodForPeap** and **enableOuterIdentityPrivacy** properties from the [androidForWorkEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkenterprisewificonfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **workProfileBlockAddingAccounts** property to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|beta|Removed the **blockCrossProfileCopyPaste** and **requireAppVerify** properties from the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **deviceOwnerManagementEnabled** property to the [androidForWorkSettings](/graph/api/resources/intune-androidforwork-androidforworksettings?view=graph-rest-beta) entity|
|Change|beta|Removed the **requireAppVerify** property from the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **exemptedAppPackages** property to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **exemptedAppProtocols** and **exemptedAppPackages** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **exemptedAppProtocols** property to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **lastLoggedOnUserId** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Change|beta|Added the **isFrameworkFile** property to the [mobileAppContentFile](/graph/api/resources/intune-apps-mobileappcontentfile?view=graph-rest-beta) entity|
|Change|beta|Added the **targetedAppManagementLevels** property to the [targetedManagedAppProtection](/graph/api/resources/intune-mam-targetedmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **localSecurityOptionsBlockMicrosoftAccounts**, **localSecurityOptionsEnableAdministratorAccount**, **defenderPreventCredentialStealingType**, **defenderProcessCreationType**, **defenderUntrustedUSBProcessType**, **defenderUntrustedExecutableType**, **defenderPasswordProtectedEmailContentExecutionType**, **defenderAdvancedRansomewareProtectionType** and **applicationGuardAllowFileSaveOnHost** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **edgeFavoritesListLocation** and **edgeBlockEditFavorites** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **printerNames**, **defaultPrinterName** and **blockAddingNewPrinter** properties to the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune-deviceconfig-windows10secureassessmentconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **importedWindowsAutopilotDeviceIdentities** navigation property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Change|beta|Added the **shareAPNSData** property to the [adminConsent](/graph/api/resources/intune-devices-adminconsent?view=graph-rest-beta) complex type|
|Change|beta|Removed the **collectFullIOSAppInventory** property from the [adminConsent](/graph/api/resources/intune-devices-adminconsent?view=graph-rest-beta) complex type|
|Change|beta|Removed the **deviceUsageType** property from the [outOfBoxExperienceSettings](/graph/api/resources/intune-enrollment-outofboxexperiencesettings?view=graph-rest-beta) complex type|


### Planner APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new complex types:<br/>[plannerPlanContext](/graph/api/resources/plannerplancontext?view=graph-rest-beta)<br/>[plannerPlanContextDetails](/graph/api/resources/plannerplancontextdetails?view=graph-rest-beta)<br/>[plannerPlanContextCollection](/graph/api/resources/plannerplancontextcollection?view=graph-rest-beta)<br/>[plannerPlanContextDetailsCollection](/graph/api/resources/plannerplancontextdetailscollection?view=graph-rest-beta)<br/>[plannerFavoritePlanReference](/graph/api/resources/plannerfavoriteplanreference?view=graph-rest-beta)<br/>[plannerRecentPlanReference](/graph/api/resources/plannerrecentplanreference?view=graph-rest-beta)<br/>[plannerFavoritePlanReferenceCollection](/graph/api/resources/plannerfavoriteplanreferencecollection?view=graph-rest-beta)<br/>[plannerRecentPlanReferenceCollection](/graph/api/resources/plannerrecentplanreferencecollection?view=graph-rest-beta)|
|Addition|Beta|Added `favoritePlanReferences` and `recentPlanReferences` properties to [plannerUser](/graph/api/resources/planneruser?view=graph-rest-beta) entity. |
|Addition|Beta|Added `favoritePlans` and `recentPlans` navigation properties to [plannerUser](/graph/api/resources/planneruser?view=graph-rest-beta) entity. |
|Addition|Beta|Added `contexts` property to [plannerPlan](/graph/api/resources/plannerplan?view=graph-rest-beta) entity. |
|Addition|Beta|Added `contextDetails` property to [plannerPlanDetails](/graph/api/resources/plannerplandetails?view=graph-rest-beta) entity. |
|Addition|Beta|Added Planner [delta query](/graph/api/planneruser-list-delta?view=graph-rest-beta) |

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | Beta    | Added the **activatedOnSharedComputer** property to the [userActivationCounts](/graph/api/resources/useractivationcounts?view=graph-rest-beta) entity.|
| Addition    | Beta    | Added the **sharedComputerActivation** property to the [office365ActivationsUserCounts](/graph/api/resources/office365activationsusercounts?view=graph-rest-beta) entity.|

## January 2018

### Education APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added extra navigation properties and improve filtering support for [roster API](/graph/api/resources/education-overview?view=graph-rest-beta).|

### JSON Batching

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added [JSON batching](json-batching.md) support. Internal request limit set to 20.|
|Change|Beta|Increased [JSON batching](json-batching.md) internal request limit from 5 to 20.|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-1.0)<br/>[androidCustomConfiguration](/graph/api/resources/intune-deviceconfig-androidcustomconfiguration?view=graph-rest-1.0)<br/>[androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-1.0)<br/>[androidLobApp](/graph/api/resources/intune-apps-androidlobapp?view=graph-rest-1.0)<br/>[androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-1.0)<br/>[androidManagedAppRegistration](/graph/api/resources/intune-mam-androidmanagedappregistration?view=graph-rest-1.0)<br/>[androidStoreApp](/graph/api/resources/intune-apps-androidstoreapp?view=graph-rest-1.0)<br/>[appleDeviceFeaturesConfigurationBase](/graph/api/resources/intune-deviceconfig-appledevicefeaturesconfigurationbase?view=graph-rest-1.0)<br/>[applePushNotificationCertificate](/graph/api/resources/intune-devices-applepushnotificationcertificate?view=graph-rest-1.0)<br/>[defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-1.0)<br/>[detectedApp](/graph/api/resources/intune-devices-detectedapp?view=graph-rest-1.0)<br/>[deviceAndAppManagementRoleAssignment](/graph/api/resources/intune-rbac-deviceandappmanagementroleassignment?view=graph-rest-1.0)<br/>[deviceAndAppManagementRoleDefinition](/graph/api/resources/intune-rbac-deviceandappmanagementroledefinition?view=graph-rest-1.0)<br/>[deviceAppManagement](/graph/api/resources/intune-shared-deviceappmanagement?view=graph-rest-1.0)<br/>[deviceCategory](/graph/api/resources/intune-shared-devicecategory?view=graph-rest-1.0)<br/>[deviceComplianceActionItem](/graph/api/resources/intune-deviceconfig-devicecomplianceactionitem?view=graph-rest-1.0)<br/>[deviceComplianceDeviceOverview](/graph/api/resources/intune-deviceconfig-devicecompliancedeviceoverview?view=graph-rest-1.0)<br/>[deviceComplianceDeviceStatus](/graph/api/resources/intune-deviceconfig-devicecompliancedevicestatus?view=graph-rest-1.0)<br/>[deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-1.0)<br/>[deviceCompliancePolicyAssignment](/graph/api/resources/intune-deviceconfig-devicecompliancepolicyassignment?view=graph-rest-1.0)<br/>[deviceCompliancePolicyDeviceStateSummary](/graph/api/resources/intune-deviceconfig-devicecompliancepolicydevicestatesummary?view=graph-rest-1.0)<br/>[deviceCompliancePolicySettingStateSummary](/graph/api/resources/intune-deviceconfig-devicecompliancepolicysettingstatesummary?view=graph-rest-1.0)<br/>[deviceCompliancePolicyState](/graph/api/resources/intune-deviceconfig-devicecompliancepolicystate?view=graph-rest-1.0)<br/>[deviceComplianceScheduledActionForRule](/graph/api/resources/intune-deviceconfig-devicecompliancescheduledactionforrule?view=graph-rest-1.0)<br/>[deviceComplianceSettingState](/graph/api/resources/intune-deviceconfig-devicecompliancesettingstate?view=graph-rest-1.0)<br/>[deviceComplianceUserOverview](/graph/api/resources/intune-deviceconfig-devicecomplianceuseroverview?view=graph-rest-1.0)<br/>[deviceComplianceUserStatus](/graph/api/resources/intune-deviceconfig-devicecomplianceuserstatus?view=graph-rest-1.0)<br/>[deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-1.0)<br/>[deviceConfigurationAssignment](/graph/api/resources/intune-deviceconfig-deviceconfigurationassignment?view=graph-rest-1.0)<br/>[deviceConfigurationDeviceOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationdeviceoverview?view=graph-rest-1.0)<br/>[deviceConfigurationDeviceStateSummary](/graph/api/resources/intune-deviceconfig-deviceconfigurationdevicestatesummary?view=graph-rest-1.0)<br/>[deviceConfigurationDeviceStatus](/graph/api/resources/intune-deviceconfig-deviceconfigurationdevicestatus?view=graph-rest-1.0)<br/>[deviceConfigurationState](/graph/api/resources/intune-deviceconfig-deviceconfigurationstate?view=graph-rest-1.0)<br/>[deviceConfigurationUserOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationuseroverview?view=graph-rest-1.0)<br/>[deviceConfigurationUserStatus](/graph/api/resources/intune-deviceconfig-deviceconfigurationuserstatus?view=graph-rest-1.0)<br/>[deviceEnrollmentConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentconfiguration?view=graph-rest-1.0)<br/>[deviceEnrollmentLimitConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentlimitconfiguration?view=graph-rest-1.0)<br/>[deviceEnrollmentPlatformRestrictionsConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentplatformrestrictionsconfiguration?view=graph-rest-1.0)<br/>[deviceEnrollmentWindowsHelloForBusinessConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentwindowshelloforbusinessconfiguration?view=graph-rest-1.0)<br/>[deviceInstallState](/graph/api/resources/intune-books-deviceinstallstate?view=graph-rest-1.0)<br/>[deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-1.0)<br/>[deviceManagementExchangeConnector](/graph/api/resources/intune-onboarding-devicemanagementexchangeconnector?view=graph-rest-1.0)<br/>[deviceManagementPartner](/graph/api/resources/intune-onboarding-devicemanagementpartner?view=graph-rest-1.0)<br/>[deviceManagementTroubleshootingEvent](/graph/api/resources/intune-troubleshooting-devicemanagementtroubleshootingevent?view=graph-rest-1.0)<br/>[eBookInstallSummary](/graph/api/resources/intune-books-ebookinstallsummary?view=graph-rest-1.0)<br/>[editionUpgradeConfiguration](/graph/api/resources/intune-deviceconfig-editionupgradeconfiguration?view=graph-rest-1.0)<br/>[enrollmentConfigurationAssignment](/graph/api/resources/intune-onboarding-enrollmentconfigurationassignment?view=graph-rest-1.0)<br/>[enrollmentTroubleshootingEvent](/graph/api/resources/intune-troubleshooting-enrollmenttroubleshootingevent?view=graph-rest-1.0)<br/>[iosCertificateProfile](/graph/api/resources/intune-deviceconfig-ioscertificateprofile?view=graph-rest-1.0)<br/>[iosCompliancePolicy](/graph/api/resources/intune-deviceconfig-ioscompliancepolicy?view=graph-rest-1.0)<br/>[iosCustomConfiguration](/graph/api/resources/intune-deviceconfig-ioscustomconfiguration?view=graph-rest-1.0)<br/>[iosDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-iosdevicefeaturesconfiguration?view=graph-rest-1.0)<br/>[iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-1.0)<br/>[iosLobApp](/graph/api/resources/intune-apps-ioslobapp?view=graph-rest-1.0)<br/>[iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-1.0)<br/>[iosManagedAppRegistration](/graph/api/resources/intune-mam-iosmanagedappregistration?view=graph-rest-1.0)<br/>[iosStoreApp](/graph/api/resources/intune-apps-iosstoreapp?view=graph-rest-1.0)<br/>[iosUpdateConfiguration](/graph/api/resources/intune-deviceconfig-iosupdateconfiguration?view=graph-rest-1.0)<br/>[iosUpdateDeviceStatus](/graph/api/resources/intune-deviceconfig-iosupdatedevicestatus?view=graph-rest-1.0)<br/>[iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-1.0)<br/>[iosVppEBook](/graph/api/resources/intune-books-iosvppebook?view=graph-rest-1.0)<br/>[iosVppEBookAssignment](/graph/api/resources/intune-books-iosvppebookassignment?view=graph-rest-1.0)<br/>[localizedNotificationMessage](/graph/api/resources/intune-notification-localizednotificationmessage?view=graph-rest-1.0)<br/>[macOSCompliancePolicy](/graph/api/resources/intune-deviceconfig-macoscompliancepolicy?view=graph-rest-1.0)<br/>[macOSCustomConfiguration](/graph/api/resources/intune-deviceconfig-macoscustomconfiguration?view=graph-rest-1.0)<br/>[macOSDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-macosdevicefeaturesconfiguration?view=graph-rest-1.0)<br/>[macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-1.0)<br/>[macOSOfficeSuiteApp](/graph/api/resources/intune-apps-macosofficesuiteapp?view=graph-rest-1.0)<br/>[managedAndroidLobApp](/graph/api/resources/intune-apps-managedandroidlobapp?view=graph-rest-1.0)<br/>[managedAndroidStoreApp](/graph/api/resources/intune-apps-managedandroidstoreapp?view=graph-rest-1.0)<br/>[managedApp](/graph/api/resources/intune-apps-managedapp?view=graph-rest-1.0)<br/>[managedAppConfiguration](/graph/api/resources/intune-mam-managedappconfiguration?view=graph-rest-1.0)<br/>[managedAppOperation](/graph/api/resources/intune-mam-managedappoperation?view=graph-rest-1.0)<br/>[managedAppPolicy](/graph/api/resources/intune-mam-managedapppolicy?view=graph-rest-1.0)<br/>[managedAppPolicyDeploymentSummary](/graph/api/resources/intune-mam-managedapppolicydeploymentsummary?view=graph-rest-1.0)<br/>[managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-1.0)<br/>[managedAppRegistration](/graph/api/resources/intune-mam-managedappregistration?view=graph-rest-1.0)<br/>[managedAppStatus](/graph/api/resources/intune-mam-managedappstatus?view=graph-rest-1.0)<br/>[managedAppStatusRaw](/graph/api/resources/intune-mam-managedappstatusraw?view=graph-rest-1.0)<br/>[managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0)<br/>[managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-1.0)<br/>[managedDeviceMobileAppConfigurationAssignment](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationassignment?view=graph-rest-1.0)<br/>[managedDeviceMobileAppConfigurationDeviceSummary](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationdevicesummary?view=graph-rest-1.0)<br/>[managedDeviceMobileAppConfigurationUserStatus](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationuserstatus?view=graph-rest-1.0)<br/>[managedDeviceMobileAppConfigurationUserSummary](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationusersummary?view=graph-rest-1.0)<br/>[managedDeviceOverview](/graph/api/resources/intune-devices-manageddeviceoverview?view=graph-rest-1.0)<br/>[managedEBook](/graph/api/resources/intune-books-managedebook?view=graph-rest-1.0)<br/>[managedEBookAssignment](/graph/api/resources/intune-books-managedebookassignment?view=graph-rest-1.0)<br/>[managedIOSLobApp](/graph/api/resources/intune-apps-managedioslobapp?view=graph-rest-1.0)<br/>[managedIOSStoreApp](/graph/api/resources/intune-apps-managediosstoreapp?view=graph-rest-1.0)<br/>[managedMobileApp](/graph/api/resources/intune-mam-managedmobileapp?view=graph-rest-1.0)<br/>[managedMobileLobApp](/graph/api/resources/intune-apps-managedmobilelobapp?view=graph-rest-1.0)<br/>[mdmWindowsInformationProtectionPolicy](/graph/api/resources/intune-mam?view=graph-rest-1.0mwindowsinformationprotectionpolicy)<br/>[microsoftStoreForBusinessApp](/graph/api/resources/intune-apps-microsoftstoreforbusinessapp?view=graph-rest-1.0)<br/>[mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-1.0)<br/>[mobileAppAssignment](/graph/api/resources/intune-apps-mobileappassignment?view=graph-rest-1.0)<br/>[mobileAppCategory](/graph/api/resources/intune-apps-mobileappcategory?view=graph-rest-1.0)<br/>[mobileAppContent](/graph/api/resources/intune-apps-mobileappcontent?view=graph-rest-1.0)<br/>[mobileAppContentFile](/graph/api/resources/intune-apps-mobileappcontentfile?view=graph-rest-1.0)<br/>[mobileLobApp](/graph/api/resources/intune-apps-mobilelobapp?view=graph-rest-1.0)<br/>[mobileThreatDefenseConnector](/graph/api/resources/intune-onboarding-mobilethreatdefenseconnector?view=graph-rest-1.0)<br/>[notificationMessageTemplate](/graph/api/resources/intune-notification-notificationmessagetemplate?view=graph-rest-1.0)<br/>[onPremisesConditionalAccessSettings](/graph/api/resources/intune-onboarding-onpremisesconditionalaccesssettings?view=graph-rest-1.0)<br/>[remoteAssistancePartner](/graph/api/resources/intune-remoteassistance-remoteassistancepartner?view=graph-rest-1.0)<br/>[resourceOperation](/graph/api/resources/intune-rbac-resourceoperation?view=graph-rest-1.0)<br/>[roleAssignment](/graph/api/resources/intune-rbac-roleassignment?view=graph-rest-1.0)<br/>[roleDefinition](/graph/api/resources/intune-rbac-roledefinition?view=graph-rest-1.0)<br/>[settingStateDeviceSummary](/graph/api/resources/intune-deviceconfig-settingstatedevicesummary?view=graph-rest-1.0)<br/>[sharedPCConfiguration](/graph/api/resources/intune-deviceconfig-sharedpcconfiguration?view=graph-rest-1.0)<br/>[softwareUpdateStatusSummary](/graph/api/resources/intune-deviceconfig-softwareupdatestatussummary?view=graph-rest-1.0)<br/>[targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-1.0)<br/>targetedManagedAppPolicyAssignment<br/>[targetedManagedAppProtection](/graph/api/resources/intune-mam-targetedmanagedappprotection?view=graph-rest-1.0)<br/>[telecomExpenseManagementPartner](/graph/api/resources/intune-tem-telecomexpensemanagementpartner?view=graph-rest-1.0)<br/>[termsAndConditions](/graph/api/resources/intune-companyterms-termsandconditions?view=graph-rest-1.0)<br/>[termsAndConditionsAcceptanceStatus](/graph/api/resources/intune-companyterms-termsandconditionsacceptancestatus?view=graph-rest-1.0)<br/>[termsAndConditionsAssignment](/graph/api/resources/intune-companyterms-termsandconditionsassignment?view=graph-rest-1.0)<br/>[userInstallStateSummary](/graph/api/resources/intune-books-userinstallstatesummary?view=graph-rest-1.0)<br/>[webApp](/graph/api/resources/intune-apps-webapp?view=graph-rest-1.0)<br/>[windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-1.0)<br/>[windows10CustomConfiguration](/graph/api/resources/intune-deviceconfig-windows10customconfiguration?view=graph-rest-1.0)<br/>[windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-1.0)<br/>[windows10EnterpriseModernAppManagementConfiguration](/graph/api/resources/intune-deviceconfig-windows10enterprisemodernappmanagementconfiguration?view=graph-rest-1.0)<br/>[windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-1.0)<br/>[windows10MobileCompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10mobilecompliancepolicy?view=graph-rest-1.0)<br/>[windows10SecureAssessmentConfiguration](/graph/api/resources/intune-deviceconfig-windows10secureassessmentconfiguration?view=graph-rest-1.0)<br/>[windows10TeamGeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10teamgeneralconfiguration?view=graph-rest-1.0)<br/>[windows81CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows81compliancepolicy?view=graph-rest-1.0)<br/>[windows81GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows81generalconfiguration?view=graph-rest-1.0)<br/>[windowsDefenderAdvancedThreatProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windowsdefenderadvancedthreatprotectionconfiguration?view=graph-rest-1.0)<br/>[windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-1.0)<br/>[windowsInformationProtectionAppLearningSummary](/graph/api/resources/intune-wip-windowsinformationprotectionapplearningsummary?view=graph-rest-1.0)<br/>[windowsInformationProtectionAppLockerFile](/graph/api/resources/intune-mam-windowsinformationprotectionapplockerfile?view=graph-rest-1.0)<br/>[windowsInformationProtectionNetworkLearningSummary](/graph/api/resources/intune-wip-windowsinformationprotectionnetworklearningsummary?view=graph-rest-1.0)<br/>[windowsInformationProtectionPolicy](/graph/api/resources/intune-mam-windowsinformationprotectionpolicy?view=graph-rest-1.0)<br/>[windowsMobileMSI](/graph/api/resources/intune-apps-windowsmobilemsi?view=graph-rest-1.0)<br/>[windowsPhone81CompliancePolicy](/graph/api/resources/intune-deviceconfig-windowsphone81compliancepolicy?view=graph-rest-1.0)<br/>[windowsPhone81CustomConfiguration](/graph/api/resources/intune-deviceconfig-windowsphone81customconfiguration?view=graph-rest-1.0)<br/>[windowsPhone81GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windowsphone81generalconfiguration?view=graph-rest-1.0)<br/>[windowsUniversalAppX](/graph/api/resources/intune-apps-windowsuniversalappx?view=graph-rest-1.0)<br/>[windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new complex types:<br/>[allDevicesAssignmentTarget](/graph/api/resources/intune-shared-alldevicesassignmenttarget?view=graph-rest-1.0)<br/>[allLicensedUsersAssignmentTarget](/graph/api/resources/intune-shared-alllicensedusersassignmenttarget?view=graph-rest-1.0)<br/>[androidMinimumOperatingSystem](/graph/api/resources/intune-apps-androidminimumoperatingsystem?view=graph-rest-1.0)<br/>[androidMobileAppIdentifier](/graph/api/resources/intune-mam-androidmobileappidentifier?view=graph-rest-1.0)<br/>[appListItem](/graph/api/resources/intune-deviceconfig-applistitem?view=graph-rest-1.0)<br/>[bitLockerRemovableDrivePolicy](/graph/api/resources/intune-deviceconfig-bitlockerremovabledrivepolicy?view=graph-rest-1.0)<br/>[configurationManagerClientEnabledFeatures](/graph/api/resources/intune-devices-configurationmanagerclientenabledfeatures?view=graph-rest-1.0)<br/>[defenderDetectedMalwareActions](/graph/api/resources/intune-deviceconfig-defenderdetectedmalwareactions?view=graph-rest-1.0)<br/>[deleteUserFromSharedAppleDeviceActionResult](/graph/api/resources/intune-devices-deleteuserfromsharedappledeviceactionresult?view=graph-rest-1.0)<br/>[deviceActionResult](/graph/api/resources/intune-devices-deviceactionresult?view=graph-rest-1.0)<br/>[deviceAndAppManagementAssignmentTarget](/graph/api/resources/intune-shared-deviceandappmanagementassignmenttarget?view=graph-rest-1.0)<br/>[deviceCompliancePolicySettingState](/graph/api/resources/intune-deviceconfig-devicecompliancepolicysettingstate?view=graph-rest-1.0)<br/>[deviceConfigurationSettingState](/graph/api/resources/intune-deviceconfig-deviceconfigurationsettingstate?view=graph-rest-1.0)<br/>[deviceEnrollmentPlatformRestriction](/graph/api/resources/intune-onboarding-deviceenrollmentplatformrestriction?view=graph-rest-1.0)<br/>[deviceExchangeAccessStateSummary](/graph/api/resources/intune-devices-deviceexchangeaccessstatesummary?view=graph-rest-1.0)<br/>[deviceGeoLocation](/graph/api/resources/intune-devices-devicegeolocation?view=graph-rest-1.0)<br/>[deviceHealthAttestationState](/graph/api/resources/intune-devices-devicehealthattestationstate?view=graph-rest-1.0)<br/>[deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-1.0)<br/>[deviceOperatingSystemSummary](/graph/api/resources/intune-devices-deviceoperatingsystemsummary?view=graph-rest-1.0)<br/>[edgeSearchEngine](/graph/api/resources/intune-deviceconfig-edgesearchengine?view=graph-rest-1.0)<br/>[edgeSearchEngineBase](/graph/api/resources/intune-deviceconfig-edgesearchenginebase?view=graph-rest-1.0)<br/>[edgeSearchEngineCustom](/graph/api/resources/intune-deviceconfig-edgesearchenginecustom?view=graph-rest-1.0)<br/>[exclusionGroupAssignmentTarget](/graph/api/resources/intune-shared-exclusiongroupassignmenttarget?view=graph-rest-1.0)<br/>[fileEncryptionInfo](/graph/api/resources/intune-apps-fileencryptioninfo?view=graph-rest-1.0)<br/>[groupAssignmentTarget](/graph/api/resources/intune-shared-groupassignmenttarget?view=graph-rest-1.0)<br/>[intuneBrand](/graph/api/resources/intune-onboarding-intunebrand?view=graph-rest-1.0)<br/>[iosDeviceType](/graph/api/resources/intune-apps-iosdevicetype?view=graph-rest-1.0)<br/>[iosHomeScreenApp](/graph/api/resources/intune-deviceconfig-ioshomescreenapp?view=graph-rest-1.0)<br/>[iosHomeScreenFolder](/graph/api/resources/intune-deviceconfig-ioshomescreenfolder?view=graph-rest-1.0)<br/>[iosHomeScreenFolderPage](/graph/api/resources/intune-deviceconfig-ioshomescreenfolderpage?view=graph-rest-1.0)<br/>[iosHomeScreenItem](/graph/api/resources/intune-deviceconfig-ioshomescreenitem?view=graph-rest-1.0)<br/>[iosHomeScreenPage](/graph/api/resources/intune-deviceconfig-ioshomescreenpage?view=graph-rest-1.0)<br/>[iosLobAppAssignmentSettings](/graph/api/resources/intune-apps-ioslobappassignmentsettings?view=graph-rest-1.0)<br/>[iosMinimumOperatingSystem](/graph/api/resources/intune-apps-iosminimumoperatingsystem?view=graph-rest-1.0)<br/>[iosMobileAppIdentifier](/graph/api/resources/intune-mam-iosmobileappidentifier?view=graph-rest-1.0)<br/>[iosNetworkUsageRule](/graph/api/resources/intune-deviceconfig-iosnetworkusagerule?view=graph-rest-1.0)<br/>[iosNotificationSettings](/graph/api/resources/intune-deviceconfig-iosnotificationsettings?view=graph-rest-1.0)<br/>[iosStoreAppAssignmentSettings](/graph/api/resources/intune-apps-iosstoreappassignmentsettings?view=graph-rest-1.0)<br/>[iosVppAppAssignmentSettings](/graph/api/resources/intune-apps-iosvppappassignmentsettings?view=graph-rest-1.0)<br/>[ipRange](/graph/api/resources/intune-mam-iprange?view=graph-rest-1.0)<br/>[iPv4Range](/graph/api/resources/intune-mam-ipv4range?view=graph-rest-1.0)<br/>[iPv6Range](/graph/api/resources/intune-mam-ipv6range?view=graph-rest-1.0)<br/>[keyValuePair](/graph/api/resources/intune-androidforwork-keyvaluepair?view=graph-rest-1.0)<br/>[locateDeviceActionResult](/graph/api/resources/intune-devices-locatedeviceactionresult?view=graph-rest-1.0)<br/>[managedAppDiagnosticStatus](/graph/api/resources/intune-mam-managedappdiagnosticstatus?view=graph-rest-1.0)<br/>[managedAppPolicyDeploymentSummaryPerApp](/graph/api/resources/intune-mam-managedapppolicydeploymentsummaryperapp?view=graph-rest-1.0)<br/>[mediaContentRatingAustralia](/graph/api/resources/intune-deviceconfig-mediacontentratingaustralia?view=graph-rest-1.0)<br/>[mediaContentRatingCanada](/graph/api/resources/intune-deviceconfig-mediacontentratingcanada?view=graph-rest-1.0)<br/>[mediaContentRatingFrance](/graph/api/resources/intune-deviceconfig-mediacontentratingfrance?view=graph-rest-1.0)<br/>[mediaContentRatingGermany](/graph/api/resources/intune-deviceconfig-mediacontentratinggermany?view=graph-rest-1.0)<br/>[mediaContentRatingIreland](/graph/api/resources/intune-deviceconfig-mediacontentratingireland?view=graph-rest-1.0)<br/>[mediaContentRatingJapan](/graph/api/resources/intune-deviceconfig-mediacontentratingjapan?view=graph-rest-1.0)<br/>[mediaContentRatingNewZealand](/graph/api/resources/intune-deviceconfig-mediacontentratingnewzealand?view=graph-rest-1.0)<br/>[mediaContentRatingUnitedKingdom](/graph/api/resources/intune-deviceconfig-mediacontentratingunitedkingdom?view=graph-rest-1.0)<br/>[mediaContentRatingUnitedStates](/graph/api/resources/intune-deviceconfig-mediacontentratingunitedstates?view=graph-rest-1.0)<br/>[microsoftStoreForBusinessAppAssignmentSettings](/graph/api/resources/intune-apps-microsoftstoreforbusinessappassignmentsettings?view=graph-rest-1.0)<br/>[mimeContent](/graph/api/resources/intune-shared-mimecontent?view=graph-rest-1.0)<br/>[mobileAppAssignmentSettings](/graph/api/resources/intune-apps-mobileappassignmentsettings?view=graph-rest-1.0)<br/>[mobileAppIdentifier](/graph/api/resources/intune-mam-mobileappidentifier?view=graph-rest-1.0)<br/>[omaSetting](/graph/api/resources/intune-deviceconfig-omasetting?view=graph-rest-1.0)<br/>[omaSettingBase64](/graph/api/resources/intune-deviceconfig-omasettingbase64?view=graph-rest-1.0)<br/>[omaSettingBoolean](/graph/api/resources/intune-deviceconfig-omasettingboolean?view=graph-rest-1.0)<br/>[omaSettingDateTime](/graph/api/resources/intune-deviceconfig-omasettingdatetime?view=graph-rest-1.0)<br/>[omaSettingFloatingPoint](/graph/api/resources/intune-deviceconfig-omasettingfloatingpoint?view=graph-rest-1.0)<br/>[omaSettingInteger](/graph/api/resources/intune-deviceconfig-omasettinginteger?view=graph-rest-1.0)<br/>[omaSettingString](/graph/api/resources/intune-deviceconfig-omasettingstring?view=graph-rest-1.0)<br/>[omaSettingStringXml](/graph/api/resources/intune-deviceconfig-omasettingstringxml?view=graph-rest-1.0)<br/>[proxiedDomain](/graph/api/resources/intune-mam-proxieddomain?view=graph-rest-1.0)<br/>[remoteLockActionResult](/graph/api/resources/intune-devices-remotelockactionresult?view=graph-rest-1.0)<br/>[resetPasscodeActionResult](/graph/api/resources/intune-devices-resetpasscodeactionresult?view=graph-rest-1.0)<br/>[resourceAction](/graph/api/resources/intune-rbac-resourceaction?view=graph-rest-1.0)<br/>[rgbColor](/graph/api/resources/intune-onboarding-rgbcolor?view=graph-rest-1.0)<br/>[rolePermission](/graph/api/resources/intune-rbac-rolepermission?view=graph-rest-1.0)<br/>[settingSource](/graph/api/resources/intune-deviceconfig-settingsource?view=graph-rest-1.0)<br/>[sharedPCAccountManagerPolicy](/graph/api/resources/intune-deviceconfig-sharedpcaccountmanagerpolicy?view=graph-rest-1.0)<br/>[updateWindowsDeviceAccountActionParameter](/graph/api/resources/intune-devices-updatewindowsdeviceaccountactionparameter?view=graph-rest-1.0)<br/>[vppLicensingType](/graph/api/resources/intune-apps-vpplicensingtype?view=graph-rest-1.0)<br/>[windows10NetworkProxyServer](/graph/api/resources/intune-deviceconfig-windows10networkproxyserver?view=graph-rest-1.0)<br/>[windowsDefenderScanActionResult](/graph/api/resources/intune-devices-windowsdefenderscanactionresult?view=graph-rest-1.0)<br/>[windowsDeviceAccount](/graph/api/resources/intune-devices-windowsdeviceaccount?view=graph-rest-1.0)<br/>[windowsDeviceADAccount](/graph/api/resources/intune-devices-windowsdeviceadaccount?view=graph-rest-1.0)<br/>[windowsDeviceAzureADAccount](/graph/api/resources/intune-devices-windowsdeviceazureadaccount?view=graph-rest-1.0)<br/>[windowsFirewallNetworkProfile](/graph/api/resources/intune-deviceconfig-windowsfirewallnetworkprofile?view=graph-rest-1.0)<br/>[windowsInformationProtectionApp](/graph/api/resources/intune-mam-windowsinformationprotectionapp?view=graph-rest-1.0)<br/>[windowsInformationProtectionDataRecoveryCertificate](/graph/api/resources/intune-mam-windowsinformationprotectiondatarecoverycertificate?view=graph-rest-1.0)<br/>[windowsInformationProtectionDesktopApp](/graph/api/resources/intune-mam-windowsinformationprotectiondesktopapp?view=graph-rest-1.0)<br/>[windowsInformationProtectionIPRangeCollection](/graph/api/resources/intune-mam-windowsinformationprotectioniprangecollection?view=graph-rest-1.0)<br/>[windowsInformationProtectionProxiedDomainCollection](/graph/api/resources/intune-mam-windowsinformationprotectionproxieddomaincollection?view=graph-rest-1.0)<br/>[windowsInformationProtectionResourceCollection](/graph/api/resources/intune-mam-windowsinformationprotectionresourcecollection?view=graph-rest-1.0)<br/>[windowsInformationProtectionStoreApp](/graph/api/resources/intune-mam-windowsinformationprotectionstoreapp?view=graph-rest-1.0)<br/>[windowsMinimumOperatingSystem](/graph/api/resources/intune-apps-windowsminimumoperatingsystem?view=graph-rest-1.0)<br/>[windowsUpdateActiveHoursInstall](/graph/api/resources/intune-deviceconfig-windowsupdateactivehoursinstall?view=graph-rest-1.0)<br/>[windowsUpdateInstallScheduleType](/graph/api/resources/intune-deviceconfig-windowsupdateinstallscheduletype?view=graph-rest-1.0)<br/>[windowsUpdateScheduledInstall](/graph/api/resources/intune-deviceconfig-windowsupdatescheduledinstall?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the [assign](/graph/api/intune-apps-mobileapp-assign?view=graph-rest-1.0) action on [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-1.0) |
|Addition|v1.0|Added the [commit](/graph/api/intune-apps-mobileappcontentfile-commit?view=graph-rest-1.0) action on [mobileAppContentFile](/graph/api/resources/intune-apps-mobileappcontentfile?view=graph-rest-1.0) |
|Addition|v1.0|Added the [renewUpload](/graph/api/intune-apps-mobileappcontentfile-renewupload?view=graph-rest-1.0) action on [mobileAppContentFile](/graph/api/resources/intune-apps-mobileappcontentfile?view=graph-rest-1.0) |
|Addition|v1.0|Added the [retire](/graph/api/intune-devices-manageddevice-retire?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [wipe](/graph/api/intune-devices-manageddevice-wipe?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [resetPasscode](/graph/api/intune-devices-manageddevice-resetpasscode?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [remoteLock](/graph/api/intune-devices-manageddevice-remotelock?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [requestRemoteAssistance](/graph/api/intune-devices-manageddevice-requestremoteassistance?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [disableLostMode](/graph/api/intune-devices-manageddevice-disablelostmode?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [locateDevice](/graph/api/intune-devices-manageddevice-locatedevice?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [bypassActivationLock](/graph/api/intune-devices-manageddevice-bypassactivationlock?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [rebootNow](/graph/api/intune-devices-manageddevice-rebootnow?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [shutDown](/graph/api/intune-devices-manageddevice-shutdown?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [recoverPasscode](/graph/api/intune-devices-manageddevice-recoverpasscode?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [cleanWindowsDevice](/graph/api/intune-devices-manageddevice-cleanwindowsdevice?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [logoutSharedAppleDeviceActiveUser](/graph/api/intune-devices-manageddevice-logoutsharedappledeviceactiveuser?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [deleteUserFromSharedAppleDevice](/graph/api/intune-devices-manageddevice-deleteuserfromsharedappledevice?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [syncDevice](/graph/api/intune-devices-manageddevice-syncdevice?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [windowsDefenderScan](/graph/api/intune-devices-manageddevice-windowsdefenderscan?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [windowsDefenderUpdateSignatures](/graph/api/intune-devices-manageddevice-windowsdefenderupdatesignatures?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [updateWindowsDeviceAccount](/graph/api/intune-devices-manageddevice-updatewindowsdeviceaccount?view=graph-rest-1.0) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) |
|Addition|v1.0|Added the [removeAllDevicesFromManagement](/graph/api/intune-devices-user-removealldevicesfrommanagement?view=graph-rest-1.0) action on [user](/graph/api/resources/intune-shared-user?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune-deviceconfig-deviceconfiguration-assign?view=graph-rest-1.0) action on [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune-deviceconfig-devicecompliancepolicy-assign?view=graph-rest-1.0) action on [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-1.0) |
|Addition|v1.0|Added the [scheduleActionsForRules](/graph/api/intune-deviceconfig-devicecompliancepolicy-scheduleactionsforrules?view=graph-rest-1.0) action on [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-1.0) |
|Addition|v1.0|Added the [setMobileDeviceManagementAuthority](/graph/api/intune-onboarding-organization-setmobiledevicemanagementauthority?view=graph-rest-1.0) action on [organization](/graph/api/resources/intune-onboarding-organization?view=graph-rest-1.0) |
|Addition|v1.0|Added the [syncMicrosoftStoreForBusinessApps](/graph/api/intune-onboarding-deviceappmanagement-syncmicrosoftstoreforbusinessapps?view=graph-rest-1.0) action on [deviceAppManagement](/graph/api/resources/intune-shared-deviceappmanagement?view=graph-rest-1.0) |
|Addition|v1.0|Added the [sync](/graph/api/intune-onboarding-devicemanagementexchangeconnector-sync?view=graph-rest-1.0) action on [deviceManagementExchangeConnector](/graph/api/resources/intune-onboarding-devicemanagementexchangeconnector?view=graph-rest-1.0) |
|Addition|v1.0|Added the [setPriority](/graph/api/intune-onboarding-deviceenrollmentconfiguration-setpriority?view=graph-rest-1.0) action on [deviceEnrollmentConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentconfiguration?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune-onboarding-deviceenrollmentconfiguration-assign?view=graph-rest-1.0) action on [deviceEnrollmentConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentconfiguration?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune-mam-targetedmanagedappprotection-assign?view=graph-rest-1.0) action on [targetedManagedAppProtection](/graph/api/resources/intune-mam-targetedmanagedappprotection?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune-mam-targetedmanagedappconfiguration-assign?view=graph-rest-1.0) action on [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune-mam-windowsinformationprotection-assign?view=graph-rest-1.0) action on [windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-1.0) |
|Addition|v1.0|Added the [targetApps](/graph/api/intune-mam-managedapppolicy-targetapps?view=graph-rest-1.0) action on [managedAppPolicy](/graph/api/resources/intune-mam-managedapppolicy?view=graph-rest-1.0) |
|Addition|v1.0|Added the [targetApps](/graph/api/intune-mam-managedappprotection-targetapps?view=graph-rest-1.0) action on [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-1.0) |
|Addition|v1.0|Added the [targetApps](/graph/api/intune-mam-targetedmanagedappconfiguration-targetapps?view=graph-rest-1.0) action on [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-1.0) |
|Addition|v1.0|Added the [wipeManagedAppRegistrationsByDeviceTag](/graph/api/intune-mam-user-wipemanagedappregistrationsbydevicetag?view=graph-rest-1.0) action on [user](/graph/api/resources/intune-shared-user?view=graph-rest-1.0) |
|Addition|v1.0|Added the [sendTestMessage](/graph/api/intune-notification-notificationmessagetemplate-sendtestmessage?view=graph-rest-1.0) action on [notificationMessageTemplate](/graph/api/resources/intune-notification-notificationmessagetemplate?view=graph-rest-1.0) |
|Addition|v1.0|Added the [assign](/graph/api/intune-books-managedebook-assign?view=graph-rest-1.0) action on [managedEBook](/graph/api/resources/intune-books-managedebook?view=graph-rest-1.0) |
|Addition|v1.0|Added the [beginOnboarding](/graph/api/intune-remoteassistance-remoteassistancepartner-beginonboarding?view=graph-rest-1.0) action on [remoteAssistancePartner](/graph/api/resources/intune-remoteassistance-remoteassistancepartner?view=graph-rest-1.0) |
|Addition|v1.0|Added the [disconnect](/graph/api/intune-remoteassistance-remoteassistancepartner-disconnect?view=graph-rest-1.0) action on [remoteAssistancePartner](/graph/api/resources/intune-remoteassistance-remoteassistancepartner?view=graph-rest-1.0) |
|Addition|v1.0|Added the [downloadApplePushNotificationCertificateSigningRequest](/graph/api/intune-devices-applepushnotificationcertificate-downloadapplepushnotificationcertificatesigningrequest?view=graph-rest-1.0) function on [applePushNotificationCertificate](/graph/api/resources/intune-devices-applepushnotificationcertificate?view=graph-rest-1.0) |
|Addition|v1.0|Added the [deviceConfigurationUserActivity](/graph/api/intune-deviceconfig-reportroot-deviceconfigurationuseractivity?view=graph-rest-1.0) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-1.0) |
|Addition|v1.0|Added the [deviceConfigurationDeviceActivity](/graph/api/intune-deviceconfig-reportroot-deviceconfigurationdeviceactivity?view=graph-rest-1.0) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-1.0) |
|Addition|v1.0|Added the [verifyWindowsEnrollmentAutoDiscovery](/graph/api/intune-onboarding-devicemanagement-verifywindowsenrollmentautodiscovery?view=graph-rest-1.0) function on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-1.0) |
|Addition|v1.0|Added the **getUserIdsWithFlaggedAppRegistration** function on [managedAppRegistration](/graph/api/resources/intune-mam-managedappregistration?view=graph-rest-1.0) collection |
|Addition|v1.0|Added the [getManagedAppDiagnosticStatuses](/graph/api/intune-mam-user-getmanagedappdiagnosticstatuses?view=graph-rest-1.0) function on [user](/graph/api/resources/intune-shared-user?view=graph-rest-1.0) |
|Addition|v1.0|Added the [getManagedAppPolicies](/graph/api/intune-mam-user-getmanagedapppolicies?view=graph-rest-1.0) function on [user](/graph/api/resources/intune-shared-user?view=graph-rest-1.0) |
|Addition|v1.0|Added the [getEffectivePermissions](/graph/api/intune-rbac-devicemanagement-geteffectivepermissions?view=graph-rest-1.0) function on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-1.0) |
|Change|v1.0|Added the **mobileDeviceManagementAuthority** property to the [organization](/graph/api/resources/intune-onboarding-organization?view=graph-rest-1.0) entity|
|Change|v1.0|Added the **deviceEnrollmentLimit** property to the [user](/graph/api/resources/intune-shared-user?view=graph-rest-1.0) entity|
|Change|v1.0|Added the **managedDevices**, **managedAppRegistrations** and **deviceManagementTroubleshootingEvents** navigation properties to the [user](/graph/api/resources/intune-shared-user?view=graph-rest-1.0) entity|
|||
|Addition|Beta|Added new entities:<br/>[deviceManagementScriptAssignment](/graph/api/resources/intune-devices-devicemanagementscriptassignment?view=graph-rest-beta)<br/>[iosCertificateProfile](/graph/api/resources/intune-deviceconfig-ioscertificateprofile?view=graph-rest-beta)<br/>[windowsInformationProtectionNetworkLearningSummary](/graph/api/resources/intune-wip-windowsinformationprotectionnetworklearningsummary?view=graph-rest-beta)<br/>|
|Addition|Beta|Added new complex types:<br/>[revokeAppleVppLicensesActionResult](/graph/api/resources/intune-devices-revokeapplevpplicensesactionresult?view=graph-rest-beta)<br/>[vppTokenRevokeLicensesActionResult](/graph/api/resources/intune-onboarding-vpptokenrevokelicensesactionresult?view=graph-rest-beta)<br/>|
|Addition|Beta|Added the [revokeToken](/graph/api/intune-androidforwork-androidforworkenrollmentprofile-revoketoken?view=graph-rest-beta) action on [androidForWorkEnrollmentProfile](/graph/api/resources/intune-androidforwork-androidforworkenrollmentprofile?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune-apps-mobileapp-assign?view=graph-rest-beta) action on [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune-devices-devicemanagementscript-assign?view=graph-rest-beta) action on [deviceManagementScript](/graph/api/resources/intune-devices-devicemanagementscript?view=graph-rest-beta) |
|Addition|Beta|Added the [revokeAppleVppLicenses](/graph/api/intune-devices-manageddevice-revokeapplevpplicenses?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune-deviceconfig-devicecompliancepolicy-assign?view=graph-rest-beta) action on [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) |
|Addition|Beta|Added the [revokeLicenses](/graph/api/intune-onboarding-vpptoken-revokelicenses?view=graph-rest-beta) action on [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) |
|Addition|Beta|Added the [wipeManagedAppRegistrationsByDeviceTag](/graph/api/intune-mam-user-wipemanagedappregistrationsbydevicetag?view=graph-rest-beta) action on [user](/graph/api/resources/intune-devices-user?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune-books-managedebook-assign?view=graph-rest-beta) action on [managedEBook](/graph/api/resources/intune-books-managedebook?view=graph-rest-beta) |
|Addition|Beta|Added the [getEffectiveDeviceEnrollmentConfigurations](/graph/api/intune-onboarding-user-geteffectivedeviceenrollmentconfigurations?view=graph-rest-beta) function on [user](/graph/api/resources/intune-devices-user?view=graph-rest-beta) |
|Deletion|Beta|Removed the following entities:<br/>**appReportingOverviewStatus**<br/>**complianceSettingStateSummary**<br/>**deviceConfigurationUserStateSummary**<br/>**eBookGroupAssignment**<br/>**eBookVppGroupAssignment**<br/>**mobileAppGroupAssignment**<br/>**mobileAppVppGroupAssignment**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**androidForWorkAppConfigurationExample**<br/>**androidForWorkAppConfigurationExampleJson**<br/>**appInstallationFailure**<br/>**appsComplianceListItem**<br/>**defaultDeviceEnrollmentRestrictions**<br/>**defaultDeviceEnrollmentWindowsHelloForBusinessSettings**<br/>**deviceEnrollmentPlatformRestrictions**<br/>|
|Change|Beta|Added the **securityRequireVerifyApps**, **securityRequireSafetyNetAttestationBasicIntegrity**, **securityRequireSafetyNetAttestationCertifiedDevice**, **securityRequireGooglePlayServices**, **securityRequireUpToDateSecurityProviders** and **securityRequireCompanyPortalAppIntegrity** properties to the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **packageId** property to the [androidForWorkApp](/graph/api/resources/intune-apps-androidforworkapp?view=graph-rest-beta) entity|
|Change|Beta|Changed the type of the following properties on the [androidForWorkAppConfigurationSchema](/graph/api/resources/intune-androidforwork-androidforworkappconfigurationschema?view=graph-rest-beta) entity:<br/>**exampleJson** from [androidForWorkAppConfigurationExample](/graph/api/resources/intune-androidforwork-androidforworkappconfigurationexample?view=graph-rest-beta) to Binary<br/>|
|Change|Beta|Added the **securityRequireVerifyApps**, **securityRequireSafetyNetAttestationBasicIntegrity**, **securityRequireSafetyNetAttestationCertifiedDevice**, **securityRequireGooglePlayServices**, **securityRequireUpToDateSecurityProviders** and **securityRequireCompanyPortalAppIntegrity** properties to the [androidForWorkCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidforworkcompliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **displayName**, **lastModifiedDateTime**, **enrolledDeviceCount**, **qrCodeContent** and **qrCodeImage** properties to the [androidForWorkEnrollmentProfile](/graph/api/resources/intune-androidforwork-androidforworkenrollmentprofile?view=graph-rest-beta) entity|
|Change|Beta|Removed the **isTokenActive** property from the [androidForWorkEnrollmentProfile](/graph/api/resources/intune-androidforwork-androidforworkenrollmentprofile?view=graph-rest-beta) entity|
|Change|Beta|Added the **innerAuthenticationProtocolForEapTtls**, **innerAuthenticationProtocolForPeap** and **outerIdentityPrivacyTemporaryValue** properties to the [androidForWorkEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkenterprisewificonfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **workProfileBlockCrossProfileCopyPaste** and **securityRequireVerifyApps** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **securityRequireVerifyApps** property to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **packageId** and **identityVersion** properties to the [androidLobApp](/graph/api/resources/intune-apps-androidlobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **packageId** property to the [androidStoreApp](/graph/api/resources/intune-apps-androidstoreapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **faceIdBlocked** property to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **members** property to the [deviceAndAppManagementRoleAssignment](/graph/api/resources/intune-rbac-deviceandappmanagementroleassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **macOSRestriction** property to the [deviceEnrollmentPlatformRestrictionsConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentplatformrestrictionsconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **whenPartnerDevicesWillBeRemovedDateTime** and **whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime** properties to the [deviceManagementPartner](/graph/api/resources/intune-onboarding-devicemanagementpartner?view=graph-rest-beta) entity|
|Change|Beta|Changed the type of the following properties on the [deviceManagementScript](/graph/api/resources/intune-devices-devicemanagementscript?view=graph-rest-beta) entity:<br/>**scriptContent** from String to Binary<br/>|
|Change|Beta|Added the **smimeEnablePerMessageSwitch** property to the [iosEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [iosLobApp](/graph/api/resources/intune-apps-ioslobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **faceIdBlocked** property to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **packageId** and **identityVersion** properties to the [managedAndroidLobApp](/graph/api/resources/intune-apps-managedandroidlobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **azureADDeviceId** and **remoteAssistanceSessionErrorDetails** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Removed the **legacyAppConfiguration** property from the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [managedIOSLobApp](/graph/api/resources/intune-apps-managedioslobapp?view=graph-rest-beta) entity|
|Change|Beta|Removed the **identityVersion** property from the [managedMobileLobApp](/graph/api/resources/intune-apps-managedmobilelobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **publishingState** property to the [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **installState** property to the [mobileAppInstallStatus](/graph/api/resources/intune-apps-mobileappinstallstatus?view=graph-rest-beta) entity|
|Change|Beta|Removed the **identityVersion** property from the [mobileLobApp](/graph/api/resources/intune-apps-mobilelobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **allowPartnerToCollectIOSApplicationMetadata** property to the [mobileThreatDefenseConnector](/graph/api/resources/intune-onboarding-mobilethreatdefenseconnector?view=graph-rest-beta) entity|
|Change|Beta|Removed the **members** property from the [roleAssignment](/graph/api/resources/intune-rbac-roleassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **lastModifiedDateTime** property to the [termsAndConditions](/graph/api/resources/intune-companyterms-termsandconditions?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceThreatProtectionEnabled** and **deviceThreatProtectionRequiredSecurityLevel** properties to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Removed the **minimumUpdateAutoInstallClassification** property from the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **privacyBlockPublishUserActivities** and **privacyBlockActivityFeed** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **configurationAccountType** property to the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune-deviceconfig-windows10secureassessmentconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **trustedNetworkDomains** property from the [windows10VpnConfiguration](/graph/api/resources/intune-deviceconfig-windows10vpnconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **minimumUpdateAutoInstallClassification** property from the [windows81CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows81compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsAppX](/graph/api/resources/intune-apps-windowsappx?view=graph-rest-beta) entity|
|Change|Beta|Added the **daysWithoutContactBeforeUnenroll** property to the [windowsInformationProtectionPolicy](/graph/api/resources/intune-mam-windowsinformationprotectionpolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsMobileMSI](/graph/api/resources/intune-apps-windowsmobilemsi?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsPhone81AppX](/graph/api/resources/intune-apps-windowsphone81appx?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsPhoneXAP](/graph/api/resources/intune-apps-windowsphonexap?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityVersion** property to the [windowsUniversalAppX](/graph/api/resources/intune-apps-windowsuniversalappx?view=graph-rest-beta) entity|
|Change|Beta|Added the **domainJoinConfiguration** navigation property to the [activeDirectoryWindowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-activedirectorywindowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Change|Beta|Removed the **notificationMessageTemplate** navigation property from the [deviceComplianceActionItem](/graph/api/resources/intune-deviceconfig-devicecomplianceactionitem?view=graph-rest-beta) entity|
|Change|Beta|Removed the **groupAssignments** navigation property from the [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **windowsInformationProtectionNetworkLearningSummaries** navigation property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Removed the **deviceConfigurationUserStateSummaries** navigation property from the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Changed the type of the following properties on the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity:<br/>**roleAssignments** from [roleAssignment](/graph/api/resources/intune-rbac-roleassignment?view=graph-rest-beta) collection to [deviceAndAppManagementRoleAssignment](/graph/api/resources/intune-rbac-deviceandappmanagementroleassignment?view=graph-rest-beta) collection<br/>|
|Change|Beta|Added the **assignments** navigation property to the [deviceManagementScript](/graph/api/resources/intune-devices-devicemanagementscript?view=graph-rest-beta) entity|
|Change|Beta|Added the **smimeEncryptionCertificate** navigation property to the [iosEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Changed the type of the following properties on the [iosEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-ioseasemailprofileconfiguration?view=graph-rest-beta) entity:<br/>**smimeSigningCertificate** from [iosCertificateProfileBase](/graph/api/resources/intune-deviceconfig-ioscertificateprofilebase?view=graph-rest-beta) to [iosCertificateProfile](/graph/api/resources/intune-deviceconfig-ioscertificateprofile?view=graph-rest-beta)<br/>|
|Change|Beta|Removed the **vppToken** navigation property from the [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) entity|
|Change|Beta|Removed the **groupAssignments** navigation property from the [managedEBook](/graph/api/resources/intune-books-managedebook?view=graph-rest-beta) entity|
|Change|Beta|Removed the **groupAssignments** navigation property from the [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta) entity|
|Change|Beta|Removed the **depOnboardingSettings** and **appleVolumePurchaseProgramTokens** navigation properties from the [organization](/graph/api/resources/intune-onboarding-organization?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceEnrollmentConfigurations** navigation property to the [user](/graph/api/resources/intune-devices-user?view=graph-rest-beta) entity|
|Change|Beta|Removed the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties from the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type|
|Change|Beta|Added the **showDisplayNameNextToLogo** property to the [intuneBrand](/graph/api/resources/intune-onboarding-intunebrand?view=graph-rest-beta) complex type|
|Change|Beta|Added the **deviceUsageType** property to the [outOfBoxExperienceSettings](/graph/api/resources/intune-enrollment-outofboxexperiencesettings?view=graph-rest-beta) complex type|
|Change|Beta|Added the **supportsUserLicensing** and **supportsDeviceLicensing** properties to the [vppLicensingType](/graph/api/resources/intune-apps-vpplicensingtype?view=graph-rest-beta) complex type|
|Change|Beta|Removed the **actionMessage** property from the [vppTokenActionResult](/graph/api/resources/intune-onboarding-vpptokenactionresult?view=graph-rest-beta) complex type|

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the following APIs:<br>[getTeamsUserActivityUserDetail](/graph/api/reportroot-getteamsuseractivityuserdetail?view=graph-rest-1.0)<br>[getTeamsUserActivityCounts](/graph/api/reportroot-getteamsuseractivitycounts?view=graph-rest-1.0)<br>[getTeamsUserActivityUserCounts](/graph/api/reportroot-getteamsuseractivityusercounts?view=graph-rest-1.0)<br>[getTeamsDeviceUsageUserDetail](/graph/api/reportroot-getteamsdeviceusageuserdetail?view=graph-rest-1.0)<br>[getTeamsDeviceUsageUserCounts](/graph/api/reportroot-getteamsdeviceusageusercounts?view=graph-rest-1.0)<br>[getTeamsDeviceUsageDistributionUserCounts](/graph/api/reportroot-getteamsdeviceusagedistributionusercounts?view=graph-rest-1.0) |

## December 2017

### Delta query

| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Change      | v1.0    | Add optional query filtering capability to [users](/graph/api/user-delta?view=graph-rest-1.0) and [groups](/graph/api/group-delta?view=graph-rest-1.0). |

### Microsoft Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[androidForWorkEnrollmentProfile](/graph/api/resources/intune-androidforwork-androidforworkenrollmentprofile?view=graph-rest-beta)<br/>[deviceAndAppManagementRoleAssignment](/graph/api/resources/intune-rbac-deviceandappmanagementroleassignment?view=graph-rest-beta)<br/>[deviceAndAppManagementRoleDefinition](/graph/api/resources/intune-rbac-deviceandappmanagementroledefinition?view=graph-rest-beta)<br/>[macOSLobApp](/graph/api/resources/intune-apps-macoslobapp?view=graph-rest-beta)<br/>|
|Addition|Beta|Added new complex types:<br/>[resourceAction](/graph/api/resources/intune-rbac-resourceaction?view=graph-rest-beta)<br/>[updateWindowsDeviceAccountActionParameter](/graph/api/resources/intune-devices-updatewindowsdeviceaccountactionparameter?view=graph-rest-beta)<br/>[vppTokenActionResult](/graph/api/resources/intune-onboarding-vpptokenactionresult?view=graph-rest-beta)<br/>[windowsDeviceAADAccount](/graph/api/resources/intune-devices-windowsdeviceaadaccount?view=graph-rest-beta)<br/>[windowsDeviceAccount](/graph/api/resources/intune-devices-windowsdeviceaccount?view=graph-rest-beta)<br/>[windowsDeviceADAccount](/graph/api/resources/intune-devices-windowsdeviceadaccount?view=graph-rest-beta)<br/>|
|Addition|Beta|Added the [revokeTokens](/graph/api/intune-androidforwork-androidforworkenrollmentprofile-revoketokens?view=graph-rest-beta) action on [androidForWorkEnrollmentProfile](/graph/api/resources/intune-androidforwork-androidforworkenrollmentprofile?view=graph-rest-beta) |
|Addition|Beta|Added the [createToken](/graph/api/intune-androidforwork-androidforworkenrollmentprofile-createtoken?view=graph-rest-beta) action on [androidForWorkEnrollmentProfile](/graph/api/resources/intune-androidforwork-androidforworkenrollmentprofile?view=graph-rest-beta) |
|Addition|Beta|Added the [wipe](/graph/api/intune-devices-manageddevice-wipe?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Addition|Beta|Added the [updateWindowsDeviceAccount](/graph/api/intune-devices-manageddevice-updatewindowsdeviceaccount?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Addition|Beta|Added the [revokeLicenses](/graph/api/intune-onboarding-vpptoken-revokelicenses?view=graph-rest-beta) action on [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) |
|Addition|Beta|Added the [getDevicePasscode](/graph/api/intune-deviceconfig-devicecompliancepolicy-getdevicepasscode?view=graph-rest-beta) function on [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) collection |
|Addition|Beta|Added the [getEffectivePermissions](/graph/api/intune-rbac-devicemanagement-geteffectivepermissions?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) |
|Deletion|Beta|Removed the following entities:<br/>**windowsStoreForBusinessApp**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**windowsStoreForBusinessAppAssignmentSettings**<br/>|
|Change|Beta|Added the **dateAndTimeBlockChanges** property to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **enableAuthenticationViaCompanyPortal** property from the [depEnrollmentProfile](/graph/api/resources/intune-corpenrollment-depenrollmentprofile?view=graph-rest-beta) entity|
|Change|Beta|Removed the **windowsStoreForBusinessLastSuccessfulSyncDateTime**, **isEnabledForWindowsStoreForBusiness**, **windowsStoreForBusinessLanguage** and **windowsStoreForBusinessLastCompletedApplicationSyncTime** properties from the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **maximumDepTokens** and **intuneAccountId** properties to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **enableAuthenticationViaCompanyPortal** property to the [enrollmentProfile](/graph/api/resources/intune-corpenrollment-enrollmentprofile?view=graph-rest-beta) entity|
|Change|Beta|Added the **managedDeviceName** and **partnerReportedThreatState** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Added the **installProgressDisplayLevel** property to the [officeSuiteApp](/graph/api/resources/intune-apps-officesuiteapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **resourceScopes** property to the [roleAssignment](/graph/api/resources/intune-rbac-roleassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **rolePermissions** and **isBuiltIn** properties to the [roleDefinition](/graph/api/resources/intune-rbac-roledefinition?view=graph-rest-beta) entity|
|Change|Beta|Added the **tokenActionResults** property to the [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) entity|
|Change|Beta|Added the **minimumUpdateAutoInstallClassification** property to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **defenderSecurityCenterDisableAppBrowserUI**, **defenderSecurityCenterDisableFamilyUI**, **defenderSecurityCenterDisableHealthUI**, **defenderSecurityCenterDisableNetworkUI**, **defenderSecurityCenterDisableVirusUI**, **defenderSecurityCenterOrganizationDisplayName**, **defenderSecurityCenterHelpEmail**, **defenderSecurityCenterHelpPhone**, **defenderSecurityCenterHelpURL**, **defenderSecurityCenterNotificationsFromApp**, **defenderSecurityCenterITContactDisplay** and **applicationGuardAllowVirtualGPU** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **enableAutomaticRedeployment** and **authenticationAllowFIDODevice** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **trustedNetworkDomains** property to the [windows10VpnConfiguration](/graph/api/resources/intune-deviceconfig-windows10vpnconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **minimumUpdateAutoInstallClassification** property to the [windows81CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows81compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **androidForWorkEnrollmentProfiles** navigation property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **healthAttestationSupportedStatus** property to the [deviceHealthAttestationState](/graph/api/resources/intune-devices-devicehealthattestationstate?view=graph-rest-beta) complex type|
|Change|Beta|Added the **tpmSpecificationVersion**, **operatingSystemEdition**, **deviceFullQualifiedDomainName**, **deviceGuardVirtualizationBasedSecurityHardwareRequirementState**, **deviceGuardVirtualizationBasedSecurityState** and **deviceGuardLocalSystemAuthorityCredentialGuardState** properties to the [hardwareInformation](/graph/api/resources/intune-devices-hardwareinformation?view=graph-rest-beta) complex type|
|Change|Beta|Added the **vpnConfigurationId** property to the [iosVppAppAssignmentSettings](/graph/api/resources/intune-apps-iosvppappassignmentsettings?view=graph-rest-beta) complex type|
|Change|Beta|Added the **resourceActions** property to the [rolePermission](/graph/api/resources/intune-rbac-rolepermission?view=graph-rest-beta) complex type|

### Reports APIs
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the following APIs:<br>[getEmailActivityUserDetail](/graph/api/reportroot-getemailactivityuserdetail?view=graph-rest-1.0)<br>[getEmailActivityCounts](/graph/api/reportroot-getemailactivitycounts?view=graph-rest-1.0)<br>[getEmailActivityUserCounts](/graph/api/reportroot-getemailactivityusercounts?view=graph-rest-1.0)<br>[getEmailAppUsageUserDetail](/graph/api/reportroot-getemailappusageuserdetail?view=graph-rest-1.0)<br>[getEmailAppUsageAppsUserCounts](/graph/api/reportroot-getemailappusageappsusercounts?view=graph-rest-1.0)<br>[getEmailAppUsageUserCounts](/graph/api/reportroot-getemailappusageusercounts?view=graph-rest-1.0)<br>[getEmailAppUsageVersionsUserCounts](/graph/api/reportroot-getemailappusageversionsusercounts?view=graph-rest-1.0)<br>[getMailboxUsageDetail](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-1.0)<br>[getMailboxUsageMailboxCounts](/graph/api/reportroot-getmailboxusagemailboxcounts?view=graph-rest-1.0)<br>[getMailboxUsageQuotaStatusMailboxCounts](/graph/api/reportroot-getmailboxusagequotastatusmailboxcounts?view=graph-rest-1.0)<br>[getMailboxUsageStorage](/graph/api/reportroot-getmailboxusagestorage?view=graph-rest-1.0)<br>[getOffice365ActivationsUserDetail](/graph/api/reportroot-getoffice365activationsuserdetail?view=graph-rest-1.0)<br>[getOffice365ActivationCounts](/graph/api/reportroot-getoffice365activationcounts?view=graph-rest-1.0)<br>[getOffice365ActivationsUserCounts](/graph/api/reportroot-getoffice365activationsusercounts?view=graph-rest-1.0)<br>[getOffice365ActiveUserDetail](/graph/api/reportroot-getoffice365activeuserdetail?view=graph-rest-1.0)<br>[getOffice365ActiveUserCounts](/graph/api/reportroot-getoffice365activeusercounts?view=graph-rest-1.0)<br>[getOffice365ServicesUserCounts](/graph/api/reportroot-getoffice365servicesusercounts?view=graph-rest-1.0)<br>[getOffice365GroupsActivityDetail](/graph/api/reportroot-getoffice365groupsactivitydetail?view=graph-rest-1.0)<br> [getOffice365GroupsActivityCounts](/graph/api/reportroot-getoffice365groupsactivitycounts?view=graph-rest-1.0)<br>[getOffice365GroupsActivityGroupCounts](/graph/api/reportroot-getoffice365groupsactivitygroupcounts?view=graph-rest-1.0)<br>[getOffice365GroupsActivityStorage](/graph/api/reportroot-getoffice365groupsactivitystorage?view=graph-rest-1.0)<br>[getOffice365GroupsActivityFileCounts](/graph/api/reportroot-getoffice365groupsactivityfilecounts?view=graph-rest-1.0)<br>[getOneDriveActivityUserDetail](/graph/api/reportroot-getonedriveactivityuserdetail?view=graph-rest-1.0)<br>[getOneDriveActivityUserCounts](/graph/api/reportroot-getonedriveactivityusercounts?view=graph-rest-1.0)<br>[getOneDriveActivityFileCounts](/graph/api/reportroot-getonedriveactivityfilecounts?view=graph-rest-1.0)<br>[getOneDriveUsageAccountDetail](/graph/api/reportroot-getonedriveusageaccountdetail?view=graph-rest-1.0)<br>[getOneDriveUsageAccountCounts](/graph/api/reportroot-getonedriveusageaccountcounts?view=graph-rest-1.0)<br>[getOneDriveUsageFileCounts](/graph/api/reportroot-getonedriveusagefilecounts?view=graph-rest-1.0)<br>[getOneDriveUsageStorage](/graph/api/reportroot-getonedriveusagestorage?view=graph-rest-1.0)<br>[getSharePointActivityUserDetail](/graph/api/reportroot-getsharepointactivityuserdetail?view=graph-rest-1.0)<br>[getSharePointActivityFileCounts](/graph/api/reportroot-getsharepointactivityfilecounts?view=graph-rest-1.0)<br>[getSharePointActivityUserCounts](/graph/api/reportroot-getsharepointactivityusercounts?view=graph-rest-1.0)<br>[getSharePointActivityPages](/graph/api/reportroot-getsharepointactivitypages?view=graph-rest-1.0)<br>[getSharePointSiteUsageDetail](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-1.0)<br>[getSharePointSiteUsageFileCounts](/graph/api/reportroot-getsharepointsiteusagefilecounts?view=graph-rest-1.0)<br>[getSharePointSiteUsageSiteCounts](/graph/api/reportroot-getsharepointsiteusagesitecounts?view=graph-rest-1.0)<br>[getSharePointSiteUsageStorage](/graph/api/reportroot-getsharepointsiteusagestorage?view=graph-rest-1.0)<br>[getSharePointSiteUsagePages](/graph/api/reportroot-getsharepointsiteusagepages?view=graph-rest-1.0)<br>[getSkypeForBusinessActivityUserDetail](/graph/api/reportroot-getskypeforbusinessactivityuserdetail?view=graph-rest-1.0)<br>[getSkypeForBusinessActivityCounts](/graph/api/reportroot-getskypeforbusinessactivitycounts?view=graph-rest-1.0)<br>[getSkypeForBusinessActivityUserCounts](/graph/api/reportroot-getskypeforbusinessactivityusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessDeviceUsageUserDetail](/graph/api/reportroot-getskypeforbusinessdeviceusageuserdetail?view=graph-rest-1.0)<br>[getSkypeForBusinessDeviceUsageDistributionUserCounts](/graph/api/reportroot-getskypeforbusinessdeviceusagedistributionusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessDeviceUsageUserCounts](/graph/api/reportroot-getskypeforbusinessdeviceusageusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessOrganizerActivityCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivitycounts?view=graph-rest-1.0)<br>[getSkypeForBusinessOrganizerActivityUserCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivityusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessOrganizerActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivityminutecounts?view=graph-rest-1.0)<br>[getSkypeForBusinessParticipantActivityCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivitycounts?view=graph-rest-1.0)<br>[getSkypeForBusinessParticipantActivityUserCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivityusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessParticipantActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivityminutecounts?view=graph-rest-1.0)<br>[getSkypeForBusinessPeerToPeerActivityCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivitycounts?view=graph-rest-1.0)<br>[getSkypeForBusinessPeerToPeerActivityUserCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivityusercounts?view=graph-rest-1.0)<br>[getSkypeForBusinessPeerToPeerActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivityminutecounts?view=graph-rest-1.0)<br>[getYammerActivityUserDetail](/graph/api/reportroot-getyammeractivityuserdetail?view=graph-rest-1.0)<br>[getYammerActivityCounts](/graph/api/reportroot-getyammeractivitycounts?view=graph-rest-1.0)<br>[getYammerActivityUserCounts](/graph/api/reportroot-getyammeractivityusercounts?view=graph-rest-1.0)<br>[getYammerDeviceUsageUserDetail](/graph/api/reportroot-getyammerdeviceusageuserdetail?view=graph-rest-1.0)<br>[getYammerDeviceUsageDistributionUserCounts](/graph/api/reportroot-getyammerdeviceusagedistributionusercounts?view=graph-rest-1.0)<br>[getYammerDeviceUsageUserCounts](/graph/api/reportroot-getyammerdeviceusageusercounts?view=graph-rest-1.0)<br>[getYammerGroupsActivityDetail](/graph/api/reportroot-getyammergroupsactivitydetail?view=graph-rest-1.0)<br>[getYammerGroupsActivityGroupCounts](/graph/api/reportroot-getyammergroupsactivitygroupcounts?view=graph-rest-1.0)<br>[getYammerGroupsActivityCounts](/graph/api/reportroot-getyammergroupsactivitycounts?view=graph-rest-1.0).|
| Addition    | Beta    | Added the following APIs:<br>[getTeamsUserActivityUserDetail](/graph/api/reportroot-getteamsuseractivityuserdetail?view=graph-rest-beta)<br>[getTeamsUserActivityCounts](/graph/api/reportroot-getteamsuseractivitycounts?view=graph-rest-beta)<br>[getTeamsUserActivityUserCounts](/graph/api/reportroot-getteamsuseractivityusercounts?view=graph-rest-beta)<br>[getTeamsDeviceUsageUserDetail](/graph/api/reportroot-getteamsdeviceusageuserdetail?view=graph-rest-beta)<br>[getTeamsDeviceUsageUserCounts](/graph/api/reportroot-getteamsdeviceusageusercounts?view=graph-rest-beta)<br>[getTeamsDeviceUsageDistributionUserCounts](/graph/api/reportroot-getteamsdeviceusagedistributionusercounts?view=graph-rest-beta) |

## November 2017

### Azure AD synchronization APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added support for Azure AD identity synchronization, including the following resources:<br/>[Job](/graph/api/resources/synchronization-synchronizationjob?view=graph-rest-beta)<br/>[Schema](/graph/api/resources/synchronization-synchronizationschema?view=graph-rest-beta)<br/>[Template](/graph/api/resources/synchronization-synchronizationtemplate?view=graph-rest-beta)<br/>See the resource topics for details about the methods that are available.|

### Education APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added support for education scenarios, including the following resources:<br/>[Schools](/graph/api/resources/educationschool?view=graph-rest-beta)<br/>[Classes](/graph/api/resources/educationclass?view=graph-rest-beta)<br/>[Users](/graph/api/resources/educationuser?view=graph-rest-beta)<br/>[Assignments](/graph/api/resources/educationassignment?view=graph-rest-beta)<br/>[Submissions](/graph/api/resources/educationsubmission?view=graph-rest-beta)<br/>See the resource topics for details about the methods that are available.|

### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[auditEvent](/graph/api/resources/intune-auditing-auditevent?view=graph-rest-beta)<br/>[deviceManagementTroubleshootingEvent](/graph/api/resources/intune-troubleshooting-devicemanagementtroubleshootingevent?view=graph-rest-beta)<br/>[deviceSetupConfiguration](/graph/api/resources/intune-deviceconfig-devicesetupconfiguration?view=graph-rest-beta)<br/>[enrollmentTroubleshootingEvent](/graph/api/resources/intune-troubleshooting-enrollmenttroubleshootingevent?view=graph-rest-beta)<br/>[macOSOfficeSuiteApp](/graph/api/resources/intune-apps-macosofficesuiteapp?view=graph-rest-beta)<br/>[microsoftStoreForBusinessApp](/graph/api/resources/intune-apps-microsoftstoreforbusinessapp?view=graph-rest-beta)<br/>[ndesConnector](/graph/api/resources/intune-deviceconfig-ndesconnector?view=graph-rest-beta)<br/>|
|Addition|Beta|Added new complex types:<br/>[auditActor](/graph/api/resources/intune-auditing-auditactor?view=graph-rest-beta)<br/>[auditProperty](/graph/api/resources/intune-auditing-auditproperty?view=graph-rest-beta)<br/>[auditResource](/graph/api/resources/intune-auditing-auditresource?view=graph-rest-beta)<br/>[bulkManagedDeviceActionResult](/graph/api/resources/intune-devices-bulkmanageddeviceactionresult?view=graph-rest-beta)<br/>[deviceProtectionOverview](/graph/api/resources/intune-devices-deviceprotectionoverview?view=graph-rest-beta)<br/>[microsoftStoreForBusinessAppAssignmentSettings](/graph/api/resources/intune-apps-microsoftstoreforbusinessappassignmentsettings?view=graph-rest-beta)<br/>[operatingSystemVersionRange](/graph/api/resources/intune-deviceconfig-operatingsystemversionrange?view=graph-rest-beta)<br/>[remoteLockActionResult](/graph/api/resources/intune-devices-remotelockactionresult?view=graph-rest-beta)<br/>|
|Addition|Beta|Added the executeAction action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) collection |
|Addition|Beta|Added the [wipe](/graph/api/intune-devices-manageddevice-wipe?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Addition|Beta|Added the [shutDown](/graph/api/intune-devices-manageddevice-shutdown?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune-deviceconfig-deviceconfiguration-assign?view=graph-rest-beta) action on [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added the [syncMicrosoftStoreForBusinessApps](/graph/api/intune-onboarding-deviceappmanagement-syncmicrosoftstoreforbusinessapps?view=graph-rest-beta) action on [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) |
|Addition|Beta|Added the setDefaultProfile action on [enrollmentProfile](/graph/api/resources/intune-corpenrollment-enrollmentprofile?view=graph-rest-beta) |
|Addition|Beta|Added the shareForSchoolDataSyncService action on [depOnboardingSetting](/graph/api/resources/intune-onboarding-deponboardingsetting?view=graph-rest-beta) |
|Addition|Beta|Added the unshareForSchoolDataSyncService action on [depOnboardingSetting](/graph/api/resources/intune-onboarding-deponboardingsetting?view=graph-rest-beta) |
|Addition|Beta|Added the getAuditCategories function on [auditEvent](/graph/api/resources/intune-auditing-auditevent?view=graph-rest-beta) collection |
|Addition|Beta|Added the getAuditActivityTypes function on [auditEvent](/graph/api/resources/intune-auditing-auditevent?view=graph-rest-beta) collection |
|Deletion|Beta|Removed the following entities:<br/>**mobileAppIdentifierDeployment**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**windowsInformationProtectionCloudResource**<br/>**windowsInformationProtectionCloudResourceCollection**<br/>|
|Change|Beta|Changed the following properties on the [androidDeviceComplianceLocalActionLockDeviceWithPasscode](/graph/api/resources/intune-deviceconfig-androiddevicecompliancelocalactionlockdevicewithpasscode?view=graph-rest-beta) entity:<br/>**passcode** from required to optional<br/>|
|Change|Beta|Added the **microsoftStoreForBusinessLastSuccessfulSyncDateTime**, **isEnabledForMicrosoftStoreForBusiness**, **microsoftStoreForBusinessLanguage** and **microsoftStoreForBusinessLastCompletedApplicationSyncTime** properties to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **target** property to the [deviceConfigurationAssignment](/graph/api/resources/intune-deviceconfig-deviceconfigurationassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceProtectionOverview** property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **exchangeAlias** and **exchangeOrganization** properties to the [deviceManagementExchangeConnector](/graph/api/resources/intune-onboarding-devicemanagementexchangeconnector?view=graph-rest-beta) entity|
|Change|Beta|Added the **appStoreUrl** and **minimumSupportedOperatingSystem** properties to the [managedAndroidStoreApp](/graph/api/resources/intune-apps-managedandroidstoreapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **remoteAssistanceSessionErrorString** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Added the **appStoreUrl**, **applicableDeviceType** and **minimumSupportedOperatingSystem** properties to the [managedIOSStoreApp](/graph/api/resources/intune-apps-managediosstoreapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **notApplicableDeviceCount**, **pendingInstallDeviceCount**, **notApplicableUserCount** and **pendingInstallUserCount** properties to the [mobileAppInstallSummary](/graph/api/resources/intune-apps-mobileappinstallsummary?view=graph-rest-beta) entity|
|Change|Beta|Removed the **targetedSecurityGroupIds** and **targetedSecurityGroupsCount** properties from the [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **targetedSecurityGroupsCount** and **targetedSecurityGroupIds** properties from the [targetedManagedAppProtection](/graph/api/resources/intune-mam-targetedmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **validOperatingSystemBuildRanges** property to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **activeFirewallRequired**, **uacRequired** and **validOperatingSystemBuildRanges** properties to the [windows10MobileCompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10mobilecompliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **enableExpeditedTelemetryReporting** property to the [windowsDefenderAdvancedThreatProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windowsdefenderadvancedthreatprotectionconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **allowedApps**, **enterpriseCloudResources** and **targetedSecurityGroupIds** properties from the [windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **ignoreVersionDetection** property to the [windowsMobileMSI](/graph/api/resources/intune-apps-windowsmobilemsi?view=graph-rest-beta) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** navigation property from the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** navigation property from the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **deviceConfiguration** navigation property from the [deviceConfigurationAssignment](/graph/api/resources/intune-deviceconfig-deviceconfigurationassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceConfiguration** navigation property to the [deviceConfigurationGroupAssignment](/graph/api/resources/intune-deviceconfig-deviceconfigurationgroupassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceSetupConfigurations**, **ndesConnectors**, **exchangeOnPremisesPolicies**, **conditionalAccessSettings**, **auditEvents** and **troubleshootingEvents** navigation properties to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** navigation property from the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **windowsProtectionState** navigation property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** and **targetedSecurityGroups** navigation properties from the [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Removed the **targetedSecurityGroups** navigation property from the [targetedManagedAppProtection](/graph/api/resources/intune-mam-targetedmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceManagementTroubleshootingEvents** navigation property to the [user](/graph/api/resources/intune-devices-user?view=graph-rest-beta) entity|
|Change|Beta|Removed the **allowedAppLockerFiles** navigation property from the [windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-beta) entity|
|Change|Beta|Removed the **windowsProtectionState** navigation property from the [windowsManagedDevice](/graph/api/resources/intune-devices-windowsmanageddevice?view=graph-rest-beta) entity|
|Change|Beta|Added the **v11_0** property to the [iosMinimumOperatingSystem](/graph/api/resources/intune-apps-iosminimumoperatingsystem?view=graph-rest-beta) complex type|
|Change|Beta|Added the **denied** property to the [windowsInformationProtectionApp](/graph/api/resources/intune-mam-windowsinformationprotectionapp?view=graph-rest-beta) complex type|

### Reports APIs
| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added JSON support for the following APIs:<br>[getEmailActivityUserDetail](/graph/api/reportroot-getemailactivityuserdetail?view=graph-rest-beta)<br>[getEmailActivityCounts](/graph/api/reportroot-getemailactivitycounts?view=graph-rest-beta)<br>[getEmailActivityUserCounts](/graph/api/reportroot-getemailactivityusercounts?view=graph-rest-beta)<br>[getEmailAppUsageUserDetail](/graph/api/reportroot-getemailappusageuserdetail?view=graph-rest-beta)<br>[getEmailAppUsageAppsUserCounts](/graph/api/reportroot-getemailappusageappsusercounts?view=graph-rest-beta)<br>[getEmailAppUsageUserCounts](/graph/api/reportroot-getemailappusageusercounts?view=graph-rest-beta)<br>[getEmailAppUsageVersionsUserCounts](/graph/api/reportroot-getemailappusageversionsusercounts?view=graph-rest-beta)<br>[getMailboxUsageDetail](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-beta)<br>[getMailboxUsageMailboxCounts](/graph/api/reportroot-getmailboxusagemailboxcounts?view=graph-rest-beta)<br>[getMailboxUsageQuotaStatusMailboxCounts](/graph/api/reportroot-getmailboxusagequotastatusmailboxcounts?view=graph-rest-beta)<br>[getMailboxUsageStorage](/graph/api/reportroot-getmailboxusagestorage?view=graph-rest-beta)<br>[getOffice365ActivationsUserDetail](/graph/api/reportroot-getoffice365activationsuserdetail?view=graph-rest-beta)<br>[getOffice365ActivationCounts](/graph/api/reportroot-getoffice365activationcounts?view=graph-rest-beta)<br>[getOffice365ActivationsUserCounts](/graph/api/reportroot-getoffice365activationsusercounts?view=graph-rest-beta)<br>[getOffice365ActiveUserDetail](/graph/api/reportroot-getoffice365activeuserdetail?view=graph-rest-beta)<br>[getOffice365ActiveUserCounts](/graph/api/reportroot-getoffice365activeusercounts?view=graph-rest-beta)<br>[getOffice365ServicesUserCounts](/graph/api/reportroot-getoffice365servicesusercounts?view=graph-rest-beta)<br>[getOffice365GroupsActivityDetail](/graph/api/reportroot-getoffice365groupsactivitydetail?view=graph-rest-beta)<br> [getOffice365GroupsActivityCounts](/graph/api/reportroot-getoffice365groupsactivitycounts?view=graph-rest-beta)<br>[getOffice365GroupsActivityGroupCounts](/graph/api/reportroot-getoffice365groupsactivitygroupcounts?view=graph-rest-beta)<br>[getOffice365GroupsActivityStorage](/graph/api/reportroot-getoffice365groupsactivitystorage?view=graph-rest-beta)<br>[getOffice365GroupsActivityFileCounts](/graph/api/reportroot-getoffice365groupsactivityfilecounts?view=graph-rest-beta)<br>[getOneDriveActivityUserDetail](/graph/api/reportroot-getonedriveactivityuserdetail?view=graph-rest-beta)<br>[getOneDriveActivityUserCounts](/graph/api/reportroot-getonedriveactivityusercounts?view=graph-rest-beta)<br>[getOneDriveActivityFileCounts](/graph/api/reportroot-getonedriveactivityfilecounts?view=graph-rest-beta)<br>[getOneDriveUsageAccountDetail](/graph/api/reportroot-getonedriveusageaccountdetail?view=graph-rest-beta)<br>[getOneDriveUsageAccountCounts](/graph/api/reportroot-getonedriveusageaccountcounts?view=graph-rest-beta)<br>[getOneDriveUsageFileCounts](/graph/api/reportroot-getonedriveusagefilecounts?view=graph-rest-beta)<br>[getOneDriveUsageStorage](/graph/api/reportroot-getonedriveusagestorage?view=graph-rest-beta)<br>[getSharePointActivityUserDetail](/graph/api/reportroot-getsharepointactivityuserdetail?view=graph-rest-beta)<br>[getSharePointActivityFileCounts](/graph/api/reportroot-getsharepointactivityfilecounts?view=graph-rest-beta)<br>[getSharePointActivityUserCounts](/graph/api/reportroot-getsharepointactivityusercounts?view=graph-rest-beta)<br>[getSharePointActivityPages](/graph/api/reportroot-getsharepointactivitypages?view=graph-rest-beta)<br>[getSharePointSiteUsageDetail](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-beta)<br>[getSharePointSiteUsageFileCounts](/graph/api/reportroot-getsharepointsiteusagefilecounts?view=graph-rest-beta)<br>[getSharePointSiteUsageSiteCounts](/graph/api/reportroot-getsharepointsiteusagesitecounts?view=graph-rest-beta)<br>[getSharePointSiteUsageStorage](/graph/api/reportroot-getsharepointsiteusagestorage?view=graph-rest-beta)<br>[getSharePointSiteUsagePages](/graph/api/reportroot-getsharepointsiteusagepages?view=graph-rest-beta)<br>[getSkypeForBusinessActivityUserDetail](/graph/api/reportroot-getskypeforbusinessactivityuserdetail?view=graph-rest-beta)<br>[getSkypeForBusinessActivityCounts](/graph/api/reportroot-getskypeforbusinessactivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessActivityUserCounts](/graph/api/reportroot-getskypeforbusinessactivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageUserDetail](/graph/api/reportroot-getskypeforbusinessdeviceusageuserdetail?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageDistributionUserCounts](/graph/api/reportroot-getskypeforbusinessdeviceusagedistributionusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageUserCounts](/graph/api/reportroot-getskypeforbusinessdeviceusageusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityUserCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivityminutecounts?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityUserCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivityminutecounts?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityUserCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivityminutecounts?view=graph-rest-beta)<br>[getYammerActivityUserDetail](/graph/api/reportroot-getyammeractivityuserdetail?view=graph-rest-beta)<br>[getYammerActivityCounts](/graph/api/reportroot-getyammeractivitycounts?view=graph-rest-beta)<br>[getYammerActivityUserCounts](/graph/api/reportroot-getyammeractivityusercounts?view=graph-rest-beta)<br>[getYammerDeviceUsageUserDetail](/graph/api/reportroot-getyammerdeviceusageuserdetail?view=graph-rest-beta)<br>[getYammerDeviceUsageDistributionUserCounts](/graph/api/reportroot-getyammerdeviceusagedistributionusercounts?view=graph-rest-beta)<br>[getYammerDeviceUsageUserCounts](/graph/api/reportroot-getyammerdeviceusageusercounts?view=graph-rest-beta)<br>[getYammerGroupsActivityDetail](/graph/api/reportroot-getyammergroupsactivitydetail?view=graph-rest-beta)<br>[getYammerGroupsActivityGroupCounts](/graph/api/reportroot-getyammergroupsactivitygroupcounts?view=graph-rest-beta)<br>[getYammerGroupsActivityCounts](/graph/api/reportroot-getyammergroupsactivitycounts?view=graph-rest-beta). |

### Webhooks

| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Breaking change | Beta and v1.0 | Reduced [webhooks](/graph/api/resources/webhooks?view=graph-rest-1.0) [maximum length of subscription expiration time](/graph/api/resources/subscription?view=graph-rest-1.0#maximum-length-of-subscription-per-resource-type) for drive root items. The new value is the supported maximum expiration time for drive root items. |

## October 2017

### Azure AD APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
|Addition|Beta|Added the [identityProvider](/graph/api/resources/identityprovider?view=graph-rest-beta) entity and the [create](/graph/api/identityprovider-post-identityproviders?view=graph-rest-beta), [list](/graph/api/identityprovider-list?view=graph-rest-beta), [get](/graph/api/identityprovider-get?view=graph-rest-beta), [update](/graph/api/identityprovider-update?view=graph-rest-beta), and [delete](/graph/api/identityprovider-delete?view=graph-rest-beta) operations.|


### Microsoft Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[androidDeviceComplianceLocalActionLockDeviceWithPasscode](/graph/api/resources/intune-deviceconfig-androiddevicecompliancelocalactionlockdevicewithpasscode?view=graph-rest-beta)<br/>[iosLobAppProvisioningConfigurationAssignment](/graph/api/resources/intune-apps-ioslobappprovisioningconfigurationassignment?view=graph-rest-beta)<br/>[iosVppEBookAssignment](/graph/api/resources/intune-books-iosvppebookassignment?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationAssignment](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationassignment?view=graph-rest-beta)<br/>[managedEBookAssignment](/graph/api/resources/intune-books-managedebookassignment?view=graph-rest-beta)<br/>[managedMobileApp](/graph/api/resources/intune-mam-managedmobileapp?view=graph-rest-beta)<br/>[mobileAppAssignment](/graph/api/resources/intune-apps-mobileappassignment?view=graph-rest-beta)<br/>[termsAndConditionsAssignment](/graph/api/resources/intune-companyterms-termsandconditionsassignment?view=graph-rest-beta)<br/>[vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta)<br/>[windows10PFXImportCertificateProfile](/graph/api/resources/intune-deviceconfig-windows10pfximportcertificateprofile?view=graph-rest-beta)<br/>[windowsAssignedAccessProfile](/graph/api/resources/intune-deviceconfig-windowsassignedaccessprofile?view=graph-rest-beta)<br/>[windowsDomainJoinConfiguration](/graph/api/resources/intune-deviceconfig-windowsdomainjoinconfiguration?view=graph-rest-beta)<br/>|
|Addition|Beta|Added new complex types:<br/>[iosLobAppAssignmentSettings](/graph/api/resources/intune-apps-ioslobappassignmentsettings?view=graph-rest-beta)<br/>[iosSingleSignOnSettings](/graph/api/resources/intune-deviceconfig-iossinglesignonsettings?view=graph-rest-beta)<br/>[iosStoreAppAssignmentSettings](/graph/api/resources/intune-apps-iosstoreappassignmentsettings?view=graph-rest-beta)<br/>[iosVppAppAssignmentSettings](/graph/api/resources/intune-apps-iosvppappassignmentsettings?view=graph-rest-beta)<br/>[mobileAppAssignmentSettings](/graph/api/resources/intune-apps-mobileappassignmentsettings?view=graph-rest-beta)<br/>[proxiedDomain](/graph/api/resources/intune-deviceconfig-proxieddomain?view=graph-rest-beta)<br/>[windowsInformationProtectionProxiedDomainCollection](/graph/api/resources/intune-mam-windowsinformationprotectionproxieddomaincollection?view=graph-rest-beta)<br/>[windowsStoreForBusinessAppAssignmentSettings](/graph/api/resources/intune-apps-windowsstoreforbusinessappassignmentsettings?view=graph-rest-beta)<br/>|
|Addition|Beta|Added the [assign](/graph/api/intune-apps-mobileapp-assign?view=graph-rest-beta) action on [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune-apps-ioslobappprovisioningconfiguration-assign?view=graph-rest-beta) action on [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune-apps-manageddevicemobileappconfiguration-assign?view=graph-rest-beta) action on [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune-deviceconfig-devicecompliancepolicy-assign?view=graph-rest-beta) action on [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) |
|Addition|Beta|Added the [assignedAccessMultiModeProfiles](/graph/api/intune-deviceconfig-deviceconfiguration-assignedaccessmultimodeprofiles?view=graph-rest-beta) action on [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added the [syncLicenses](/graph/api/intune-onboarding-vpptoken-synclicenses?view=graph-rest-beta) action on [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) |
|Addition|Beta|Added the [targetApps](/graph/api/intune-mam-managedapppolicy-targetapps?view=graph-rest-beta) action on [managedAppPolicy](/graph/api/resources/intune-mam-managedapppolicy?view=graph-rest-beta) |
|Addition|Beta|Added the [targetApps](/graph/api/intune-mam-managedappprotection-targetapps?view=graph-rest-beta) action on [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) |
|Addition|Beta|Added the [targetApps](/graph/api/intune-mam-targetedmanagedappconfiguration-targetapps?view=graph-rest-beta) action on [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added the [assign](/graph/api/intune-books-managedebook-assign?view=graph-rest-beta) action on [managedEBook](/graph/api/resources/intune-books-managedebook?view=graph-rest-beta) |
|Deletion|Beta|Removed the following entities:<br/>**cloudPkiSubscription**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**cloudPkiAdministratorCredentials**<br/>**windowsNetworkIsolationCloudResource**<br/>**windowsNetworkIsolationCloudResourceCollection**<br/>**windowsNetworkIsolationIPRangeCollection**<br/>**windowsNetworkIsolationResourceCollection**<br/>|
|Change|Beta|Added the **gracePeriodInMinutes** property to the [androidDeviceComplianceLocalActionBase](/graph/api/resources/intune-deviceconfig-androiddevicecompliancelocalactionbase?view=graph-rest-beta) entity|
|Change|Beta|Removed the **enableSplitTunneling** property from the [androidForWorkVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkvpnconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **versionName** and **versionCode** properties to the [androidLobApp](/graph/api/resources/intune-apps-androidlobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **minimumRequiredPatchVersion** and **minimumWarningPatchVersion** properties to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **minimumRequiredPatchVersion** and **minimumWarningPatchVersion** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **target** property to the [deviceCompliancePolicyAssignment](/graph/api/resources/intune-deviceconfig-devicecompliancepolicyassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **singleSignOnSettings** property to the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-iosdevicefeaturesconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **versionNumber** and **buildNumber** properties to the [iosLobApp](/graph/api/resources/intune-apps-ioslobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **bundleId** property to the [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **preSharedKey** property to the [iosWiFiConfiguration](/graph/api/resources/intune-deviceconfig-ioswificonfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **versionName** and **versionCode** properties to the [managedAndroidLobApp](/graph/api/resources/intune-apps-managedandroidlobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **periodBeforePinReset** property to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **subscriberCarrier**, **meid**, **totalStorageSpaceInBytes** and **freeStorageSpaceInBytes** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Removed the **enrollmentType** property from the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Change|Beta|Added the **versionNumber** and **buildNumber** properties to the [managedIOSLobApp](/graph/api/resources/intune-apps-managedioslobapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **displayVersion** property to the [mobileAppInstallStatus](/graph/api/resources/intune-apps-mobileappinstallstatus?view=graph-rest-beta) entity|
|Change|Beta|Removed the **defaultDeviceEnrollmentRestrictions**, **defaultDeviceEnrollmentWindowsHelloForBusinessSettings** and **defaultDeviceEnrollmentLimit** properties from the [organization](/graph/api/resources/intune-onboarding-organization?view=graph-rest-beta) entity|
|Change|Beta|Added the **isAssigned** property to the [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **isAssigned** property to the [targetedManagedAppProtection](/graph/api/resources/intune-mam-targetedmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **activeFirewallRequired**, **uacRequired**, **defenderEnabled**, **defenderVersion**, **signatureOutOfDate** and **rtpEnabled** properties to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignedAccessSingleModeUserName**, **assignedAccessSingleModeAppUserModelId**, **microsoftAccountSignInAssistantSettings**, **authenticationAllowSecondaryDevice**, **cryptographyAllowFipsAlgorithmPolicy**, **securityBlockAzureADJoinedDevicesAutoEncryption**, **systemTelemetryProxyServer**, **inkWorkspaceAccess**, **inkWorkspaceBlockSuggestedApps**, **defenderCloudBlockLevel** and **defenderCloudExtendedTimeout** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **protectedApps**, **enterpriseProxiedDomains** and **isAssigned** properties to the [windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **productVersion** property to the [windowsMobileMSI](/graph/api/resources/intune-apps-windowsmobilemsi?view=graph-rest-beta) entity|
|Change|Beta|Added the **apps** navigation property to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **apps** navigation property to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **vppTokens** navigation property to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) entity|
|Change|Beta|Removed the **deviceCompliancePolicy** navigation property from the [deviceCompliancePolicyAssignment](/graph/api/resources/intune-deviceconfig-devicecompliancepolicyassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **deviceCompliancePolicy** navigation property to the [deviceCompliancePolicyGroupAssignment](/graph/api/resources/intune-deviceconfig-devicecompliancepolicygroupassignment?view=graph-rest-beta) entity|
|Change|Beta|Added the **identityCertificateForClientAuthentication** navigation property to the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-iosdevicefeaturesconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **apps** navigation property to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [managedEBook](/graph/api/resources/intune-books-managedebook?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta) entity|
|Change|Beta|Added the **apps** navigation property to the [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignments** navigation property to the [termsAndConditions](/graph/api/resources/intune-companyterms-termsandconditions?view=graph-rest-beta) entity|
|Change|Beta|Added the **assignedAccessMultiModeProfiles** navigation property to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Change|Beta|Added the **protectedAppLockerFiles** navigation property to the [windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-beta) entity|
|Change|Beta|Added the **port** and **forceTls** properties to the [airPrintDestination](/graph/api/resources/intune-deviceconfig-airprintdestination?view=graph-rest-beta) complex type|
|Change|Beta|Changed the type of the following properties on the [deviceCompliancePolicySettingState](/graph/api/resources/intune-deviceconfig-devicecompliancepolicysettingstate?view=graph-rest-beta) complex type:<br/>**errorCode** from Int32 to Int64<br/>|
|Change|Beta|Changed the type of the following properties on the [deviceConfigurationSettingState](/graph/api/resources/intune-deviceconfig-deviceconfigurationsettingstate?view=graph-rest-beta) complex type:<br/>**errorCode** from Int32 to Int64<br/>|
|Change|Beta|Changed the type of the following properties on the [windowsNetworkIsolationPolicy](/graph/api/resources/intune-deviceconfig-windowsnetworkisolationpolicy?view=graph-rest-beta) complex type:<br/>**enterpriseCloudResources** from [windowsNetworkIsolationCloudResourceCollection](/graph/api/resources/intune-deviceconfig-windowsnetworkisolationcloudresourcecollection?view=graph-rest-beta) to [proxiedDomain](/graph/api/resources/intune-deviceconfig-proxieddomain?view=graph-rest-beta) collection<br/>**enterpriseInternalProxyServers** from windowsNetworkIsolationResourceCollection to String collection<br/>**enterpriseIPRanges** from windowsNetworkIsolationIPRangeCollection to [ipRange](/graph/api/resources/intune-deviceconfig-iprange?view=graph-rest-beta) collection<br/>**enterpriseNetworkDomainNames** from windowsNetworkIsolationResourceCollection to String collection<br/>**enterpriseProxyServers** from windowsNetworkIsolationResourceCollection to String collection<br/>**neutralDomainResources** from windowsNetworkIsolationResourceCollection to String collection<br/>|

### Microsoft Teams APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new [team](/graph/api/resources/team?view=graph-rest-beta) entity.|
|Addition|Beta|Added [create](/graph/api/team-put-teams?view=graph-rest-beta), [get](/graph/api/team-get?view=graph-rest-beta), and [update](/graph/api/team-update?view=graph-rest-beta) operations on [team](/graph/api/resources/team?view=graph-rest-beta) entity.|

### Outlook messages

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Change          | v1.0 and beta | This behavior enhancement is about getting a shared mail folder or its message contents, when a user has shared a mail folder with the signed-in user, or has delegated the user's mailbox to the signed-in user. In such situations, an app can specify that user's ID or user principal name to [get that shared mail folder](/graph/api/mailfolder-get?view=graph-rest-1.0), or [get the messages in that shared calendar](/graph/api/user-list-messages?view=graph-rest-1.0), as long as the signed-in user has provided delegated permissions to the app. |


### Outlook user choices

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
|Addition | Beta | Added the new **workingHours** property to [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-beta). See [workingHours resource type](/graph/api/resources/workinghours?view=graph-rest-beta) for information on the supported use cases.|
|Addition | Beta | Added the following new complex types: <br> [workingHours](/graph/api/resources/workinghours?view=graph-rest-beta) <br> [timeZoneBase](/graph/api/resources/timezonebase?view=graph-rest-beta) <br> [customTimeZone](/graph/api/resources/customtimezone?view=graph-rest-beta) <br> [standardTimeZoneOffset](/graph/api/resources/standardtimezoneoffset?view=graph-rest-beta) <br> [daylightTimeZoneOffset](/graph/api/resources/daylighttimezoneoffset?view=graph-rest-beta)|


### Reports APIs
| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Change      | Beta    | Added the [getEmailActivityUserDetail](/graph/api/reportroot-getemailactivityuserdetail?view=graph-rest-beta), [getEmailActivityCounts](/graph/api/reportroot-getemailactivitycounts?view=graph-rest-beta), and [getEmailActivityUserCounts](/graph/api/reportroot-getemailactivityusercounts?view=graph-rest-beta) APIs. These replaced the EmailActivity API. |
| Change      | Beta    | Added the [getEmailAppUsageUserDetail](/graph/api/reportroot-getemailappusageuserdetail?view=graph-rest-beta), [getEmailAppUsageAppsUserCounts](/graph/api/reportroot-getemailappusageappsusercounts?view=graph-rest-beta), [getEmailAppUsageUserCounts](/graph/api/reportroot-getemailappusageusercounts?view=graph-rest-beta), and [getEmailAppUsageVersionsUserCounts](/graph/api/reportroot-getemailappusageversionsusercounts?view=graph-rest-beta) APIs. These replaced the EmailAppUsage API. |
| Change      | Beta    | Added the [getMailboxUsageDetail](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-beta), [getMailboxUsageMailboxCounts](/graph/api/reportroot-getmailboxusagemailboxcounts?view=graph-rest-beta), [getMailboxUsageQuotaStatusMailboxCounts](/graph/api/reportroot-getmailboxusagequotastatusmailboxcounts?view=graph-rest-beta), and [getMailboxUsageStorage](/graph/api/reportroot-getmailboxusagestorage?view=graph-rest-beta) APIs. These replaced the MailboxUsage API. |
| Change      | Beta    | Added the [getOffice365ActivationsUserDetail](/graph/api/reportroot-getoffice365activationsuserdetail?view=graph-rest-beta), [getOffice365ActivationCounts](/graph/api/reportroot-getoffice365activationcounts?view=graph-rest-beta), and [getOffice365ActivationsUserCounts](/graph/api/reportroot-getoffice365activationsusercounts?view=graph-rest-beta) APIs. These replaced the Office365Activations API. |
| Change      | Beta    | Added the [getOffice365ActiveUserDetail](/graph/api/reportroot-getoffice365activeuserdetail?view=graph-rest-beta), [getOffice365ActiveUserCounts](/graph/api/reportroot-getoffice365activeusercounts?view=graph-rest-beta), and [getOffice365ServicesUserCounts](/graph/api/reportroot-getoffice365servicesusercounts?view=graph-rest-beta) APIs. These replaced the Office365ActiveUser API. |
| Change      | Beta    | Added the [getOffice365GroupsActivityDetail](/graph/api/reportroot-getoffice365groupsactivitydetail?view=graph-rest-beta), [getOffice365GroupsActivityCounts](/graph/api/reportroot-getoffice365groupsactivitycounts?view=graph-rest-beta),[getOffice365GroupsActivityGroupCounts](/graph/api/reportroot-getoffice365groupsactivitygroupcounts?view=graph-rest-beta), [getOffice365GroupsActivityStorage](/graph/api/reportroot-getoffice365groupsactivitystorage?view=graph-rest-beta), and [getOffice365GroupsActivityFileCounts](/graph/api/reportroot-getoffice365groupsactivityfilecounts?view=graph-rest-beta) APIs. These replaced the Office365GroupsActivity API. |
| Change      | Beta    | Added the [getOneDriveActivityUserDetail](/graph/api/reportroot-getonedriveactivityuserdetail?view=graph-rest-beta), [getOneDriveActivityUserCounts](/graph/api/reportroot-getonedriveactivityusercounts?view=graph-rest-beta), and [getOneDriveActivityFileCounts](/graph/api/reportroot-getonedriveactivityfilecounts?view=graph-rest-beta) APIs. These replaced the OneDriveActivity API. |
| Change      | Beta    | Added the [getOneDriveUsageAccountDetail](/graph/api/reportroot-getonedriveusageaccountdetail?view=graph-rest-beta), [getOneDriveUsageAccountCounts](/graph/api/reportroot-getonedriveusageaccountcounts?view=graph-rest-beta), [getOneDriveUsageFileCounts](/graph/api/reportroot-getonedriveusagefilecounts?view=graph-rest-beta), and [getOneDriveUsageStorage](/graph/api/reportroot-getonedriveusagestorage?view=graph-rest-beta) APIs. These replaced the OneDriveUsage API. |
| Change      | Beta    | Added the [getSharePointActivityUserDetail](/graph/api/reportroot-getsharepointactivityuserdetail?view=graph-rest-beta), [getSharePointActivityFileCounts](/graph/api/reportroot-getsharepointactivityfilecounts?view=graph-rest-beta), [getSharePointActivityUserCounts](/graph/api/reportroot-getsharepointactivityusercounts?view=graph-rest-beta), and [getSharePointActivityPages](/graph/api/reportroot-getsharepointactivitypages?view=graph-rest-beta) APIs. These replaced the SharePointActivity API. |
| Change      | Beta    | Added the [getSharePointSiteUsageDetail](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-beta), [getSharePointSiteUsageFileCounts](/graph/api/reportroot-getsharepointsiteusagefilecounts?view=graph-rest-beta), [getSharePointSiteUsageSiteCounts](/graph/api/reportroot-getsharepointsiteusagesitecounts?view=graph-rest-beta), [getSharePointSiteUsageStorage](/graph/api/reportroot-getsharepointsiteusagestorage?view=graph-rest-beta), and [getSharePointSiteUsagePages](/graph/api/reportroot-getsharepointsiteusagepages?view=graph-rest-beta) APIs. These replaced the SharePointSiteUsage API. |
| Change      | Beta    | Added the [getSkypeForBusinessActivityUserDetail](/graph/api/reportroot-getskypeforbusinessactivityuserdetail?view=graph-rest-beta), [getSkypeForBusinessActivityCounts](/graph/api/reportroot-getskypeforbusinessactivitycounts?view=graph-rest-beta), and [getSkypeForBusinessActivityUserCounts](/graph/api/reportroot-getskypeforbusinessactivityusercounts?view=graph-rest-beta) APIs. These replaced the SfbActivity API. |
| Change      | Beta    | Added the [getSkypeForBusinessDeviceUsageUserDetail](/graph/api/reportroot-getskypeforbusinessdeviceusageuserdetail?view=graph-rest-beta), [getSkypeForBusinessDeviceUsageDistributionUserCounts](/graph/api/reportroot-getskypeforbusinessdeviceusagedistributionusercounts?view=graph-rest-beta), and [getSkypeForBusinessDeviceUsageUserCounts](/graph/api/reportroot-getskypeforbusinessdeviceusageusercounts?view=graph-rest-beta) APIs. These replaced the SfbDeviceUsage API. |
| Change      | Beta    | Added the [getSkypeForBusinessOrganizerActivityCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivitycounts?view=graph-rest-beta), [getSkypeForBusinessOrganizerActivityUserCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivityusercounts?view=graph-rest-beta), and [getSkypeForBusinessOrganizerActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivityminutecounts?view=graph-rest-beta) APIs. These replaced the SfbOrganizerActivity API. |
| Change      | Beta    | Added the [getSkypeForBusinessParticipantActivityCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivitycounts?view=graph-rest-beta), [getSkypeForBusinessParticipantActivityUserCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivityusercounts?view=graph-rest-beta), and [getSkypeForBusinessParticipantActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivityminutecounts?view=graph-rest-beta) APIs. These replaced the SfbParticipantActivity API. |
| Change      | Beta    | Added the [getSkypeForBusinessPeerToPeerActivityCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivitycounts?view=graph-rest-beta), [getSkypeForBusinessPeerToPeerActivityUserCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivityusercounts?view=graph-rest-beta), and [getSkypeForBusinessPeerToPeerActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivityminutecounts?view=graph-rest-beta) APIs. These replaced the SfbP2PActivity API. |
| Change      | Beta    | Added the [getYammerActivityUserDetail](/graph/api/reportroot-getyammeractivityuserdetail?view=graph-rest-beta), [getYammerActivityCounts](/graph/api/reportroot-getyammeractivitycounts?view=graph-rest-beta), and [getYammerActivityUserCounts](/graph/api/reportroot-getyammeractivityusercounts?view=graph-rest-beta) APIs. These replaced the YammerActivity API. |
| Change      | Beta    | Added the [getYammerDeviceUsageUserDetail](/graph/api/reportroot-getyammerdeviceusageuserdetail?view=graph-rest-beta), [getYammerDeviceUsageDistributionUserCounts](/graph/api/reportroot-getyammerdeviceusagedistributionusercounts?view=graph-rest-beta), and [getYammerDeviceUsageUserCounts](/graph/api/reportroot-getyammerdeviceusageusercounts?view=graph-rest-beta) APIs. These replaced the YammerDeviceUsage API. |
| Change      | Beta    | Added the [getYammerGroupsActivityDetail](/graph/api/reportroot-getyammergroupsactivitydetail?view=graph-rest-beta), [getYammerGroupsActivityGroupCounts](/graph/api/reportroot-getyammergroupsactivitygroupcounts?view=graph-rest-beta), and [getYammerGroupsActivityCounts](/graph/api/reportroot-getyammergroupsactivitycounts?view=graph-rest-beta) APIs. These replaced the YammerGroupsActivity API. |



## September 2017

### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[activeDirectoryWindowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-activedirectorywindowsautopilotdeploymentprofile?view=graph-rest-beta)<br/>[azureADWindowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-azureadwindowsautopilotdeploymentprofile?view=graph-rest-beta)<br/>[deviceEnrollmentConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentconfiguration?view=graph-rest-beta)<br/>[deviceEnrollmentLimitConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentlimitconfiguration?view=graph-rest-beta)<br/>[deviceEnrollmentPlatformRestrictionsConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentplatformrestrictionsconfiguration?view=graph-rest-beta)<br/>[deviceEnrollmentWindowsHelloForBusinessConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentwindowshelloforbusinessconfiguration?view=graph-rest-beta)<br/>[deviceManagementPartner](/graph/api/resources/intune-onboarding-devicemanagementpartner?view=graph-rest-beta)<br/>[enrollmentConfigurationAssignment](/graph/api/resources/intune-onboarding-enrollmentconfigurationassignment?view=graph-rest-beta)<br/>[windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune-onboarding-windows10enrollmentcompletionpageconfiguration?view=graph-rest-beta)<br/>[windows10NetworkBoundaryConfiguration](/graph/api/resources/intune-deviceconfig-windows10networkboundaryconfiguration?view=graph-rest-beta)<br/>[windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta)<br/>[windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta)<br/>[windowsAutopilotSettings](/graph/api/resources/intune-enrollment-windowsautopilotsettings?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[adminConsent](/graph/api/resources/intune-devices-adminconsent?view=graph-rest-beta)<br/>[allDevicesAssignmentTarget](/graph/api/resources/intune-shared-alldevicesassignmenttarget?view=graph-rest-beta)<br/>[allLicensedUsersAssignmentTarget](/graph/api/resources/intune-shared-alllicensedusersassignmenttarget?view=graph-rest-beta)<br/>[deviceAndAppManagementAssignmentTarget](/graph/api/resources/intune-shared-deviceandappmanagementassignmenttarget?view=graph-rest-beta)<br/>[deviceEnrollmentPlatformRestriction](/graph/api/resources/intune-onboarding-deviceenrollmentplatformrestriction?view=graph-rest-beta)<br/>[deviceHealthAttestationState](/graph/api/resources/intune-devices-devicehealthattestationstate?view=graph-rest-beta)<br/>[exclusionGroupAssignmentTarget](/graph/api/resources/intune-shared-exclusiongroupassignmenttarget?view=graph-rest-beta)<br/>[groupAssignmentTarget](/graph/api/resources/intune-shared-groupassignmenttarget?view=graph-rest-beta)<br/>[outOfBoxExperienceSettings](/graph/api/resources/intune-enrollment-outofboxexperiencesettings?view=graph-rest-beta)<br/>[windowsFirewallNetworkProfile](/graph/api/resources/intune-deviceconfig-windowsfirewallnetworkprofile?view=graph-rest-beta)<br/>windowsNetworkIsolationCloudResource<br/>windowsNetworkIsolationCloudResourceCollection<br/>windowsNetworkIsolationIPRangeCollection<br/>[windowsNetworkIsolationPolicy](/graph/api/resources/intune-deviceconfig-windowsnetworkisolationpolicy?view=graph-rest-beta)<br/>windowsNetworkIsolationResourceCollection<br/> |
| Addition    | Beta    | Added the [sync](/graph/api/intune-enrollment-windowsautopilotsettings-sync?view=graph-rest-beta) action on [windowsAutopilotSettings](/graph/api/resources/intune-enrollment-windowsautopilotsettings?view=graph-rest-beta) |
| Addition    | Beta    | Added the [assign](/graph/api/intune-enrollment-windowsautopilotdeploymentprofile-assign?view=graph-rest-beta) action on [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) |
| Addition    | Beta    | Added the localActions action on [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) |
| Addition    | Beta    | Added the [setPriority](/graph/api/intune-onboarding-deviceenrollmentconfiguration-setpriority?view=graph-rest-beta) action on [deviceEnrollmentConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentconfiguration?view=graph-rest-beta) |
| Addition    | Beta    | Added the [assign](/graph/api/intune-onboarding-deviceenrollmentconfiguration-assign?view=graph-rest-beta) action on [deviceEnrollmentConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentconfiguration?view=graph-rest-beta) |
| Addition    | Beta    | Added the uploadDepToken action on [depOnboardingSetting](/graph/api/resources/intune-onboarding-deponboardingsetting?view=graph-rest-beta) collection |
| Addition    | Beta    | Added the syncWithAppleDeviceEnrollmentProgram action on [depOnboardingSetting](/graph/api/resources/intune-onboarding-deponboardingsetting?view=graph-rest-beta) collection |
| Addition    | Beta    | Added the updateMobileAppIdentifierDeployments action on [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the assign action on [targetedManagedAppProtection](/graph/api/resources/intune-mam-targetedmanagedappprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the assign action on [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) |
| Addition    | Beta    | Added the assign action on [windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the getEncryptionPublicKey function on [depOnboardingSetting](/graph/api/resources/intune-onboarding-deponboardingsetting?view=graph-rest-beta) collection |
| Change      | Beta    | Added the **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders**, **requireCompanyPortalAppIntegrity** and **conditionStatementId** properties to the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **requireAppVerify**, **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders** and **requireCompanyPortalAppIntegrity** properties to the [androidForWorkCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidforworkcompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **blockCrossProfileCopyPaste** and **requireAppVerify** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **kioskModeApps** and **requireAppVerify** properties to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **kioskModeManagedApps** property from the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **cloudPkiProvider**, **createdDateTime**, **description**, **lastModifiedDateTime**, **displayName**, **syncStatus**, **lastSyncError**, **lastSyncDateTime**, **credentials**, **trustedRootCertificate** and **version** properties from the cloudPkiSubscription entity |
| Change      | Beta    | Removed the **assignmentStatus**, **assignmentProgress** and **assignmentErrorMessage** properties from the [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **adminConsent** property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **vppTokenOrganizationName**, **vppTokenAccountType** and **vppTokenAppleId** properties to the [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceEnrollmentType**, **wiFiMacAddress** and **deviceHealthAttestationState** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **legacyAppConfiguration** property to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [managedDeviceMobileAppConfigurationDeviceSummary](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationdevicesummary?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [managedDeviceMobileAppConfigurationUserSummary](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationusersummary?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **firewallBlockStatefulFTP**, **firewallIdleTimeoutForSecurityAssociationInSeconds**, **firewallPreSharedKeyEncodingMethod**, **firewallIPSecExemptionsAllowNeighborDiscovery**, **firewallIPSecExemptionsAllowICMP**, **firewallIPSecExemptionsAllowRouterDiscovery**, **firewallIPSecExemptionsAllowDHCP**, **firewallCertificateRevocationListCheckMethod**, **firewallMergeKeyingModuleSettings**, **firewallPacketQueueingMethod**, **firewallProfileDomain**, **firewallProfilePublic**, **firewallProfilePrivate**, **defenderAttackSurfaceReductionExcludedPaths**, **defenderOfficeAppsOtherProcessInjectionType**, **defenderOfficeAppsExecutableContentCreationOrLaunchType**, **defenderOfficeAppsLaunchChildProcessType**, **defenderOfficeMacroCodeAllowWin32ImportsType**, **defenderScriptObfuscatedMacroCodeType**, **defenderScriptDownloadedPayloadExecutionType**, **defenderEmailContentExecutionType**, **defenderGuardMyFoldersType**, **defenderGuardedFoldersAllowedAppPaths**, **defenderAdditionalGuardedFolders**, **defenderNetworkProtectionType**, **defenderExploitProtectionXml**, **defenderExploitProtectionXmlFileName**, **defenderSecurityCenterBlockExploitProtectionOverride**, **appLockerApplicationControl**, **applicationGuardBlockClipboardSharing**, **applicationGuardAllowPrintToPDF**, **applicationGuardAllowPrintToXPS**, **applicationGuardAllowPrintToLocalPrinters**, **applicationGuardAllowPrintToNetworkPrinters** and **bitLockerDisableWarningForOtherDiskEncryption** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **displayAppListWithGdiDPIScalingTurnedOn**, **displayAppListWithGdiDPIScalingTurnedOff**, **messagingBlockSync**, **messagingBlockMMS** and **messagingBlockRichCommunicationServices** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **bluetoothDeviceName** property from the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **deviceAccountBlockExchangeServices**, **deviceAccountEmailAddress**, **deviceAccountExchangeServerAddress**, **deviceAccountRequirePasswordRotation** and **deviceAccountSessionInitiationProtocolAddress** properties from the [windows10TeamGeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10teamgeneralconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **localActions** navigation property to the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **windowsAutopilotSettings**, **windowsAutopilotDeviceIdentities**, **windowsAutopilotDeploymentProfiles**, **deviceEnrollmentConfigurations**, **deviceManagementPartners** and **depOnboardingSettings** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **cloudPkiSubscriptions** navigation property from the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **assignments** navigation property to the [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **assignments** navigation property to the [targetedManagedAppProtection](/graph/api/resources/intune-mam-targetedmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **assignments** navigation property to the [windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-beta) entity |

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

[Drive]: /graph/api/resources/drive?view=graph-rest-1.0
[DriveItem]: /graph/api/resources/driveitem?view=graph-rest-1.0
[SharedDriveItem]: /graph/api/resources/shareddriveitem?view=graph-rest-1.0
[FolderView]: /graph/api/resources/folderview?view=graph-rest-1.0
[Folder]: /graph/api/resources/folder?view=graph-rest-1.0
[ItemReference]: /graph/api/resources/itemreference?view=graph-rest-1.0
[Video]: /graph/api/resources/video?view=graph-rest-1.0
[Drive-beta]: /graph/api/resources/drive?view=graph-rest-beta
[DriveItem-beta]: /graph/api/resources/driveitem?view=graph-rest-beta
[DriveItemVersion-beta]: /graph/api/resources/driveitemversion?view=graph-rest-beta
[ItemActivity-beta]: /graph/api/resources/itemactivity?view=graph-rest-beta
[CommentAction-beta]: /graph/api/resources/commentaction?view=graph-rest-beta
[CreateAction-beta]: /graph/api/resources/createaction?view=graph-rest-beta
[DeleteAction-beta]: /graph/api/resources/deleteaction?view=graph-rest-beta
[EditAction-beta]: /graph/api/resources/editaction?view=graph-rest-beta
[ItemActionSet-beta]: /graph/api/resources/itemactionset?view=graph-rest-beta
[ItemActivityTimeSet-beta]: /graph/api/resources/itemactivitytimeset?view=graph-rest-beta
[MentionAction-beta]: /graph/api/resources/mentionaction?view=graph-rest-beta
[MoveAction-beta]: /graph/api/resources/moveaction?view=graph-rest-beta
[PublicationFacet-beta]: /graph/api/resources/publicationfacet?view=graph-rest-beta
[RenameAction-beta]: /graph/api/resources/renameaction?view=graph-rest-beta
[RestoreAction-beta]: /graph/api/resources/restoreaction?view=graph-rest-beta
[ShareAction-beta]: /graph/api/resources/shareaction?view=graph-rest-beta
[VersionAction-beta]: /graph/api/resources/versionaction?view=graph-rest-beta
[ItemReference-beta]: /graph/api/resources/itemreference?view=graph-rest-beta
[SharepointIds-beta]: /graph/api/resources/sharepointids?view=graph-rest-beta
[Video-beta]: /graph/api/resources/video?view=graph-rest-beta
[CheckIn-beta]: /graph/api/driveitem-checkin?view=graph-rest-beta
[CheckOut-beta]: /graph/api/driveitem-checkout?view=graph-rest-beta
[CreateLink-beta]: /graph/api/driveitem-createlink?view=graph-rest-beta


### Outlook calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added the [findRoomLists](/graph/api/user-findroomlists?view=graph-rest-beta) and [findRooms](/graph/api/user-findrooms?view=graph-rest-beta) functions to the [user](/graph/api/resources/user?view=graph-rest-beta) entity. |
| Addition        | Beta          | Added the **locations** property to the [event](/graph/api/resources/event?view=graph-rest-beta) entity to support organizing an event that attendees can attend from more than one location. |
| Addition        | Beta          | Added the **locationType** property to the [location](/graph/api/resources/location?view=graph-rest-beta) complex type. |
| Addition        | Beta          | Added the **uniqueId** and **uniqueIdType** properties to the [location](/graph/api/resources/location?view=graph-rest-beta) complex type. These properties are only for internal use at this point. |
| Change          | v1.0 and beta | This behavior enhancement is about getting a shared calendar or its event contents, when a user has shared a calendar with the signed-in user, or has delegated the user's mailbox to the signed-in user. In such situations, an app can specify that user's ID or user principal name to [get that shared calendar](/graph/api/calendar-get?view=graph-rest-1.0), or [get the events in that shared calendar](/graph/api/user-list-events?view=graph-rest-1.0), as long as the signed-in user has provided delegated permissions to the app. |

### Outlook contacts

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | This behavior enhancement is about getting a shared contact folder or its contact contents, when a user has shared a contact folder with the signed-in user, or has delegated the user's mailbox to the signed-in user. In such situations, an app can specify that user's ID or user principal name to [get that shared contact folder](/graph/api/contactfolder-get?view=graph-rest-1.0), or [get the contacts in that shared folder](/graph/api/user-list-contacts?view=graph-rest-1.0), as long as the signed-in user has provided delegated permissions to the app. |

### Outlook mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **internetMessageHeaders** property to the [message](/graph/api/resources/message?view=graph-rest-beta) entity. |
| Addition        | Beta        | Added the [internetMessageHeader](/graph/api/resources/internetmessageheader?view=graph-rest-beta) complex type. |
| Addition        | Beta        | Added the **messageRules** navigation property to the [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta) entity. **messageRules** is a collection of [messageRule](/graph/api/resources/messagerule?view=graph-rest-beta) instances. |
| Addition        | Beta        | Added the [messageRule](/graph/api/resources/messagerule?view=graph-rest-beta) entity, and [messageRuleActions](/graph/api/resources/messageruleactions?view=graph-rest-beta), [messageRulePredicates](/graph/api/resources/messagerulepredicates?view=graph-rest-beta), and [sizeRange](/graph/api/resources/sizerange?view=graph-rest-beta) complex types. |
| Addition        | Beta        | Added the following CRUD operations for message rules: [create](/graph/api/mailfolder-post-messagerules?view=graph-rest-beta), [list](/graph/api/mailfolder-list-messagerules?view=graph-rest-beta), [get](/graph/api/messagerule-get?view=graph-rest-beta), [update](/graph/api/messagerule-update?view=graph-rest-beta), and [delete](/graph/api/messagerule-delete?view=graph-rest-beta). |


### Outlook user choices

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the new **masterCategories** navigation property to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-beta) entity. **masterCategories** is a collection of [outlookCategory](/graph/api/resources/outlookcategory?view=graph-rest-beta) objects. |
| Addition        | Beta        | Added the [outlookCategory](/graph/api/resources/outlookcategory?view=graph-rest-beta) entity. |
| Addition        | Beta        | Added the following CRUD operations for [outlookCategory](/graph/api/resources/outlookcategory?view=graph-rest-beta): [create](/graph/api/outlookuser-post-mastercategories?view=graph-rest-beta), [get](/graph/api/outlookcategory-get?view=graph-rest-beta), [update](/graph/api/outlookcategory-update?view=graph-rest-beta), and [delete](/graph/api/outlookcategory-delete?view=graph-rest-beta). |
| Addition        | Beta        | Added the new [supportedLanguages](/graph/api/outlookuser-supportedlanguages?view=graph-rest-beta) function to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-beta) entity. |
| Addition        | Beta        | Added the new [supportedTimeZones](/graph/api/outlookuser-supportedtimezones?view=graph-rest-beta) function to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-beta) entity. |


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

[BaseItemVersion-beta]: /graph/api/resources/baseitemversion?view=graph-rest-beta
[BooleanColumn-beta]:  /graph/api/resources/booleanColumn?view=graph-rest-beta
[BooleanColumn]: /graph/api/resources/booleancolumn?view=graph-rest-1.0
[CalculatedColumn]: /graph/api/resources/calculatedcolumn?view=graph-rest-1.0
[ChoiceColumn]: /graph/api/resources/choicecolumn?view=graph-rest-1.0
[ColumnDefinition-beta]: /graph/api/resources/columndefinition?view=graph-rest-beta
[ColumnDefinition]: /graph/api/resources/columndefinition?view=graph-rest-1.0
[ColumnLink-beta]: /graph/api/resources/columnlink?view=graph-rest-beta
[ColumnLink]: /graph/api/resources/columnlink?view=graph-rest-1.0
[ContentType-beta]: /graph/api/resources/contenttype?view=graph-rest-beta
[ContentType]: /graph/api/resources/contenttype?view=graph-rest-1.0
[ContentTypeInfo-beta]: /graph/api/resources/contenttypeinfo?view=graph-rest-beta
[ContentTypeInfo]: /graph/api/resources/contenttypeinfo?view=graph-rest-1.0
[ContentTypeOrder-beta]: /graph/api/resources/contenttypeorder?view=graph-rest-beta
[ContentTypeOrder]: /graph/api/resources/contenttypeorder?view=graph-rest-1.0
[CurrencyColumn-beta]: /graph/api/resources/currencycolumn?view=graph-rest-beta
[CurrencyColumn]: /graph/api/resources/currencycolumn?view=graph-rest-1.0
[DateTimeColumn]: /graph/api/resources/datetimecolumn?view=graph-rest-1.0
[DefaultColumnValue]: /graph/api/resources/defaultcolumnvalue?view=graph-rest-1.0
[List-beta]: /graph/api/resources/list?view=graph-rest-beta
[List]: /graph/api/resources/list?view=graph-rest-1.0
[ListInfo-beta]: /graph/api/resources/listinfo?view=graph-rest-beta
[ListInfo]: /graph/api/resources/listinfo?view=graph-rest-1.0
[ListItem-beta]: /graph/api/resources/listitem?view=graph-rest-beta
[ListItem]: /graph/api/resources/listitem?view=graph-rest-1.0
[ListItemVersion-beta]: /graph/api/resources/listitemversion?view=graph-rest-beta
[LookupColumn-beta]: /graph/api/resources/lookupcolumn?view=graph-rest-beta
[LookupColumn]: /graph/api/resources/lookupcolumn?view=graph-rest-1.0
[NumberColumn-beta]: /graph/api/resources/numbercolumn?view=graph-rest-beta
[NumberColumn]: /graph/api/resources/numbercolumn?view=graph-rest-1.0
[PersonOrGroupColumn-beta]: /graph/api/resources/personorgroupcolumn?view=graph-rest-beta
[PersonOrGroupColumn]: /graph/api/resources/personorgroupcolumn?view=graph-rest-1.0
[Site-beta]: /graph/api/resources/site?view=graph-rest-beta
[Site]: /graph/api/resources/site?view=graph-rest-1.0
[SystemFacet-beta]: /graph/api/resources/systemfacet?view=graph-rest-beta
[SystemFacet]: /graph/api/resources/systemfacet?view=graph-rest-1.0
[TextColumn]: /graph/api/resources/textcolumn?view=graph-rest-1.0


### SharePoint sites

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added **dataLocationCode** and **root** properties to the [SiteCollection][SiteCollection-beta] complex type. |

[SiteCollection-beta]: /graph/api/resources/sitecollection?view=graph-rest-beta


## August 2017

### Group lifecycle policy

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added [groupLifecyclePolicy](/graph/api/resources/grouplifecyclepolicy?view=graph-rest-beta) entity. |
| Addition        | Beta        | Added the following APIs for group lifecycle policy: [create](/graph/api/grouplifecyclepolicy-post-grouplifecyclepolicies?view=graph-rest-beta), [list](/graph/api/grouplifecyclepolicy-list?view=graph-rest-beta), [get](/graph/api/grouplifecyclepolicy-get?view=graph-rest-beta), [update](/graph/api/grouplifecyclepolicy-update?view=graph-rest-beta), [delete](/graph/api/grouplifecyclepolicy-delete?view=graph-rest-beta), [add group](/graph/api/grouplifecyclepolicy-addgroup?view=graph-rest-beta), [remove group](/graph/api/grouplifecyclepolicy-removegroup?view=graph-rest-beta), and [renew a group](/graph/api/grouplifecyclepolicy-renewgroup?view=graph-rest-beta). |
| Addition        | Beta        | Added [List groupLifecylePolicies](/graph/api/group-list-grouplifecyclepolicies?view=graph-rest-beta) function to [group](/graph/api/resources/group?view=graph-rest-beta) entity. |

### Intune APIs
| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entity:<br/>[windowsPrivacyDataAccessControlItem](/graph/api/resources/intune-deviceconfig-windowsprivacydataaccesscontrolitem?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[configurationManagerClientEnabledFeatures](/graph/api/resources/intune-devices-configurationmanagerclientenabledfeatures?view=graph-rest-beta)<br/>[windowsDefenderScanActionResult](/graph/api/resources/intune-devices-windowsdefenderscanactionresult?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added the [windowsDefenderScan](/graph/api/intune-devices-manageddevice-windowsdefenderscan?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
| Addition    | Beta    | Added the [windowsDefenderUpdateSignatures](/graph/api/intune-devices-manageddevice-windowsdefenderupdatesignatures?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
| Addition    | Beta    | Added the [windowsPrivacyAccessControls](/graph/api/intune-deviceconfig-deviceconfiguration-windowsprivacyaccesscontrols?view=graph-rest-beta) action on [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) |
| Change      | Beta    | Added the **automaticallyUpdateApps** and **countryOrRegion** properties to the [appleVolumePurchaseProgramToken](/graph/api/resources/intune-apps-applevolumepurchaseprogramtoken?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **enableAuthenticationViaCompanyPortal** property to the [depEnrollmentProfile](/graph/api/resources/intune-corpenrollment-depenrollmentprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notificationMessageCCList** property to the [deviceComplianceActionItem](/graph/api/resources/intune-deviceconfig-devicecomplianceactionitem?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceComplianceDeviceOverview](/graph/api/resources/intune-deviceconfig-devicecompliancedeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceComplianceUserOverview](/graph/api/resources/intune-deviceconfig-devicecomplianceuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceConfigurationDeviceOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationdeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **notApplicableCount** property to the [deviceConfigurationUserOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **configurationManagerClientEnabledFeatures** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **intuneBrand** property from the [organization](/graph/api/resources/intune-onboarding-organization?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **smartScreenEnableInShell**, **smartScreenBlockOverrideForFiles**, **applicationGuardEnabled**, **applicationGuardBlockFileTransfer**, **applicationGuardBlockNonEnterpriseContent**, **applicationGuardAllowPersistence** and **applicationGuardForceAuditing** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **searchBlockDiacritics**, **searchDisableAutoLanguageDetection**, **searchDisableIndexingEncryptedItems**, **searchEnableRemoteQueries**, **searchDisableUseLocation**, **searchDisableIndexerBackoff**, **searchDisableIndexingRemovableDrive**, **searchEnableAutomaticIndexSizeManangement**, **smartScreenEnableAppInstallControl** and **privacyAdvertisingId** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **settingsDeviceName** property from the [windows10TeamGeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10teamgeneralconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **restartMode** property from the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **detectedApps** and **managedDevices** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **privacyAccessControls** navigation property to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **secureByDefault** property to the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **restartMode** property to the [windowsUpdateScheduledInstall](/graph/api/resources/intune-deviceconfig-windowsupdatescheduledinstall?view=graph-rest-beta) complex type |

### OneNote

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and Beta | Added the [onenote](/graph/api/resources/onenote?view=graph-rest-1.0) navigation property to **site**. |
| Addition        | Beta          | Added the target *siteCollectionId* and target *siteId* parameters for the copy operations. For example: [CopyNotebook](/graph/api/notebook-copynotebook?view=graph-rest-1.0). |

### People

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the [People APIs](/graph/api/resources/person?view=graph-rest-1.0) to v1.0. For details about the People API, see [Get relevant information about people](people-example.md). |
| Addition        | v1.0        | Added People.Read.All permission. To learn more, please see [Permissions](permissions-reference.md). |
| Addition        | v1.0        | Added the [personType](/graph/api/resources/persontype?view=graph-rest-1.0) resource. |
| Change          | v1.0        | The [scoredEmailAddress](/graph/api/resources/scoredemailaddress?view=graph-rest-1.0) resource replaced the **rankedEmailAddress** resource. |
| Change          | v1.0        | The [person](/graph/api/resources/person?view=graph-rest-1.0) resource was updated as follows:<ul><li>The **scoredEmailAddresses** property (a collection of [scoredEmailAddress](/graph/api/resources/scoredemailaddress?view=graph-rest-1.0) type) replaced the **emailAddresses** property</li><li>The **jobTitle** property replaced the **title** property</li><li>Removed **sources** and **mailboxType** properties</li><li>The **personType** property is now of [personType](/graph/api/resources/persontype?view=graph-rest-1.0) type instead of string type and replaces functionality of the previous **sources** and **mailboxType** properties</li><li>Added **imAddress** property</li></ul> |
| Deletion        | v1.0        | Removed the **personDataSource** resource. |

### User

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added **employeeId** property to [user](/graph/api/resources/user?view=graph-rest-beta) |

## July 2017

### Group settings

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added support for group settings.<br/>New resource types: [groupSetting](/graph/api/resources/groupsetting?view=graph-rest-1.0), [groupSettingTemplate](/graph/api/resources/groupsettingtemplate?view=graph-rest-1.0), [settingValue](/graph/api/resources/settingvalue?view=graph-rest-1.0), and [settingTemplateValue](/graph/api/resources/settingtemplatevalue?view=graph-rest-1.0) |
| Change          | v1.0        | Added property **classification** and navigation property **settings**  to [group](/graph/api/resources/group?view=graph-rest-1.0) |

### Intune APIs

| Change&nbsp;type | Version | Description                              |
| :--------------- | :------ | :--------------------------------------- |
| Addition         | Beta    | Added the [assign](/graph/api/intune-apps-iosmobileappconfiguration-assign?view=graph-rest-beta) action on [iosMobileAppConfiguration](/graph/api/resources/intune-apps-iosmobileappconfiguration?view=graph-rest-beta) |
| Addition         | Beta    | Added the [syncDevice](/graph/api/intune-devices-manageddevice-syncdevice?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
| Change           | Beta    | Added the **appsInstallAllowList**, **appsLaunchBlockList** and **appsHideList** properties to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **disableAppEncryptionIfDeviceEncryptionIsEnabled** property to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **disableAppEncryptionIfDeviceEncryptionIsEnabled** property to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [deviceComplianceDeviceStatus](/graph/api/resources/intune-deviceconfig-devicecompliancedevicestatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [deviceComplianceSettingState](/graph/api/resources/intune-deviceconfig-devicecompliancesettingstate?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [deviceConfigurationDeviceStatus](/graph/api/resources/intune-deviceconfig-deviceconfigurationdevicestatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **subscriptions** property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **version** property to the [deviceManagementExchangeConnector](/graph/api/resources/intune-onboarding-devicemanagementexchangeconnector?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **utcTimeOffsetInMinutes** property to the [iosUpdateConfiguration](/graph/api/resources/intune-deviceconfig-iosupdateconfiguration?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **complianceGracePeriodExpirationDateTime** property to the [iosUpdateDeviceStatus](/graph/api/resources/intune-deviceconfig-iosupdatedevicestatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **preSharedKey** property to the [macOSWiFiConfiguration](/graph/api/resources/intune-deviceconfig-macoswificonfiguration?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **phoneNumber**, **androidSecurityPatchLevel** and **userDisplayName** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **userName**, **deviceModel**, **platform** and **complianceGracePeriodExpirationDateTime** properties to the [managedDeviceMobileAppConfigurationDeviceStatus](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationdevicestatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **userPrincipalName** property to the [mobileAppInstallStatus](/graph/api/resources/intune-apps-mobileappinstallstatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **overrideDefaultRule** property to the [onPremisesConditionalAccessSettings](/graph/api/resources/intune-onboarding-onpremisesconditionalaccesssettings?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **userPrincipalName** property to the [userAppInstallStatus](/graph/api/resources/intune-apps-userappinstallstatus?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **connectAppBlockAutoLaunch**, **deviceAccountBlockExchangeServices**, **deviceAccountEmailAddress**, **deviceAccountExchangeServerAddress**, **deviceAccountRequirePasswordRotation**, **deviceAccountSessionInitiationProtocolAddress**, **settingsBlockMyMeetingsAndFiles**, **settingsBlockSessionResume**, **settingsBlockSigninSuggestions**, **settingsDefaultVolume**, **settingsScreenTimeoutInMinutes**, **settingsSessionTimeoutInMinutes** and **settingsSleepTimeoutInMinutes** properties to the [windows10TeamGeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10teamgeneralconfiguration?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **deploymentSummary** navigation property to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity |
| Change           | Beta    | Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceCompliancePolicySettingState](/graph/api/resources/intune-deviceconfig-devicecompliancepolicysettingstate?view=graph-rest-beta) complex type |
| Change           | Beta    | Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceConfigurationSettingState](/graph/api/resources/intune-deviceconfig-deviceconfigurationsettingstate?view=graph-rest-beta) complex type |
| Change           | Beta    | Added the **unknownCount** property to the [deviceOperatingSystemSummary](/graph/api/resources/intune-devices-deviceoperatingsystemsummary?view=graph-rest-beta) complex type |



## June 2017

### Project Rome

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the following resources and APIs:<br/>[Activity](/graph/api/resources/projectrome-activity?view=graph-rest-beta)<br/>[Create or replace an activity](/graph/api/projectrome-put-activity?view=graph-rest-beta)<br/>[Delete an activity](/graph/api/projectrome-delete-activity?view=graph-rest-beta)<br/>[History item](/graph/api/resources/projectrome-historyitem?view=graph-rest-beta)<br/>[Create or replace a history item](/graph/api/projectrome-put-historyitem?view=graph-rest-beta)<br/>[Delete a history item](/graph/api/projectrome-delete-historyitem?view=graph-rest-beta) |

### Outlook calendar

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Promoted the following 4 [calendar](/graph/api/resources/calendar?view=graph-rest-1.0) properties to v1.0: **canEdit**, **canShare**, **canViewPrivateItems**, and **owner**. |


### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[defaultDeviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-defaultdevicecompliancepolicy?view=graph-rest-beta)<br/>[deviceConfigurationUserStateSummary](/graph/api/resources/intune-deviceconfig-deviceconfigurationuserstatesummary?view=graph-rest-beta)<br/>[deviceManagementScriptDeviceState](/graph/api/resources/intune-devicefe-devicemanagementscriptdevicestate?view=graph-rest-beta)<br/>[deviceManagementScriptRunSummary](/graph/api/resources/intune-devicefe-devicemanagementscriptrunsummary?view=graph-rest-beta)<br/>[deviceManagementScriptUserState](/graph/api/resources/intune-devicefe-devicemanagementscriptuserstate?view=graph-rest-beta)<br/>[iosUpdateDeviceStatus](/graph/api/resources/intune-deviceconfig-iosupdatedevicestatus?view=graph-rest-beta)<br/>[windowsManagedDevice](/graph/api/resources/intune-devicefe-windowsmanageddevice?view=graph-rest-beta)<br/>[windowsManagementAppHealthState](/graph/api/resources/intune-devicefe-windowsmanagementapphealthstate?view=graph-rest-beta)<br/>[windowsManagementAppHealthSummary](/graph/api/resources/intune-devicefe-windowsmanagementapphealthsummary?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[bitLockerFixedDrivePolicy](/graph/api/resources/intune-deviceconfig-bitlockerfixeddrivepolicy?view=graph-rest-beta)<br/>[bitLockerRecoveryOptions](/graph/api/resources/intune-deviceconfig-bitlockerrecoveryoptions?view=graph-rest-beta)<br/>[bitLockerRemovableDrivePolicy](/graph/api/resources/intune-deviceconfig-bitlockerremovabledrivepolicy?view=graph-rest-beta)<br/>[deleteUserFromSharedAppleDeviceActionResult](/graph/api/resources/intune-devicefe-deleteuserfromsharedappledeviceactionresult?view=graph-rest-beta)<br/>[iosNetworkUsageRule](/graph/api/resources/intune-deviceconfig-iosnetworkusagerule?view=graph-rest-beta)<br/> |
| Deletion    | Beta    | Removed the following entities:<br/>**deviceManagementScriptState**<br/> |
| Deletion    | Beta    | Removed the wipeByDeviceTag action on [user](/graph/api/resources/intune-devicefe-user?view=graph-rest-beta) |
| Change      | Beta    | Added the **innerAuthenticationProtocolForEapTtls**, **innerAuthenticationProtocolForPeap** and **outerIdentityPrivacyTemporaryValue** properties to the [androidEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **nonEapAuthenticationMethodForEapTtls**, **nonEapAuthenticationMethodForPeap** and **enableOuterIdentityPrivacy** properties from the [androidEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **instanceDisplayName** and **settingPlatform** properties from the [complianceSettingStateSummary](/graph/api/resources/compliancesettingstatesummary?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **excludeGroup** property to the [deviceCompliancePolicyGroupAssignment](/graph/api/resources/intune-deviceconfig-devicecompliancepolicygroupassignment?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **instanceDisplayName** and **settingPlatform** properties from the [deviceCompliancePolicySettingStateSummary](/graph/api/resources/intune-deviceconfig-devicecompliancepolicysettingstatesummary?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **devicePlatform** property from the [deviceComplianceSettingState](/graph/api/resources/intune-deviceconfig-devicecompliancesettingstate?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **assignmentStatus**, **assignmentProgress** and **assignmentErrorMessage** properties to the [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **intuneBrand** property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **enforceSignatureCheck** and **fileName** properties to the [deviceManagementScript](/graph/api/resources/intune-devicefe-devicemanagementscript?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **innerAuthenticationProtocolForEapTtls** and **outerIdentityPrivacyTemporaryValue** properties to the [iosEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-iosenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **nonEapAuthenticationMethodForEapTtls** and **enableOuterIdentityPrivacy** properties from the [iosEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-iosenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **classroomAppForceUnpromptedScreenObservation**, **keyboardBlockDictation**, **networkUsageRules** and **wiFiConnectOnlyToConfiguredNetworks** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **preSharedKey** property to the [iosWiFiConfiguration](/graph/api/resources/intune-deviceconfig-ioswificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **innerAuthenticationProtocolForEapTtls** and **outerIdentityPrivacyTemporaryValue** properties to the [macOSEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-macosenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **nonEapAuthenticationMethodForEapTtls** and **enableOuterIdentityPrivacy** properties from the [macOSEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-macosenterprisewificonfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **lastModifiedTime** and **deployedAppCount** properties from the [managedAppPolicy](/graph/api/resources/intune-mam-managedapppolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **serialNumber** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **managementAgents** property from the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deployedAppCount** property to the [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **bitLockerFixedDrivePolicy** and **bitLockerRemovableDrivePolicy** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **enterpriseCloudPrintDiscoveryEndPoint**, **enterpriseCloudPrintOAuthAuthority**, **enterpriseCloudPrintOAuthClientIdentifier**, **enterpriseCloudPrintResourceIdentifier**, **enterpriseCloudPrintDiscoveryMaxLimit**, **enterpriseCloudPrintMopriaDiscoveryResourceIdentifier**, **edgeBlockAddressBarDropdown**, **edgeBlockCompatibilityList**, **edgeClearBrowsingDataOnExit**, **edgeAllowStartPagesModification**, **edgeDisableFirstRunPage**, **edgeBlockLiveTileDataCollection** and **edgeSyncFavoritesWithInternetExplorer** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **availableVersion** property to the [windowsManagementApp](/graph/api/resources/intune-devicefe-windowsmanagementapp?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **onboardingStatus**, **deployedVersion** and **lastModifiedTime** properties from the [windowsManagementApp](/graph/api/resources/intune-devicefe-windowsmanagementapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **packageIdentityName** property to the [windowsStoreForBusinessApp](/graph/api/resources/intune-apps-windowsstoreforbusinessapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** navigation property to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceConfigurationUserStateSummaries** and **iosUpdateStatuses** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **complianceSettingStateSummaries** navigation property from the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **runSummary**, **deviceRunStates** and **userRunStates** navigation properties to the [deviceManagementScript](/graph/api/resources/intune-devicefe-devicemanagementscript?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **runStates** navigation property from the [deviceManagementScript](/graph/api/resources/intune-devicefe-devicemanagementscript?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties from the [managedAppPolicy](/graph/api/resources/intune-mam-managedapppolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **healthSummary** and **healthStates** navigation properties to the [windowsManagementApp](/graph/api/resources/intune-devicefe-windowsmanagementapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **applicationId**, **appName**, **platformId**, **userFailures** and **deviceFailures** properties to the [appInstallationFailure](/graph/api/resources/intune-apps-appinstallationfailure?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **encryptionMethod**, **startupAuthenticationRequired**, **startupAuthenticationBlockWithoutTpmChip**, **startupAuthenticationTpmUsage**, **startupAuthenticationTpmPinUsage**, **startupAuthenticationTpmKeyUsage**, **startupAuthenticationTpmPinAndKeyUsage**, **recoveryOptions** and **prebootRecoveryEnableMessageAndUrl** properties to the [bitLockerSystemDrivePolicy](/graph/api/resources/intune-deviceconfig-bitlockersyst?view=graph-rest-betarivepolicy) complex type |
| Change      | Beta    | Removed the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties from the [deviceCompliancePolicySettingState](/graph/api/resources/intune-deviceconfig-devicecompliancepolicysettingstate?view=graph-rest-beta) complex type |
| Change      | Beta    | Removed the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties from the [deviceConfigurationSettingState](/graph/api/resources/intune-deviceconfig-deviceconfigurationsettingstate?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties to the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **address** property to the [vpnServer](/graph/api/resources/intune-deviceconfig-vpnserver?view=graph-rest-beta) complex type |


## May 2017

### Application API changes

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Application API update. This is first set of changes including property renaming and restructuring of the [application](/graph/api/resources/application?view=graph-rest-beta) entity.<br/>**New entities:** [api](/graph/api/resources/api?view=graph-rest-beta]), [informationalUrl](/graph/api/resources/informationalurl?view=graph-rest-beta), [installedClient](/graph/api/resources/installedclient?view=graph-rest-beta), [permissionScope](/graph/api/resources/permissionscope?view=graph-rest-beta), [preauthorizedApplication](/graph/api/resources/preauthorizedapplication?view=graph-rest-beta), [web](/graph/api/resources/web?view=graph-rest-beta).<br/>**Removed properties:** addIns, appRoles, availableToOtherOrganizations, knownClientApplications, oauth2AllowUrlPathMatching, recordConsentConditions.<br/>**Renamed properties:** appId to id, identifierUris to applicationAliases, availableToOtherTenants to orgRestrictions, mainLogo to logo, oauth2Permissions to publishedPermissionsScopes, publicClient to allowPublicClient, replyUrls to redirectUrls.<br/>**New properties:** tags. |

### Remove Deprecated Planner API
| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Deletion        | Beta        | Removed the following entities:<br/>**task**<br/>**plan**<br/>**bucket**<br/>**taskDetails**<br/>**planDetails**<br/>**taskBoardTaskFormat**<br/>**planTaskBoard** |

### Project Rome

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added support for Project Rome, including [getting a list of devices](/graph/api/user-list-devices?view=graph-rest-beta), [sending a command to a device](/graph/api/send-device-command?view=graph-rest-beta), and [checking the status of a command](/graph/api/get-device-command-status?view=graph-rest-beta). |
| Addition        | Beta        | Added support for user [activities](/graph/api/resources/projectrome-activity?view=graph-rest-beta) and [historyItems](/graph/api/resources/projectrome-historyitem?view=graph-rest-beta), including [upserting an activity](/graph/api/projectrome-put-activity?view=graph-rest-beta) and [upserting a historyItem](/graph/api/projectrome-put-historyitem?view=graph-rest-beta). |

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
| Addition        | v1.0        | Add delta function support to v1.0. Add to the following entities to perform [delta query](delta-query-overview.md):<br/>contact<br/>contactFolder<br/>event<br/>group<br/>mailFolder<br/>message<br/>user<br/>See the following for examples:<br/>[Get incremental changes to groups](delta-query-groups.md)<br/>[Get incremental changes to messages in a folder](delta-query-messages.md)<br/>[Get incremental changes to users](delta-query-users.md) |
| Change          | Beta        | Add additional optional query filtering capability (by id) to [users](/graph/api/user-delta?view=graph-rest-beta) and [groups](/graph/api/group-delta?view=graph-rest-beta). |

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
| Addition        | v1.0        | Added operations on [domains](/graph/api/resources/domain?view=graph-rest-1.0).<br/>New entities:</br>[domain](/graph/api/resources/domain?view=graph-rest-1.0)<br/>[domainDnsRecord](/graph/api/resources/domaindnsrecord?view=graph-rest-1.0)<br/>[domainDnsCnameRecord](/graph/api/resources/domaindnscnamerecord?view=graph-rest-1.0)<br/>[domainDnsMxRecord](/graph/api/resources/domaindnsmxrecord?view=graph-rest-1.0)<br/>[domainDnsSrvRecord](/graph/api/resources/domaindnssrvrecord?view=graph-rest-1.0)<br/>[domainDnsTxtRecord](/graph/api/resources/domaindnstxtrecord?view=graph-rest-1.0)<br/>[domainDnsUnavailableRecord](/graph/api/resources/domaindnsunavailablerecord?view=graph-rest-1.0)<br/>New actions:</br>[verify](/graph/api/domain-verify?view=graph-rest-1.0) |

### Added contracts to v1.0

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | New entity:</br>[contract](/graph/api/resources/contract?view=graph-rest-1.0) |

### Added licenseDetails to v1.0

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | New entity:</br>[licenseDetails](/graph/api/resources/licensedetails?view=graph-rest-1.0) |
| Change          | v1.0        | New [licensedetails](/graph/api/user-list-licensedetails?view=graph-rest-1.0) navigation property on [users](/graph/api/resources/user?view=graph-rest-1.0) |


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
| Addition        | v1.0 and beta | Support for `$expand` to [get open extensions](/graph/api/opentypeextension-get?view=graph-rest-1.0) in the following resources: [device](/graph/api/resources/device?view=graph-rest-1.0), [group](/graph/api/resources/group?view=graph-rest-1.0),[organization](/graph/api/resources/organization?view=graph-rest-1.0), [post](/graph/api/resources/post?view=graph-rest-1.0), [user](/graph/api/resources/user?view=graph-rest-1.0). |
| Addition        | Beta          | Support for `$expand` to [get open extensions](/graph/api/opentypeextension-get?view=graph-rest-1.0) in [administrativeUnit](/graph/api/resources/administrativeunit?view=graph-rest-beta). |


### Extensions (schema extensions)

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | New resource [schemaExtension](/graph/api/resources/schemaextension?view=graph-rest-1.0) and CRUD methods to manage extension definitions for the following resources: [contact](/graph/api/resources/contact?view=graph-rest-1.0), [device](/graph/api/resources/device?view=graph-rest-1.0), [event](/graph/api/resources/event?view=graph-rest-1.0), [group](/graph/api/resources/group?view=graph-rest-1.0), [message](/graph/api/resources/message?view=graph-rest-1.0), [organization](/graph/api/resources/organization?view=graph-rest-1.0), [post](/graph/api/resources/post?view=graph-rest-1.0), [user](/graph/api/resources/user?view=graph-rest-1.0). Note that support for [administrativeUnit](/graph/api/resources/administrativeunit?view=graph-rest-beta) is still limited to the beta version as before. |
| Addition        | v1.0          | The existing POST, GET, and PATCH methods of the following resources - [contact](/graph/api/resources/contact?view=graph-rest-1.0), [device](/graph/api/resources/device?view=graph-rest-1.0), [event](/graph/api/resources/event?view=graph-rest-1.0), [group](/graph/api/resources/group?view=graph-rest-1.0), [message](/graph/api/resources/message?view=graph-rest-1.0), [organization](/graph/api/resources/organization?view=graph-rest-1.0), [post](/graph/api/resources/post?view=graph-rest-1.0), [user](/graph/api/resources/user?view=graph-rest-1.0) - now support adding, getting, and updating or deleting custom data stored as schema extensions in the corresponding resource instances. |
| Addition        | v1.0 and beta | You can now use `$filter` to look for resource instances with properties that match specific extension property values, such as extension name. See this [example](extensibility-schema-groups.md#5-get-a-group-and-its-extension-data) for details. |
| Change          | v1.0 and beta | [Deleting a schema extension definition](/graph/api/schemaextension-delete?view=graph-rest-1.0) no longer affects accessing custom data that has been added based on that definition. |
| Change          | v1.0 and beta | You can now set a schema extension complex type to null, to remove a schema extension from a resource instance. |


### Group

|**Change type**|**Version**|**Description**|
|:--------------|:----------|:--------------|
| Addition | v1.0 and beta | Added the **drives** and **sites** navigation properties to **group**.

### Insights APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added [Shared API](/graph/api/resources/insights-shared?view=graph-rest-beta).<br />New resources:<br />[sharingDetail](/graph/api/resources/insights-sharingdetail?view=graph-rest-beta) <br />[insightIdentity](/graph/api/resources/insights-insightidentity?view=graph-rest-beta) <br />
|Addition|Beta|Added [Used API](/graph/api/resources/insights-used?view=graph-rest-beta).<br />New resources:<br />[usageDetails](/graph/api/resources/insights-usagedetails?view=graph-rest-beta) <br />
|Change|Beta|New **Type** property in the:<br />[resourceVisualization](/graph/api/resources/insights-resourcevisualization?view=graph-rest-beta) resource. <br />
|Deletion|Beta|Removed the following entities:<br/>**workingWith**<br/>**trendingAround**<br/>|

### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[androidForWorkMobileAppConfiguration](/graph/api/resources/intune-apps-androidforworkmobileappconfiguration?view=graph-rest-beta)<br/>[cartToClassAssociation](/graph/api/resources/intune-deviceconfig-carttoclassassociation?view=graph-rest-beta)<br/>[deviceCompliancePolicySettingStateSummary](/graph/api/resources/intune-deviceconfig-devicecompliancepolicysettingstatesummary?view=graph-rest-beta)<br/>[eBookInstallSummary](/graph/api/resources/intune-books-ebookinstallsummary?view=graph-rest-beta)<br/>[eBookVppGroupAssignment](/graph/api/resources/intune-books-ebookvppgroupassignment?view=graph-rest-beta)<br/>[iosUpdateConfiguration](/graph/api/resources/intune-deviceconfig-iosupdateconfiguration?view=graph-rest-beta)<br/>[remoteAssistancePartner](/graph/api/resources/intune-remoteassistance-remoteassistancepartner?view=graph-rest-beta)<br/>[windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta)<br/>[windowsDeviceMalwareState](/graph/api/resources/intune-endpointprotection-windowsdevicemalwarestate?view=graph-rest-beta)<br/>[windowsInformationProtectionAppLearningSummary](/graph/api/resources/intune-wip-windowsinformationprotectionapplearningsummary?view=graph-rest-beta)<br/>[windowsMalwareInformation](/graph/api/resources/intune-endpointprotection-windowsmalwareinformation?view=graph-rest-beta)<br/>[windowsProtectionState](/graph/api/resources/intune-endpointprotection-windowsprotectionstate?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[androidPermissionAction](/graph/api/resources/intune-apps-androidpermissionaction?view=graph-rest-beta)<br/>[bitLockerSystemDrivePolicy](/graph/api/resources/intune-deviceconfig-bitlockersyst?view=graph-rest-betarivepolicy)<br/>[defenderDetectedMalwareActions](/graph/api/resources/intune-deviceconfig-defenderdetectedmalwareactions?view=graph-rest-beta)<br/>[settingSource](/graph/api/resources/intune-deviceconfig-settingsource?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added the [assign](/graph/api/intune-books-managedebook-assign?view=graph-rest-beta) action on [managedEBook](/graph/api/resources/intune-books-managedebook?view=graph-rest-beta) |
| Addition    | Beta    | Added the [beginOnboarding](/graph/api/intune-remoteassistance-remoteassistancepartner-beginonboarding?view=graph-rest-beta) action on [remoteAssistancePartner](/graph/api/resources/intune-remoteassistance-remoteassistancepartner?view=graph-rest-beta) |
| Addition    | Beta    | Added the [disconnect](/graph/api/intune-remoteassistance-remoteassistancepartner-disconnect?view=graph-rest-beta) action on [remoteAssistancePartner](/graph/api/resources/intune-remoteassistance-remoteassistancepartner?view=graph-rest-beta) |
| Deletion    | Beta    | Removed the following entities:<br/>**outlookTask**<br/>**outlookTaskFolder**<br/>**outlookTaskGroup**<br/>**outlookUser**<br/>**windowsManagementAppHealthState**<br/> |
| Deletion    | Beta    | Removed the following complex types:<br/>**applePushNotificationCertificateSetting**<br/>**eventCreationOptions**<br/> |
| Change      | Beta    | Added the **workProfilePasswordBlockFingerprintUnlock**, **workProfilePasswordBlockTrustAgents**, **workProfilePasswordExpirationDays**, **workProfilePasswordMinimumLength**, **workProfilePasswordMinutesOfInactivityBeforeScreenTimeout**, **workProfilePasswordPreviousPasswordBlockCount**, **workProfilePasswordSignInFailureCountBeforeFactoryReset**, **workProfilePasswordRequiredType** and **workProfileRequirePassword** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [androidForWorkPkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkpkcscertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [androidForWorkScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **kioskModeManagedApps** property to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **kioskModeManagedAppId** property from the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [androidPkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidpkcscertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [androidScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **hexColor** property from the [calendar](/graph/api/resources/calendar?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **setting** and **platformType** properties to the [complianceSettingStateSummary](/graph/api/resources/intune-deviceconfig-compliancesettingstatesummary?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **windowsManagementAppEnabled** property from the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **userName**, **deviceModel** and **platform** properties to the [deviceComplianceDeviceStatus](/graph/api/resources/intune-deviceconfig-devicecompliancedevicestatus?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **userPrincipalName** and **deviceModel** properties to the [deviceComplianceSettingState](/graph/api/resources/intune-deviceconfig-devicecompliancesettingstate?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **platformType**, **setting**, **userId** and **userEmail** properties to the [deviceComplianceSettingState](/graph/api/resources/intune-deviceconfig-devicecompliancesettingstate?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **inGracePeriodCount** property to the [deviceCompliancePolicyDeviceStateSummary](/graph/api/resources/intune-deviceconfig-devicecompliancepolicydevicestatesummary?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **userName**, **deviceModel** and **platform** properties to the [deviceConfigurationDeviceStatus](/graph/api/resources/intune-deviceconfig-deviceconfigurationdevicestatus?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **creationOptions** property from the [event](/graph/api/resources/event?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **isDelegated** property from the [eventMessage](/graph/api/resources/eventmessage?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **unseenConversationsCount** and **unseenMessagesCount** properties from the [group](/graph/api/resources/group?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **settingXml** and **settings** properties to the [iosMobileAppConfiguration](/graph/api/resources/intune-apps-iosmobileappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [iosPkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-iospkcscertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [iosScepCertificateProfile](/graph/api/resources/intune-deviceconfig-iosscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **systemIntegrityProtectionEnabled** property to the [macOSCompliancePolicy](/graph/api/resources/intune-deviceconfig-macoscompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [macOSScepCertificateProfile](/graph/api/resources/intune-deviceconfig-macosscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **complianceGracePeriodExpirationDateTime**, **userPrincipalName**. and **imei** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **settingXml** and **settings** properties from the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **useSharedComputerActivation**, **updateChannel**, **officePlatformArchitecture** and **localesToInstall** properties to the [officeSuiteApp](/graph/api/resources/intune-apps-officesuiteapp?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **applePushNotificationCertificateSetting** property from the [organization](/graph/api/resources/intune-onboarding-organization?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the following properties on the [post](/graph/api/resources/post?view=graph-rest-beta) entity:<br/>**sender** from optional to required<br/> |
| Change      | Beta    | Added the **compliantUserCount**, **nonCompliantUserCount**, **remediatedUserCount**, **errorUserCount**, **unknownUserCount**, **conflictUserCount** and **notApplicableUserCount** properties to the [softwareUpdateStatusSummary](/graph/api/resources/intune-deviceconfig-softwareupdatestatussummary?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **bluetoothAllowedServices**, **bluetoothBlockPrePairing**, **cellularData**, **defenderDetectedMalwareActions**, **defenderPotentiallyUnwantedAppAction**, **lockScreenAllowTimeoutConfiguration**, **lockScreenBlockCortana**, **lockScreenBlockToastNotifications**, **lockScreenTimeoutInSeconds**, **passwordBlockSimple**, **privacyAutoAcceptPairingAndConsentPrompts**, **privacyBlockInputPersonalization**, **startMenuHideChangeAccountSettings**, **startMenuHideHibernate**, **startMenuHideLock**, **startMenuHideShutDown**, **startMenuHideSignOut**, **startMenuHideSleep**, **startMenuHideSwitchAccount**, **settingsBlockAppsPage**, **settingsBlockGamingPage**, **windowsSpotlightBlockConsumerSpecificFeatures**, **windowsSpotlightBlocked**, **windowsSpotlightBlockOnActionCenter**, **windowsSpotlightBlockTailoredExperiences**, **windowsSpotlightBlockThirdPartyNotifications**, **windowsSpotlightBlockWelcomeExperience**, **windowsSpotlightBlockWindowsTips**, **windowsSpotlightConfigureOnLockScreen** and **connectedDevicesServiceBlocked** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **automaticUpdateMode**, **automaticUpdateSchedule**, **automaticUpdateTime**, **prereleaseFeatures**, **experienceBlockWindowsSpotlight**, **experienceBlockWindowsTips** and **experienceBlockConsumerSpecificFeatures** properties from the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectAlternativeNameFormatString** property to the [windows10PkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-windows10pkcscertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [windows81SCEPCertificateProfile](/graph/api/resources/intune-deviceconfig-windows81scepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **indexingEncryptedStoresOrItemsBlocked** and **smbAutoEncryptedFileExtensions** properties to the [windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the following properties on the [windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-beta) entity:<br/>**rightsManagementServicesTemplateId** from required to optional<br/> |
| Change      | Beta    | Changed the following properties on the [windowsMobileMSI](/graph/api/resources/intune-apps-windowsmobilemsi?view=graph-rest-beta) entity:<br/>**productCode** from required to optional<br/> |
| Change      | Beta    | Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [windowsPhone81SCEPCertificateProfile](/graph/api/resources/intune-deviceconfig-windowsphone81scepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **mobileAppConfigurations** navigation property to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **cartToClassAssociations**, **deviceCompliancePolicySettingStateSummaries**, **remoteAssistancePartners**, **windowsInformationProtectionAppLearningSummaries** and **windowsMalwareInformation** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **eBook** navigation property to the [eBookGroupAssignment](/graph/api/resources/intune-books-ebookgroupassignment?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **windowsProtectionState** navigation property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **installSummary** navigation property to the [managedEBook](/graph/api/resources/intune-books-managedebook?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **outlook** navigation property from the [user](/graph/api/resources/intune-deviceconfig-user?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **healthStates** navigation property from the [windowsManagementApp](/graph/api/resources/intune-deviceconfig-windowsmanagementapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **androidForWorkRestrictions** property to the [defaultDeviceEnrollmentRestrictions](/graph/api/resources/intune-onboarding-defaultdeviceenrollmentrestrictions?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **userPrincipalName** and **sources** properties to the [deviceCompliancePolicySettingState](/graph/api/resources/intune-deviceconfig-devicecompliancepolicysettingstate?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **userPrincipalName** and **sources** properties to the [deviceConfigurationSettingState](/graph/api/resources/intune-deviceconfig-deviceconfigurationsettingstate?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceConfigurationSettingState](/graph/api/resources/intune-deviceconfig-deviceconfigurationsettingstate?view=graph-rest-beta) complex type |
| Change      | Beta    | Removed the **archiveFolder** property from the [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-beta) complex type |


### Outlook calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | For **findMeetingTimes**, added new enum value **unrestricted** that you specify as the **activityDomain** property, part of the **timeConstraint** parameter. This lets **findMeetingTimes** look for times appropriate for the type of activity you're scheduling for. See details in the [request body](/graph/api/user-findmeetingtimes?view=graph-rest-1.0#request-body) section. |
| Addition        | Beta          | Support getting an **event** body in plain text, as an alternative to the default HTML format. See [get](/graph/api/event-get?view=graph-rest-beta) and [list](/graph/api/user-list-events?view=graph-rest-beta) events for details. |

### Outlook mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Support getting a **message** body in plain text, as an alternative to the default HTML format. See [get](/graph/api/message-get?view=graph-rest-beta) and [list](/graph/api/user-list-messages?view=graph-rest-beta) events for details. |


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
| Addition        | v1.0        | Added [Planner API](/graph/api/resources/planner-overview?view=graph-rest-1.0).<br />New resources:<br />[plannerPlan](/graph/api/resources/plannerplan?view=graph-rest-1.0) <br />[plannerTask](/graph/api/resources/plannertask?view=graph-rest-1.0) <br />[plannerPlanDetails](/graph/api/resources/plannerplandetails?view=graph-rest-1.0) <br />[plannerTaskDetails](/graph/api/resources/plannertaskdetails?view=graph-rest-1.0) <br />[plannerBucket](/graph/api/resources/plannerbucket?view=graph-rest-1.0) <br />[plannerAssignedToTaskBoardTaskFormat](/graph/api/resources/plannerassignedtotaskboardtaskformat?view=graph-rest-1.0) <br />[plannerBucketTaskBoardTaskFormat](/graph/api/resources/plannerbuckettaskboardtaskformat?view=graph-rest-1.0) <br />[plannerProgressTaskBoardTaskFormat](/graph/api/resources/plannerprogresstaskboardtaskformat?view=graph-rest-1.0) |

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
| Addition        | Beta        | Added new preview capability to allow Cloud Solution Provider pre-consented applications to call Microsoft Graph, described in a new [authorization topic](auth-cloudsolutionprovider.md). |

### Added onPremises properties to user entity

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new onPremises properties onPremisesDomainName, OnPremisesSamAccountName, and onPremisesUserPrincipalName to the [user](/graph/api/resources/user?view=graph-rest-beta) entity. |

### New Planner APIs and an update to the group visibility property

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Added **HiddenMembership** as an additional value for the visibility property to the [Group](/graph/api/resources/group?view=graph-rest-beta) entity |
| Addition        | Beta        | Added new [Planner API](/graph/api/resources/planner-overview?view=graph-rest-beta).<br />New resources:<br />[plannerPlan](/graph/api/resources/plannerplan?view=graph-rest-beta) <br />[plannerTask](/graph/api/resources/plannertask?view=graph-rest-beta) <br />[plannerPlanDetails](/graph/api/resources/plannerplandetails?view=graph-rest-beta) <br />[plannerTaskDetails](/graph/api/resources/plannertaskdetails?view=graph-rest-beta) <br />[plannerBucket](/graph/api/resources/plannerbucket?view=graph-rest-beta) <br />[plannerAssignedToTaskBoardTaskFormat](/graph/api/resources/plannerassignedtotaskboardtaskformat?view=graph-rest-beta) <br />[plannerBucketTaskBoardTaskFormat](/graph/api/resources/plannerbuckettaskboardtaskformat?view=graph-rest-beta) <br />[plannerProgressTaskBoardTaskFormat](/graph/api/resources/plannerprogresstaskboardtaskformat?view=graph-rest-beta) |

### Intune APIs
| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new entities:<br/>[androidForWorkCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidforworkcompliancepolicy?view=graph-rest-beta)<br/>[deviceComplianceSettingState](/graph/api/resources/intune-deviceconfig-devicecompliancesettingstate?view=graph-rest-beta)<br/>[deviceInstallState](/graph/api/resources/intune-books-deviceinstallstate?view=graph-rest-beta)<br/>[deviceManagementScript](/graph/api/resources/intune-deviceconfig-devicemanagementscript?view=graph-rest-beta)<br/>[deviceManagementScriptGroupAssignment](/graph/api/resources/intune-deviceconfig-devicemanagementscriptgroupassignment?view=graph-rest-beta)<br/>[deviceManagementScriptState](/graph/api/resources/intune-deviceconfig-devicemanagementscriptstate?view=graph-rest-beta)<br/>[eBookGroupAssignment](/graph/api/resources/intune-books-ebookgroupassignment?view=graph-rest-beta)<br/>[iosVppEBook](/graph/api/resources/intune-books-iosvppebook?view=graph-rest-beta)<br/>[managedEBook](/graph/api/resources/intune-books-managedebook?view=graph-rest-beta)<br/>[userInstallStateSummary](/graph/api/resources/intune-books-userinstallstatesummary?view=graph-rest-beta)<br/>[windowsManagementApp](/graph/api/resources/intune-deviceconfig-windowsmanagementapp?view=graph-rest-beta)<br/>[windowsManagementAppHealthState](/graph/api/resources/intune-deviceconfig-windowsmanagementapphealthstate?view=graph-rest-beta)<br/> |
| Addition        | Beta        | Added new complex types:<br/>[dailySchedule](/graph/api/resources/intune-deviceconfig-dailyschedule?view=graph-rest-beta)<br/>[hourlySchedule](/graph/api/resources/intune-deviceconfig-hourlyschedule?view=graph-rest-beta)<br/>[iosBookmark](/graph/api/resources/intune-deviceconfig-iosbookmark?view=graph-rest-beta)<br/>[iosWebContentFilterAutoFilter](/graph/api/resources/intune-deviceconfig-ioswebcontentfilterautofilter?view=graph-rest-beta)<br/>[iosWebContentFilterBase](/graph/api/resources/intune-deviceconfig-ioswebcontentfilterbase?view=graph-rest-beta)<br/>[iosWebContentFilterSpecificWebsitesAccess](/graph/api/resources/intune-deviceconfig-ioswebcontentfilterspecificwebsitesaccess?view=graph-rest-beta)<br/>[runSchedule](/graph/api/resources/intune-deviceconfig-runschedule?view=graph-rest-beta)<br/>[sharedAppleDeviceUser](/graph/api/resources/intune-deviceconfig-sharedappledeviceuser?view=graph-rest-beta)<br/>[windows10NetworkProxyServer](/graph/api/resources/intune-deviceconfig-windows10networkproxyserver?view=graph-rest-beta)<br/> |
| Addition        | Beta        | Added the [requestRemoteAssistance](/graph/api/intune-devices-manageddevice-requestremoteassistance?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
| Addition        | Beta        | Added the [cleanWindowsDevice](/graph/api/intune-devices-manageddevice-cleanwindowsdevice?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
| Addition        | Beta        | Added the [logoutSharedAppleDeviceActiveUser](/graph/api/intune-devices-manageddevice-logoutsharedappledeviceactiveuser?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
| Addition        | Beta        | Added the [deleteUserFromSharedAppleDevice](/graph/api/intune-devices-manageddevice-deleteuserfromsharedappledevice?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
| Addition        | Beta        | Added the [assign](/graph/api/intune-deviceconfig-devicemanagementscript-assign?view=graph-rest-beta) action on [deviceManagementScript](/graph/api/resources/intune-deviceconfig-devicemanagementscript?view=graph-rest-beta) |
| Addition        | Beta        | Added the [syncLicenses](/graph/api/intune-onboarding-applevolumepurchaseprogramtoken-synclicenses?view=graph-rest-beta) action on [appleVolumePurchaseProgramToken](/graph/api/resources/intune-apps-applevolumepurchaseprogramtoken?view=graph-rest-beta) |
| Addition        | Beta        | Added the **getTopMobileApps** function on [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta) collection |
| Addition        | Beta        | Added the [downloadApplePushNotificationCertificateSigningRequest](/graph/api/intune-deviceconfig-applepushnotificationcertificate-downloadapplepushnotificationcertificatesigningrequest?view=graph-rest-beta) function on [applePushNotificationCertificate](/graph/api/resources/intune-deviceconfig-applepushnotificationcertificate?view=graph-rest-beta) |
| Addition        | Beta        | Added the [getDeviceComplianceSettingStates](/graph/api/intune-deviceconfig-devicemanagement-getdevicecompliancesettingstates?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) |
| Addition        | Beta        | Added the [deviceConfigurationUserActivity](/graph/api/intune-deviceconfig-reportroot-deviceconfigurationuseractivity?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
| Addition        | Beta        | Added the [deviceConfigurationDeviceActivity](/graph/api/intune-deviceconfig-reportroot-deviceconfigurationdeviceactivity?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
| Deletion        | Beta        | Removed the following complex types:<br/>**enterpriseCloudResource**<br/>**windowsInformationProtectionAppRule**<br/>**windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate**<br/>**windowsInformationProtectionAppRuleDesktopTemplate**<br/>**windowsInformationProtectionAppRuleStoreAppTemplate**<br/>**windowsInformationProtectionAppRuleTemplate**<br/>**windowsInformationProtectionCorporateNetworkLocation**<br/>**windowsInformationProtectionProtectedLocation**<br/>**windowsInformationProtectionProtectedLocationEnterpriseCloudResources**<br/>**windowsInformationProtectionProtectedLocationEnterpriseInternalProxyServers**<br/>**windowsInformationProtectionProtectedLocationEnterpriseIPv4Ranges**<br/>**windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges**<br/>**windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames**<br/>**windowsInformationProtectionProtectedLocationEnterpriseProxyServers**<br/>**windowsInformationProtectionProtectedLocationNeutralResources**<br/> |
| Change          | Beta        | Added the **deviceSharingAllowed** property to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Removed the **deviceSharingBlocked** property from the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **minimumRequiredSdkVersion** property to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **windowsManagementAppEnabled** property to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **notificationTemplateId** property to the [deviceComplianceActionItem](/graph/api/resources/intune-deviceconfig-devicecomplianceactionitem?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **excludeGroup** property to the [deviceConfigurationGroupAssignment](/graph/api/resources/intune-deviceconfig-deviceconfigurationgroupassignment?view=graph-rest-beta) entity |
| Change          | Beta        | Changed the following properties on the [iosCustomConfiguration](/graph/api/resources/intune-deviceconfig-ioscustomconfiguration?view=graph-rest-beta) entity:<br/>**payloadFileName** from required to optional<br/> |
| Change          | Beta        | Added the **contentFilterSettings** property to the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-iosdevicefeaturesconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **cellularBlockPersonalHotspot** and **passcodeBlockFingerprintModification** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **minimumRequiredSdkVersion** property to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity |
| Change          | Beta        | Changed the following properties on the [macOSCustomConfiguration](/graph/api/resources/intune-deviceconfig-macoscustomconfiguration?view=graph-rest-beta) entity:<br/>**payloadFileName** from required to optional<br/> |
| Change          | Beta        | Added the **disableAppPinIfDevicePinIsSet**, **minimumRequiredOsVersion**, **minimumWarningOsVersion**, **minimumRequiredAppVersion** and **minimumWarningAppVersion** properties to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **remoteAssistanceSessionUrl**, **isEncrypted**, **model** and **manufacturer** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity |
| Change          | Beta        | Changed the following properties on the [getMobileAppCount](/graph/api/intune-apps-mobileapp-getmobileappcount?view=graph-rest-beta) entity:<br/>**bindingParameter** from **mobileApp** to a **collection** of *mobileApp*<br/>**status** from a GUID to a String<br/> |
| Change          | Beta        | Added the **vpnConfigurationId** property to the [mobileAppGroupAssignment](/graph/api/resources/intune-apps-mobileappgroupassignment?view=graph-rest-beta) entity |
| Change          | Beta        | Removed the **fromEmailAddress** property from the [notificationMessageTemplate](/graph/api/resources/intune-deviceconfig-notificationmessagetemplate?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **excludedApps** property to the [officeSuiteApp](/graph/api/resources/intune-apps-officesuiteapp?view=graph-rest-beta) entity |
| Change          | Beta        | Removed the **excludedOfficeApps** property from the [officeSuiteApp](/graph/api/resources/intune-apps-officesuiteapp?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **enabled** property to the [sharedPCConfiguration](/graph/api/resources/intune-deviceconfig-sharedpcconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **networkProxyApplySettingsDeviceWide**, **networkProxyDisableAutoDetect**, **networkProxyAutomaticConfigurationUrl**, **networkProxyServer**, **bluetoothDeviceName**, **wiFiScanInterval**, **wirelessDisplayBlockProjectionToThisDevice**, **wirelessDisplayBlockUserInputFromReceiver**, **wirelessDisplayRequirePinForPairing**, **experienceBlockDeviceDiscovery**, **experienceBlockErrorDialogWhenNoSIM**, **experienceBlockTaskSwitcher**, **startMenuPinnedFolderDocuments**, **startMenuPinnedFolderDownloads**, **startMenuPinnedFolderFileExplorer**, **startMenuPinnedFolderHomeGroup**, **startMenuPinnedFolderMusic**, **startMenuPinnedFolderNetwork**, **startMenuPinnedFolderPersonalFolder**, **startMenuPinnedFolderPictures**, **startMenuPinnedFolderSettings**, **startMenuPinnedFolderVideos**, **startMenuAppListVisibility**, **startMenuHideFrequentlyUsedApps**, **startMenuHideRecentJumpLists**, **startMenuHideRecentlyAddedApps**, **startMenuHideRestartOptions**, **startMenuHideUserTile**, **startMenuHidePowerButton**, **startMenuLayoutEdgeAssetsXml**, **personalizationDesktopImageUrl** and **personalizationLockScreenImageUrl** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Changed the type of the following properties on the [windowsMobileMSI](/graph/api/resources/intune-apps-windowsmobilemsi?view=graph-rest-beta) entity:<br/>**productCode** from Guid to String<br/> |
| Change          | Beta        | Changed the following properties on the [windowsPhone81AppX](/graph/api/resources/intune-apps-windowsphone81appx?view=graph-rest-beta) entity:<br/>**phoneProductIdentifier** from required to optional<br/>**phonePublisherId** from required to optional<br/> |
| Change          | Beta        | Changed the following properties on the [windowsPhone81AppXBundle](/graph/api/resources/intune-apps-windowsphone81appxbundle?view=graph-rest-beta) entity:<br/>**appXPackageInformationList** from required to optional<br/> |
| Change          | Beta        | Added the **productKey** and **licenseType** properties to the [windowsStoreForBusinessApp](/graph/api/resources/intune-apps-windowsstoreforbusinessapp?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **previewBuildSetting** property to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **windowsManagementApp** and **managedEBooks** navigation properties to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **deviceManagementScripts**, **managedDeviceOverview** and **cloudPkiSubscriptions** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change          | Beta        | Added the **osMinimumVersion** and **osMaximumVersion** properties to the [deviceEnrollmentPlatformRestrictions](/graph/api/resources/intune-onboarding-deviceenrollmentplatformrestrictions?view=graph-rest-beta) complex type |
| Change          | Beta        | Added the **isSharedDevice** and **sharedDeviceCachedUsers** properties to the [hardwareInformation](/graph/api/resources/intune-deviceconfig-hardwareinformation?view=graph-rest-beta) complex type |
| Change          | Beta        | Changed the following properties on the [omaSettingBase64](/graph/api/resources/intune-deviceconfig-omasettingbase64?view=graph-rest-beta) complex type:<br/>**fileName** from required to optional<br/> |
| Change          | Beta        | Changed the following properties on the [omaSettingStringXml](/graph/api/resources/intune-deviceconfig-omasettingstringxml?view=graph-rest-beta) complex type:<br/>**fileName** from required to optional<br/> |

## March 2017

### Intune APIs

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
| Addition    | Beta    | Added new entities:<br/>[androidForWorkApp](/graph/api/resources/intune-apps-androidforworkapp?view=graph-rest-beta)<br/>[androidForWorkAppConfigurationSchema](/graph/api/resources/intune-androidforwork-androidforworkappconfigurationschema?view=graph-rest-beta)<br/>[androidForWorkSettings](/graph/api/resources/intune-androidforwork-androidforworksettings?view=graph-rest-beta)<br/>[androidForWorkVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkvpnconfiguration?view=graph-rest-beta)<br/>[applePushNotificationCertificate](/graph/api/resources/intune-deviceconfig-applepushnotificationcertificate?view=graph-rest-beta)<br/>[complianceSettingStateSummary](/graph/api/resources/intune-deviceconfig-compliancesettingstatesummary?view=graph-rest-beta)<br/>[deviceCompliancePolicyDeviceStateSummary](/graph/api/resources/intune-deviceconfig-devicecompliancepolicydevicestatesummary?view=graph-rest-beta)<br/>[deviceCompliancePolicyState](/graph/api/resources/intune-deviceconfig-devicecompliancepolicystate?view=graph-rest-beta)<br/>[deviceConfigurationDeviceStateSummary](/graph/api/resources/intune-deviceconfig-deviceconfigurationdevicestatesummary?view=graph-rest-beta)<br/>[deviceConfigurationState](/graph/api/resources/intune-deviceconfig-deviceconfigurationstate?view=graph-rest-beta)<br/>[enterpriseCodeSigningCertificate](/graph/api/resources/intune-apps-enterprisecodesigningcertificate?view=graph-rest-beta)<br/>[iosEduDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosedudeviceconfiguration?view=graph-rest-beta)<br/>[managedDeviceCertificateState](/graph/api/resources/intune-devices-manageddevicecertificatestate?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationDeviceSummary](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationdevicesummary?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationUserSummary](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationusersummary?view=graph-rest-beta)<br/>[mdmWindowsInformationProtectionPolicy](/graph/api/resources/intune-mam?view=graph-rest-betamwindowsinformationprotectionpolicy)<br/>[mobileAppInstallSummary](/graph/api/resources/intune-apps-mobileappinstallsummary?view=graph-rest-beta)<br/>[mobileAppProvisioningConfigGroupAssignment](/graph/api/resources/intune-apps-mobileappprovisioningconfiggroupassignment?view=graph-rest-beta)<br/>[mobileThreatDefenseConnector](/graph/api/resources/intune-onboarding-mobilethreatdefenseconnector?view=graph-rest-beta)<br/>[officeSuiteApp](/graph/api/resources/intune-apps-officesuiteapp?view=graph-rest-beta)<br/>[settingStateDeviceSummary](/graph/api/resources/intune-deviceconfig-settingstatedevicesummary?view=graph-rest-beta)<br/>[softwareUpdateStatusSummary](/graph/api/resources/intune-deviceconfig-softwareupdatestatussummary?view=graph-rest-beta)<br/>[symantecCodeSigningCertificate](/graph/api/resources/intune-apps-symanteccodesigningcertificate?view=graph-rest-beta)<br/>[windowsDefenderAdvancedThreatProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windowsdefenderadvancedthreatprotectionconfiguration?view=graph-rest-beta)<br/>[windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-beta)<br/>[windowsInformationProtectionAppLockerFile](/graph/api/resources/intune-mam-windowsinformationprotectionapplockerfile?view=graph-rest-beta)<br/>[windowsInformationProtectionPolicy](/graph/api/resources/intune-mam-windowsinformationprotectionpolicy?view=graph-rest-beta)<br/>[windowsMobileMSI](/graph/api/resources/intune-apps-windowsmobilemsi?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[androidForWorkAppConfigurationExample](/graph/api/resources/intune-androidforwork-androidforworkappconfigurationexample?view=graph-rest-beta)<br/>[androidForWorkAppConfigurationExampleJson](/graph/api/resources/intune-androidforwork-androidforworkappconfigurationexamplejson?view=graph-rest-beta)<br/>[androidForWorkAppConfigurationSchemaItem](/graph/api/resources/intune-androidforwork-androidforworkappconfigurationschemaitem?view=graph-rest-beta)<br/>[deviceCompliancePolicySettingState](/graph/api/resources/intune-deviceconfig-devicecompliancepolicysettingstate?view=graph-rest-beta)<br/>[deviceConfigurationSettingState](/graph/api/resources/intune-deviceconfig-deviceconfigurationsettingstate?view=graph-rest-beta)<br/>[deviceExchangeAccessStateSummary](/graph/api/resources/intune-deviceconfig-deviceexchangeaccessstatesummary?view=graph-rest-beta)<br/>[edgeSearchEngine](/graph/api/resources/intune-deviceconfig-edgesearchengine?view=graph-rest-beta)<br/>[edgeSearchEngineBase](/graph/api/resources/intune-deviceconfig-edgesearchenginebase?view=graph-rest-beta)<br/>[edgeSearchEngineCustom](/graph/api/resources/intune-deviceconfig-edgesearchenginecustom?view=graph-rest-beta)<br/>[excludedApps](/graph/api/resources/intune-apps-excludedapps?view=graph-rest-beta)<br/>[iosEduCertificateSettings](/graph/api/resources/intune-deviceconfig-ioseducertificatesettings?view=graph-rest-beta)<br/>[ipRange](/graph/api/resources/intune-deviceconfig-iprange?view=graph-rest-beta)<br/>[windowsInformationProtectionApp](/graph/api/resources/intune-mam-windowsinformationprotectionapp?view=graph-rest-beta)<br/>[windowsInformationProtectionCloudResource](/graph/api/resources/intune-mam-windowsinformationprotectioncloudresource?view=graph-rest-beta)<br/>[windowsInformationProtectionCloudResourceCollection](/graph/api/resources/intune-mam-windowsinformationprotectioncloudresourcecollection?view=graph-rest-beta)<br/>[windowsInformationProtectionDesktopApp](/graph/api/resources/intune-mam-windowsinformationprotectiondesktopapp?view=graph-rest-beta)<br/>[windowsInformationProtectionIPRangeCollection](/graph/api/resources/intune-mam-windowsinformationprotectioniprangecollection?view=graph-rest-beta)<br/>[windowsInformationProtectionResourceCollection](/graph/api/resources/intune-mam-windowsinformationprotectionresourcecollection?view=graph-rest-beta)<br/>[windowsInformationProtectionStoreApp](/graph/api/resources/intune-mam-windowsinformationprotectionstoreapp?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added the [requestSignupUrl](/graph/api/intune-androidforwork-androidforworksettings-requestsignupurl?view=graph-rest-beta) action on [androidForWorkSettings](/graph/api/resources/intune-androidforwork-androidforworksettings?view=graph-rest-beta) |
| Addition    | Beta    | Added the [completeSignup](/graph/api/intune-androidforwork-androidforworksettings-completesignup?view=graph-rest-beta) action on [androidForWorkSettings](/graph/api/resources/intune-androidforwork-androidforworksettings?view=graph-rest-beta) |
| Addition    | Beta    | Added the [syncApps](/graph/api/intune-androidforwork-androidforworksettings-syncapps?view=graph-rest-beta) action on [androidForWorkSettings](/graph/api/resources/intune-androidforwork-androidforworksettings?view=graph-rest-beta) |
| Addition    | Beta    | Added the [unbind](/graph/api/intune-androidforwork-androidforworksettings-unbind?view=graph-rest-beta) action on [androidForWorkSettings](/graph/api/resources/intune-androidforwork-androidforworksettings?view=graph-rest-beta) |
| Addition    | Beta    | Added the [assign](/graph/api/intune-apps-ioslobappprovisioningconfiguration-assign?view=graph-rest-beta) action on [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta) |
| Addition    | Beta    | Added the [recoverPasscode](/graph/api/intune-devices-manageddevice-recoverpasscode?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
| Addition    | Beta    | Added the [removeApplePushNotificationCertificate](/graph/api/intune-onboarding-organization-removeapplepushnotificationcertificate?view=graph-rest-beta) action on [organization](/graph/api/resources/intune-onboarding-organization?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateMobileAppIdentifierDeployments](/graph/api/intune-mam-iosmanagedappprotection-updatemobileappidentifierdeployments?view=graph-rest-beta) action on [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateMobileAppIdentifierDeployments](/graph/api/intune-mam-androidmanagedappprotection-updatemobileappidentifierdeployments?view=graph-rest-beta) action on [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateMobileAppIdentifierDeployments](/graph/api/intune-mam-targetedmanagedappconfiguration-updatemobileappidentifierdeployments?view=graph-rest-beta) action on [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune-mam-iosmanagedappprotection-updatetargetedsecuritygroups?view=graph-rest-beta) action on [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune-mam-androidmanagedappprotection-updatetargetedsecuritygroups?view=graph-rest-beta) action on [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune-mam-windowsinformationprotection-updatetargetedsecuritygroups?view=graph-rest-beta) action on [windowsInformationProtection](/graph/api/resources/intune-mam-windowsinformationprotection?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune-mam-windowsinformationprotection-updatetargetedsecuritygroups?view=graph-rest-beta) action on [windowsInformationProtectionPolicy](/graph/api/resources/intune-mam-windowsinformationprotectionpolicy?view=graph-rest-beta) |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune-mam?view=graph-rest-betamwindowsinformationprotectionpolicy-updatetargetedsecuritygroups) action on [mdmWindowsInformationProtectionPolicy](/graph/api/resources/intune-mam?view=graph-rest-betamwindowsinformationprotectionpolicy) |
| Addition    | Beta    | Added the [wipeManagedAppRegistrationByDeviceTag](/graph/api/intune-mam-user-wipemanagedappregistrationbydevicetag?view=graph-rest-beta) action on [user](/graph/api/resources/intune-deviceconfig-user?view=graph-rest-beta) |
| Addition    | Beta    | Added the [getTopMobileApps](/graph/api/intune-apps-mobileapp-gettopmobileapps?view=graph-rest-beta) function on [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta) |
| Addition    | Beta    | Added the [verifyWindowsEnrollmentAutoDiscovery](/graph/api/intune-corpenrollment-devicemanagement-verifywindowsenrollmentautodiscovery?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) |
| Deletion    | Beta    | Removed the following entities:<br/>**appProvisioningConfigGroupAssignment**<br/>**defaultManagedAppConfiguration**<br/>**enterpriseCertificate**<br/>**managedDeviceMobileAppProvisioningConfigurationDeviceStatus**<br/>**symantecCertificate**<br/>**windows10WindowsInformationProtectionConfiguration**<br/> |
| Deletion    | Beta    | Removed the following complex types:<br/>**mobileAppInstallSummary**<br/>**windowsArchitecture**<br/>**windowsDeviceType**<br/> |
| Change      | Beta    | Added the **webBrowserBlockPopups** property to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **webBrowserAllowPopups** property from the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **appIdentifier** property to the [androidStoreApp](/graph/api/resources/intune-apps-androidstoreapp?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **applicationCount**, **failedApplicationCount** and **appInstallFailures** properties from the [appReportingOverviewStatus](/graph/api/resources/appreportingoverviewstatus?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **sharedIPadMaximumUserCount** and **enableSharedIPad** properties to the [depEnrollmentProfile](/graph/api/resources/intune-corpenrollment-depenrollmentprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **shareTokenWithSchoolDataSyncService** and **lastSyncErrorCode** properties to the [depOnboardingSetting](/graph/api/resources/intune-onboarding-deponboardingsetting?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceComplianceDeviceOverview](/graph/api/resources/intune-deviceconfig-devicecompliancedeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **numberOfPendingDevices**, **numberOfSucceededDevices**, **numberOfErrorDevices**, **numberOfFailedDevices**, **lastUpdateTime** and **policyRevision** properties from the [deviceComplianceDeviceOverview](/graph/api/resources/intune-deviceconfig-devicecompliancedeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceComplianceUserOverview](/graph/api/resources/intune-deviceconfig-devicecomplianceuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **numberOfPendingUsers**, **numberOfSucceededUsers**, **numberOfErrorUsers**, **numberOfFailedUsers**, **lastUpdateTime** and **policyRevision** properties from the [deviceComplianceUserOverview](/graph/api/resources/intune-deviceconfig-devicecomplianceuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceConfigurationDeviceOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationdeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **numberOfPendingDevices**, **numberOfSucceededDevices**, **numberOfErrorDevices**, **numberOfFailedDevices**, **lastUpdateTime** and **policyRevision** properties from the [deviceConfigurationDeviceOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationdeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceConfigurationUserOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **numberOfPendingUsers**, **numberOfSucceededUsers**, **numberOfErrorUsers**, **numberOfFailedUsers**, **lastUpdateTime** and **policyRevision** properties from the [deviceConfigurationUserOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationuseroverview?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **subscriptionState** property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedEmailProfileRequired** property to the [iosCompliancePolicy](/graph/api/resources/intune-deviceconfig-ioscompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **appsSingleAppModeList** property to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **appsSingleAppModeBundleIds** property from the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **expirationDateTime** property to the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **expiration** property from the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **passwordMinimumCharacterSetCount**, **osMinimumVersion**, **osMaximumVersion**, **deviceThreatProtectionEnabled**, **deviceThreatProtectionRequiredSecurityLevel** and **storageRequireEncryption** properties to the [macOSCompliancePolicy](/graph/api/resources/intune-deviceconfig-macoscompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **manifest** property from the [managedAndroidLobApp](/graph/api/resources/intune-apps-managedandroidlobapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **isSupervised**, **exchangeLastSuccessfulSyncDateTime**, **exchangeAccessState** and **exchangeAccessStateReason** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceExchangeAccessStateSummary** property to the [managedDeviceOverview](/graph/api/resources/intune-devices-manageddeviceoverview?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **manifest** property from the [managedIOSLobApp](/graph/api/resources/intune-apps-managedioslobapp?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **installSummary** property from the [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **uploadState** property to the [mobileAppContentFile](/graph/api/resources/intune-apps-mobileappcontentfile?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the following properties on the [mobileAppContentFile](/graph/api/resources/intune-apps-mobileappcontentfile?view=graph-rest-beta) entity:<br/>**azureStorageUriExpirationDateTime** from required to optional<br/> |
| Change      | Beta    | Added the **initiatedByUserPrincipalName**, **deviceOwnerUserPrincipalName**, **deviceIMEI** and **actionState** properties to the [remoteActionAudit](/graph/api/resources/intune-deviceconfig-remoteactionaudit?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **oneDriveDisableFileSync**, **safeSearchFilter**, **edgeSearchEngine**, **settingsBlockSettingsApp**, **settingsBlockSystemPage**, **settingsBlockDevicesPage**, **settingsBlockNetworkInternetPage**, **settingsBlockPersonalizationPage**, **settingsBlockAccountsPage**, **settingsBlockTimeLanguagePage**, **settingsBlockEaseOfAccessPage**, **settingsBlockPrivacyPage**, **settingsBlockUpdateSecurityPage**, **experienceBlockWindowsSpotlight**, **experienceBlockWindowsTips**, **experienceBlockConsumerSpecificFeatures**, **startMenuLayoutXml**, **startMenuMode**, **logonBlockFastUserSwitching** and **startBlockUnpinningAppsFromTaskbar** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **allowPrinting**, **allowScreenCapture** and **allowTextSuggestion** properties to the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune-deviceconfig-windows10secureassessmentconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **blockPrinting**, **blockScreenCapture** and **blockTextSuggestion** properties from the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune-deviceconfig-windows10secureassessmentconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **identityName** property to the [windowsAppX](/graph/api/resources/intune-apps-windowsappx?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [windowsAppX](/graph/api/resources/intune-apps-windowsappx?view=graph-rest-beta) entity:<br/>**applicableArchitectures** from [windowsArchitecture](/graph/api/resources/windowsarchitecture?view=graph-rest-beta) to String<br/> |
| Change      | Beta    | Added the **identityName** property to the [windowsPhone81AppX](/graph/api/resources/intune-apps-windowsphone81appx?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [windowsPhone81AppX](/graph/api/resources/intune-apps-windowsphone81appx?view=graph-rest-beta) entity:<br/>**applicableArchitectures** from [windowsArchitecture](/graph/api/resources/windowsarchitecture?view=graph-rest-beta) to String<br/> |
| Change      | Beta    | Added the **identityName**, **identityPublisherHash** and **identityResourceIdentifier** properties to the [windowsUniversalAppX](/graph/api/resources/intune-apps-windowsuniversalappx?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [windowsUniversalAppX](/graph/api/resources/intune-apps-windowsuniversalappx?view=graph-rest-beta) entity:<br/>**applicableArchitectures** from [windowsArchitecture](/graph/api/resources/windowsarchitecture?view=graph-rest-beta) to String<br/>**applicableDeviceTypes** from [windowsDeviceType](/graph/api/resources/windowsdevicetype?view=graph-rest-beta) to String<br/> |
| Change      | Beta    | Added the **restartMode** property to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [androidForWorkScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [androidScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **enterpriseCodeSigningCertificates**, **symantecCodeSigningCertificate**, **sideLoadingKeys**, **managedAppPolicies**, **iosManagedAppProtections**, **androidManagedAppProtections**, **defaultManagedAppProtections**, **targetedManagedAppConfigurations**, **mdmWindowsInformationProtectionPolicies**, **windowsInformationProtectionPolicies**, **managedAppRegistrations** and **managedAppStatuses** navigation properties to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **appReportingOverview**, **enterpriseCerts** and **symantecCert** navigation properties from the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceSettingStateSummaries** navigation property to the [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceSettingStateSummaries** navigation property to the [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **termsAndConditions**, **androidForWorkSettings**, **androidForWorkAppConfigurationSchemas**, **applePushNotificationCertificate**, **softwareUpdateStatusSummary**, **deviceCompliancePolicyDeviceStateSummary**, **complianceSettingStateSummaries**, **deviceConfigurationDeviceStateSummaries** and **mobileThreatDefenseConnectors** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **teacherRootCertificates**, **teacherIdentityCertificate**, **studentRootCertificates** and **studentIdentityCertificate** navigation properties from the [iosEducationDeviceConfiguration](/graph/api/resources/intune-deviceconfig-ioseducationdeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta) entity:<br/>**deviceStatuses** from [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](/graph/api/resources/manageddevicemobileappprovisioningconfigurationdevicestatus?view=graph-rest-beta) collection to [managedDeviceMobileAppConfigurationDeviceStatus](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationdevicestatus?view=graph-rest-beta) collection<br/>**groupAssignments** from [appProvisioningConfigGroupAssignment](/graph/api/resources/appprovisioningconfiggroupassignment?view=graph-rest-beta) collection to [mobileAppProvisioningConfigGroupAssignment](/graph/api/resources/intune-apps-mobileappprovisioningconfiggroupassignment?view=graph-rest-beta) collection<br/> |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [iosScepCertificateProfile](/graph/api/resources/intune-deviceconfig-iosscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [macOSScepCertificateProfile](/graph/api/resources/intune-deviceconfig-macosscepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceConfigurationStates** and **deviceCompliancePolicyStates** navigation properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **deviceStatusSummary** and **userStatusSummary** navigation properties to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **installSummary** navigation property to the [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **sideLoadingKeys** navigation property from the [organization](/graph/api/resources/intune-onboarding-organization?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [windows81SCEPCertificateProfile](/graph/api/resources/intune-deviceconfig-windows81scepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **managedDeviceCertificateStates** navigation property to the [windowsPhone81SCEPCertificateProfile](/graph/api/resources/intune-deviceconfig-windowsphone81scepcertificateprofile?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **applicationId**, **appName**, **platformId**, **userFailures** and **deviceFailures** properties from the [appInstallationFailure](/graph/api/resources/intune-apps-appinstallationfailure?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **displayName** property to the [iosHomeScreenFolderPage](/graph/api/resources/intune-deviceconfig-ioshomescreenfolderpage?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **displayName** property to the [iosHomeScreenPage](/graph/api/resources/intune-deviceconfig-ioshomescreenpage?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **subjectName**, **description**, **expirationDateTime** and **certificate** properties to the [windowsInformationProtectionDataRecoveryCertificate](/graph/api/resources/intune-mam-windowsinformationprotectiondatarecoverycertificate?view=graph-rest-beta) complex type |
| Change      | Beta    | Removed the **dataRecoveryCertificate** and **certificateFileName** properties from the [windowsInformationProtectionDataRecoveryCertificate](/graph/api/resources/intune-mam-windowsinformationprotectiondatarecoverycertificate?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **displayName** property to the [windowsPackageInformation](/graph/api/resources/intune-apps-windowspackageinformation?view=graph-rest-beta) complex type |
| Change      | Beta    | Changed the type of the following properties on the [windowsPackageInformation](/graph/api/resources/intune-apps-windowspackageinformation?view=graph-rest-beta) complex type:<br/>**applicableArchitecture** from [windowsArchitecture](/graph/api/resources/windowsarchitecture?view=graph-rest-beta) to String<br/> |
| Change      | Beta    | Changed the following properties on the [windowsPackageInformation](/graph/api/resources/intune-apps-windowspackageinformation?view=graph-rest-beta) complex type:<br/>**applicableArchitecture** from optional to required<br/> |

### Add contracts to Microsoft Graph

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | New resource:</br>[contract](/graph/api/resources/contract?view=graph-rest-beta) |

### Add domain operations to Microsoft Graph

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added functions on [domains](/graph/api/resources/domain?view=graph-rest-beta).<br/>New entities:</br>[domain](/graph/api/resources/domain?view=graph-rest-beta)<br/>[domainDnsRecord](/graph/api/resources/domaindnsrecord?view=graph-rest-beta)<br/>[domainDnsCnameRecord](/graph/api/resources/domaindnscnamerecord?view=graph-rest-beta)<br/>[domainDnsMxRecord](/graph/api/resources/domaindnsmxrecord?view=graph-rest-beta)<br/>[domainDnsSrvRecord](/graph/api/resources/domaindnssrvrecord?view=graph-rest-beta)<br/>[domainDnsTxtRecord](/graph/api/resources/domaindnstxtrecord?view=graph-rest-beta)<br/>[domainDnsUnavailableRecord](/graph/api/resources/domaindnsunavailablerecord?view=graph-rest-beta)<br/>New actions:</br>[forceDelete](/graph/api/domain-forcedelete?view=graph-rest-beta)</br>[verify](/graph/api/domain-verify?view=graph-rest-beta) |

### Add custom data to Microsoft Graph using schema extensions

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Extend Microsoft Graph with application data by using [schema extensions](extensibility-overview.md#schema-extensions).  This is supported on the following resources:<br/>administrative unit<br/>calendar event<br/>device<br/>group<br/>message<br/>organization<br/>personal contact<br/>post<br/>user<br/>See the following example:<br/>[Add custom data to groups using Schema Extensions (preview)](extensibility-schema-groups.md) |
| Addition        | Beta        | Provided an alternative way to create a schema extension definition without requiring a verified .com vanity domain. See [schema extensions](extensibility-overview.md#schema-extensions) for details. |

### Add custom data to Microsoft Graph using open extensions

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | Renamed former "Office 365 data extensions" as "open extensions". |
| Addition        | Beta          | Added resources that support [open extensions](extensibility-overview.md#open-extensions): <br/>administrative unit<br/>device<br/>group<br/>organization<br/>user<br/>See the following example:<br/>[Add custom data to users using open extensions (preview)](extensibility-open-users.md) |

### Directory APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added support for [restoring and permanently deleting groups](/graph/api/resources/directory?view=graph-rest-beta).<br/>New entity: directory with deleteditems navigation property. |
| Addition        | Beta        | New entity:</br>[Endpoint](/graph/api/resources/endpoint?view=graph-rest-beta) |
| Change          | Beta        | New [endpoints](/graph/api/group-list-endpoints?view=graph-rest-beta) navigation property on [groups](/graph/api/resources/group?view=graph-rest-beta) |
| Addition        | Beta        | New entity:</br>[licenseDetails](/graph/api/resources/licensedetails?view=graph-rest-beta) |
| Change          | Beta        | New [licensedetails](/graph/api/user-list-licensedetails?view=graph-rest-beta) navigation property on [users](/graph/api/resources/user?view=graph-rest-beta) |

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
| Addition    | Beta    | Added new entities:<br/>[androidForWorkCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androidforworkcertificateprofilebase?view=graph-rest-beta)<br/>[androidForWorkEasEmailProfileBase](/graph/api/resources/intune-deviceconfig-androidforworkeasemailprofilebase?view=graph-rest-beta)<br/>[androidForWorkEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkenterprisewificonfiguration?view=graph-rest-beta)<br/>[androidForWorkGmailEasConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgmaileasconfiguration?view=graph-rest-beta)<br/>[androidForWorkNineWorkEasConfiguration](/graph/api/resources/intune-deviceconfig-androidforworknineworkeasconfiguration?view=graph-rest-beta)<br/>[androidForWorkPkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkpkcscertificateprofile?view=graph-rest-beta)<br/>[androidForWorkScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkscepcertificateprofile?view=graph-rest-beta)<br/>[androidForWorkTrustedRootCertificate](/graph/api/resources/intune-deviceconfig-androidforworktrustedrootcertificate?view=graph-rest-beta)<br/>[androidForWorkWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkwificonfiguration?view=graph-rest-beta)<br/>[appleDeviceFeaturesConfigurationBase](/graph/api/resources/intune-deviceconfig-appledevicefeaturesconfigurationbase?view=graph-rest-beta)<br/>[appProvisioningConfigGroupAssignment](/graph/api/resources/intune-apps-appprovisioningconfiggroupassignment?view=graph-rest-beta)<br/>[deviceComplianceUserOverview](/graph/api/resources/intune-deviceconfig-devicecomplianceuseroverview?view=graph-rest-beta)<br/>[deviceConfigurationUserOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationuseroverview?view=graph-rest-beta)<br/>[enterpriseCertificate](/graph/api/resources/intune-apps-enterprisecertificate?view=graph-rest-beta)<br/>[iosEducationDeviceConfiguration](/graph/api/resources/intune-deviceconfig-ioseducationdeviceconfiguration?view=graph-rest-beta)<br/>[macOSDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-macosdevicefeaturesconfiguration?view=graph-rest-beta)<br/>[managedAndroidLobApp](/graph/api/resources/intune-apps-managedandroidlobapp?view=graph-rest-beta)<br/>[managedDeviceMobileAppProvisioningConfigurationDeviceStatus](/graph/api/resources/intune-apps-manageddevicemobileappprovisioningconfigurationdevicestatus?view=graph-rest-beta)<br/>[managedIOSLobApp](/graph/api/resources/intune-apps-managedioslobapp?view=graph-rest-beta)<br/>[managedMobileLobApp](/graph/api/resources/intune-apps-managedmobilelobapp?view=graph-rest-beta)<br/>[symantecCertificate](/graph/api/resources/intune-apps-symanteccertificate?view=graph-rest-beta)<br/>[windowsAppX](/graph/api/resources/intune-apps-windowsappx?view=graph-rest-beta)<br/>[windowsCertificateProfileBase](/graph/api/resources/intune-deviceconfig-windowscertificateprofilebase?view=graph-rest-beta)<br/>[windowsPhone81AppX](/graph/api/resources/intune-apps-windowsphone81appx?view=graph-rest-beta)<br/>[windowsPhone81AppXBundle](/graph/api/resources/intune-apps-windowsphone81appxbundle?view=graph-rest-beta)<br/>[windowsPhoneXAP](/graph/api/resources/intune-apps-windowsphonexap?view=graph-rest-beta)<br/>[windowsUniversalAppX](/graph/api/resources/intune-apps-windowsuniversalappx?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added new complex types:<br/>[airPrintDestination](/graph/api/resources/intune-deviceconfig-airprintdestination?view=graph-rest-beta)<br/>[windowsArchitecture](/graph/api/resources/intune-apps-windowsarchitecture?view=graph-rest-beta)<br/>[windowsDeviceType](/graph/api/resources/intune-apps-windowsdevicetype?view=graph-rest-beta)<br/>[windowsMinimumOperatingSystem](/graph/api/resources/intune-apps-windowsminimumoperatingsystem?view=graph-rest-beta)<br/>[windowsPackageInformation](/graph/api/resources/intune-apps-windowspackageinformation?view=graph-rest-beta)<br/> |
| Addition    | Beta    | Added the [assign](/graph/api/intune-apps-ioslobappprovisioningconfiguration-assign?view=graph-rest-beta) action on the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta) entity |
| Addition    | Beta    | Added the [scheduleActionsForRules](/graph/api/intune-deviceconfig-devicecompliancepolicy-scheduleactionsforrules?view=graph-rest-beta) action on the [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) entity |
| Addition    | Beta    | Added the [updateTargetedSecurityGroups](/graph/api/intune-mam-targetedmanagedappconfiguration-updatetargetedsecuritygroups?view=graph-rest-beta) action on the [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) entity |
| Addition    | Beta    | Added the [getScopesForUser](/graph/api/intune-rbac-resourceoperation-getscopesforintune-devices-user?view=graph-rest-beta) function on the [resourceOperation](/graph/api/resources/intune-rbac-resourceoperation?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **manifest** property from the [androidLobApp](/graph/api/resources/intune-apps-androidlobapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **assetTagTemplate**, **lockScreenFootnote**, **homeScreenDockIcons** and **homeScreenPages** properties to the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-iosdevicefeaturesconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **deviceSharingAssetTagInformation**, **deviceSharingLockScreenFootnote**, **homeScreenLayoutDockIcons** and **homeScreenLayoutPages** properties from the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-iosdevicefeaturesconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **appsSingleAppModeBundleIds** property to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **manifest** property from the [iosLobApp](/graph/api/resources/intune-apps-ioslobapp?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **createdDateTime**, **description**, **lastModifiedDateTime**, **displayName** and **version** properties to the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **createdDateTime** and **lastModifiedDateTime** properties to the [managedAppPolicy](/graph/api/resources/intune-mam-managedapppolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **deviceRegistrationState** property from the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **manifest** property to the [mobileAppContentFile](/graph/api/resources/intune-apps-mobileappcontentfile?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **osDescription** and **userName** properties to the [mobileAppInstallStatus](/graph/api/resources/intune-apps-mobileappinstallstatus?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **deviceType** property from the [mobileAppInstallStatus](/graph/api/resources/intune-apps-mobileappinstallstatus?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [mobileAppInstallStatus](/graph/api/resources/intune-apps-mobileappinstallstatus?view=graph-rest-beta) entity:<br/>**mobileAppInstallStatusValue** from Int32 to String |
| Change      | Beta    | Added the **targetedSecurityGroupIds** and **targetedSecurityGroupsCount** properties to the [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **numberOfTargetedSecurityGroups** property from the [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **id** property to the [user](/graph/api/resources/intune-devices-user?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **renewalThresholdPercentage**, **keyStorageProvider**, **subjectNameFormat**, **subjectAlternativeNameType**, **certificateValidityPeriodValue** and **certificateValidityPeriodScale** properties from the [windows10CertificateProfileBase](/graph/api/resources/intune-deviceconfig-windows10certificateprofilebase?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **renewalThresholdPercentage**, **keyStorageProvider**, **subjectNameFormat**, **subjectAlternativeNameType**, **certificateValidityPeriodValue** and **certificateValidityPeriodScale** properties from the [windows81CertificateProfileBase](/graph/api/resources/intune-deviceconfig-windows81certificateprofilebase?view=graph-rest-beta) entity |
| Change      | Beta    | Removed the **applyToWindows10Mobile** property from the [windowsPhone81GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windowsphone81generalconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **enterpriseCerts**, **iosLobAppProvisioningConfigurations** and **symantecCert** navigation properties to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **userStatusOverview** navigation property to the [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **userStatusOverview** navigation property to the [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Added the **groupAssignments**, **deviceStatuses** and **userStatuses** navigation properties to the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta) entity |
| Change      | Beta    | Changed the type of the following properties on the [windows10VpnConfiguration](/graph/api/resources/intune-deviceconfig-windows10vpnconfiguration?view=graph-rest-beta) entity:<br/>**identityCertificate** from [windows10CertificateProfileBase](/graph/api/resources/intune-deviceconfig-windows10certificateprofilebase?view=graph-rest-beta) to [windowsCertificateProfileBase](/graph/api/resources/intune-deviceconfig-windowscertificateprofilebase?view=graph-rest-beta) |
| Change      | Beta    | Added the **deviceComplianceCheckinThresholdDays** and **isScheduledActionEnabled** properties to the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type |
| Change      | Beta    | Removed the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties from the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type |
| Change      | Beta    | Added the **bundleID**, **appName**, **publisher**, **enabled** and **showOnLockScreen** properties to the [iosNotificationSettings](/graph/api/resources/intune-deviceconfig-iosnotificationsettings?view=graph-rest-beta) complex type |
| Change      | Beta    | Removed the **bundleIdentifier**, **notificationsEnabled** and **showInLockScreen** properties from the [iosNotificationSettings](/graph/api/resources/intune-deviceconfig-iosnotificationsettings?view=graph-rest-beta) complex type |



## January 2017

### Outlook calendar

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | New action [findMeetingTimes](/graph/api/user-findmeetingtimes?view=graph-rest-1.0) for the [user](/graph/api/resources/user?view=graph-rest-1.0) resource. |
| Addition        | v1.0        | New complex type [attendeeBase](/graph/api/resources/attendeebase?view=graph-rest-1.0) which consists of a type property for the attendee type. |
| Addition        | v1.0        | New complex types:<br/>[attendeeAvailability](/graph/api/resources/attendeeavailability?view=graph-rest-1.0)<br/>[locationConstraint](/graph/api/resources/locationconstraint?view=graph-rest-1.0) <br/>[locationConstraintItem](/graph/api/resources/locationconstraintitem?view=graph-rest-1.0)<br/>[meetingTimeSuggestion](/graph/api/resources/meetingtimesuggestion?view=graph-rest-1.0)<br/>[meetingTimeSuggestionsResult](/graph/api/resources/meetingtimesuggestionsresult?view=graph-rest-1.0)<br/>[timeConstraint](/graph/api/resources/timeconstraint?view=graph-rest-1.0)<br/>[timeSlot](/graph/api/resources/timeslot?view=graph-rest-1.0) |
| Change          | v1.0        | The [attendee](/graph/api/resources/attendee?view=graph-rest-1.0) complex type is now derived from attendeeBase, which in turn is derived from [recipient](/graph/api/resources/recipient?view=graph-rest-1.0). Including the inherited properties, it consists of the same **status**, **type** and **emailAddress** properties as before. |
| Addition        | Beta        | hexColor added to the [calendar](/graph/api/resources/calendar?view=graph-rest-beta) resource. |

### Intune APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added new entities: <br/>[appReportingOverviewStatus](/graph/api/resources/intune-apps-appreportingoverviewstatus?view=graph-rest-beta)<br/>[deviceComplianceDeviceOverview](/graph/api/resources/intune-deviceconfig-devicecompliancedeviceoverview?view=graph-rest-beta)<br/>[deviceConfigurationDeviceOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationdeviceoverview?view=graph-rest-beta)<br/>[deviceManagementExchangeOnpremisesPolicy](/graph/api/resources/intune-onboarding-devicemanagementexchangeonpremisespolicy?view=graph-rest-beta)<br/>[iosDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-iosdevicefeaturesconfiguration?view=graph-rest-beta)<br/>[iosEducationDeviceConfiguration](/graph/api/resources/intune-deviceconfig-ioseducationdeviceconfiguration?view=graph-rest-beta)<br/>[iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta)<br/>[onpremisesConditionalAccessSettings](/graph/api/resources/intune-onboarding-onpremisesconditionalaccesssettings?view=graph-rest-beta)<br/>[sharedPCConfiguration](/graph/api/resources/intune-deviceconfig-sharedpcconfiguration?view=graph-rest-beta)<br/>[windows10EnterpriseModernAppManagementConfiguration](/graph/api/resources/intune-deviceconfig-windows10enterprisemodernappmanagementconfiguration?view=graph-rest-beta)<br/>[windows10SecureAssessmentConfiguration](/graph/api/resources/intune-deviceconfig-windows10secureassessmentconfiguration?view=graph-rest-beta)<br/>[windows10WindowsInformationProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10windowsinformationprotectionconfiguration?view=graph-rest-beta) |
|Addition|Beta|Added new complex types: <br/> [appInstallationFailure](/graph/api/resources/intune-apps-appinstallationfailure?view=graph-rest-beta)<br/>[enterpriseCloudResource](/graph/api/resources/intune-deviceconfig-enterprisecloudresource?view=graph-rest-beta)<br/>[iosHomeScreenApp](/graph/api/resources/intune-deviceconfig-ioshomescreenapp?view=graph-rest-beta)<br/>[iosHomeScreenFolder](/graph/api/resources/intune-deviceconfig-ioshomescreenfolder?view=graph-rest-beta)<br/>[iosHomeScreenFolderPage](/graph/api/resources/intune-deviceconfig-ioshomescreenfolderpage?view=graph-rest-beta)<br/>[iosHomeScreenItem](/graph/api/resources/intune-deviceconfig-ioshomescreenitem?view=graph-rest-beta)<br/>[iosHomeScreenPage](/graph/api/resources/intune-deviceconfig-ioshomescreenpage?view=graph-rest-beta)<br/>[iosNotificationSettings](/graph/api/resources/intune-deviceconfig-iosnotificationsettings?view=graph-rest-beta)<br/>[iPv6Range](/graph/api/resources/intune-deviceconfig-ipv6range?view=graph-rest-beta)<br/>[sharedPCAccountManagerPolicy](/graph/api/resources/intune-deviceconfig-sharedpcaccountmanagerpolicy?view=graph-rest-beta)<br/>[windowsInformationProtectionAppRule](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionapprule?view=graph-rest-beta)<br/>[windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionappruleapplockerpolicyfiletemplate?view=graph-rest-beta)<br/>[windowsInformationProtectionAppRuleDesktopTemplate](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionappruledesktoptemplate?view=graph-rest-beta)<br/>[windowsInformationProtectionAppRuleStoreAppTemplate](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionapprulestoreapptemplate?view=graph-rest-beta)<br/>[windowsInformationProtectionAppRuleTemplate](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionappruletemplate?view=graph-rest-beta)<br/>[windowsInformationProtectionCorporateNetworkLocation](/graph/api/resources/intune-deviceconfig-windowsinformationprotectioncorporatenetworklocation?view=graph-rest-beta)<br/>[windowsInformationProtectionDataRecoveryCertificate](/graph/api/resources/intune-deviceconfig-windowsinformationprotectiondatarecoverycertificate?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocation](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionprotectedlocation?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseCloudResources](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionprotectedlocationenterprisecloudresources?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseInternalProxyServers](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionprotectedlocationenterpriseinternalproxyservers?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseIPv4Ranges](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionprotectedlocationenterpriseipv4ranges?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionprotectedlocationenterpriseipv6ranges?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionprotectedlocationenterprisenetworkdomainnames?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationEnterpriseProxyServers](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionprotectedlocationenterpriseproxyservers?view=graph-rest-beta)<br/>[windowsInformationProtectionProtectedLocationNeutralResources](/graph/api/resources/intune-deviceconfig-windowsinformationprotectionprotectedlocationneutralresources?view=graph-rest-beta)
|Deletion|Beta|Removed the following complex types and replaced with microsoft.graph.Json:<br/>managedAppDeploymentSummary <br/>managedAppSummary<br /> |
|Change|Beta|Replaced the property type appConfigComplianceStatus with complianceStatus on the following entities: <br/>[managedDeviceMobileAppConfigurationDeviceStatus](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationdevicestatus?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationUserStatus](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationuserstatus?view=graph-rest-beta)|
|Change|Beta|For resource [managedAppStatusRaw](/graph/api/resources/intune-mam-managedappstatusraw?view=graph-rest-beta), changed type of property content from managedAppSummary to Json.|
|Change|Beta|Removed the getUsersWithFlaggedAppRegistration function from the [managedAppRegistration](/graph/api/resources/intune-mam-managedappregistration?view=graph-rest-beta) collection.|
|Change|Beta|Changed the **vppToken** navigation property of the [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) entity to no longer be a contained collection.|
|Change|Beta|Added the **deviceStatusOverview** property to the [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) and [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) entities.|
|Change|Beta|Added the **appReportingOverview** property to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) singleton.|
|Change|Beta|Added the **deviceDisplayName** and **userPrincipalName** properties to the [deviceConfigurationDeviceStatus](/graph/api/resources/intune-deviceconfig-deviceconfigurationdevicestatus?view=graph-rest-beta), [deviceComplianceDeviceStatus](/graph/api/resources/intune-deviceconfig-devicecompliancedevicestatus?view=graph-rest-beta) and [managedDeviceMobileAppConfigurationDeviceStatus](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationdevicestatus?view=graph-rest-beta) entities.|
|Change|Beta|Add the **ruleName** property to the [deviceComplianceScheduledActionForRule](/graph/api/resources/intune-deviceconfig-devicecompliancescheduledactionforrule?view=graph-rest-beta) entity.|
|Change|Beta|Added the **devicesCount**, **userDisplayName** and **userPrincipalName** properties to the [deviceConfigurationUserStatus](/graph/api/resources/intune-deviceconfig-deviceconfigurationuserstatus?view=graph-rest-beta), [deviceComplianceUserStatus](/graph/api/resources/intune-deviceconfig-devicecomplianceuserstatus?view=graph-rest-beta), and [managedDeviceMobileAppConfigurationUserStatus](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationuserstatus?view=graph-rest-beta) entities.|
|Change|Beta|Added the [notificationMessageTemplates](/graph/api/resources/intune-notification-notificationmessagetemplate?view=graph-rest-beta) collection to the [deviceManagement](/graph/api/resources/intune-deviceconfig-devicemanagement?view=graph-rest-beta) singleton.|
|Change|Beta|Added the **isDefault**, **lastModifiedDateTime**, **locale**, **messageTemplate** and **subject** properties to the[localizedNotificationMessage](/graph/api/resources/intune-deviceconfig-localizednotificationmessage?view=graph-rest-beta) entity.|
|Change|Beta|Added the **azureActiveDirectoryDeviceId**, **deviceCategory**, **deviceRegistrationState** and **managementAgent** properties to the [managedDevice](/graph/api/resources/intune-onboarding-manageddevice?view=graph-rest-beta) entity.|
|Change|Beta|Added the **lastModifiedDateTime** property to the [mobileAppCategory](/graph/api/resources/intune-apps-mobileappcategory?view=graph-rest-beta) entity.|
|Change|Beta|Added the **brandingOptions**, **defaultLocale**, **displayName**, **fromEmailAddress**, **lastModifiedDateTime**, **localizedNotificationMessages** properties to the [notificationMessageTemplate](/graph/api/resources/intune-notification-notificationmessagetemplate?view=graph-rest-beta) entity.|
|Change|Beta|Added the **appsAllowTrustedAppsSideloading**, **appsBlockWindowsStoreOriginatedApps**, **developerUnlockSetting**, **edgeBlockAccessToAboutFlags**, **edgeBlockDeveloperTools**, **edgeBlockExtensions**, **edgeBlockInPrivateBrowsing**, **edgeFirstRunUrl**, **edgeHomepageUrls**, **gameDvrBlocked**, **settingsBlockAddProvisioningPackage**, **settingsBlockChangeLanguage**, **settingsBlockChangePowerSleep**, **settingsBlockChangeRegion**, **settingsBlockChangeSystemTime**, **settingsBlockEditDeviceName**, **settingsBlockRemoveProvisioningPackage**, **sharedUserAppDataAllowed**, **smartScreenBlockPromptOverride**, **smartScreenBlockPromptOverrideForFiles**, **storageRestrictAppDataToSystemVolume**, **storageRestrictAppInstallToSystemVolume**, **webRtcBlockLocalhostIpAddress**, **windowsStoreBlockAutoUpdate** and **windowsStoreEnablePrivateStoreOnly** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity.|

## December 2016

### Delta query

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | A new delta function add to the following entities to perform [delta query](delta-query-overview.md):<br/>contact<br/>contactFolder<br/>event<br/>group<br/>mailFolder<br/>message<br/>user<br/>See the following for examples:<br/>[Get incremental changes to groups (preview)](delta-query-groups.md)<br/>[Get incremental changes to messages in a folder (preview)](delta-query-messages.md)<br/>[Get incremental changes to users (preview)](delta-query-users.md) |

### Excel APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added workbookPivotTable resource, refresh and refreshAll action on pivotTables, workbookRangeView resource, visibleView action on the filtered range to return workbookRangeView to the user, get rows collection and range resource off of visibleView, columnsAfter, columnsBefore, resizedRange, rowsAbove, and rowsBelow functions off of range resource, and new table properties. |

### Intune APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added resources and method APIs for Microsoft Intune. This is a large set of resources and methods to support the public preview of Intune on Azure Portal. For information about the Intune service, see the [Intune documentation](https://go.microsoft.com/fwlink/?linkid=836405). For information about the Intune resources and APIs, see [Working with Intune in Microsoft Graph](/graph/api/resources/intune-graph-overview?view=graph-rest-beta). |

## October 2016

### Authorization provider

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | The v2.0 auth endpoint now supports the client_credentials OAuth grant, which can be used for [daemon & long running processes in business scenarios](https://docs.microsoft.com/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow). |
| Addition        | v1.0 and beta | The v2.0 auth endpoint now supports [permission scopes that require administrator's consent](permissions-reference.md), via the [admin consent endpoint](https://docs.microsoft.com/azure/active-directory/develop/v2-permissions-and-consent#admin-restricted-permissions). |
| Addition        | v1.0 and beta | The v2.0 auth endpoint now supports administrative consent for all users in a tenant, via the [admin consent endpoint](https://docs.microsoft.com/azure/active-directory/develop/v2-permissions-and-consent#admin-restricted-permissions). |

### Invitation APIs

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added invitedUserType property to the invitation entity type, that defines the type of user (**Guest** or **Member**) that is invited. |
| Deletion        | Beta        | We will be removing the invitedToGroups property from the invitation entity-type on 11/11/2016. This means that you will no longer be able to add an invited user to a group using this API. Instead, use the [add member API](/graph/api/group-post-members?view=graph-rest-1.0) to add a user to a group. |

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
| Addition        | v1.0        | Apps can use v1.0 Outlook Mail, Calendar, and Contacts APIs to access on-premises mailboxes in a hybrid deployment with Exchange 2016 Cumulative Update 3 (CU3). Find more details about REST API support in specific [hybrid deployments](hybrid-rest-support.md). **Note:** If you're using these sets of API in v1.0, you can now find your apps, including production apps, working for on-premises mailboxes that meet the specific hybrid deployment requirements. This capability is only in preview. |

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
| Addition        | Beta        | Added [forward](/graph/api/event-forward?view=graph-rest-beta) action to the event resource. |
| Addition        | Beta        | Added the following properties to the [calendar](/graph/api/resources/calendar?view=graph-rest-beta) resource to support calendar sharing: **canEdit**, **canShare**, **canViewPrivateItems**, **isShared**, **isShareWithMe**, and **owner**. |

### Outlook mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-1.0) complex type, which includes the **automaticRepliesSetting**, **timeZone**, and **language** properties. |
| Addition        | v1.0        | Added the **mailboxSettings** property to the [user](/graph/api/resources/user?view=graph-rest-1.0) resource. |
| Addition        | Beta        | Added support for creating, listing, getting, and deleting one or more instances of [mention](/graph/api/resources/mention?view=graph-rest-beta) in a message. Mentions support calling out to get the attention of other users in a message. |
| Addition        | Beta        | Added support for the [getMailTips](/graph/api/user-getmailtips?view=graph-rest-beta) action to get any MailTips for specific recipients. Added the following resources: [automaticRepliesMailTips](/graph/api/resources/automaticrepliesmailtips?view=graph-rest-beta), [mailTips](/graph/api/resources/mailtips?view=graph-rest-beta), [mailTipsError](/graph/api/resources/mailtipserror?view=graph-rest-beta). |

### Query parameters

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | Query parameters without $ prefixes are supported as of 09/26/16. The $ prefix in query parameters is optional. For details, see the [Supporting query parameters without $ prefixes in Microsoft Graph](https://dev.office.com/queryparametersinMicrosoftGraph) blog post. |

### SharePoint

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Access to SharePoint sites and [lists by ID](/graph/api/list-get?view=graph-rest-beta) or [path/URL](/graph/api/baseitem-getbyurl?view=graph-rest-beta). |
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
| Addition        | Beta        | Privileged Identity Management (PIM) REST APIs now are available in the Microsoft Graph beta endpoint. [Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-configure) provides just in time activation for privileged Azure AD organizational roles such as Global Administrator, Billing Administrator, and so on. You can use the published APIs to write applications that retrieve and update privileged role assignments, and activate users into roles. For details, see [Microsoft Graph: Azure AD Privileged Identity Management Preview APIs available in Beta](https://developer.microsoft.com/office/blogs/microsoft-graph-azure-ad-privileged-identity-management-apis-beta/) and [Azure AD Privileged Identity Management](/graph/api/resources/privilegedidentitymanagement-root?view=graph-rest-beta). |

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
