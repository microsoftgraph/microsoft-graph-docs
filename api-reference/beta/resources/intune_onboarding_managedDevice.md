# managedDevice resource type

Devices that are managed or pre-enrolled through Intune
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedDevices](../api/intune_onboarding_managedDevice_list.md)|[managedDevice](../resources/intune_onboarding_managedDevice.md) collection|List properties and relationships of the [managedDevice](../resources/intune_onboarding_managedDevice.md) objects.|
|[Get managedDevice](../api/intune_onboarding_managedDevice_get.md)|[managedDevice](../resources/intune_onboarding_managedDevice.md)|Read properties and relationships of the [managedDevice](../resources/intune_onboarding_managedDevice.md) object.|
|[retire action](../api/intune_onboarding_managedDevice_retire.md)|None|Not yet documented|
|[wipe action](../api/intune_onboarding_managedDevice_wipe.md)|None|Not yet documented|
|[resetPasscode action](../api/intune_onboarding_managedDevice_resetPasscode.md)|None|Not yet documented|
|[remoteLock action](../api/intune_onboarding_managedDevice_remoteLock.md)|None|Not yet documented|
|[enableLostMode action](../api/intune_onboarding_managedDevice_enableLostMode.md)|None|Not yet documented|
|[disableLostMode action](../api/intune_onboarding_managedDevice_disableLostMode.md)|None|Not yet documented|
|[locateDevice action](../api/intune_onboarding_managedDevice_locateDevice.md)|None|Not yet documented|
|[bypassActivationLock action](../api/intune_onboarding_managedDevice_bypassActivationLock.md)|None|Not yet documented|
|[rebootNow action](../api/intune_onboarding_managedDevice_rebootNow.md)|None|Not yet documented|
|[List detectedApps](../api/intune_onboarding_managedDevice_list_detectedApp.md)|[detectedApp](../resources/intune_onboarding_detectedApp.md) collection|Get the detectedApps from the detectedApps navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device|
|userId|String|Unique Identifier for the user associated with the device|
|deviceName|String|Name of the device|
|hardwareInformation|[hardwareInformation](../resources/intune_onboarding_hardwareInformation.md)|The hardward details for the device.  Includes information such as storage space, manufacturer, serial number, etc.|
|ownerType|String|Ownership of the device. Can be 'company' or 'personal' Possible values are: `unknown`, `company`, `personal`.|
|deviceActionResults|[deviceActionResult](../resources/intune_onboarding_deviceActionResult.md) collection|List of ComplexType deviceActionResult objects.|
|managementState|String|Management state of the device. Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|enrolledDateTime|DateTimeOffset|Enrollment time of the device.|
|lastSyncDateTime|DateTimeOffset|The date and time that the device last completed a successful sync with Intune.|
|chassisType|String|Chassis type of the device. Possible values are: `unknown`, `desktop`, `laptop`, `worksWorkstation`, `enterpriseServer`, `phone`, `tablet`, `mobileOther`, `mobileUnknown`.|
|operatingSystem|String|Operating system of the device. Windows, iOS, etc.|
|deviceType|String|Platform of the device. Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `windowsBlue`, `windowsPhoneBlue`, `blackberry`, `palm`, `fakeDevice`, `unknown`.|
|complianceState|String|Compliance state of the device. Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`.|
|jailBroken|String|whether the device is jail broken or rooted.|
|managementAgents|Int32|Management channel of the device. Intune, EAS, etc.|
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

### Relationships
|Relationship|Type|Description|
|---|---|---|
|detectedApps|[detectedApp](../resources/intune_onboarding_detectedApp.md) collection|All applications currently installed on the device|

### JSON Representation
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
    "operatingSystemLanguage": "String"
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
  "managementAgents": 1024,
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
  "azureActiveDirectoryDeviceId": "String"
}
```



