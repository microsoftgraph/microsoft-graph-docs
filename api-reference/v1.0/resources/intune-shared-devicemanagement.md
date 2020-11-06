---
title: "deviceManagement resource type"
description: "The deviceManagement resource represents a container whose contents vary according to workflow, including:  "
localization_priority: Normal
author: "dougeby"
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The deviceManagement resource represents a container whose contents vary according to workflow, including:  

- Auditing events  
- Corporate terms and conditions   
- Device configuration settings  
- Device management  
- Endpoint protection  
- Enrollment profiles  
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
|[Get deviceManagement](../api/intune-shared-devicemanagement-get.md)|[deviceManagement](../resources/intune-shared-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-shared-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-shared-devicemanagement-update.md)|[deviceManagement](../resources/intune-shared-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-shared-devicemanagement.md) object.|
|**Onboarding**|
|[verifyWindowsEnrollmentAutoDiscovery function](../api/intune-shared-devicemanagement-verifywindowsenrollmentautodiscovery.md)|Boolean|Not yet documented|
|**RBAC**|
|[getEffectivePermissions function](../api/intune-shared-devicemanagement-geteffectivepermissions.md)|[rolePermission](../resources/intune-rbac-rolepermission.md) collection or string collection|Retrieves the effective permissions of the currently authenticated user|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device|
|**Device configuration**|
|settings|[deviceManagementSettings](../resources/intune-deviceconfig-devicemanagementsettings.md)|Account level settings.|
|**Device management**|
|subscriptionState|String|Tenant mobile device management subscription state. The possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|**Onboarding**|
|intuneBrand|[intuneBrand](../resources/intune-onboarding-intunebrand.md)|intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|**Auditing**|
|auditEvents|[auditEvent](../resources/intune-auditing-auditevent.md) collection|The Audit Events|
|**Corporate terms and conditions**|
|termsAndConditions|[termsAndConditions](../resources/intune-companyterms-termsandconditions.md) collection|The terms and conditions associated with device management of the company.|
|**Device configuration**|
|intuneAccountId|Guid|Intune Account ID for given tenant.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/intune-deviceconfig-devicecompliancepolicy.md) collection|The device compliance policies.|
|deviceCompliancePolicyDeviceStateSummary|[deviceCompliancePolicyDeviceStateSummary](../resources/intune-deviceconfig-devicecompliancepolicydevicestatesummary.md)|The device compliance state summary for this account.|
|deviceCompliancePolicySettingStateSummaries|[deviceCompliancePolicySettingStateSummary](../resources/intune-deviceconfig-devicecompliancepolicysettingstatesummary.md) collection|The summary states of compliance policy settings for this account.|
|deviceConfigurationDeviceStateSummaries|[deviceConfigurationDeviceStateSummary](../resources/intune-deviceconfig-deviceconfigurationdevicestatesummary.md)|The device configuration device state summary for this account.|
|deviceConfigurations|[deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md) collection|The device configurations.|
|iosUpdateStatuses|[iosUpdateDeviceStatus](../resources/intune-deviceconfig-iosupdatedevicestatus.md) collection|The IOS software update installation statuses for this account.|
|softwareUpdateStatusSummary|[softwareUpdateStatusSummary](../resources/intune-deviceconfig-softwareupdatestatussummary.md)|The software update status summary.|
|**Device management**|
|applePushNotificationCertificate|[applePushNotificationCertificate](../resources/intune-devices-applepushnotificationcertificate.md)|Apple push notification certificate.|
|detectedApps|[detectedApp](../resources/intune-devices-detectedapp.md) collection|The list of detected apps associated with a device.|
|managedDeviceOverview|[managedDeviceOverview](../resources/intune-devices-manageddeviceoverview.md)|Device overview|
|managedDevices|[managedDevice](../resources/intune-devices-manageddevice.md) collection|The list of managed devices.|
|**Enrollment**|
|importedWindowsAutopilotDeviceIdentities|[importedWindowsAutopilotDeviceIdentity](../resources/intune-enrollment-importedwindowsautopilotdeviceidentity.md) collection|Collection of imported Windows autopilot devices.|
|importedWindowsAutopilotDeviceIdentityUploads|[importedWindowsAutopilotDeviceIdentityUpload](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload.md) collection|Collection of Windows autopilot devices upload.|
|**Notifications**|
|notificationMessageTemplates|[notificationMessageTemplate](../resources/intune-notification-notificationmessagetemplate.md) collection|The Notification Message Templates.|
|**Onboarding**|
|conditionalAccessSettings|[onPremisesConditionalAccessSettings](../resources/intune-onboarding-onpremisesconditionalaccesssettings.md)|The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access|
|deviceCategories|[deviceCategory](../resources/intune-shared-devicecategory.md) collection|The list of device categories with the tenant.|
|deviceEnrollmentConfigurations|[deviceEnrollmentConfiguration](../resources/intune-onboarding-deviceenrollmentconfiguration.md) collection|The list of device enrollment configurations|
|deviceManagementPartners|[deviceManagementPartner](../resources/intune-onboarding-devicemanagementpartner.md) collection|The list of Device Management Partners configured by the tenant.|
|complianceManagementPartners|[complianceManagementPartner](../resources/intune-onboarding-compliancemanagementpartner.md) collection|The list of Compliance Management Partners configured by the tenant.|
|exchangeConnectors|[deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md) collection|The list of Exchange Connectors configured by the tenant.|
|mobileThreatDefenseConnectors|[mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) collection|The list of Mobile threat Defense connectors configured by the tenant.|
|**RBAC**|
|resourceOperations|[resourceOperation](../resources/intune-rbac-resourceoperation.md) collection|The Resource Operations.|
|roleAssignments|[deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) collection|The Role Assignments.|
|roleDefinitions|[roleDefinition](../resources/intune-rbac-roledefinition.md) collection|The Role Definitions.|
|**Remote assistance**|
|remoteAssistancePartners|[remoteAssistancePartner](../resources/intune-remoteassistance-remoteassistancepartner.md) collection|The remote assist partners.|
|**Telecom expense management**|
|telecomExpenseManagementPartners|[telecomExpenseManagementPartner](../resources/intune-tem-telecomexpensemanagementpartner.md) collection|The telecom expense management partners.|
|**Troubleshooting**|
|troubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/intune-troubleshooting-devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for the tenant.|
|**Windows Information Protection**|
|windowsInformationProtectionAppLearningSummaries|[windowsInformationProtectionAppLearningSummary](../resources/intune-wip-windowsinformationprotectionapplearningsummary.md) collection|The windows information protection app learning summaries.|
|windowsInformationProtectionNetworkLearningSummaries|[windowsInformationProtectionNetworkLearningSummary](../resources/intune-wip-windowsinformationprotectionnetworklearningsummary.md) collection|The windows information protection network learning summaries.|


## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "intuneBrand": {"@odata.type": "microsoft.graph.intuneBrand"},
  "subscriptionState": "String",
  "settings": {"@odata.type": "microsoft.graph.deviceManagementSettings"}
}
```









