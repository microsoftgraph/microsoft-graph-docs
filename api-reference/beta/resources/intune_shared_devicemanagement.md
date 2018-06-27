# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The deviceManagement resource represents a container whose contents vary according to workflow, including:
- Android for Work settings
- Auditing events
- Corporate terms and conditions 
- Corporate enrollment profiles
- Device configuration settings
- Endpoint protection objects and relationships
- Notifications
- Onboarding policies, settings, and details
- Role-based access control (RBAC) policies
- Remote assistance partners
- Telecom expanse management partners
- Troubleshooting events
- Windows Information Protection summaries

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune_shared_devicemanagement_get.md)|Read properties and relationships of the [deviceManagement](../resources/intune_shared_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_shared_devicemanagement_update.md)|Update the properties of a [deviceManagement](../resources/intune_shared_devicemanagement.md) object.|
|**Onboarding**|
|[verifyWindowsEnrollmentAutoDiscovery function](../api/intune_shared_devicemanagement_verifywindowsenrollmentautodiscovery.md)|Boolean|Not yet documented|
|**Role based access control (RBAC)**|
|[getEffectivePermissions function](../api/intune_shared_devicemanagement_geteffectivepermissions.md)|[rolePermission](../resources/intune_rbac_rolepermission.md) collection|Retrieves the effective permissions of the currently authenticated user|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier associated with the device.|
|**Device configuration**|
|intuneAccountId|Guid|Intune Account ID for given tenant|
|maximumDepTokens|Int32|Maximum number of DEP tokens allowed per-tenant.|
|settings|[deviceManagementSettings](../resources/intune_deviceconfig_devicemanagementsettings.md)|Account level settings.|
|**Device management**|
|accountMoveCompletionDateTime|DateTimeOffset|The date & time when tenant data moved between scaleunits.|
|adminConsent|[adminConsent](../resources/intune_devices_adminconsent.md)|Admin consent information.|
|deviceProtectionOverview|[deviceProtectionOverview](../resources/intune_devices_deviceprotectionoverview.md)|Device protection overview.|
|managedDeviceCleanupSettings|[managedDeviceCleanupSettings](../resources/intune_devices_manageddevicecleanupsettings.md)|Device cleanup rule|
|subscriptionState|[deviceManagementSubscriptionState](../resources/intune_devices_devicemanagementsubscriptionstate.md)|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|subscriptions|[deviceManagementSubscriptions](../resources/intune_devices_devicemanagementsubscriptions.md)|Tenant's Subscription. Possible values are: `none`, `intune`, `office365`, `intunePremium`, `intune_EDU`, `intune_SMB`.|
|**Onboarding**|
|intuneBrand|[intuneBrand](../resources/intune_onboarding_intunebrand.md)|intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.|

## Relationships
|Relationship|Type|Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
|:---|:---|:---|
|**Android for Work**|
|androidDeviceOwnerEnrollmentProfiles|[androidDeviceOwnerEnrollmentProfile](../resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md) collection|Android device owner enrollment profile entities.|
|androidForWorkAppConfigurationSchemas|[androidForWorkAppConfigurationSchema](../resources/intune_androidforwork_androidforworkappconfigurationschema.md) collection|Android for Work app configuration schema entities.|
|androidForWorkEnrollmentProfiles|[androidForWorkEnrollmentProfile](../resources/intune_androidforwork_androidforworkenrollmentprofile.md) collection|Android for Work enrollment profile entities.|
|androidForWorkSettings|[androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md)|The singleton Android for Work settings entity.|
|androidManagedStoreAccountEnterpriseSettings|[androidManagedStoreAccountEnterpriseSettings](../resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md)|The singleton Android managed store account enterprise settings entity.|
|androidManagedStoreAppConfigurationSchemas|[androidManagedStoreAppConfigurationSchema](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md) collection|Android Enterprise app configuration schema entities.|
|**Auditing**|
|auditEvents|[auditEvent](../resources/intune_auditing_auditevent.md) collection|The Audit Events|
|**Company terms**|
|termsAndConditions|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md) collection|The terms and conditions associated with device management of the company.|
|**Corporate enrollment**|
|enrollmentProfiles|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) collection|The enrollment profiles.|
|importedAppleDeviceIdentities|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) collection|The imported Apple device identities.|
|**Device configuration**|
|cartToClassAssociations|[cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) collection|The Cart To Class Associations.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) collection|The device compliance policies.|
|deviceCompliancePolicyDeviceStateSummary|[deviceCompliancePolicyDeviceStateSummary](../resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md)|The device compliance state summary for this account.|
|deviceCompliancePolicySettingStateSummaries|[deviceCompliancePolicySettingStateSummary](../resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md) collection|The summary states of compliance policy settings for this account.|
|deviceConfigurationDeviceStateSummaries|[deviceConfigurationDeviceStateSummary](../resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md)|The device configuration device state summary for this account.|
|deviceConfigurationRestrictedAppsViolations|[restrictedAppsViolation](../resources/intune_deviceconfig_restrictedappsviolation.md) collection|Restricted apps violations for this account.|
|deviceConfigurations|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) collection|The device configurations.|
|deviceConfigurationUserStateSummaries|[deviceConfigurationUserStateSummary](../resources/intune_deviceconfig_deviceconfigurationuserstatesummary.md)|The device configuration user state summary for this account.|
|iosUpdateStatuses|[iosUpdateDeviceStatus](../resources/intune_deviceconfig_iosupdatedevicestatus.md) collection|The IOS software update installation statuses for this account.|
|ndesConnectors|[ndesConnector](../resources/intune_deviceconfig_ndesconnector.md) collection|The collection of Ndes connectors for this account.|
|softwareUpdateStatusSummary|[softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md)|The software update status summary.|
|**Device management**|
|applePushNotificationCertificate|[applePushNotificationCertificate](../resources/intune_devices_applepushnotificationcertificate.md)|Apple push notification certificate.|
|dataSharingConsents|[dataSharingConsent](../resources/intune_devices_datasharingconsent.md) collection|Data sharing consents.|
|detectedApps|[detectedApp](../resources/intune_devices_detectedapp.md) collection|The list of detected apps associated with a device.|
|deviceManagementScripts|[deviceManagementScript](../resources/intune_devices_devicemanagementscript.md) collection|The list of device management scripts associated with the tenant.|
|managedDeviceOverview|[managedDeviceOverview](../resources/intune_devices_manageddeviceoverview.md)|Device overview|
|managedDevices|[managedDevice](../resources/intune_devices_manageddevice.md) collection|The list of managed devices.|
|remoteActionAudits|[remoteActionAudit](../resources/intune_devices_remoteactionaudit.md) collection|The list of device remote action audits with the tenant.|
|windowsMalwareInformation|[windowsMalwareInformation](../resources/intune_devices_windowsmalwareinformation.md) collection|The list of affected malware in the tenant.|
|**Device enrollment**|
|importedDeviceIdentities|[importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md) collection|The imported device identities.|
|importedWindowsAutopilotDeviceIdentities|[importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md) collection|Collection of imported Windows autopilot devices.|
|windowsAutopilotDeploymentProfiles|[windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md) collection|Windows auto pilot deployment profiles|
|windowsAutopilotDeviceIdentities|[windowsAutopilotDeviceIdentity](../resources/intune_enrollment_windowsautopilotdeviceidentity.md) collection|The Windows autopilot device identities contained collection.|
|windowsAutopilotSettings|[windowsAutopilotSettings](../resources/intune_enrollment_windowsautopilotsettings.md)|The Windows autopilot account settings.|
|**Notifications**|
|notificationMessageTemplates|[notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) collection|The Notification Message Templates.|
|**Onboarding**|
|conditionalAccessSettings|[onPremisesConditionalAccessSettings](../resources/intune_onboarding_onpremisesconditionalaccesssettings.md)|The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access|
|depOnboardingSettings|[depOnboardingSetting](../resources/intune_onboarding_deponboardingsetting.md) collection|Intune only supports using 1 DEP token per tenant. This collections will support potential future development of multiple DEP tokens per-tenant.|
|deviceCategories|[deviceCategory](../resources/intune_shared_devicecategory.md) collection|The list of device categories with the tenant.|
|deviceEnrollmentConfigurations|[deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md) collection|The list of device enrollment configurations|
|deviceManagementPartners|[deviceManagementPartner](../resources/intune_onboarding_devicemanagementpartner.md) collection|The list of Device Management Partners configured by the tenant.|
|exchangeConnectors|[deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md) collection|The list of Exchange Connectors configured by the tenant.|
|exchangeOnPremisesPolicies|[deviceManagementExchangeOnPremisesPolicy](../resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md) collection|The list of Exchange On Premisis policies configured by the tenant.|
|exchangeOnPremisesPolicy|[deviceManagementExchangeOnPremisesPolicy](../resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md)|The policy which controls mobile device access to Exchange On Premises|
|mobileThreatDefenseConnectors|[mobileThreatDefenseConnector](../resources/intune_onboarding_mobilethreatdefenseconnector.md) collection|The list of Mobile threat Defense connectors configured by the tenant.|
|**Remote assistance**|
|remoteAssistancePartners|[remoteAssistancePartner](../resources/intune_remoteassistance_remoteassistancepartner.md) collection|The remote assist partners.|
|**Role based access control (RBAC)**|
|resourceOperations|[resourceOperation](../resources/intune_rbac_resourceoperation.md) collection|The Resource Operations.|
|roleAssignments|[deviceAndAppManagementRoleAssignment](../resources/intune_rbac_deviceandappmanagementroleassignment.md) collection|The Role Assignments.|
|roleDefinitions|[roleDefinition](../resources/intune_rbac_roledefinition.md) collection|The Role Definitions.|
|**Telecom expense management (TEM)**|
|telecomExpenseManagementPartners|[telecomExpenseManagementPartner](../resources/intune_tem_telecomexpensemanagementpartner.md) collection|The telecom expense management partners.|
|**Troubleshooting**|
|troubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for the tenant.|
|**Windows Information Protection**|
|windowsInformationProtectionAppLearningSummaries|[windowsInformationProtectionAppLearningSummary](../resources/intune_wip_windowsinformationprotectionapplearningsummary.md) collection|The windows information protection app learning summaries.|
|windowsInformationProtectionNetworkLearningSummaries|[windowsInformationProtectionNetworkLearningSummary](../resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md) collection|The windows information protection network learning summaries.|


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



