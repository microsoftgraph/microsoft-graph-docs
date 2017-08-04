#  resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows devices that are managed or pre-enrolled through Intune

Inherits from [managedDevice](../resources/intune_devicefe_manageddevice.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsManagedDevices](../api/intune_devicefe_windowsmanageddevice_list.md)|[windowsManagedDevice](../resources/intune_devicefe_windowsmanageddevice.md) collection|List properties and relationships of the [windowsManagedDevice](../resources/intune_devicefe_windowsmanageddevice.md) objects.|
|[Get windowsManagedDevice](../api/intune_devicefe_windowsmanageddevice_get.md)|[windowsManagedDevice](../resources/intune_devicefe_windowsmanageddevice.md)|Read properties and relationships of the [windowsManagedDevice](../resources/intune_devicefe_windowsmanageddevice.md) object.|
|[Create windowsManagedDevice](../api/intune_devicefe_windowsmanageddevice_create.md)|[windowsManagedDevice](../resources/intune_devicefe_windowsmanageddevice.md)|Create a new [windowsManagedDevice](../resources/intune_devicefe_windowsmanageddevice.md) object.|
|[Delete windowsManagedDevice](../api/intune_devicefe_windowsmanageddevice_delete.md)|None|Deletes a [windowsManagedDevice](../resources/intune_devicefe_windowsmanageddevice.md).|
|[Update windowsManagedDevice](../api/intune_devicefe_windowsmanageddevice_update.md)|[windowsManagedDevice](../resources/intune_devicefe_windowsmanageddevice.md)|Update the properties of a [windowsManagedDevice](../resources/intune_devicefe_windowsmanageddevice.md) object.|
|[List detectedApps](../api/intune_devicefe_detectedapp_list.md)|[detectedApp](../resources/intune_devicefe_detectedapp.md) collection|List properties and relationships of the [detectedApp](../resources/intune_devicefe_detectedapp.md) objects.|
|[Get deviceCategory](../api/intune_devicefe_devicecategory_get.md)|[deviceCategory](../resources/intune_devicefe_devicecategory.md)|Read properties and relationships of the [deviceCategory](../resources/intune_devicefe_devicecategory.md) object.|
|[Get windowsProtectionState](../api/intune_devicefe_windowsprotectionstate_get.md)|[windowsProtectionState](../resources/intune_devicefe_windowsprotectionstate.md)|Read properties and relationships of the [windowsProtectionState](../resources/intune_devicefe_windowsprotectionstate.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|userId|String|Unique Identifier for the user associated with the device Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|deviceName|String|Name of the device Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|hardwareInformation|[hardwareInformation](../resources/intune_devicefe_hardwareinformation.md)|The hardward details for the device.  Includes information such as storage space, manufacturer, serial number, etc. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|ownerType|String|Ownership of the device. Can be 'company' or 'personal' Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md) Possible values are: `unknown`, `company`, `personal`.|
|deviceActionResults|[deviceActionResult](../resources/intune_devicefe_deviceactionresult.md) collection|List of ComplexType deviceActionResult objects. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|managementState|String|Management state of the device. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md) Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|enrolledDateTime|DateTimeOffset|Enrollment time of the device. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|lastSyncDateTime|DateTimeOffset|The date and time that the device last completed a successful sync with Intune. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|chassisType|String|Chassis type of the device. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md) Possible values are: `unknown`, `desktop`, `laptop`, `worksWorkstation`, `enterpriseServer`, `phone`, `tablet`, `mobileOther`, `mobileUnknown`.|
|operatingSystem|String|Operating system of the device. Windows, iOS, etc. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|deviceType|String|Platform of the device. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md) Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `windowsBlue`, `windowsPhoneBlue`, `blackberry`, `palm`, `fakeDevice`, `unknown`.|
|complianceState|String|Compliance state of the device. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md) Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`.|
|jailBroken|String|whether the device is jail broken or rooted. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|managementAgent|String|Management channel of the device. Intune, EAS, etc. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md) Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configManagerClient`, `unknown`.|
|osVersion|String|Operating system version of the device. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|easActivated|Boolean|Whether the device is Exchange ActiveSync activated. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|easDeviceId|String|Exchange ActiveSync Id of the device. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|easActivationDateTime|DateTimeOffset|Exchange ActivationSync activation time of the device. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|aadRegistered|Boolean|Whether the device is Azure Active Directory registered. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|enrollmentType|String|Enrollment type of the device. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md) Possible values are: `unknown`, `userEnrollment`, `deviceEnrollment`, `deviceEnrollmentWithUDA`, `azureDomainJoined`, `userEnrollmentWithServiceAccount`, `depDeviceEnrollment`, `depDeviceEnrollmentWithUDA`, `autoEnrollment`.|
|lostModeState|String|Indicates if Lost mode is enabled or disabled Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md) Possible values are: `disabled`, `enabled`.|
|activationLockBypassCode|String|Code that allows the Activation Lock on a device to be bypassed. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|emailAddress|String|Email(s) for the user associated with the device Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|azureActiveDirectoryDeviceId|String|The unique identifier for the Azure Active Directory device. Read only. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|deviceRegistrationState|String|Device registration state. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md) Possible values are: `notRegistered`, `smsidConflict`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `resetCert`, `notRegisteredPendingEnrollment`, `unknown`.|
|deviceCategoryDisplayName|String|Device category display name Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|isSupervised|Boolean|Device supervised status Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|exchangeLastSuccessfulSyncDateTime|DateTimeOffset|Last time the device contacted Exchange. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|exchangeAccessState|String|The Access State of the device in Exchange. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md) Possible values are: `none`, `unknown`, `allowed`, `blocked`, `quarantined`.|
|exchangeAccessStateReason|String|The reason for the device's access state in Exchange. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md) Possible values are: `none`, `unknown`, `exchangeGlobalRule`, `exchangeIndividualRule`, `exchangeDeviceRule`, `exchangeUpgrade`, `exchangeMailboxPolicy`, `other`, `compliant`, `notCompliant`, `notEnrolled`, `unknownLocation`, `mfaRequired`, `azureADBlockDueToAccessPolicy`, `compromisedPassword`, `deviceNotKnownWithManagedApp`.|
|remoteAssistanceSessionUrl|String|Url that allows a Remote Assistance session to be established with the device. Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|isEncrypted|Boolean|Device encryption status Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|userPrincipalName|String|Device user principal name Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|model|String|Model of the device Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|manufacturer|String|Manufacturer of the device Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|imei|String|IMEI Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|serialNumber|String|SerialNumber Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|detectedApps|[detectedApp](../resources/intune_devicefe_detectedapp.md) collection|All applications currently installed on the device Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|deviceCategory|[deviceCategory](../resources/intune_devicefe_devicecategory.md)|Device category Inherited from [managedDevice](../resources/intune_devicefe_manageddevice.md)|
|windowsProtectionState|[windowsProtectionState](../resources/intune_devicefe_windowsprotectionstate.md)|The device protection status.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsManagedDevice"
}
-->
```json
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



