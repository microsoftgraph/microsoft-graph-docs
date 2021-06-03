---
title: "deviceManagement resource type"
description: "The deviceManagement resource represents a container whose contents vary according to workflow, including:  "
localization_priority: Normal
author: "rolyon"
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The deviceManagement resource represents a container whose contents vary according to workflow, including:  

- Android for Work settings
- Auditing events
- Corporate terms and conditions 
- Corporate enrollment profiles
- Device configuration settings
- Device intent settings
- Device management
- Electronic SIM (ESIM)
- Fencing
- Group Policy Analytics
- Notifications
- Onboarding policies, settings, and details
- Policy Set
- Resource Access Policy
- Remote access
- Remote assistance partners
- Role-based access control (RBAC) policies
- Reporting
- Telecom expanse management partners
- Troubleshooting events
- Windows Information Protection summaries

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-shared-devicemanagement-get.md)|Read properties and relationships of the [deviceManagement](../resources/intune-shared-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-shared-devicemanagement-update.md)|Update the properties of a [deviceManagement](../resources/intune-shared-devicemanagement.md) object.|
|**Device configuration**|
|[enableLegacyPcManagement action](../api/intune-shared-devicemanagement-enablelegacypcmanagement.md)|None|Not yet documented|
|**Device management**|
|[sendCustomNotificationToCompanyPortal action](../api/intune-shared-devicemanagement-sendcustomnotificationtocompanyportal.md)|None|Not yet documented|
|**Onboarding**|
|[verifyWindowsEnrollmentAutoDiscovery function](../api/intune-shared-devicemanagement-verifywindowsenrollmentautodiscovery.md)|Boolean|Not yet documented|
|**Role based access control (RBAC)**|
|[getEffectivePermissions function](../api/intune-shared-devicemanagement-geteffectivepermissions.md)|[rolePermission](../resources/intune-rbac-rolepermission.md) collection|Retrieves the effective permissions of the currently authenticated user|
|[getRoleScopeTagsByIds function](../api/intune-shared-devicemanagement-getrolescopetagsbyids.md)|[roleScopeTag](../resources/intune-rbac-rolescopetag.md) collection|Not yet documented|
|[getRoleScopeTagsByResource function](../api/intune-shared-devicemanagement-getrolescopetagsbyresource.md)|[roleScopeTag](../resources/intune-rbac-rolescopetag.md) collection|Not yet documented|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier associated with the device.|
|**Device configuration**|
|intuneAccountId|Guid|Intune Account ID for given tenant|
|legacyPcManangementEnabled|Boolean|The property to enable Non-MDM managed legacy PC management for this account. This property is read-only.|
|maximumDepTokens|Int32|Maximum number of DEP tokens allowed per-tenant.|
|settings|[deviceManagementSettings](../resources/intune-deviceconfig-devicemanagementsettings.md)|Account level settings.|
|**Device management**|
|accountMoveCompletionDateTime|DateTimeOffset|The date & time when tenant data moved between scaleunits.|
|adminConsent|[adminConsent](../resources/intune-devices-adminconsent.md)|Admin consent information.|
|deviceProtectionOverview|[deviceProtectionOverview](../resources/intune-devices-deviceprotectionoverview.md)|Device protection overview.|
|managedDeviceCleanupSettings|[managedDeviceCleanupSettings](../resources/intune-devices-manageddevicecleanupsettings.md)|Device cleanup rule|
|subscriptionState|[deviceManagementSubscriptionState](../resources/intune-devices-devicemanagementsubscriptionstate.md)|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|subscriptions|[deviceManagementSubscriptions](../resources/intune-devices-devicemanagementsubscriptions.md)|Tenant's Subscription. Possible values are: `none`, `intune`, `office365`, `intunePremium`, `intune_EDU`, `intune_SMB`.|
|windowsMalwareOverview|[windowsMalwareOverview](../resources/intune-devices-windowsmalwareoverview.md)|Malware overview for windows devices.|
|**Group Policy Analytics**|
|groupPolicyObjectFiles|[groupPolicyObjectFile](../resources/intune-gpanalyticsservice-grouppolicyobjectfile.md) collection|A list of Group Policy Object files uploaded.|
|**Onboarding**|
|intuneBrand|[intuneBrand](../resources/intune-onboarding-intunebrand.md)|intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.|
|**Odj**|
|domainJoinConnectors|[deviceManagementDomainJoinConnector](../resources/intune-odj-devicemanagementdomainjoinconnector.md) collection|A list of connector objects.|

## Relationships
|Relationship|Type|Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
|:---|:---|:---|
|**Android for Work**|
|androidDeviceOwnerEnrollmentProfiles|[androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md) collection|Android device owner enrollment profile entities.|
|androidForWorkAppConfigurationSchemas|[androidForWorkAppConfigurationSchema](../resources/intune-androidforwork-androidforworkappconfigurationschema.md) collection|Android for Work app configuration schema entities.|
|androidForWorkEnrollmentProfiles|[androidForWorkEnrollmentProfile](../resources/intune-androidforwork-androidforworkenrollmentprofile.md) collection|Android for Work enrollment profile entities.|
|androidForWorkSettings|[androidForWorkSettings](../resources/intune-androidforwork-androidforworksettings.md)|The singleton Android for Work settings entity.|
|androidManagedStoreAccountEnterpriseSettings|[androidManagedStoreAccountEnterpriseSettings](../resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings.md)|The singleton Android managed store account enterprise settings entity.|
|androidManagedStoreAppConfigurationSchemas|[androidManagedStoreAppConfigurationSchema](../resources/intune-androidforwork-androidmanagedstoreappconfigurationschema.md) collection|Android Enterprise app configuration schema entities.|
|**Auditing**|
|auditEvents|[auditEvent](../resources/intune-auditing-auditevent.md) collection|The Audit Events|
|**Company terms**|
|termsAndConditions|[termsAndConditions](../resources/intune-companyterms-termsandconditions.md) collection|The terms and conditions associated with device management of the company.|
|**Corporate enrollment**|
|enrollmentProfiles|[enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md) collection|The enrollment profiles.|
|importedAppleDeviceIdentities|[importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md) collection|The imported Apple device identities.|
|importedDeviceIdentities|[importedDeviceIdentity](../resources/intune-enrollment-importeddeviceidentity.md) collection|The imported device identities.|
|**Device configuration**|
|advancedThreatProtectionOnboardingStateSummary|[advancedThreatProtectionOnboardingStateSummary](../resources/intune-deviceconfig-advancedthreatprotectiononboardingstatesummary.md)|The summary state of ATP onboarding state for this account.|
|cartToClassAssociations|[cartToClassAssociation](../resources/intune-deviceconfig-carttoclassassociation.md) collection|The Cart To Class Associations.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md) collection|The device compliance policies.|
|deviceCompliancePolicyDeviceStateSummary|[deviceCompliancePolicyDeviceStateSummary](../resources/intune-deviceconfig-devicecompliancepolicydevicestatesummary.md)|The device compliance state summary for this account.|
|deviceCompliancePolicySettingStateSummaries|[deviceCompliancePolicySettingStateSummary](../resources/intune-deviceconfig-devicecompliancepolicysettingstatesummary.md) collection|The summary states of compliance policy settings for this account.|
|deviceConfigurationConflictSummary|[deviceConfigurationConflictSummary](../resources/intune-deviceconfig-deviceconfigurationconflictsummary.md) collection|Summary of policies in conflict state for this account.|
|deviceConfigurationDeviceStateSummaries|[deviceConfigurationDeviceStateSummary](../resources/intune-deviceconfig-deviceconfigurationdevicestatesummary.md)|The device configuration device state summary for this account.|
|deviceConfigurationRestrictedAppsViolations|[restrictedAppsViolation](../resources/intune-deviceconfig-restrictedappsviolation.md) collection|Restricted apps violations for this account.|
|deviceConfigurations|[deviceConfiguration](../resources/intune-shared-deviceconfiguration.md) collection|The device configurations.|
|deviceConfigurationUserStateSummaries|[deviceConfigurationUserStateSummary](../resources/intune-deviceconfig-deviceconfigurationuserstatesummary.md)|The device configuration user state summary for this account.|
|iosUpdateStatuses|[iosUpdateDeviceStatus](../resources/intune-deviceconfig-iosupdatedevicestatus.md) collection|The IOS software update installation statuses for this account.|
|ndesConnectors|[ndesConnector](../resources/intune-deviceconfig-ndesconnector.md) collection|The collection of Ndes connectors for this account.|
|softwareUpdateStatusSummary|[softwareUpdateStatusSummary](../resources/intune-deviceconfig-softwareupdatestatussummary.md)|The software update status summary.|
|**Device intent**|
|intents|[deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md) collection|The device management intents|
|settingDefinitions|[deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md) collection|The device management intent setting definitions|
|templates|[deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md) collection|The available templates|
|categories|[deviceManagementSettingCategory](../resources/intune-deviceintent-devicemanagementsettingcategory.md) collection|The available categories|
|**Device management**|
|applePushNotificationCertificate|[applePushNotificationCertificate](../resources/intune-devices-applepushnotificationcertificate.md)|Apple push notification certificate.|
|dataSharingConsents|[dataSharingConsent](../resources/intune-devices-datasharingconsent.md) collection|Data sharing consents.|
|detectedApps|[detectedApp](../resources/intune-devices-detectedapp.md) collection|The list of detected apps associated with a device.|
|deviceManagementScripts|[deviceManagementScript](../resources/intune-shared-devicemanagementscript.md) collection|The list of device management scripts associated with the tenant.|
|deviceShellScripts|[deviceShellScript](../resources/intune-devices-deviceshellscript.md) collection|The list of device shell scripts associated with the tenant.|
|deviceHealthScripts|[deviceHealthScript](../resources/intune-devices-devicehealthscript.md) collection|The list of device health scripts associated with the tenant.|
|managedDeviceOverview|[managedDeviceOverview](../resources/intune-devices-manageddeviceoverview.md)|Device overview|
|managedDevices|[managedDevice](../resources/intune-devices-manageddevice.md) collection|The list of managed devices.|
|remoteActionAudits|[remoteActionAudit](../resources/intune-devices-remoteactionaudit.md) collection|The list of device remote action audits with the tenant.|
|windowsMalwareInformation|[windowsMalwareInformation](../resources/intune-devices-windowsmalwareinformation.md) collection|The list of affected malware in the tenant.|
|mobileAppTroubleshootingEvents|[mobileAppTroubleshootingEvent](../resources/intune-shared-mobileapptroubleshootingevent.md) collection|The collection property of MobileAppTroubleshootingEvent.|
|userExperienceAnalyticsOverview|[userExperienceAnalyticsOverview](../resources/intune-devices-userExperienceAnalyticsOverview.md)|User experience analytics overview|
|userExperienceAnalyticsBaselines|[userExperienceAnalyticsBaseline](../resources/intune-devices-userExperienceAnalyticsBaseline.md) collection|User experience analytics baselines|
|userExperienceAnalyticsCategories|[userExperienceAnalyticsCategory](../resources/intune-devices-userExperienceAnalyticsCategory.md) collection|User experience analytics categories|
|userExperienceAnalyticsDevicePerformance|[userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userExperienceAnalyticsDevicePerformance.md) collection|User experience analytics device performance|
|userExperienceAnalyticsRegressionSummary|[userExperienceAnalyticsRegressionSummary](../resources/intune-devices-userExperienceAnalyticsRegressionSummary.md)|User experience analytics regression summary|
|userExperienceAnalyticsDeviceStartupHistory|[userExperienceAnalyticsDeviceStartupHistory](../resources/intune-devices-userExperienceAnalyticsDeviceStartupHistory.md) collection|User experience analytics device Startup History|
|userExperienceAnalyticsDeviceStartupProcesses|[userExperienceAnalyticsDeviceStartupProcess](../resources/intune-devices-userExperienceAnalyticsDeviceStartupProcess.md) collection|User experience analytics device Startup Processes|
|userExperienceAnalyticsDeviceStartupProcessPerformance|[userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userExperienceAnalyticsDeviceStartupProcessPerformance.md) collection|User experience analytics device Startup Process Performance|
|depOnboardingSettings|[depOnboardingSetting](../resources/intune-enrollment-deponboardingsetting.md) collection|This collections of multiple DEP tokens per-tenant.|
|importedDeviceIdentities|[importedDeviceIdentity](../resources/intune-enrollment-importeddeviceidentity.md) collection|The imported device identities.|
|importedWindowsAutopilotDeviceIdentities|[importedWindowsAutopilotDeviceIdentity](../resources/intune-enrollment-importedwindowsautopilotdeviceidentity.md) collection|Collection of imported Windows autopilot devices.|
|windowsAutopilotDeploymentProfiles|[windowsAutopilotDeploymentProfile](../resources/intune-shared-windowsautopilotdeploymentprofile.md) collection|Windows auto pilot deployment profiles|
|windowsAutopilotDeviceIdentities|[windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md) collection|The Windows autopilot device identities contained collection.|
|windowsAutopilotSettings|[windowsAutopilotSettings](../resources/intune-enrollment-windowsautopilotsettings.md)|The Windows autopilot account settings.|
|**Embedded SIM**|
|embeddedSIMActivationCodePools|[embeddedSIMActivationCodePool](../resources/intune-esim-embeddedsimactivationcodepool.md) collection|The embedded SIM activation code pools created by this account.|
|**Fencing**|
|managementConditions|[managementCondition](../resources/intune-fencing-managementcondition.md) collection|The management conditions associated with device management of the company.|
|managementConditionStatements|[managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md) collection|The management condition statements associated with device management of the company.|
|**Group Policy Analytics**|
|groupPolicyMigrationReports|[groupPolicyMigrationReport](../resources/intune-gpanalyticsservice-grouppolicymigrationreport.md) collection|A list of Group Policy migration reports.|
|**Notifications**|
|notificationMessageTemplates|[notificationMessageTemplate](../resources/intune-notification-notificationmessagetemplate.md) collection|The Notification Message Templates.|
|**Onboarding**|
|conditionalAccessSettings|[onPremisesConditionalAccessSettings](../resources/intune-onboarding-onpremisesconditionalaccesssettings.md)|The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access|
|deviceCategories|[deviceCategory](../resources/intune-shared-devicecategory.md) collection|The list of device categories with the tenant.|
|deviceEnrollmentConfigurations|[deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md) collection|The list of device enrollment configurations|
|deviceManagementPartners|[deviceManagementPartner](../resources/intune-onboarding-devicemanagementpartner.md) collection|The list of Device Management Partners configured by the tenant.|
|exchangeConnectors|[deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md) collection|The list of Exchange Connectors configured by the tenant.|
|exchangeOnPremisesPolicies|[deviceManagementExchangeOnPremisesPolicy](../resources/intune-onboarding-devicemanagementexchangeonpremisespolicy.md) collection|The list of Exchange On Premisis policies configured by the tenant.|
|exchangeOnPremisesPolicy|[deviceManagementExchangeOnPremisesPolicy](../resources/intune-onboarding-devicemanagementexchangeonpremisespolicy.md)|The policy which controls mobile device access to Exchange On Premises|
|mobileThreatDefenseConnectors|[mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) collection|The list of Mobile threat Defense connectors configured by the tenant.|
|**Policy Set**|
|deviceManagementScripts|[deviceManagementScript](../resources/intune-shared-devicemanagementscript.md) collection|The list of device management scripts associated with the tenant.|
|deviceConfigurations|[deviceConfiguration](../resources/intune-shared-deviceconfiguration.md) collection|The list of device configurations associated with the tenant.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md) collection|The list of device compliance policies associated with the tenant.|
|windowsAutopilotDeploymentProfiles|[windowsAutopilotDeploymentProfile](../resources/intune-shared-windowsautopilotdeploymentprofile.md) collection|Windows auto pilot deployment profiles|
|deviceEnrollmentConfigurations|[deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md) collection|The list of device enrollment configurations|
|**Resource Access Polcy**|
|derivedCredentials|[deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) collection|Collection of Derived credential settings associated with account.|
|**Remote access**|
|userPfxCertificates|[userPFXCertificate](../resources/intune-raimportcerts-userpfxcertificate.md) collection|Collection of PFX certificates associated with a user.|
|**Remote assistance**|
|remoteAssistancePartners|[remoteAssistancePartner](../resources/intune-remoteassistance-remoteassistancepartner.md) collection|The remote assist partners.|
|**Role based access control (RBAC)**|
|resourceOperations|[resourceOperation](../resources/intune-rbac-resourceoperation.md) collection|The Resource Operations.|
|roleAssignments|[deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) collection|The Role Assignments.|
|roleDefinitions|[roleDefinition](../resources/intune-rbac-roledefinition.md) collection|The Role Definitions.|
|roleScopeTags|[roleScopeTag](../resources/intune-rbac-rolescopetag.md) collection|The Role Scope Tags.|
|**Reporting**|
|reports|[deviceManagementReports](../resources/intune-reporting-devicemanagementreports.md)|Reports singleton|
|**Software Update**|
|windowsFeatureUpdateProfiles|[windowsFeatureUpdateProfile](../resources/intune-softwareupdate-windowsfeatureupdateprofile.md) collection|A collection of windows feature update profiles|
|**Telecom expense management (TEM)**|
|telecomExpenseManagementPartners|[telecomExpenseManagementPartner](../resources/intune-tem-telecomexpensemanagementpartner.md) collection|The telecom expense management partners.|
|**Troubleshooting**|
|troubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/intune-troubleshooting-devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for the tenant.|
|**Windows Information Protection**|
|intuneBrandingProfiles|[intuneBrandingProfile](../resources/intune-wip-intunebrandingprofile.md) collection|Intune branding profiles targeted to AAD groups|
|windowsInformationProtectionAppLearningSummaries|[windowsInformationProtectionAppLearningSummary](../resources/intune-wip-windowsinformationprotectionapplearningsummary.md) collection|The windows information protection app learning summaries.|
|windowsInformationProtectionNetworkLearningSummaries|[windowsInformationProtectionNetworkLearningSummary](../resources/intune-wip-windowsinformationprotectionnetworklearningsummary.md) collection|The windows information protection network learning summaries.|


## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "subscriptionState": "String"
}
```




