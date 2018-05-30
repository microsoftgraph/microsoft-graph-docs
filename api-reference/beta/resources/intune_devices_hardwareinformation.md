# hardwareInformation resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Hardware information of a given device.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|serialNumber|String|Serial number.|
|totalStorageSpace|Int64|Total storage space of the device.|
|freeStorageSpace|Int64|Free storage space of the device.|
|imei|String|IMEI|
|meid|String|MEID|
|manufacturer|String|Manufacturer of the device|
|model|String|Model of the device|
|phoneNumber|String|Phone number of the device|
|subscriberCarrier|String|Subscriber carrier of the device|
|cellularTechnology|String|Cellular technology of the device|
|wifiMac|String|WiFi MAC address of the device|
|operatingSystemLanguage|String|Operating system language of the device|
|isSupervised|Boolean|Supervised mode of the device|
|isEncrypted|Boolean|Encryption status of the device|
|isSharedDevice|Boolean|Shared iPad|
|sharedDeviceCachedUsers|[sharedAppleDeviceUser](../resources/intune_devices_sharedappledeviceuser.md) collection|All users on the shared Apple device|
|tpmSpecificationVersion|String|String that specifies the specification version.|
|operatingSystemEdition|String|String that specifies the OS edition.|
|deviceFullQualifiedDomainName|String|Returns the fully qualified domain name of the device (if any). If the device is not domain-joined, it returns an empty string. |
|deviceGuardVirtualizationBasedSecurityHardwareRequirementState|[deviceGuardVirtualizationBasedSecurityHardwareRequirementState](../resources/intune_devices_deviceguardvirtualizationbasedsecurityhardwarerequirementstate.md)|Virtualization-based security hardware requirement status. Possible values are: `meetHardwareRequirements`, `secureBootRequired`, `dmaProtectionRequired`, `hyperVNotSupportedForGuestVM`, `hyperVNotAvailable`.|
|deviceGuardVirtualizationBasedSecurityState|[deviceGuardVirtualizationBasedSecurityState](../resources/intune_devices_deviceguardvirtualizationbasedsecuritystate.md)|Virtualization-based security status. . Possible values are: `running`, `rebootRequired`, `require64BitArchitecture`, `notLicensed`, `notConfigured`, `doesNotMeetHardwareRequirements`, `other`.|
|deviceGuardLocalSystemAuthorityCredentialGuardState|[deviceGuardLocalSystemAuthorityCredentialGuardState](../resources/intune_devices_deviceguardlocalsystemauthoritycredentialguardstate.md)|Local System Authority (LSA) credential guard status. . Possible values are: `running`, `rebootRequired`, `notLicensed`, `notConfigured`, `virtualizationBasedSecurityNotRunning`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.hardwareInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwareInformation",
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
}
```



