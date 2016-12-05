# iosEasEmailProfileConfiguration resource type

By providing configurations in this profile you can instruct the native email client on iOS devices to communicate with an Exchange server and get email, contacts, calendar, reminders, and notes. Furthermore, you can also specify how much email to sync and how often the device should sync.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosEasEmailProfileConfigurations](../api/intune_deviceconfig_iosEasEmailProfileConfiguration_list.md)|[iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_iosEasEmailProfileConfiguration.md) collection|List properties and relationships of the [iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_iosEasEmailProfileConfiguration.md) objects.|
|[Get iosEasEmailProfileConfiguration](../api/intune_deviceconfig_iosEasEmailProfileConfiguration_get.md)|[iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_iosEasEmailProfileConfiguration.md)|Read properties and relationships of the [iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_iosEasEmailProfileConfiguration.md) object.|
|[Create iosEasEmailProfileConfiguration](../api/intune_deviceconfig_iosEasEmailProfileConfiguration_create.md)|[iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_iosEasEmailProfileConfiguration.md)|Create a new [iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_iosEasEmailProfileConfiguration.md) object.|
|[Delete iosEasEmailProfileConfiguration](../api/intune_deviceconfig_iosEasEmailProfileConfiguration_delete.md)|None|Deletes a [iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_iosEasEmailProfileConfiguration.md).|
|[Update iosEasEmailProfileConfiguration](../api/intune_deviceconfig_iosEasEmailProfileConfiguration_update.md)|[iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_iosEasEmailProfileConfiguration.md)|Update the properties of a [iosEasEmailProfileConfiguration](../resources/intune_deviceconfig_iosEasEmailProfileConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_iosEasEmailProfileConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_iosEasEmailProfileConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_iosEasEmailProfileConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get iosCertificateProfileBase](../api/intune_deviceconfig_iosEasEmailProfileConfiguration_get_iosCertificateProfileBase.md)|[iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md)|Get the [iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md) from the identityCertificate navigation property.|
|[Get iosCertificateProfileBase](../api/intune_deviceconfig_iosEasEmailProfileConfiguration_get_iosCertificateProfileBase.md)|[iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md)|Get the [iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md) from the smimeSigningCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|accountName|String|Account name.|
|authenticationMethod|String|Authentication method for this Email profile. Possible values are: `usernameAndPassword`, `certificate`.|
|blockMovingMessagesToOtherEmailAccounts|Boolean|Indicates whether or not to block moving messages to other email accounts.|
|blockSendingEmailFromThirdPartyApps|Boolean|Indicates whether or not to block sending email from third party apps.|
|blockSyncingRecentlyUsedEmailAddresses|Boolean|Indicates whether or not to block syncing recently used email addresses, for instance - when composing new email.|
|durationOfEmailToSync|String|Duration of time email should be synced back to.  Possible values are: `userDefined`, `oneDay`, `threeDays`, `oneWeek`, `twoWeeks`, `oneMonth`, `unlimited`.|
|emailAddressSource|String|Email attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: `userPrincipalName`, `primarySmtpAddress`.|
|hostName|String|Exchange location that (URL) that the native mail app connects to.|
|requireSmime|Boolean|Indicates whether or not to use S/MIME certificate.|
|requireSsl|Boolean|Indicates whether or not to use SSL.|
|usernameSource|String|Username attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: `userPrincipalName`, `primarySmtpAddress`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|identityCertificate|[iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md)|Identity certificate.|
|smimeSigningCertificate|[iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md)|S/MIME signing certificate.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosEasEmailProfileConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosEasEmailProfileConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "accountName": "String",
  "authenticationMethod": "String",
  "blockMovingMessagesToOtherEmailAccounts": true,
  "blockSendingEmailFromThirdPartyApps": true,
  "blockSyncingRecentlyUsedEmailAddresses": true,
  "durationOfEmailToSync": "String",
  "emailAddressSource": "String",
  "hostName": "String",
  "requireSmime": true,
  "requireSsl": true,
  "usernameSource": "String"
}
```


