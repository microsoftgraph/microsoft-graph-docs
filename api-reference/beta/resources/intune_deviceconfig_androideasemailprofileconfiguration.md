# androidEasEmailProfileConfiguration resource type> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

By providing configurations in this profile you can instruct the native email client on KNOX devices to communicate with an Exchange server and get email, contacts, calendar, tasks, and notes. Furthermore, you can also specify how much email to sync and how often the device should sync.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidEasEmailProfileConfigurations](../api/intune_deviceconfig_androideasemailprofileconfiguration_list.md)|[androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androideasemailprofileconfiguration.md) collection|List properties and relationships of the [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androideasemailprofileconfiguration.md) objects.|
|[Get androidEasEmailProfileConfiguration](../api/intune_deviceconfig_androideasemailprofileconfiguration_get.md)|[androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androideasemailprofileconfiguration.md)|Read properties and relationships of the [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androideasemailprofileconfiguration.md) object.|
|[Create androidEasEmailProfileConfiguration](../api/intune_deviceconfig_androideasemailprofileconfiguration_create.md)|[androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androideasemailprofileconfiguration.md)|Create a new [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androideasemailprofileconfiguration.md) object.|
|[Delete androidEasEmailProfileConfiguration](../api/intune_deviceconfig_androideasemailprofileconfiguration_delete.md)|None|Deletes a [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androideasemailprofileconfiguration.md).|
|[Update androidEasEmailProfileConfiguration](../api/intune_deviceconfig_androideasemailprofileconfiguration_update.md)|[androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androideasemailprofileconfiguration.md)|Update the properties of a [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androideasemailprofileconfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_androideasemailprofileconfiguration_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_androideasemailprofileconfiguration_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_androideasemailprofileconfiguration_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get androidCertificateProfileBase](../api/intune_deviceconfig_androideasemailprofileconfiguration_get_androidcertificateprofilebase.md)|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|Get the [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md) from the identityCertificate navigation property.|
|[Get androidCertificateProfileBase](../api/intune_deviceconfig_androideasemailprofileconfiguration_get_androidcertificateprofilebase.md)|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|Get the [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md) from the smimeSigningCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
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
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|identityCertificate|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|Identity certificate.|
|smimeSigningCertificate|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|S/MIME signing certificate.|

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



