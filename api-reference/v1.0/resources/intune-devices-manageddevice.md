---
title: "managedDevice resource type"
description: "Devices that are managed or pre-enrolled through Intune"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# managedDevice resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Devices that are managed or pre-enrolled through Intune

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedDevices](../api/intune-devices-manageddevice-list.md)|[managedDevice](../resources/intune-devices-manageddevice.md) collection|List properties and relationships of the [managedDevice](../resources/intune-devices-manageddevice.md) objects.|
|[Get managedDevice](../api/intune-devices-manageddevice-get.md)|[managedDevice](../resources/intune-devices-manageddevice.md)|Read properties and relationships of the [managedDevice](../resources/intune-devices-manageddevice.md) object.|
|[Create managedDevice](../api/intune-devices-manageddevice-create.md)|[managedDevice](../resources/intune-devices-manageddevice.md)|Create a new [managedDevice](../resources/intune-devices-manageddevice.md) object.|
|[Delete managedDevice](../api/intune-devices-manageddevice-delete.md)|None|Deletes a [managedDevice](../resources/intune-devices-manageddevice.md).|
|[Update managedDevice](../api/intune-devices-manageddevice-update.md)|[managedDevice](../resources/intune-devices-manageddevice.md)|Update the properties of a [managedDevice](../resources/intune-devices-manageddevice.md) object.|
|[retire action](../api/intune-devices-manageddevice-retire.md)|None|Retire a device|
|[wipe action](../api/intune-devices-manageddevice-wipe.md)|None|Wipe a device|
|[resetPasscode action](../api/intune-devices-manageddevice-resetpasscode.md)|None|Reset passcode|
|[remoteLock action](../api/intune-devices-manageddevice-remotelock.md)|None|Remote lock|
|[requestRemoteAssistance action](../api/intune-devices-manageddevice-requestremoteassistance.md)|None|Request remote assistance|
|[disableLostMode action](../api/intune-devices-manageddevice-disablelostmode.md)|None|Disable lost mode|
|[locateDevice action](../api/intune-devices-manageddevice-locatedevice.md)|None|Locate a device|
|[bypassActivationLock action](../api/intune-devices-manageddevice-bypassactivationlock.md)|None|Bypass activation lock|
|[rebootNow action](../api/intune-devices-manageddevice-rebootnow.md)|None|Reboot device|
|[shutDown action](../api/intune-devices-manageddevice-shutdown.md)|None|Shut down device|
|[recoverPasscode action](../api/intune-devices-manageddevice-recoverpasscode.md)|None|Recover passcode|
|[cleanWindowsDevice action](../api/intune-devices-manageddevice-cleanwindowsdevice.md)|None|Clean Windows device|
|[logoutSharedAppleDeviceActiveUser action](../api/intune-devices-manageddevice-logoutsharedappledeviceactiveuser.md)|None|Logout shared Apple device active user|
|[deleteUserFromSharedAppleDevice action](../api/intune-devices-manageddevice-deleteuserfromsharedappledevice.md)|None|Delete user from shared Apple device|
|[syncDevice action](../api/intune-devices-manageddevice-syncdevice.md)|None|Not yet documented|
|[windowsDefenderScan action](../api/intune-devices-manageddevice-windowsdefenderscan.md)|None|Not yet documented|
|[windowsDefenderUpdateSignatures action](../api/intune-devices-manageddevice-windowsdefenderupdatesignatures.md)|None|Not yet documented|
|[updateWindowsDeviceAccount action](../api/intune-devices-manageddevice-updatewindowsdeviceaccount.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device. This property is read-only.|
|userId|String|Unique Identifier for the user associated with the device. This property is read-only.|
|deviceName|String|Name of the device. This property is read-only.|
|managedDeviceOwnerType|[managedDeviceOwnerType](../resources/intune-devices-manageddeviceownertype.md)|Ownership of the device. Can be 'company' or 'personal'. Possible values are: `unknown`, `company`, `personal`.|
|deviceActionResults|[deviceActionResult](../resources/intune-devices-deviceactionresult.md) collection|List of ComplexType deviceActionResult objects. This property is read-only.|
|enrolledDateTime|DateTimeOffset|Enrollment time of the device. This property is read-only.|
|lastSyncDateTime|DateTimeOffset|The date and time that the device last completed a successful sync with Intune. This property is read-only.|
|operatingSystem|String|Operating system of the device. Windows, iOS, etc. This property is read-only.|
|complianceState|[complianceState](../resources/intune-devices-compliancestate.md)|Compliance state of the device. This property is read-only. Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`, `inGracePeriod`, `configManager`.|
|jailBroken|String|whether the device is jail broken or rooted. This property is read-only.|
|managementAgent|[managementAgentType](../resources/intune-devices-managementagenttype.md)|Management channel of the device. Intune, EAS, etc. This property is read-only. Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configurationManagerClient`, `configurationManagerClientMdm`, `configurationManagerClientMdmEas`, `unknown`, `jamf`, `googleCloudDevicePolicyController`.|
|osVersion|String|Operating system version of the device. This property is read-only.|
|easActivated|Boolean|Whether the device is Exchange ActiveSync activated. This property is read-only.|
|easDeviceId|String|Exchange ActiveSync Id of the device. This property is read-only.|
|easActivationDateTime|DateTimeOffset|Exchange ActivationSync activation time of the device. This property is read-only.|
|azureADRegistered|Boolean|Whether the device is Azure Active Directory registered. This property is read-only.|
|deviceEnrollmentType|[deviceEnrollmentType](../resources/intune-devices-deviceenrollmenttype.md)|Enrollment type of the device. This property is read-only. Possible values are: `unknown`, `userEnrollment`, `deviceEnrollmentManager`, `appleBulkWithUser`, `appleBulkWithoutUser`, `windowsAzureADJoin`, `windowsBulkUserless`, `windowsAutoEnrollment`, `windowsBulkAzureDomainJoin`, `windowsCoManagement`, `windowsAzureADJoinUsingDeviceAuth`, `appleUserEnrollment`, `appleUserEnrollmentWithServiceAccount`.|
|activationLockBypassCode|String|Code that allows the Activation Lock on a device to be bypassed. This property is read-only.|
|emailAddress|String|Email(s) for the user associated with the device. This property is read-only.|
|azureADDeviceId|String|The unique identifier for the Azure Active Directory device. Read only. This property is read-only.|
|deviceRegistrationState|[deviceRegistrationState](../resources/intune-devices-deviceregistrationstate.md)|Device registration state. This property is read-only. Possible values are: `notRegistered`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `certificateReset`, `notRegisteredPendingEnrollment`, `unknown`.|
|deviceCategoryDisplayName|String|Device category display name. This property is read-only.|
|isSupervised|Boolean|Device supervised status. This property is read-only.|
|exchangeLastSuccessfulSyncDateTime|DateTimeOffset|Last time the device contacted Exchange. This property is read-only.|
|exchangeAccessState|[deviceManagementExchangeAccessState](../resources/intune-devices-devicemanagementexchangeaccessstate.md)|The Access State of the device in Exchange. This property is read-only. Possible values are: `none`, `unknown`, `allowed`, `blocked`, `quarantined`.|
|exchangeAccessStateReason|[deviceManagementExchangeAccessStateReason](../resources/intune-devices-devicemanagementexchangeaccessstatereason.md)|The reason for the device's access state in Exchange. This property is read-only. Possible values are: `none`, `unknown`, `exchangeGlobalRule`, `exchangeIndividualRule`, `exchangeDeviceRule`, `exchangeUpgrade`, `exchangeMailboxPolicy`, `other`, `compliant`, `notCompliant`, `notEnrolled`, `unknownLocation`, `mfaRequired`, `azureADBlockDueToAccessPolicy`, `compromisedPassword`, `deviceNotKnownWithManagedApp`.|
|remoteAssistanceSessionUrl|String|Url that allows a Remote Assistance session to be established with the device. This property is read-only.|
|remoteAssistanceSessionErrorDetails|String|An error string that identifies issues when creating Remote Assistance session objects. This property is read-only.|
|isEncrypted|Boolean|Device encryption status. This property is read-only.|
|userPrincipalName|String|Device user principal name. This property is read-only.|
|model|String|Model of the device. This property is read-only.|
|manufacturer|String|Manufacturer of the device. This property is read-only.|
|imei|String|IMEI. This property is read-only.|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires. This property is read-only.|
|serialNumber|String|SerialNumber. This property is read-only.|
|phoneNumber|String|Phone number of the device. This property is read-only.|
|androidSecurityPatchLevel|String|Android security patch level. This property is read-only.|
|userDisplayName|String|User display name. This property is read-only.|
|configurationManagerClientEnabledFeatures|[configurationManagerClientEnabledFeatures](../resources/intune-devices-configurationmanagerclientenabledfeatures.md)|ConfigrMgr client enabled features. This property is read-only.|
|wiFiMacAddress|String|Wi-Fi MAC. This property is read-only.|
|deviceHealthAttestationState|[deviceHealthAttestationState](../resources/intune-devices-devicehealthattestationstate.md)|The device health attestation state. This property is read-only.|
|subscriberCarrier|String|Subscriber Carrier. This property is read-only.|
|meid|String|MEID. This property is read-only.|
|totalStorageSpaceInBytes|Int64|Total Storage in Bytes. This property is read-only.|
|freeStorageSpaceInBytes|Int64|Free Storage in Bytes. This property is read-only.|
|managedDeviceName|String|Automatically generated name to identify a device. Can be overwritten to a user friendly name.|
|partnerReportedThreatState|[managedDevicePartnerReportedHealthState](../resources/intune-devices-manageddevicepartnerreportedhealthstate.md)|Indicates the threat state of a device when a Mobile Threat Defense partner is in use by the account and device. Read Only. This property is read-only. Possible values are: `unknown`, `activated`, `deactivated`, `secured`, `lowSeverity`, `mediumSeverity`, `highSeverity`, `unresponsive`, `compromised`, `misconfigured`.|
|iccid|String|Integrated Circuit Card Identifier, it is A SIM card's unique identification number. This property is read-only.|
|udid|String|Unique Device Identifier for iOS and macOS devices. This property is read-only.|
|notes|String|Notes on the device created by IT Admin|
|ethernetMacAddress|String|Ethernet MAC. This property is read-only.|
|physicalMemoryInBytes|Int64|Total Memory in Bytes. This property is read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceCategory|[deviceCategory](../resources/intune-devices-devicecategory.md)|Device category|

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
  "enrolledDateTime": "String (timestamp)",
  "lastSyncDateTime": "String (timestamp)",
  "operatingSystem": "String",
  "complianceState": "String",
  "jailBroken": "String",
  "managementAgent": "String",
  "osVersion": "String",
  "easActivated": true,
  "easDeviceId": "String",
  "easActivationDateTime": "String (timestamp)",
  "azureADRegistered": true,
  "deviceEnrollmentType": "String",
  "activationLockBypassCode": "String",
  "emailAddress": "String",
  "azureADDeviceId": "String",
  "deviceRegistrationState": "String",
  "deviceCategoryDisplayName": "String",
  "isSupervised": true,
  "exchangeLastSuccessfulSyncDateTime": "String (timestamp)",
  "exchangeAccessState": "String",
  "exchangeAccessStateReason": "String",
  "remoteAssistanceSessionUrl": "String",
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
  "iccid": "String",
  "udid": "String",
  "notes": "String",
  "ethernetMacAddress": "String",
  "physicalMemoryInBytes": 1024
}
```




