# androidWorkProfileNineWorkEasConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

By providing configurations in this profile you can instruct the Nine Work email client on Android Work Profile devices to communicate with an Exchange server and get email, contacts, calendar, tasks, and notes. Furthermore, you can also specify how much email to sync and how often the device should sync.

Inherits from [androidWorkProfileEasEmailProfileBase](../resources/intune_deviceconfig_androidworkprofileeasemailprofilebase.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidWorkProfileNineWorkEasConfigurations](../api/intune_deviceconfig_androidworkprofilenineworkeasconfiguration_list.md)|[androidWorkProfileNineWorkEasConfiguration](../resources/intune_deviceconfig_androidworkprofilenineworkeasconfiguration.md) collection|List properties and relationships of the [androidWorkProfileNineWorkEasConfiguration](../resources/intune_deviceconfig_androidworkprofilenineworkeasconfiguration.md) objects.|
|[Get androidWorkProfileNineWorkEasConfiguration](../api/intune_deviceconfig_androidworkprofilenineworkeasconfiguration_get.md)|[androidWorkProfileNineWorkEasConfiguration](../resources/intune_deviceconfig_androidworkprofilenineworkeasconfiguration.md)|Read properties and relationships of the [androidWorkProfileNineWorkEasConfiguration](../resources/intune_deviceconfig_androidworkprofilenineworkeasconfiguration.md) object.|
|[Create androidWorkProfileNineWorkEasConfiguration](../api/intune_deviceconfig_androidworkprofilenineworkeasconfiguration_create.md)|[androidWorkProfileNineWorkEasConfiguration](../resources/intune_deviceconfig_androidworkprofilenineworkeasconfiguration.md)|Create a new [androidWorkProfileNineWorkEasConfiguration](../resources/intune_deviceconfig_androidworkprofilenineworkeasconfiguration.md) object.|
|[Delete androidWorkProfileNineWorkEasConfiguration](../api/intune_deviceconfig_androidworkprofilenineworkeasconfiguration_delete.md)|None|Deletes a [androidWorkProfileNineWorkEasConfiguration](../resources/intune_deviceconfig_androidworkprofilenineworkeasconfiguration.md).|
|[Update androidWorkProfileNineWorkEasConfiguration](../api/intune_deviceconfig_androidworkprofilenineworkeasconfiguration_update.md)|[androidWorkProfileNineWorkEasConfiguration](../resources/intune_deviceconfig_androidworkprofilenineworkeasconfiguration.md)|Update the properties of a [androidWorkProfileNineWorkEasConfiguration](../resources/intune_deviceconfig_androidworkprofilenineworkeasconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|authenticationMethod|[easAuthenticationMethod](../resources/intune_deviceconfig_easauthenticationmethod.md)|Authentication method for Exchange ActiveSync. Inherited from [androidWorkProfileEasEmailProfileBase](../resources/intune_deviceconfig_androidworkprofileeasemailprofilebase.md). Possible values are: `usernameAndPassword`, `certificate`.|
|durationOfEmailToSync|[emailSyncDuration](../resources/intune_deviceconfig_emailsyncduration.md)|Duration of time email should be synced to. Inherited from [androidWorkProfileEasEmailProfileBase](../resources/intune_deviceconfig_androidworkprofileeasemailprofilebase.md). Possible values are: `userDefined`, `oneDay`, `threeDays`, `oneWeek`, `twoWeeks`, `oneMonth`, `unlimited`.|
|emailAddressSource|[userEmailSource](../resources/intune_deviceconfig_useremailsource.md)|Email attribute that is picked from AAD and injected into this profile before installing on the device. Inherited from [androidWorkProfileEasEmailProfileBase](../resources/intune_deviceconfig_androidworkprofileeasemailprofilebase.md). Possible values are: `userPrincipalName`, `primarySmtpAddress`.|
|hostName|String|Exchange location (URL) that the mail app connects to. Inherited from [androidWorkProfileEasEmailProfileBase](../resources/intune_deviceconfig_androidworkprofileeasemailprofilebase.md)|
|requireSsl|Boolean|Indicates whether or not to use SSL. Inherited from [androidWorkProfileEasEmailProfileBase](../resources/intune_deviceconfig_androidworkprofileeasemailprofilebase.md)|
|usernameSource|[androidUsernameSource](../resources/intune_deviceconfig_androidusernamesource.md)|Username attribute that is picked from AAD and injected into this profile before installing on the device. Inherited from [androidWorkProfileEasEmailProfileBase](../resources/intune_deviceconfig_androidworkprofileeasemailprofilebase.md). Possible values are: `username`, `userPrincipalName`, `samAccountName`, `primarySmtpAddress`.|
|syncCalendar|Boolean|Toggles syncing the calendar. If set to false the calendar is turned off on the device.|
|syncContacts|Boolean|Toggles syncing contacts. If set to false contacts are turned off on the device.|
|syncTasks|Boolean|Toggles syncing tasks. If set to false tasks are turned off on the device.|

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
|identityCertificate|[androidWorkProfileCertificateProfileBase](../resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md)|Identity certificate. Inherited from [androidWorkProfileEasEmailProfileBase](../resources/intune_deviceconfig_androidworkprofileeasemailprofilebase.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidWorkProfileNineWorkEasConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidWorkProfileNineWorkEasConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "authenticationMethod": "String",
  "durationOfEmailToSync": "String",
  "emailAddressSource": "String",
  "hostName": "String",
  "requireSsl": true,
  "usernameSource": "String",
  "syncCalendar": true,
  "syncContacts": true,
  "syncTasks": true
}
```



