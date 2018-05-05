# windowsInformationProtectionPolicy resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Policy for Windows information protection without MDM

Inherits from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsInformationProtectionPolicies](../api/intune_mam_windowsinformationprotectionpolicy_list.md)|[windowsInformationProtectionPolicy](../resources/intune_mam_windowsinformationprotectionpolicy.md) collection|List properties and relationships of the [windowsInformationProtectionPolicy](../resources/intune_mam_windowsinformationprotectionpolicy.md) objects.|
|[Get windowsInformationProtectionPolicy](../api/intune_mam_windowsinformationprotectionpolicy_get.md)|[windowsInformationProtectionPolicy](../resources/intune_mam_windowsinformationprotectionpolicy.md)|Read properties and relationships of the [windowsInformationProtectionPolicy](../resources/intune_mam_windowsinformationprotectionpolicy.md) object.|
|[Create windowsInformationProtectionPolicy](../api/intune_mam_windowsinformationprotectionpolicy_create.md)|[windowsInformationProtectionPolicy](../resources/intune_mam_windowsinformationprotectionpolicy.md)|Create a new [windowsInformationProtectionPolicy](../resources/intune_mam_windowsinformationprotectionpolicy.md) object.|
|[Delete windowsInformationProtectionPolicy](../api/intune_mam_windowsinformationprotectionpolicy_delete.md)|None|Deletes a [windowsInformationProtectionPolicy](../resources/intune_mam_windowsinformationprotectionpolicy.md).|
|[Update windowsInformationProtectionPolicy](../api/intune_mam_windowsinformationprotectionpolicy_update.md)|[windowsInformationProtectionPolicy](../resources/intune_mam_windowsinformationprotectionpolicy.md)|Update the properties of a [windowsInformationProtectionPolicy](../resources/intune_mam_windowsinformationprotectionpolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|createdDateTime|DateTimeOffset|The date and time the policy was created. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|lastModifiedDateTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|enforcementLevel|[windowsInformationProtectionEnforcementLevel](../resources/intune_mam_windowsinformationprotectionenforcementlevel.md)|WIP enforcement level.See the Enum definition for supported values Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md). Possible values are: `noProtection`, `encryptAndAuditOnly`, `encryptAuditAndPrompt`, `encryptAuditAndBlock`.|
|enterpriseDomain|String|Primary enterprise domain Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|enterpriseProtectedDomainNames|[windowsInformationProtectionResourceCollection](../resources/intune_mam_windowsinformationprotectionresourcecollection.md) collection|List of enterprise domains to be protected Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|protectionUnderLockConfigRequired|Boolean|Specifies whether the protection under lock feature (also known as encrypt under pin) should be configured Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|dataRecoveryCertificate|[windowsInformationProtectionDataRecoveryCertificate](../resources/intune_mam_windowsinformationprotectiondatarecoverycertificate.md)|Specifies a recovery certificate that can be used for data recovery of encrypted files. This is the same as the data recovery agent(DRA) certificate for encrypting file system(EFS) Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|revokeOnUnenrollDisabled|Boolean|This policy controls whether to revoke the WIP keys when a device unenrolls from the management service. If set to 1 (Don't revoke keys), the keys will not be revoked and the user will continue to have access to protected files after unenrollment. If the keys are not revoked, there will be no revoked file cleanup subsequently. Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|rightsManagementServicesTemplateId|Guid|TemplateID GUID to use for RMS encryption. The RMS template allows the IT admin to configure the details about who has access to RMS-protected file and how long they have access Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|azureRightsManagementServicesAllowed|Boolean|Specifies whether to allow Azure RMS encryption for WIP Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|iconsVisible|Boolean|Determines whether overlays are added to icons for WIP protected files in Explorer and enterprise only app tiles in the Start menu. Starting in Windows 10, version 1703 this setting also configures the visibility of the WIP icon in the title bar of a WIP-protected app Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|protectedApps|[windowsInformationProtectionApp](../resources/intune_mam_windowsinformationprotectionapp.md) collection|Protected applications can access enterprise data and the data handled by those applications are protected with encryption Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|exemptApps|[windowsInformationProtectionApp](../resources/intune_mam_windowsinformationprotectionapp.md) collection|Exempt applications can also access enterprise data, but the data handled by those applications are not protected. This is because some critical enterprise applications may have compatibility problems with encrypted data. Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|enterpriseNetworkDomainNames|[windowsInformationProtectionResourceCollection](../resources/intune_mam_windowsinformationprotectionresourcecollection.md) collection|This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected These locations will be considered a safe destination for enterprise data to be shared to Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|enterpriseProxiedDomains|[windowsInformationProtectionProxiedDomainCollection](../resources/intune_mam_windowsinformationprotectionproxieddomaincollection.md) collection|Contains a list of Enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the EnterpriseInternalProxyServers policy Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|enterpriseIPRanges|[windowsInformationProtectionIPRangeCollection](../resources/intune_mam_windowsinformationprotectioniprangecollection.md) collection|Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|enterpriseIPRangesAreAuthoritative|Boolean|Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets. Default is false Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|enterpriseProxyServers|[windowsInformationProtectionResourceCollection](../resources/intune_mam_windowsinformationprotectionresourcecollection.md) collection|This is a list of proxy servers. Any server not on this list is considered non-enterprise Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|enterpriseInternalProxyServers|[windowsInformationProtectionResourceCollection](../resources/intune_mam_windowsinformationprotectionresourcecollection.md) collection|This is the comma-separated list of internal proxy servers. For example, "157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59". These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the EnterpriseProxiedDomains policy to force traffic to the matched domains through these proxies Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|enterpriseProxyServersAreAuthoritative|Boolean|Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies. Default is false Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|neutralDomainResources|[windowsInformationProtectionResourceCollection](../resources/intune_mam_windowsinformationprotectionresourcecollection.md) collection|List of domain names that can used for work or personal resource Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|indexingEncryptedStoresOrItemsBlocked|Boolean|This switch is for the Windows Search Indexer, to allow or disallow indexing of items Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|smbAutoEncryptedFileExtensions|[windowsInformationProtectionResourceCollection](../resources/intune_mam_windowsinformationprotectionresourcecollection.md) collection|Specifies a list of file extensions, so that files with these extensions are encrypted when copying from an SMB share within the corporate boundary Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|isAssigned|Boolean|Indicates if the policy is deployed to any inclusion groups or not. Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|revokeOnMdmHandoffDisabled|Boolean|New property in RS2, pending documentation|
|mdmEnrollmentUrl|String|Enrollment url for the MDM|
|windowsHelloForBusinessBlocked|Boolean|Boolean value that sets Windows Hello for Business as a method for signing into Windows.|
|pinMinimumLength|Int32|Integer value that sets the minimum number of characters required for the PIN. Default value is 4. The lowest number you can configure for this policy setting is 4. The largest number you can configure must be less than the number configured in the Maximum PIN length policy setting or the number 127, whichever is the lowest.|
|pinUppercaseLetters|[windowsInformationProtectionPinCharacterRequirements](../resources/intune_mam_windowsinformationprotectionpincharacterrequirements.md)|Integer value that configures the use of uppercase letters in the Windows Hello for Business PIN. Default is NotAllow. Possible values are: `notAllow`, `requireAtLeastOne`, `allow`.|
|pinLowercaseLetters|[windowsInformationProtectionPinCharacterRequirements](../resources/intune_mam_windowsinformationprotectionpincharacterrequirements.md)|Integer value that configures the use of lowercase letters in the Windows Hello for Business PIN. Default is NotAllow. Possible values are: `notAllow`, `requireAtLeastOne`, `allow`.|
|pinSpecialCharacters|[windowsInformationProtectionPinCharacterRequirements](../resources/intune_mam_windowsinformationprotectionpincharacterrequirements.md)|Integer value that configures the use of special characters in the Windows Hello for Business PIN. Valid special characters for Windows Hello for Business PIN gestures include: ! " # $ % & ' ( ) * + , - . / : ; < = > ? @ \[ \ \] ^ _ ` { | } ~. Default is NotAllow. Possible values are: `notAllow`, `requireAtLeastOne`, `allow`.|
|pinExpirationDays|Int32|Integer value specifies the period of time (in days) that a PIN can be used before the system requires the user to change it. The largest number you can configure for this policy setting is 730. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then the user's PIN will never expire. This node was added in Windows 10, version 1511. Default is 0.|
|numberOfPastPinsRemembered|Int32|Integer value that specifies the number of past PINs that can be associated to a user account that can't be reused. The largest number you can configure for this policy setting is 50. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then storage of previous PINs is not required. This node was added in Windows 10, version 1511. Default is 0.|
|passwordMaximumAttemptCount|Int32|The number of authentication failures allowed before the device will be wiped. A value of 0 disables device wipe functionality. Range is an integer X where 4 <= X <= 16 for desktop and 0 <= X <= 999 for mobile devices.|
|minutesOfInactivityBeforeDeviceLock|Int32|Specifies the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked.   Range is an integer X where 0 <= X <= 999.|
|daysWithoutContactBeforeUnenroll|Int32|Offline interval before app data is wiped (days) |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|protectedAppLockerFiles|[windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md) collection|Another way to input protected apps through xml files Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|exemptAppLockerFiles|[windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md) collection|Another way to input exempt apps through xml files Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|
|assignments|[targetedManagedAppPolicyAssignment](../resources/intune_mam_targetedmanagedapppolicyassignment.md) collection|Navigation property to list of security groups targeted for policy. Inherited from [windowsInformationProtection](../resources/intune_mam_windowsinformationprotection.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionPolicy",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "version": "String",
  "enforcementLevel": "String",
  "enterpriseDomain": "String",
  "enterpriseProtectedDomainNames": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionResourceCollection",
      "displayName": "String",
      "resources": [
        "String"
      ]
    }
  ],
  "protectionUnderLockConfigRequired": true,
  "dataRecoveryCertificate": {
    "@odata.type": "microsoft.graph.windowsInformationProtectionDataRecoveryCertificate",
    "subjectName": "String",
    "description": "String",
    "expirationDateTime": "String (timestamp)",
    "certificate": "binary"
  },
  "revokeOnUnenrollDisabled": true,
  "rightsManagementServicesTemplateId": "<Unknown Primitive Type Edm.Guid>",
  "azureRightsManagementServicesAllowed": true,
  "iconsVisible": true,
  "protectedApps": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionStoreApp",
      "displayName": "String",
      "description": "String",
      "publisherName": "String",
      "productName": "String",
      "denied": true
    }
  ],
  "exemptApps": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionStoreApp",
      "displayName": "String",
      "description": "String",
      "publisherName": "String",
      "productName": "String",
      "denied": true
    }
  ],
  "enterpriseNetworkDomainNames": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionResourceCollection",
      "displayName": "String",
      "resources": [
        "String"
      ]
    }
  ],
  "enterpriseProxiedDomains": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionProxiedDomainCollection",
      "displayName": "String",
      "proxiedDomains": [
        {
          "@odata.type": "microsoft.graph.proxiedDomain",
          "ipAddressOrFQDN": "String",
          "proxy": "String"
        }
      ]
    }
  ],
  "enterpriseIPRanges": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionIPRangeCollection",
      "displayName": "String",
      "ranges": [
        {
          "@odata.type": "microsoft.graph.iPv6Range",
          "lowerAddress": "String",
          "upperAddress": "String"
        }
      ]
    }
  ],
  "enterpriseIPRangesAreAuthoritative": true,
  "enterpriseProxyServers": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionResourceCollection",
      "displayName": "String",
      "resources": [
        "String"
      ]
    }
  ],
  "enterpriseInternalProxyServers": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionResourceCollection",
      "displayName": "String",
      "resources": [
        "String"
      ]
    }
  ],
  "enterpriseProxyServersAreAuthoritative": true,
  "neutralDomainResources": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionResourceCollection",
      "displayName": "String",
      "resources": [
        "String"
      ]
    }
  ],
  "indexingEncryptedStoresOrItemsBlocked": true,
  "smbAutoEncryptedFileExtensions": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionResourceCollection",
      "displayName": "String",
      "resources": [
        "String"
      ]
    }
  ],
  "isAssigned": true,
  "revokeOnMdmHandoffDisabled": true,
  "mdmEnrollmentUrl": "String",
  "windowsHelloForBusinessBlocked": true,
  "pinMinimumLength": 1024,
  "pinUppercaseLetters": "String",
  "pinLowercaseLetters": "String",
  "pinSpecialCharacters": "String",
  "pinExpirationDays": 1024,
  "numberOfPastPinsRemembered": 1024,
  "passwordMaximumAttemptCount": 1024,
  "minutesOfInactivityBeforeDeviceLock": 1024,
  "daysWithoutContactBeforeUnenroll": 1024
}
```



