# windowsPhoneEASEmailProfileConfiguration resource type

By providing configurations in this profile you can instruct the native email client on Windows Phone to communicate with an Exchange server and get email, contacts, calendar, and tasks. Furthermore, you can also specify how much email to sync and how often the device should sync.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsPhoneEASEmailProfileConfigurations](../api/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration_list.md)|[windowsPhoneEASEmailProfileConfiguration](../resources/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration.md) collection|List properties and relationships of the [windowsPhoneEASEmailProfileConfiguration](../resources/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration.md) objects.|
|[Get windowsPhoneEASEmailProfileConfiguration](../api/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration_get.md)|[windowsPhoneEASEmailProfileConfiguration](../resources/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration.md)|Read properties and relationships of the [windowsPhoneEASEmailProfileConfiguration](../resources/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration.md) object.|
|[Create windowsPhoneEASEmailProfileConfiguration](../api/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration_create.md)|[windowsPhoneEASEmailProfileConfiguration](../resources/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration.md)|Create a new [windowsPhoneEASEmailProfileConfiguration](../resources/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration.md) object.|
|[Delete windowsPhoneEASEmailProfileConfiguration](../api/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration_delete.md)|None|Deletes a [windowsPhoneEASEmailProfileConfiguration](../resources/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration.md).|
|[Update windowsPhoneEASEmailProfileConfiguration](../api/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration_update.md)|[windowsPhoneEASEmailProfileConfiguration](../resources/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration.md)|Update the properties of a [windowsPhoneEASEmailProfileConfiguration](../resources/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_windowsPhoneEASEmailProfileConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

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
|applyOnlyToWindowsPhone81|Boolean|Value indicating whether this policy only applies to Windows 8.1.|
|syncCalendar|Boolean|Whether or not to sync the calendar.|
|syncContacts|Boolean|Whether or not to sync contacts.|
|syncTasks|Boolean|Whether or not to sync tasks.|
|durationOfEmailToSync|String|Duration of email to sync. Possible values are: `userDefined`, `oneDay`, `threeDays`, `oneWeek`, `twoWeeks`, `oneMonth`, `unlimited`.|
|emailAddressSource|String|Email attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: `userPrincipalName`, `primarySmtpAddress`.|
|emailSyncSchedule|String|Email sync schedule. Possible values are: `userDefined`, `asMessagesArrive`, `manual`, `fifteenMinutes`, `thirtyMinutes`, `sixtyMinutes`, `basedOnMyUsage`.|
|hostName|String|Exchange location that (URL) that the native mail app connects to.|
|requireSsl|Boolean|Indicates whether or not to use SSL.|
|usernameSource|String|Username attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: `userPrincipalName`, `primarySmtpAddress`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsPhoneEASEmailProfileConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsPhoneEASEmailProfileConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "accountName": "String",
  "applyOnlyToWindowsPhone81": true,
  "syncCalendar": true,
  "syncContacts": true,
  "syncTasks": true,
  "durationOfEmailToSync": "String",
  "emailAddressSource": "String",
  "emailSyncSchedule": "String",
  "hostName": "String",
  "requireSsl": true,
  "usernameSource": "String"
}
```


