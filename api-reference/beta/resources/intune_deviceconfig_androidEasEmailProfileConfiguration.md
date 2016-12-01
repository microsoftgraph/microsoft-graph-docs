# androidEasEmailProfileConfiguration resource type

By providing configurations in this profile you can instruct the native email client on KNOX devices to communicate with an Exchange server and get email, contacts, calendar, tasks, and notes. Furthermore, you can also specify how much email to sync and how often the device should sync.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidEasEmailProfileConfigurations](../api/intune_deviceconfig_androidEasEmailProfileConfiguration_list.md)|[androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androidEasEmailProfileConfiguration.md) collection|List properties and relationships of the [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androidEasEmailProfileConfiguration.md) objects.|
|[Get androidEasEmailProfileConfiguration](../api/intune_deviceconfig_androidEasEmailProfileConfiguration_get.md)|[androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androidEasEmailProfileConfiguration.md)|Read properties and relationships of the [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androidEasEmailProfileConfiguration.md) object.|
|[Create androidEasEmailProfileConfiguration](../api/intune_deviceconfig_androidEasEmailProfileConfiguration_create.md)|[androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androidEasEmailProfileConfiguration.md)|Create a new [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androidEasEmailProfileConfiguration.md) object.|
|[Delete androidEasEmailProfileConfiguration](../api/intune_deviceconfig_androidEasEmailProfileConfiguration_delete.md)|None|Deletes a [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androidEasEmailProfileConfiguration.md).|
|[Update androidEasEmailProfileConfiguration](../api/intune_deviceconfig_androidEasEmailProfileConfiguration_update.md)|[androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androidEasEmailProfileConfiguration.md)|Update the properties of a [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androidEasEmailProfileConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_androidEasEmailProfileConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_androidEasEmailProfileConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_androidEasEmailProfileConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get androidCertificateProfileBase](../api/intune_deviceconfig_androidEasEmailProfileConfiguration_get_androidCertificateProfileBase.md)|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md)|Get the [androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md) from the identityCertificate navigation property.|
|[Get androidCertificateProfileBase](../api/intune_deviceconfig_androidEasEmailProfileConfiguration_get_androidCertificateProfileBase.md)|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md)|Get the [androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md) from the smimeSigningCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
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
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|identityCertificate|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md)|Identity certificate.|
|smimeSigningCertificate|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md)|S/MIME signing certificate.|

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


