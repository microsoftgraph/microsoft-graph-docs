# windowsManagedDevice resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows devices that are managed or pre-enrolled through Intune

Inherits from [managedDevice](../resources/intune_devices_manageddevice.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsManagedDevices](../api/intune_devices_windowsmanageddevice_list.md)|[windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md) collection|List properties and relationships of the [windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md) objects.|
|[Get windowsManagedDevice](../api/intune_devices_windowsmanageddevice_get.md)|[windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md)|Read properties and relationships of the [windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md) object.|
|[Create windowsManagedDevice](../api/intune_devices_windowsmanageddevice_create.md)|[windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md)|Create a new [windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md) object.|
|[Delete windowsManagedDevice](../api/intune_devices_windowsmanageddevice_delete.md)|None|Deletes a [windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md).|
|[Update windowsManagedDevice](../api/intune_devices_windowsmanageddevice_update.md)|[windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md)|Update the properties of a [windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|userId|String|Unique Identifier for the user associated with the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|deviceName|String|Name of the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|hardwareInformation|[hardwareInformation](../resources/intune_devices_hardwareinformation.md)|The hardward details for the device.  Includes information such as storage space, manufacturer, serial number, etc. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|ownerType|[ownerType](../resources/intune_devices_ownertype.md)|Ownership of the device. Can be 'company' or 'personal' Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `unknown`, `company`, `personal`.|
|managedDeviceOwnerType|[managedDeviceOwnerType](../resources/intune_devices_manageddeviceownertype.md)|Ownership of the device. Can be 'company' or 'personal' Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `unknown`, `company`, `personal`.|
|deviceActionResults|[deviceActionResult](../resources/intune_devices_deviceactionresult.md) collection|List of ComplexType deviceActionResult objects. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|managementState|[managementState](../resources/intune_devices_managementstate.md)|Management state of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|enrolledDateTime|DateTimeOffset|Enrollment time of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|lastSyncDateTime|DateTimeOffset|The date and time that the device last completed a successful sync with Intune. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|chassisType|[chassisType](../resources/intune_devices_chassistype.md)|Chassis type of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `unknown`, `desktop`, `laptop`, `worksWorkstation`, `enterpriseServer`, `phone`, `tablet`, `mobileOther`, `mobileUnknown`.|
|operatingSystem|String|Operating system of the device. Windows, iOS, etc. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|deviceType|[deviceType](../resources/intune_shared_devicetype.md)|Platform of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `androidEnterprise`, `blackberry`, `palm`, `unknown`.|
|complianceState|[complianceState](../resources/intune_devices_compliancestate.md)|Compliance state of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`, `inGracePeriod`, `configManager`.|
|jailBroken|String|whether the device is jail broken or rooted. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|managementAgent|[managementAgentType](../resources/intune_devices_managementagenttype.md)|Management channel of the device. Intune, EAS, etc. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configurationManagerClient`, `configurationManagerClientMdm`, `configurationManagerClientMdmEas`, `unknown`, `jamf`, `googleCloudDevicePolicyController`.|
|osVersion|String|Operating system version of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|easActivated|Boolean|Whether the device is Exchange ActiveSync activated. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|easDeviceId|String|Exchange ActiveSync Id of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|easActivationDateTime|DateTimeOffset|Exchange ActivationSync activation time of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|aadRegistered|Boolean|Whether the device is Azure Active Directory registered. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|azureADRegistered|Boolean|Whether the device is Azure Active Directory registered. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|deviceEnrollmentType|[deviceEnrollmentType](../resources/intune_shared_deviceenrollmenttype.md)|Enrollment type of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `unknown`, `userEnrollment`, `deviceEnrollmentManager`, `appleBulkWithUser`, `appleBulkWithoutUser`, `windowsAzureADJoin`, `windowsBulkUserless`, `windowsAutoEnrollment`, `windowsBulkAzureDomainJoin`, `windowsCoManagement`.|
|lostModeState|[lostModeState](../resources/intune_devices_lostmodestate.md)|Indicates if Lost mode is enabled or disabled Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `disabled`, `enabled`.|
|activationLockBypassCode|String|Code that allows the Activation Lock on a device to be bypassed. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|emailAddress|String|Email(s) for the user associated with the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|azureActiveDirectoryDeviceId|String|The unique identifier for the Azure Active Directory device. Read only. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|azureADDeviceId|String|The unique identifier for the Azure Active Directory device. Read only. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|deviceRegistrationState|[deviceRegistrationState](../resources/intune_devices_deviceregistrationstate.md)|Device registration state. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `notRegistered`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `certificateReset`, `notRegisteredPendingEnrollment`, `unknown`.|
|deviceCategoryDisplayName|String|Device category display name Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|isSupervised|Boolean|Device supervised status Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|exchangeLastSuccessfulSyncDateTime|DateTimeOffset|Last time the device contacted Exchange. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|exchangeAccessState|[deviceManagementExchangeAccessState](../resources/intune_devices_devicemanagementexchangeaccessstate.md)|The Access State of the device in Exchange. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `none`, `unknown`, `allowed`, `blocked`, `quarantined`.|
|exchangeAccessStateReason|[deviceManagementExchangeAccessStateReason](../resources/intune_devices_devicemanagementexchangeaccessstatereason.md)|The reason for the device's access state in Exchange. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `none`, `unknown`, `exchangeGlobalRule`, `exchangeIndividualRule`, `exchangeDeviceRule`, `exchangeUpgrade`, `exchangeMailboxPolicy`, `other`, `compliant`, `notCompliant`, `notEnrolled`, `unknownLocation`, `mfaRequired`, `azureADBlockDueToAccessPolicy`, `compromisedPassword`, `deviceNotKnownWithManagedApp`.|
|remoteAssistanceSessionUrl|String|Url that allows a Remote Assistance session to be established with the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|remoteAssistanceSessionErrorString|String|An error string that identifies issues when creating Remote Assistance session objects. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|remoteAssistanceSessionErrorDetails|String|An error string that identifies issues when creating Remote Assistance session objects. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|isEncrypted|Boolean|Device encryption status Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|userPrincipalName|String|Device user principal name Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|model|String|Model of the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|manufacturer|String|Manufacturer of the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|imei|String|IMEI Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|serialNumber|String|SerialNumber Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|phoneNumber|String|Phone number of the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|androidSecurityPatchLevel|String|Android security patch level Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|userDisplayName|String|User display name Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|configurationManagerClientEnabledFeatures|[configurationManagerClientEnabledFeatures](../resources/intune_devices_configurationmanagerclientenabledfeatures.md)|ConfigrMgr client enabled features Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|wiFiMacAddress|String|Wi-Fi MAC Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|deviceHealthAttestationState|[deviceHealthAttestationState](../resources/intune_devices_devicehealthattestationstate.md)|The device health attestation state. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|subscriberCarrier|String|Subscriber Carrier Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|meid|String|MEID Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|totalStorageSpaceInBytes|Int64|Total Storage in Bytes Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|freeStorageSpaceInBytes|Int64|Free Storage in Bytes Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|managedDeviceName|String|Automatically generated name to identify a device. Can be overwritten to a user friendly name. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|partnerReportedThreatState|[managedDevicePartnerReportedHealthState](../resources/intune_devices_manageddevicepartnerreportedhealthstate.md)|Indicates the threat state of a device when a Mobile Threat Defense partner is in use by the account and device. Read Only. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md). Possible values are: `unknown`, `activated`, `deactivated`, `secured`, `lowSeverity`, `mediumSeverity`, `highSeverity`, `unresponsive`.|
|usersLoggedOn|[loggedOnUser](../resources/intune_devices_loggedonuser.md) collection|Indicates the last logged on users of a device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|preferMdmOverGroupPolicyAppliedDateTime|DateTimeOffset|Reports the DateTime the preferMdmOverGroupPolicy setting was set.  When set, the Intune MDM settings will override Group Policy settings if there is a conflict. Read Only. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|autopilotEnrolled|Boolean|Reports if the managed device is enrolled via auto-pilot. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|requireUserEnrollmentApproval|Boolean|Reports if the managed iOS device is user approval enrollment. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|managementCertificateExpirationDate|DateTimeOffset|Reports device management certificate expiration date Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|iccid|String|Integrated Circuit Card Identifier, it is A SIM card's unique identification number. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|udid|String|Unique Device Identifier for iOS and macOS devices. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|detectedApps|[detectedApp](../resources/intune_devices_detectedapp.md) collection|All applications currently installed on the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|deviceCategory|[deviceCategory](../resources/intune_shared_devicecategory.md)|Device category Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|windowsProtectionState|[windowsProtectionState](../resources/intune_devices_windowsprotectionstate.md)|The device protection status. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsManagedDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsManagedDevice",
  "id": "String (identifier)",
  "userId": "String",
  "deviceName": "String",
  "hardwareInformation": {
    "@odata.type": "microsoft.graph.hardwareInformation",
    "serialNumber": "String",
    "totalStorageSpace": 1024,
    "freeStorageSpace": 1024,
    "imei": "String",
    "meid": "String",
    "manufacturer": "String",
    "model": "String",
    "phoneNumber": "String",
    "subscriberCarrier": "String",
    "cellularTechnology": "String",
    "wifiMac": "String",
    "operatingSystemLanguage": "String",
    "isSupervised": true,
    "isEncrypted": true,
    "isSharedDevice": true,
    "sharedDeviceCachedUsers": [
      {
        "@odata.type": "microsoft.graph.sharedAppleDeviceUser",
        "userPrincipalName": "String",
        "dataToSync": true,
        "dataQuota": 1024,
        "dataUsed": 1024
      }
    ],
    "tpmSpecificationVersion": "String",
    "operatingSystemEdition": "String",
    "deviceFullQualifiedDomainName": "String",
    "deviceGuardVirtualizationBasedSecurityHardwareRequirementState": "String",
    "deviceGuardVirtualizationBasedSecurityState": "String",
    "deviceGuardLocalSystemAuthorityCredentialGuardState": "String"
  },
  "ownerType": "String",
  "managedDeviceOwnerType": "String",
  "deviceActionResults": [
    {
      "@odata.type": "microsoft.graph.deviceActionResult",
      "actionName": "String",
      "actionState": "String",
      "startDateTime": "String (timestamp)",
      "lastUpdatedDateTime": "String (timestamp)"
    }
  ],
  "managementState": "String",
  "enrolledDateTime": "String (timestamp)",
  "lastSyncDateTime": "String (timestamp)",
  "chassisType": "String",
  "operatingSystem": "String",
  "deviceType": "String",
  "complianceState": "String",
  "jailBroken": "String",
  "managementAgent": "String",
  "osVersion": "String",
  "easActivated": true,
  "easDeviceId": "String",
  "easActivationDateTime": "String (timestamp)",
  "aadRegistered": true,
  "azureADRegistered": true,
  "deviceEnrollmentType": "String",
  "lostModeState": "String",
  "activationLockBypassCode": "String",
  "emailAddress": "String",
  "azureActiveDirectoryDeviceId": "String",
  "azureADDeviceId": "String",
  "deviceRegistrationState": "String",
  "deviceCategoryDisplayName": "String",
  "isSupervised": true,
  "exchangeLastSuccessfulSyncDateTime": "String (timestamp)",
  "exchangeAccessState": "String",
  "exchangeAccessStateReason": "String",
  "remoteAssistanceSessionUrl": "String",
  "remoteAssistanceSessionErrorString": "String",
  "remoteAssistanceSessionErrorDetails": "String",
  "isEncrypted": true,
  "userPrincipalName": "String",
  "model": "String",
  "manufacturer": "String",
  "imei": "String",
  "complianceGracePeriodExpirationDateTime": "String (timestamp)",
  "serialNumber": "String",
  "phoneNumber": "String",
  "androidSecurityPatchLevel": "String",
  "userDisplayName": "String",
  "configurationManagerClientEnabledFeatures": {
    "@odata.type": "microsoft.graph.configurationManagerClientEnabledFeatures",
    "inventory": true,
    "modernApps": true,
    "resourceAccess": true,
    "deviceConfiguration": true,
    "compliancePolicy": true,
    "windowsUpdateForBusiness": true
  },
  "wiFiMacAddress": "String",
  "deviceHealthAttestationState": {
    "@odata.type": "microsoft.graph.deviceHealthAttestationState",
    "lastUpdateDateTime": "String",
    "contentNamespaceUrl": "String",
    "deviceHealthAttestationStatus": "String",
    "contentVersion": "String",
    "issuedDateTime": "String (timestamp)",
    "attestationIdentityKey": "String",
    "resetCount": 1024,
    "restartCount": 1024,
    "dataExcutionPolicy": "String",
    "bitLockerStatus": "String",
    "bootManagerVersion": "String",
    "codeIntegrityCheckVersion": "String",
    "secureBoot": "String",
    "bootDebugging": "String",
    "operatingSystemKernelDebugging": "String",
    "codeIntegrity": "String",
    "testSigning": "String",
    "safeMode": "String",
    "windowsPE": "String",
    "earlyLaunchAntiMalwareDriverProtection": "String",
    "virtualSecureMode": "String",
    "pcrHashAlgorithm": "String",
    "bootAppSecurityVersion": "String",
    "bootManagerSecurityVersion": "String",
    "tpmVersion": "String",
    "pcr0": "String",
    "secureBootConfigurationPolicyFingerPrint": "String",
    "codeIntegrityPolicy": "String",
    "bootRevisionListInfo": "String",
    "operatingSystemRevListInfo": "String",
    "healthStatusMismatchInfo": "String",
    "healthAttestationSupportedStatus": "String"
  },
  "subscriberCarrier": "String",
  "meid": "String",
  "totalStorageSpaceInBytes": 1024,
  "freeStorageSpaceInBytes": 1024,
  "managedDeviceName": "String",
  "partnerReportedThreatState": "String",
  "usersLoggedOn": [
    {
      "@odata.type": "microsoft.graph.loggedOnUser",
      "userId": "String",
      "lastLogOnDateTime": "String (timestamp)"
    }
  ],
  "preferMdmOverGroupPolicyAppliedDateTime": "String (timestamp)",
  "autopilotEnrolled": true,
  "requireUserEnrollmentApproval": true,
  "managementCertificateExpirationDate": "String (timestamp)",
  "iccid": "String",
  "udid": "String"
}
```



