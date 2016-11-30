# iosEasEmailProfileConfiguration resource type

By providing configurations in this profile you can instruct the native email client on iOS devices to communicate with an Exchange server and get email, contacts, calendar, reminders, and notes. Furthermore, you can also specify how much email to sync and how often the device should sync.

Inherits from [deviceConfiguration](deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosEasEmailProfileConfigurations](../api/iosEasEmailProfileConfiguration_list.md)|[iosEasEmailProfileConfiguration](iosEasEmailProfileConfiguration.md) collection|List properties and relationships of the [iosEasEmailProfileConfiguration](../resource/iosEasEmailProfileConfiguration.md) objects.|
|[Get iosEasEmailProfileConfiguration](../api/iosEasEmailProfileConfiguration_get.md)|[iosEasEmailProfileConfiguration](iosEasEmailProfileConfiguration.md)|Read properties and relationships of the [iosEasEmailProfileConfiguration](../resource/iosEasEmailProfileConfiguration.md) object.|
|[Create iosEasEmailProfileConfiguration](../api/iosEasEmailProfileConfiguration_create.md)|[iosEasEmailProfileConfiguration](iosEasEmailProfileConfiguration.md)|Create a new [iosEasEmailProfileConfiguration](../resource/iosEasEmailProfileConfiguration.md) object.|
|[Delete iosEasEmailProfileConfiguration](../api/iosEasEmailProfileConfiguration_delete.md)|None|Deletes a [iosEasEmailProfileConfiguration](../resource/iosEasEmailProfileConfiguration.md).|
|[Update iosEasEmailProfileConfiguration](../api/iosEasEmailProfileConfiguration_update.md)|[iosEasEmailProfileConfiguration](iosEasEmailProfileConfiguration.md)|Update the properties of a [iosEasEmailProfileConfiguration](../resource/iosEasEmailProfileConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/iosEasEmailProfileConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/iosEasEmailProfileConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/iosEasEmailProfileConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get iosCertificateProfileBase](../api/iosEasEmailProfileConfiguration_get_iosCertificateProfileBase.md)|[iosCertificateProfileBase](iosCertificateProfileBase.md)|Get the [iosCertificateProfileBase](iosCertificateProfileBase.md) from the identityCertificate navigation property.|
|[Get iosCertificateProfileBase](../api/iosEasEmailProfileConfiguration_get_iosCertificateProfileBase.md)|[iosCertificateProfileBase](iosCertificateProfileBase.md)|Get the [iosCertificateProfileBase](iosCertificateProfileBase.md) from the smimeSigningCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
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
|groupAssignments|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|identityCertificate|[iosCertificateProfileBase](iosCertificateProfileBase.md)|Identity certificate.|
|smimeSigningCertificate|[iosCertificateProfileBase](iosCertificateProfileBase.md)|S/MIME signing certificate.|

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

