# iosEasEmailProfileConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

By providing configurations in this profile you can instruct the native email client on iOS devices to communicate with an Exchange server and get email, contacts, calendar, reminders, and notes. Furthermore, you can also specify how much email to sync and how often the device should sync.

Inherits from [easEmailProfileConfigurationBase](../resources/intune_deviceconfig_easemailprofileconfigurationbase.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosEasEmailProfileConfigurations](../api/intune_deviceconfig_ioseasemailprofileconfiguration_list.md)|[iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_ioseasemailprofileconfiguration.md) collection|List properties and relationships of the [iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_ioseasemailprofileconfiguration.md) objects.|
|[Get iosEasEmailProfileConfiguration](../api/intune_deviceconfig_ioseasemailprofileconfiguration_get.md)|[iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_ioseasemailprofileconfiguration.md)|Read properties and relationships of the [iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_ioseasemailprofileconfiguration.md) object.|
|[Create iosEasEmailProfileConfiguration](../api/intune_deviceconfig_ioseasemailprofileconfiguration_create.md)|[iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_ioseasemailprofileconfiguration.md)|Create a new [iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_ioseasemailprofileconfiguration.md) object.|
|[Delete iosEasEmailProfileConfiguration](../api/intune_deviceconfig_ioseasemailprofileconfiguration_delete.md)|None|Deletes a [iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_ioseasemailprofileconfiguration.md).|
|[Update iosEasEmailProfileConfiguration](../api/intune_deviceconfig_ioseasemailprofileconfiguration_update.md)|[iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_ioseasemailprofileconfiguration.md)|Update the properties of a [iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_ioseasemailprofileconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|usernameSource|[userEmailSource](../resources/intune_deviceconfig_useremailsource.md)|Username attribute that is picked from AAD and injected into this profile before installing on the device. Inherited from [easEmailProfileConfigurationBase](../resources/intune_deviceconfig_easemailprofileconfigurationbase.md). Possible values are: `userPrincipalName`, `primarySmtpAddress`.|
|usernameAADSource|[usernameSource](../resources/intune_deviceconfig_usernamesource.md)|Name of the AAD field, that will be used to retrieve UserName for email profile. Inherited from [easEmailProfileConfigurationBase](../resources/intune_deviceconfig_easemailprofileconfigurationbase.md). Possible values are: `userPrincipalName`, `primarySmtpAddress`, `samAccountName`.|
|userDomainNameSource|[domainNameSource](../resources/intune_deviceconfig_domainnamesource.md)|UserDomainname attribute that is picked from AAD and injected into this profile before installing on the device. Inherited from [easEmailProfileConfigurationBase](../resources/intune_deviceconfig_easemailprofileconfigurationbase.md). Possible values are: `fullDomainName`, `netBiosDomainName`.|
|customDomainName|String|Custom domain name value used while generating an email profile before installing on the device. Inherited from [easEmailProfileConfigurationBase](../resources/intune_deviceconfig_easemailprofileconfigurationbase.md)|
|accountName|String|Account name.|
|authenticationMethod|[easAuthenticationMethod](../resources/intune_deviceconfig_easauthenticationmethod.md)|Authentication method for this Email profile. Possible values are: `usernameAndPassword`, `certificate`.|
|blockMovingMessagesToOtherEmailAccounts|Boolean|Indicates whether or not to block moving messages to other email accounts.|
|blockSendingEmailFromThirdPartyApps|Boolean|Indicates whether or not to block sending email from third party apps.|
|blockSyncingRecentlyUsedEmailAddresses|Boolean|Indicates whether or not to block syncing recently used email addresses, for instance - when composing new email.|
|durationOfEmailToSync|[emailSyncDuration](../resources/intune_deviceconfig_emailsyncduration.md)|Duration of time email should be synced back to. . Possible values are: `userDefined`, `oneDay`, `threeDays`, `oneWeek`, `twoWeeks`, `oneMonth`, `unlimited`.|
|emailAddressSource|[userEmailSource](../resources/intune_deviceconfig_useremailsource.md)|Email attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: `userPrincipalName`, `primarySmtpAddress`.|
|hostName|String|Exchange location that (URL) that the native mail app connects to.|
|requireSmime|Boolean|Indicates whether or not to use S/MIME certificate.|
|smimeEnablePerMessageSwitch|Boolean|Indicates whether or not to allow unencrypted emails.|
|requireSsl|Boolean|Indicates whether or not to use SSL.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|assignments|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation status by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune_deviceconfig_settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|identityCertificate|[iosCertificateProfileBase](../resources/intune_deviceconfig_ioscertificateprofilebase.md)|Identity certificate.|
|smimeSigningCertificate|[iosCertificateProfile](../resources/intune_deviceconfig_ioscertificateprofile.md)|S/MIME signing certificate.|
|smimeEncryptionCertificate|[iosCertificateProfile](../resources/intune_deviceconfig_ioscertificateprofile.md)|S/MIME encryption certificate.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosEasEmailProfileConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosEasEmailProfileConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "usernameSource": "String",
  "usernameAADSource": "String",
  "userDomainNameSource": "String",
  "customDomainName": "String",
  "accountName": "String",
  "authenticationMethod": "String",
  "blockMovingMessagesToOtherEmailAccounts": true,
  "blockSendingEmailFromThirdPartyApps": true,
  "blockSyncingRecentlyUsedEmailAddresses": true,
  "durationOfEmailToSync": "String",
  "emailAddressSource": "String",
  "hostName": "String",
  "requireSmime": true,
  "smimeEnablePerMessageSwitch": true,
  "requireSsl": true
}
```



