# managedDevice resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Devices that are managed or pre-enrolled through Intune
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedDevices](../api/intune_devicefe_manageddevice_list.md)|[managedDevice](../resources/intune_devicefe_manageddevice.md) collection|List properties and relationships of the [managedDevice](../resources/intune_devicefe_manageddevice.md) objects.|
|[Get managedDevice](../api/intune_devicefe_manageddevice_get.md)|[managedDevice](../resources/intune_devicefe_manageddevice.md)|Read properties and relationships of the [managedDevice](../resources/intune_devicefe_manageddevice.md) object.|
|[Update managedDevice](../api/intune_devicefe_manageddevice_update.md)|[managedDevice](../resources/intune_devicefe_manageddevice.md)|Update the properties of a [managedDevice](../resources/intune_devicefe_manageddevice.md) object.|
|[retire action](../api/intune_devicefe_manageddevice_retire.md)|None|Not yet documented|
|[wipe action](../api/intune_devicefe_manageddevice_wipe.md)|None|Not yet documented|
|[resetPasscode action](../api/intune_devicefe_manageddevice_resetpasscode.md)|None|Not yet documented|
|[remoteLock action](../api/intune_devicefe_manageddevice_remotelock.md)|None|Not yet documented|
|[requestRemoteAssistance action](../api/intune_devicefe_manageddevice_requestremoteassistance.md)|None|Not yet documented|
|[enableLostMode action](../api/intune_devicefe_manageddevice_enablelostmode.md)|None|Not yet documented|
|[disableLostMode action](../api/intune_devicefe_manageddevice_disablelostmode.md)|None|Not yet documented|
|[locateDevice action](../api/intune_devicefe_manageddevice_locatedevice.md)|None|Not yet documented|
|[bypassActivationLock action](../api/intune_devicefe_manageddevice_bypassactivationlock.md)|None|Not yet documented|
|[rebootNow action](../api/intune_devicefe_manageddevice_rebootnow.md)|None|Not yet documented|
|[recoverPasscode action](../api/intune_devicefe_manageddevice_recoverpasscode.md)|None|Not yet documented|
|[cleanWindowsDevice action](../api/intune_devicefe_manageddevice_cleanwindowsdevice.md)|None|Not yet documented|
|[logoutSharedAppleDeviceActiveUser action](../api/intune_devicefe_manageddevice_logoutsharedappledeviceactiveuser.md)|None|Not yet documented|
|[deleteUserFromSharedAppleDevice action](../api/intune_devicefe_manageddevice_deleteuserfromsharedappledevice.md)|None|Not yet documented|
|[List detectedApps](../api/intune_devicefe_detectedapp_list.md)|[detectedApp](../resources/intune_devicefe_detectedapp.md) collection|List properties and relationships of the [detectedApp](../resources/intune_devicefe_detectedapp.md) objects.|
|[Get deviceCategory](../api/intune_devicefe_devicecategory_get.md)|[deviceCategory](../resources/intune_devicefe_devicecategory.md)|Read properties and relationships of the [deviceCategory](../resources/intune_devicefe_devicecategory.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device|
|userId|String|Unique Identifier for the user associated with the device|
|deviceName|String|Name of the device|
|hardwareInformation|[hardwareInformation](../resources/intune_devicefe_hardwareinformation.md)|The hardward details for the device.  Includes information such as storage space, manufacturer, serial number, etc.|
|ownerType|String|Ownership of the device. Can be 'company' or 'personal' Possible values are: `unknown`, `company`, `personal`.|
|deviceActionResults|[deviceActionResult](../resources/intune_devicefe_deviceactionresult.md) collection|List of ComplexType deviceActionResult objects.|
|managementState|String|Management state of the device. Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|enrolledDateTime|DateTimeOffset|Enrollment time of the device.|
|lastSyncDateTime|DateTimeOffset|The date and time that the device last completed a successful sync with Intune.|
|chassisType|String|Chassis type of the device. Possible values are: `unknown`, `desktop`, `laptop`, `worksWorkstation`, `enterpriseServer`, `phone`, `tablet`, `mobileOther`, `mobileUnknown`.|
|operatingSystem|String|Operating system of the device. Windows, iOS, etc.|
|deviceType|String|Platform of the device. Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `windowsBlue`, `windowsPhoneBlue`, `blackberry`, `palm`, `fakeDevice`, `unknown`.|
|complianceState|String|Compliance state of the device. Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`.|
|jailBroken|String|whether the device is jail broken or rooted.|
|managementAgent|String|Management channel of the device. Intune, EAS, etc. Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configManagerClient`, `unknown`.|
|osVersion|String|Operating system version of the device.|
|easActivated|Boolean|Whether the device is Exchange ActiveSync activated.|
|easDeviceId|String|Exchange ActiveSync Id of the device.|
|easActivationDateTime|DateTimeOffset|Exchange ActivationSync activation time of the device.|
|aadRegistered|Boolean|Whether the device is Azure Active Directory registered.|
|enrollmentType|String|Enrollment type of the device. Possible values are: `unknown`, `userEnrollment`, `deviceEnrollment`, `deviceEnrollmentWithUDA`, `azureDomainJoined`, `userEnrollmentWithServiceAccount`, `depDeviceEnrollment`, `depDeviceEnrollmentWithUDA`, `autoEnrollment`.|
|lostModeState|String|Indicates if Lost mode is enabled or disabled Possible values are: `disabled`, `enabled`.|
|activationLockBypassCode|String|Code that allows the Activation Lock on a device to be bypassed.|
|emailAddress|String|Email(s) for the user associated with the device|
|azureActiveDirectoryDeviceId|String|The unique identifier for the Azure Active Directory device. Read only.|
|deviceRegistrationState|String|Device registration state. Possible values are: `notRegistered`, `smsidConflict`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `resetCert`, `notRegisteredPendingEnrollment`, `unknown`.|
|deviceCategoryDisplayName|String|Device category display name|
|isSupervised|Boolean|Device supervised status|
|exchangeLastSuccessfulSyncDateTime|DateTimeOffset|Last time the device contacted Exchange.|
|exchangeAccessState|String|The Access State of the device in Exchange. Possible values are: `none`, `unknown`, `allowed`, `blocked`, `quarantined`.|
|exchangeAccessStateReason|String|The reason for the device's access state in Exchange. Possible values are: `none`, `unknown`, `exchangeGlobalRule`, `exchangeIndividualRule`, `exchangeDeviceRule`, `exchangeUpgrade`, `exchangeMailboxPolicy`, `other`, `compliant`, `notCompliant`, `notEnrolled`, `unknownLocation`, `mfaRequired`, `azureADBlockDueToAccessPolicy`, `compromisedPassword`, `deviceNotKnownWithManagedApp`.|
|remoteAssistanceSessionUrl|String|Url that allows a Remote Assistance session to be established with the device.|
|isEncrypted|Boolean|Device encryption status|
|userPrincipalName|String|Device user principal name|
|model|String|Model of the device|
|manufacturer|String|Manufacturer of the device|
|imei|String|IMEI|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires|
|serialNumber|String|SerialNumber|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|detectedApps|[detectedApp](../resources/intune_devicefe_detectedapp.md) collection|All applications currently installed on the device|
|deviceCategory|[deviceCategory](../resources/intune_devicefe_devicecategory.md)|Device category|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDevice"
}
-->
```json
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
    ]
  },
  "ownerType": "String",
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
  "enrollmentType": "String",
  "lostModeState": "String",
  "activationLockBypassCode": "String",
  "emailAddress": "String",
  "azureActiveDirectoryDeviceId": "String",
  "deviceRegistrationState": "String",
  "deviceCategoryDisplayName": "String",
  "isSupervised": true,
  "exchangeLastSuccessfulSyncDateTime": "String (timestamp)",
  "exchangeAccessState": "String",
  "exchangeAccessStateReason": "String",
  "remoteAssistanceSessionUrl": "String",
  "isEncrypted": true,
  "userPrincipalName": "String",
  "model": "String",
  "manufacturer": "String",
  "imei": "String",
  "complianceGracePeriodExpirationDateTime": "String (timestamp)",
  "serialNumber": "String"
}
```



