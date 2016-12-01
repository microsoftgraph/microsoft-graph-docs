# androidEasEmailProfileConfiguration resource type

By providing configurations in this profile you can instruct the native email client on KNOX devices to communicate with an Exchange server and get email, contacts, calendar, tasks, and notes. Furthermore, you can also specify how much email to sync and how often the device should sync.

Inherits from [deviceConfiguration](deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidEasEmailProfileConfigurations](../api/androidEasEmailProfileConfiguration_list.md)|[androidEasEmailProfileConfiguration](../resources/androidEasEmailProfileConfiguration.md) collection|List properties and relationships of the [androidEasEmailProfileConfiguration](../resources/androidEasEmailProfileConfiguration.md) objects.|
|[Get androidEasEmailProfileConfiguration](../api/androidEasEmailProfileConfiguration_get.md)|[androidEasEmailProfileConfiguration](../resources/androidEasEmailProfileConfiguration.md)|Read properties and relationships of the [androidEasEmailProfileConfiguration](../resources/androidEasEmailProfileConfiguration.md) object.|
|[Create androidEasEmailProfileConfiguration](../api/androidEasEmailProfileConfiguration_create.md)|[androidEasEmailProfileConfiguration](../resources/androidEasEmailProfileConfiguration.md)|Create a new [androidEasEmailProfileConfiguration](../resources/androidEasEmailProfileConfiguration.md) object.|
|[Delete androidEasEmailProfileConfiguration](../api/androidEasEmailProfileConfiguration_delete.md)|None|Deletes a [androidEasEmailProfileConfiguration](../resources/androidEasEmailProfileConfiguration.md).|
|[Update androidEasEmailProfileConfiguration](../api/androidEasEmailProfileConfiguration_update.md)|[androidEasEmailProfileConfiguration](../resources/androidEasEmailProfileConfiguration.md)|Update the properties of a [androidEasEmailProfileConfiguration](../resources/androidEasEmailProfileConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/androidEasEmailProfileConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/androidEasEmailProfileConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/androidEasEmailProfileConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get androidCertificateProfileBase](../api/androidEasEmailProfileConfiguration_get_androidCertificateProfileBase.md)|[androidCertificateProfileBase](../resources/androidCertificateProfileBase.md)|Get the [androidCertificateProfileBase](../resources/androidCertificateProfileBase.md) from the identityCertificate navigation property.|
|[Get androidCertificateProfileBase](../api/androidEasEmailProfileConfiguration_get_androidCertificateProfileBase.md)|[androidCertificateProfileBase](../resources/androidCertificateProfileBase.md)|Get the [androidCertificateProfileBase](../resources/androidCertificateProfileBase.md) from the smimeSigningCertificate navigation property.|

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
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|identityCertificate|[androidCertificateProfileBase](../resources/androidCertificateProfileBase.md)|Identity certificate.|
|smimeSigningCertificate|[androidCertificateProfileBase](../resources/androidCertificateProfileBase.md)|S/MIME signing certificate.|

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

