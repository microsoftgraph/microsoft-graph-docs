# managedDevice resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Devices that are managed or pre-enrolled through Intune
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get managedDevice](../api/intune_devices_manageddevice_get.md)|[managedDevice](../resources/intune_devices_manageddevice.md)|Read properties and relationships of the [managedDevice](../resources/intune_devices_manageddevice.md) object.|
|[Update managedDevice](../api/intune_devices_manageddevice_update.md)|[managedDevice](../resources/intune_devices_manageddevice.md)|Update the properties of a [managedDevice](../resources/intune_devices_manageddevice.md) object.|
|[executeAction action](../api/intune_devices_manageddevice_executeaction.md)|[bulkManagedDeviceActionResult](../resources/intune_devices_bulkmanageddeviceactionresult.md)|Not yet documented|
|[enableLostMode action](../api/intune_devices_manageddevice_enablelostmode.md)|None|Enable lost mode|
|[playLostModeSound action](../api/intune_devices_manageddevice_playlostmodesound.md)|None|Remote lock|
|[setDeviceName action](../api/intune_devices_manageddevice_setdevicename.md)|None|Set device name of the device.|
|[retire action](../api/intune_devices_manageddevice_retire.md)|None|Retire a device|
|[wipe action](../api/intune_devices_manageddevice_wipe.md)|None|Wipe a device|
|[resetPasscode action](../api/intune_devices_manageddevice_resetpasscode.md)|None|Reset passcode|
|[remoteLock action](../api/intune_devices_manageddevice_remotelock.md)|None|Remote lock|
|[requestRemoteAssistance action](../api/intune_devices_manageddevice_requestremoteassistance.md)|None|Request remote assistance|
|[disableLostMode action](../api/intune_devices_manageddevice_disablelostmode.md)|None|Disable lost mode|
|[locateDevice action](../api/intune_devices_manageddevice_locatedevice.md)|None|Locate a device|
|[bypassActivationLock action](../api/intune_devices_manageddevice_bypassactivationlock.md)|None|Bypass activation lock|
|[rebootNow action](../api/intune_devices_manageddevice_rebootnow.md)|None|Reboot device|
|[shutDown action](../api/intune_devices_manageddevice_shutdown.md)|None|Shut down device|
|[recoverPasscode action](../api/intune_devices_manageddevice_recoverpasscode.md)|None|Recover passcode|
|[cleanWindowsDevice action](../api/intune_devices_manageddevice_cleanwindowsdevice.md)|None|Clean Windows device|
|[logoutSharedAppleDeviceActiveUser action](../api/intune_devices_manageddevice_logoutsharedappledeviceactiveuser.md)|None|Logout shared Apple device active user|
|[deleteUserFromSharedAppleDevice action](../api/intune_devices_manageddevice_deleteuserfromsharedappledevice.md)|None|Delete user from shared Apple device|
|[syncDevice action](../api/intune_devices_manageddevice_syncdevice.md)|None|Not yet documented|
|[windowsDefenderScan action](../api/intune_devices_manageddevice_windowsdefenderscan.md)|None|Not yet documented|
|[windowsDefenderUpdateSignatures action](../api/intune_devices_manageddevice_windowsdefenderupdatesignatures.md)|None|Not yet documented|
|[updateWindowsDeviceAccount action](../api/intune_devices_manageddevice_updatewindowsdeviceaccount.md)|None|Not yet documented|
|[revokeAppleVppLicenses action](../api/intune_devices_manageddevice_revokeapplevpplicenses.md)|None|Revoke all Apple Vpp licenses for a device|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device|
|userId|String|Unique Identifier for the user associated with the device|
|deviceName|String|Name of the device|
|hardwareInformation|[hardwareInformation](../resources/intune_devices_hardwareinformation.md)|The hardward details for the device.  Includes information such as storage space, manufacturer, serial number, etc.|
|ownerType|[ownerType](../resources/intune_devices_ownertype.md)|Ownership of the device. Can be 'company' or 'personal'. Possible values are: `unknown`, `company`, `personal`.|
|managedDeviceOwnerType|[managedDeviceOwnerType](../resources/intune_devices_manageddeviceownertype.md)|Ownership of the device. Can be 'company' or 'personal'. Possible values are: `unknown`, `company`, `personal`.|
|deviceActionResults|[deviceActionResult](../resources/intune_devices_deviceactionresult.md) collection|List of ComplexType deviceActionResult objects.|
|managementState|[managementState](../resources/intune_devices_managementstate.md)|Management state of the device. Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|enrolledDateTime|DateTimeOffset|Enrollment time of the device.|
|lastSyncDateTime|DateTimeOffset|The date and time that the device last completed a successful sync with Intune.|
|chassisType|[chassisType](../resources/intune_devices_chassistype.md)|Chassis type of the device. Possible values are: `unknown`, `desktop`, `laptop`, `worksWorkstation`, `enterpriseServer`, `phone`, `tablet`, `mobileOther`, `mobileUnknown`.|
|operatingSystem|String|Operating system of the device. Windows, iOS, etc.|
|deviceType|[deviceType](../resources/intune_shared_devicetype.md)|Platform of the device. Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `androidEnterprise`, `blackberry`, `palm`, `unknown`.|
|complianceState|[complianceState](../resources/intune_devices_compliancestate.md)|Compliance state of the device. Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`, `inGracePeriod`, `configManager`.|
|jailBroken|String|whether the device is jail broken or rooted.|
|managementAgent|[managementAgentType](../resources/intune_devices_managementagenttype.md)|Management channel of the device. Intune, EAS, etc. Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configurationManagerClient`, `configurationManagerClientMdm`, `configurationManagerClientMdmEas`, `unknown`, `jamf`, `googleCloudDevicePolicyController`.|
|osVersion|String|Operating system version of the device.|
|easActivated|Boolean|Whether the device is Exchange ActiveSync activated.|
|easDeviceId|String|Exchange ActiveSync Id of the device.|
|easActivationDateTime|DateTimeOffset|Exchange ActivationSync activation time of the device.|
|aadRegistered|Boolean|Whether the device is Azure Active Directory registered.|
|azureADRegistered|Boolean|Whether the device is Azure Active Directory registered.|
|deviceEnrollmentType|[deviceEnrollmentType](../resources/intune_shared_deviceenrollmenttype.md)|Enrollment type of the device. Possible values are: `unknown`, `userEnrollment`, `deviceEnrollmentManager`, `appleBulkWithUser`, `appleBulkWithoutUser`, `windowsAzureADJoin`, `windowsBulkUserless`, `windowsAutoEnrollment`, `windowsBulkAzureDomainJoin`, `windowsCoManagement`.|
|lostModeState|[lostModeState](../resources/intune_devices_lostmodestate.md)|Indicates if Lost mode is enabled or disabled. Possible values are: `disabled`, `enabled`.|
|activationLockBypassCode|String|Code that allows the Activation Lock on a device to be bypassed.|
|emailAddress|String|Email(s) for the user associated with the device|
|azureActiveDirectoryDeviceId|String|The unique identifier for the Azure Active Directory device. Read only.|
|azureADDeviceId|String|The unique identifier for the Azure Active Directory device. Read only.|
|deviceRegistrationState|[deviceRegistrationState](../resources/intune_devices_deviceregistrationstate.md)|Device registration state. Possible values are: `notRegistered`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `certificateReset`, `notRegisteredPendingEnrollment`, `unknown`.|
|deviceCategoryDisplayName|String|Device category display name|
|isSupervised|Boolean|Device supervised status|
|exchangeLastSuccessfulSyncDateTime|DateTimeOffset|Last time the device contacted Exchange.|
|exchangeAccessState|[deviceManagementExchangeAccessState](../resources/intune_devices_devicemanagementexchangeaccessstate.md)|The Access State of the device in Exchange. Possible values are: `none`, `unknown`, `allowed`, `blocked`, `quarantined`.|
|exchangeAccessStateReason|[deviceManagementExchangeAccessStateReason](../resources/intune_devices_devicemanagementexchangeaccessstatereason.md)|The reason for the device's access state in Exchange. Possible values are: `none`, `unknown`, `exchangeGlobalRule`, `exchangeIndividualRule`, `exchangeDeviceRule`, `exchangeUpgrade`, `exchangeMailboxPolicy`, `other`, `compliant`, `notCompliant`, `notEnrolled`, `unknownLocation`, `mfaRequired`, `azureADBlockDueToAccessPolicy`, `compromisedPassword`, `deviceNotKnownWithManagedApp`.|
|remoteAssistanceSessionUrl|String|Url that allows a Remote Assistance session to be established with the device.|
|remoteAssistanceSessionErrorString|String|An error string that identifies issues when creating Remote Assistance session objects.|
|remoteAssistanceSessionErrorDetails|String|An error string that identifies issues when creating Remote Assistance session objects.|
|isEncrypted|Boolean|Device encryption status|
|userPrincipalName|String|Device user principal name|
|model|String|Model of the device|
|manufacturer|String|Manufacturer of the device|
|imei|String|IMEI|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires|
|serialNumber|String|SerialNumber|
|phoneNumber|String|Phone number of the device|
|androidSecurityPatchLevel|String|Android security patch level|
|userDisplayName|String|User display name|
|configurationManagerClientEnabledFeatures|[configurationManagerClientEnabledFeatures](../resources/intune_devices_configurationmanagerclientenabledfeatures.md)|ConfigrMgr client enabled features|
|wiFiMacAddress|String|Wi-Fi MAC|
|deviceHealthAttestationState|[deviceHealthAttestationState](../resources/intune_devices_devicehealthattestationstate.md)|The device health attestation state.|
|subscriberCarrier|String|Subscriber Carrier|
|meid|String|MEID|
|totalStorageSpaceInBytes|Int64|Total Storage in Bytes|
|freeStorageSpaceInBytes|Int64|Free Storage in Bytes|
|managedDeviceName|String|Automatically generated name to identify a device. Can be overwritten to a user friendly name.|
|partnerReportedThreatState|[managedDevicePartnerReportedHealthState](../resources/intune_devices_manageddevicepartnerreportedhealthstate.md)|Indicates the threat state of a device when a Mobile Threat Defense partner is in use by the account and device. Read Only. Possible values are: `unknown`, `activated`, `deactivated`, `secured`, `lowSeverity`, `mediumSeverity`, `highSeverity`, `unresponsive`.|
|usersLoggedOn|[loggedOnUser](../resources/intune_devices_loggedonuser.md) collection|Indicates the last logged on users of a device|
|preferMdmOverGroupPolicyAppliedDateTime|DateTimeOffset|Reports the DateTime the preferMdmOverGroupPolicy setting was set.  When set, the Intune MDM settings will override Group Policy settings if there is a conflict. Read Only.|
|autopilotEnrolled|Boolean|Reports if the managed device is enrolled via auto-pilot.|
|requireUserEnrollmentApproval|Boolean|Reports if the managed iOS device is user approval enrollment.|
|managementCertificateExpirationDate|DateTimeOffset|Reports device management certificate expiration date|
|iccid|String|Integrated Circuit Card Identifier, it is A SIM card's unique identification number.|
|udid|String|Unique Device Identifier for iOS and macOS devices.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|detectedApps|[detectedApp](../resources/intune_devices_detectedapp.md) collection|All applications currently installed on the device|
|deviceCategory|[deviceCategory](../resources/intune_shared_devicecategory.md)|Device category|
|windowsProtectionState|[windowsProtectionState](../resources/intune_devices_windowsprotectionstate.md)|The device protection status.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDevice",
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



