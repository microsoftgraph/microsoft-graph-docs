# Create managedDevice

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [managedDevice](../resources/intune_devicefe_manageddevice.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementManagedDevices.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /managedDevices/
POST /users/{usersId}/managedDevices/
POST /managedDevices/{managedDevicesId}/detectedApps/{detectedAppId}/managedDevices/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a managedDevice object.
The following table shows the properties that are required when you create a managedDevice.

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
|deviceRegistrationState|String|Device registration state. Possible values are: `notRegistered`, `smsidConflict`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `resetCert`, `notRegisteredPendingEnrollment`, `unknown`.|
|deviceCategoryDisplayName|String|Device category display name|
|isSupervised|Boolean|Not yet documented|
|exchangeLastSuccessfulSyncDateTime|DateTimeOffset|Last time the device contacted Exchange.|
|exchangeAccessState|String|The Access State of the device in Exchange. Possible values are: `none`, `unknown`, `allowed`, `blocked`, `quarantined`.|
|exchangeAccessStateReason|String|The reason for the device's access state in Exchange. Possible values are: `none`, `unknown`, `exchangeGlobalRule`, `exchangeIndividualRule`, `exchangeDeviceRule`, `exchangeUpgrade`, `exchangeMailboxPolicy`, `other`, `compliant`, `notCompliant`, `notEnrolled`, `unknownLocation`, `mfaRequired`, `azureADBlockDueToAccessPolicy`, `compromisedPassword`, `deviceNotKnownWithManagedApp`.|

## Response

If successful, this method returns a `201 Created` response code and a [managedDevice](../resources/intune_devicefe_manageddevice.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/managedDevices/
Content-type: application/json
Content-length: 2228

{
  "@odata.type": "#microsoft.graph.managedDevice",
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
    "isEncrypted": true
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
  "managementAgents": 0,
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
  "exchangeAccessStateReason": "unknown"
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 2277

{
  "@odata.type": "#microsoft.graph.managedDevice",
  "id": "705c034c-034c-705c-4c03-5c704c035c70",
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
    "isEncrypted": true
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
  "managementAgents": 0,
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
  "exchangeAccessStateReason": "unknown"
}
```



