# androidEasEmailProfileConfiguration resource type

By providing configurations in this profile you can instruct the native email client on KNOX devices to communicate with an Exchange server and get email, contacts, calendar, tasks, and notes. Furthermore, you can also specify how much email to sync and how often the device should sync.

Inherits from [deviceConfiguration](deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidEasEmailProfileConfigurations](../api/androidEasEmailProfileConfiguration_list.md)|[androidEasEmailProfileConfiguration](androidEasEmailProfileConfiguration.md) collection|List properties and relationships of the [androidEasEmailProfileConfiguration](../resource/androidEasEmailProfileConfiguration.md) objects.|
|[Get androidEasEmailProfileConfiguration](../api/androidEasEmailProfileConfiguration_get.md)|[androidEasEmailProfileConfiguration](androidEasEmailProfileConfiguration.md)|Read properties and relationships of the [androidEasEmailProfileConfiguration](../resource/androidEasEmailProfileConfiguration.md) object.|
|[Create androidEasEmailProfileConfiguration](../api/androidEasEmailProfileConfiguration_create.md)|[androidEasEmailProfileConfiguration](androidEasEmailProfileConfiguration.md)|Create a new [androidEasEmailProfileConfiguration](../resource/androidEasEmailProfileConfiguration.md) object.|
|[Delete androidEasEmailProfileConfiguration](../api/androidEasEmailProfileConfiguration_delete.md)|None|Deletes a [androidEasEmailProfileConfiguration](../resource/androidEasEmailProfileConfiguration.md).|
|[Update androidEasEmailProfileConfiguration](../api/androidEasEmailProfileConfiguration_update.md)|[androidEasEmailProfileConfiguration](androidEasEmailProfileConfiguration.md)|Update the properties of a [androidEasEmailProfileConfiguration](../resource/androidEasEmailProfileConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/androidEasEmailProfileConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/androidEasEmailProfileConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/androidEasEmailProfileConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get androidCertificateProfileBase](../api/androidEasEmailProfileConfiguration_get_androidCertificateProfileBase.md)|[androidCertificateProfileBase](androidCertificateProfileBase.md)|Get the [androidCertificateProfileBase](androidCertificateProfileBase.md) from the identityCertificate navigation property.|
|[Get androidCertificateProfileBase](../api/androidEasEmailProfileConfiguration_get_androidCertificateProfileBase.md)|[androidCertificateProfileBase](androidCertificateProfileBase.md)|Get the [androidCertificateProfileBase](androidCertificateProfileBase.md) from the smimeSigningCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|accountName|String|Exchange ActiveSync account name, displayed to users as name of EAS (this) profile.|
|authenticationMethod|String|Authentication method for Exchange ActiveSync. Possible values are: `usernameAndPassword`, `certificate`.|
|syncCalendar|Boolean|Toggles syncing the calendar. If set to false calendar is turned off on the device.|
|syncContacts|Boolean|Toggles syncing contacts. If set to false contacts are turned off on the device.|
|syncTasks|Boolean|Toggles syncing tasks. If set to false tasks are turned off on the device.|
|syncNotes|Boolean|Toggles syncing notes. If set to false notes are turned off on the device.|
|durationOfEmailToSync|String|Duration of time email should be synced to. Possible values are: `userDefined`, `oneDay`, `threeDays`, `oneWeek`, `twoWeeks`, `oneMonth`, `unlimited`.|
|emailAddressSource|String|Email attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: `userPrincipalName`, `primarySmtpAddress`.|
|emailSyncSchedule|String|Email sync schedule. Possible values are: `userDefined`, `asMessagesArrive`, `manual`, `fifteenMinutes`, `thirtyMinutes`, `sixtyMinutes`, `basedOnMyUsage`.|
|hostName|String|Exchange location (URL) that the native mail app connects to.|
|requireSmime|Boolean|Indicates whether or not to use S/MIME certificate.|
|requireSsl|Boolean|Indicates whether or not to use SSL.|
|usernameSource|String|Username attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: `username`, `userPrincipalName`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|identityCertificate|[androidCertificateProfileBase](androidCertificateProfileBase.md)|Identity certificate.|
|smimeSigningCertificate|[androidCertificateProfileBase](androidCertificateProfileBase.md)|S/MIME signing certificate.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidEasEmailProfileConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidEasEmailProfileConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "accountName": "String",
  "authenticationMethod": "String",
  "syncCalendar": true,
  "syncContacts": true,
  "syncTasks": true,
  "syncNotes": true,
  "durationOfEmailToSync": "String",
  "emailAddressSource": "String",
  "emailSyncSchedule": "String",
  "hostName": "String",
  "requireSmime": true,
  "requireSsl": true,
  "usernameSource": "String"
}
```

