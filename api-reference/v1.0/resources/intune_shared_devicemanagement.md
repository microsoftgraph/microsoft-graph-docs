# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The deviceManagement resource represents a container whose contents vary according to workflow, including:
- Auditing events
- Corporate terms and conditions 
- Corporate enrollment profiles
- Device configuration settings
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
|[getEffectivePermissions function](../api/intune_shared_devicemanagement_geteffectivepermissions.md)|[rolePermission](../resources/intune_rbac_rolepermission.md) collection or string collection|Retrieves the effective permissions of the currently authenticated user|
|[verifyWindowsEnrollmentAutoDiscovery function](../api/intune_shared_devicemanagement_verifywindowsenrollmentautodiscovery.md)|Boolean|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device|
|subscriptionState|String|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|settings|[deviceManagementSettings](../resources/intune_deviceconfig_devicemanagementsettings.md)|Account level settings.|
|intuneBrand|[intuneBrand](../resources/intune_onboarding_intunebrand.md)|intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.|

## Relationships
|Relationship|Type|Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
|:---|:---|:---|
|applePushNotificationCertificate|[applePushNotificationCertificate](../resources/intune_devices_applepushnotificationcertificate.md)|Apple push notification certificate.|
|auditEvents|[auditEvent](../resources/intune_auditing_auditevent.md) collection|The Audit Events|
|conditionalAccessSettings|[onPremisesConditionalAccessSettings](../resources/intune_onboarding_onpremisesconditionalaccesssettings.md)|The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access|
|detectedApps|[detectedApp](../resources/intune_devices_detectedapp.md) collection|The list of detected apps associated with a device.|
|deviceCategories|[deviceCategory](../resources/intune_shared_devicecategory.md) collection|The list of device categories with the tenant.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) collection|The device compliance policies.|
|deviceCompliancePolicyDeviceStateSummary|[deviceCompliancePolicyDeviceStateSummary](../resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md)|The device compliance state summary for this account.|
|deviceCompliancePolicySettingStateSummaries|[deviceCompliancePolicySettingStateSummary](../resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md) collection|The summary states of compliance policy settings for this account.|
|deviceConfigurationDeviceStateSummaries|[deviceConfigurationDeviceStateSummary](../resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md)|The device configuration device state summary for this account.|
|deviceConfigurations|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) collection|The device configurations.|
|deviceEnrollmentConfigurations|[deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md) collection|The list of device enrollment configurations|
|deviceManagementPartners|[deviceManagementPartner](../resources/intune_onboarding_devicemanagementpartner.md) collection|The list of Device Management Partners configured by the tenant.|
|exchangeConnectors|[deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md) collection|The list of Exchange Connectors configured by the tenant.|
|importedWindowsAutopilotDeviceIdentities|[importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md) collection|Collection of imported Windows autopilot devices.|
|iosUpdateStatuses|[iosUpdateDeviceStatus](../resources/intune_deviceconfig_iosupdatedevicestatus.md) collection|The IOS software update installation statuses for this account.|
|managedDeviceOverview|[managedDeviceOverview](../resources/intune_devices_manageddeviceoverview.md)|Device overview|
|managedDevices|[managedDevice](../resources/intune_devices_manageddevice.md) collection|The list of managed devices.|
|mobileThreatDefenseConnectors|[mobileThreatDefenseConnector](../resources/intune_onboarding_mobilethreatdefenseconnector.md) collection|The list of Mobile threat Defense connectors configured by the tenant.|
|notificationMessageTemplates|[notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) collection|The Notification Message Templates.|
|remoteAssistancePartners|[remoteAssistancePartner](../resources/intune_remoteassistance_remoteassistancepartner.md) collection|The remote assist partners.|
|resourceOperations|[resourceOperation](../resources/intune_rbac_resourceoperation.md) collection|The Resource Operations.|
|roleAssignments|[deviceAndAppManagementRoleAssignment](../resources/intune_rbac_deviceandappmanagementroleassignment.md) collection|The Role Assignments.|
|roleDefinitions|[roleDefinition](../resources/intune_rbac_roledefinition.md) collection|The Role Definitions.|
|softwareUpdateStatusSummary|[softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md)|The software update status summary.|
|telecomExpenseManagementPartners|[telecomExpenseManagementPartner](../resources/intune_tem_telecomexpensemanagementpartner.md) collection|The telecom expense management partners.|
|termsAndConditions|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md) collection|The terms and conditions associated with device management of the company.|
|troubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for the tenant.|
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



