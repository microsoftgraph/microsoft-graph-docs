# Update windowsManagedDevice

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementManagedDevices.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /managedDevices/{managedDevicesId}
PATCH /users/{usersId}/managedDevices/{managedDeviceId}
PATCH /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/
PATCH /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice//detectedApps/{detectedAppId}/managedDevices/{managedDeviceId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md) object.
The following table shows the properties that are required when you create a [windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md).

|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|userId|String|Unique Identifier for the user associated with the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|deviceName|String|Name of the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|hardwareInformation|[hardwareInformation](../resources/intune_devices_hardwareinformation.md)|The hardward details for the device.  Includes information such as storage space, manufacturer, serial number, etc. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|ownerType|String|Ownership of the device. Can be 'company' or 'personal' Inherited from [managedDevice](../resources/intune_devices_manageddevice.md) Possible values are: `unknown`, `company`, `personal`.|
|deviceActionResults|[deviceActionResult](../resources/intune_devices_deviceactionresult.md) collection|List of ComplexType deviceActionResult objects. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|managementState|String|Management state of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md) Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|enrolledDateTime|DateTimeOffset|Enrollment time of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|lastSyncDateTime|DateTimeOffset|The date and time that the device last completed a successful sync with Intune. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|chassisType|String|Chassis type of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md) Possible values are: `unknown`, `desktop`, `laptop`, `worksWorkstation`, `enterpriseServer`, `phone`, `tablet`, `mobileOther`, `mobileUnknown`.|
|operatingSystem|String|Operating system of the device. Windows, iOS, etc. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|deviceType|String|Platform of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md) Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `windowsBlue`, `windowsPhoneBlue`, `blackberry`, `palm`, `fakeDevice`, `unknown`.|
|complianceState|String|Compliance state of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md) Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`.|
|jailBroken|String|whether the device is jail broken or rooted. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|managementAgent|String|Management channel of the device. Intune, EAS, etc. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md) Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configManagerClient`, `unknown`.|
|osVersion|String|Operating system version of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|easActivated|Boolean|Whether the device is Exchange ActiveSync activated. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|easDeviceId|String|Exchange ActiveSync Id of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|easActivationDateTime|DateTimeOffset|Exchange ActivationSync activation time of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|aadRegistered|Boolean|Whether the device is Azure Active Directory registered. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|enrollmentType|String|Enrollment type of the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md) Possible values are: `unknown`, `userEnrollment`, `deviceEnrollment`, `deviceEnrollmentWithUDA`, `azureDomainJoined`, `userEnrollmentWithServiceAccount`, `depDeviceEnrollment`, `depDeviceEnrollmentWithUDA`, `autoEnrollment`.|
|lostModeState|String|Indicates if Lost mode is enabled or disabled Inherited from [managedDevice](../resources/intune_devices_manageddevice.md) Possible values are: `disabled`, `enabled`.|
|activationLockBypassCode|String|Code that allows the Activation Lock on a device to be bypassed. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|emailAddress|String|Email(s) for the user associated with the device Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|azureActiveDirectoryDeviceId|String|The unique identifier for the Azure Active Directory device. Read only. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|deviceRegistrationState|String|Device registration state. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md) Possible values are: `notRegistered`, `smsidConflict`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `resetCert`, `notRegisteredPendingEnrollment`, `unknown`.|
|deviceCategoryDisplayName|String|Device category display name Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|isSupervised|Boolean|Device supervised status Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|exchangeLastSuccessfulSyncDateTime|DateTimeOffset|Last time the device contacted Exchange. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
|exchangeAccessState|String|The Access State of the device in Exchange. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md) Possible values are: `none`, `unknown`, `allowed`, `blocked`, `quarantined`.|
|exchangeAccessStateReason|String|The reason for the device's access state in Exchange. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md) Possible values are: `none`, `unknown`, `exchangeGlobalRule`, `exchangeIndividualRule`, `exchangeDeviceRule`, `exchangeUpgrade`, `exchangeMailboxPolicy`, `other`, `compliant`, `notCompliant`, `notEnrolled`, `unknownLocation`, `mfaRequired`, `azureADBlockDueToAccessPolicy`, `compromisedPassword`, `deviceNotKnownWithManagedApp`.|
|remoteAssistanceSessionUrl|String|Url that allows a Remote Assistance session to be established with the device. Inherited from [managedDevice](../resources/intune_devices_manageddevice.md)|
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

## Response

If successful, this method returns a `200 OK` response code and an updated [windowsManagedDevice](../resources/intune_devices_windowsmanageddevice.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/managedDevices/{managedDevicesId}
Content-type: application/json
Content-length: 2977

{
  "userId": "User Id value",
  "deviceName": "Device Name value",
  "hardwareInformation": {
    "@odata.type": "microsoft.graph.hardwareInformation",
    "serialNumber": "Serial Number value",
    "totalStorageSpace": 1,
    "freeStorageSpace": 0,
    "imei": "Imei value",
    "meid": "Meid value",
    "manufacturer": "Manufacturer value",
    "model": "Model value",
    "phoneNumber": "Phone Number value",
    "subscriberCarrier": "Subscriber Carrier value",
    "cellularTechnology": "Cellular Technology value",
    "wifiMac": "Wifi Mac value",
    "operatingSystemLanguage": "Operating System Language value",
    "isSupervised": true,
    "isEncrypted": true,
    "isSharedDevice": true,
    "sharedDeviceCachedUsers": [
      {
        "@odata.type": "microsoft.graph.sharedAppleDeviceUser",
        "userPrincipalName": "User Principal Name value",
        "dataToSync": true,
        "dataQuota": 9,
        "dataUsed": 8
      }
    ]
  },
  "ownerType": "company",
  "deviceActionResults": [
    {
      "@odata.type": "microsoft.graph.deviceActionResult",
      "actionName": "Action Name value",
      "actionState": "pending",
      "startDateTime": "2016-12-31T23:58:46.7156189-08:00",
      "lastUpdatedDateTime": "2017-01-01T00:00:56.8321556-08:00"
    }
  ],
  "managementState": "retirePending",
  "enrolledDateTime": "2016-12-31T23:59:43.797191-08:00",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
  "chassisType": "desktop",
  "operatingSystem": "Operating System value",
  "deviceType": "windowsRT",
  "complianceState": "compliant",
  "jailBroken": "Jail Broken value",
  "managementAgent": "mdm",
  "osVersion": "Os Version value",
  "easActivated": true,
  "easDeviceId": "Eas Device Id value",
  "easActivationDateTime": "2016-12-31T23:59:43.4878784-08:00",
  "aadRegistered": true,
  "enrollmentType": "userEnrollment",
  "lostModeState": "enabled",
  "activationLockBypassCode": "Activation Lock Bypass Code value",
  "emailAddress": "Email Address value",
  "azureActiveDirectoryDeviceId": "Azure Active Directory Device Id value",
  "deviceRegistrationState": "smsidConflict",
  "deviceCategoryDisplayName": "Device Category Display Name value",
  "isSupervised": true,
  "exchangeLastSuccessfulSyncDateTime": "2017-01-01T00:00:45.8803083-08:00",
  "exchangeAccessState": "unknown",
  "exchangeAccessStateReason": "unknown",
  "remoteAssistanceSessionUrl": "https://example.com/remoteAssistanceSessionUrl/",
  "isEncrypted": true,
  "userPrincipalName": "User Principal Name value",
  "model": "Model value",
  "manufacturer": "Manufacturer value",
  "imei": "Imei value",
  "complianceGracePeriodExpirationDateTime": "2016-12-31T23:56:44.951111-08:00",
  "serialNumber": "Serial Number value",
  "phoneNumber": "Phone Number value",
  "androidSecurityPatchLevel": "Android Security Patch Level value",
  "userDisplayName": "User Display Name value"
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 3085

{
  "@odata.type": "#microsoft.graph.windowsManagedDevice",
  "id": "97842b67-2b67-9784-672b-8497672b8497",
  "userId": "User Id value",
  "deviceName": "Device Name value",
  "hardwareInformation": {
    "@odata.type": "microsoft.graph.hardwareInformation",
    "serialNumber": "Serial Number value",
    "totalStorageSpace": 1,
    "freeStorageSpace": 0,
    "imei": "Imei value",
    "meid": "Meid value",
    "manufacturer": "Manufacturer value",
    "model": "Model value",
    "phoneNumber": "Phone Number value",
    "subscriberCarrier": "Subscriber Carrier value",
    "cellularTechnology": "Cellular Technology value",
    "wifiMac": "Wifi Mac value",
    "operatingSystemLanguage": "Operating System Language value",
    "isSupervised": true,
    "isEncrypted": true,
    "isSharedDevice": true,
    "sharedDeviceCachedUsers": [
      {
        "@odata.type": "microsoft.graph.sharedAppleDeviceUser",
        "userPrincipalName": "User Principal Name value",
        "dataToSync": true,
        "dataQuota": 9,
        "dataUsed": 8
      }
    ]
  },
  "ownerType": "company",
  "deviceActionResults": [
    {
      "@odata.type": "microsoft.graph.deviceActionResult",
      "actionName": "Action Name value",
      "actionState": "pending",
      "startDateTime": "2016-12-31T23:58:46.7156189-08:00",
      "lastUpdatedDateTime": "2017-01-01T00:00:56.8321556-08:00"
    }
  ],
  "managementState": "retirePending",
  "enrolledDateTime": "2016-12-31T23:59:43.797191-08:00",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
  "chassisType": "desktop",
  "operatingSystem": "Operating System value",
  "deviceType": "windowsRT",
  "complianceState": "compliant",
  "jailBroken": "Jail Broken value",
  "managementAgent": "mdm",
  "osVersion": "Os Version value",
  "easActivated": true,
  "easDeviceId": "Eas Device Id value",
  "easActivationDateTime": "2016-12-31T23:59:43.4878784-08:00",
  "aadRegistered": true,
  "enrollmentType": "userEnrollment",
  "lostModeState": "enabled",
  "activationLockBypassCode": "Activation Lock Bypass Code value",
  "emailAddress": "Email Address value",
  "azureActiveDirectoryDeviceId": "Azure Active Directory Device Id value",
  "deviceRegistrationState": "smsidConflict",
  "deviceCategoryDisplayName": "Device Category Display Name value",
  "isSupervised": true,
  "exchangeLastSuccessfulSyncDateTime": "2017-01-01T00:00:45.8803083-08:00",
  "exchangeAccessState": "unknown",
  "exchangeAccessStateReason": "unknown",
  "remoteAssistanceSessionUrl": "https://example.com/remoteAssistanceSessionUrl/",
  "isEncrypted": true,
  "userPrincipalName": "User Principal Name value",
  "model": "Model value",
  "manufacturer": "Manufacturer value",
  "imei": "Imei value",
  "complianceGracePeriodExpirationDateTime": "2016-12-31T23:56:44.951111-08:00",
  "serialNumber": "Serial Number value",
  "phoneNumber": "Phone Number value",
  "androidSecurityPatchLevel": "Android Security Patch Level value",
  "userDisplayName": "User Display Name value"
}
```



