# windows10TeamGeneralConfiguration resource type

This topic provides descriptions of the declared methods, properties and relationships exposed by the windows10TeamGeneralConfiguration resource.

Inherits from [deviceConfiguration](deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows10TeamGeneralConfigurations](../api/windows10TeamGeneralConfiguration_list.md)|[windows10TeamGeneralConfiguration](../resources/windows10TeamGeneralConfiguration.md) collection|List properties and relationships of the [windows10TeamGeneralConfiguration](../resources/windows10TeamGeneralConfiguration.md) objects.|
|[Get windows10TeamGeneralConfiguration](../api/windows10TeamGeneralConfiguration_get.md)|[windows10TeamGeneralConfiguration](../resources/windows10TeamGeneralConfiguration.md)|Read properties and relationships of the [windows10TeamGeneralConfiguration](../resources/windows10TeamGeneralConfiguration.md) object.|
|[Create windows10TeamGeneralConfiguration](../api/windows10TeamGeneralConfiguration_create.md)|[windows10TeamGeneralConfiguration](../resources/windows10TeamGeneralConfiguration.md)|Create a new [windows10TeamGeneralConfiguration](../resources/windows10TeamGeneralConfiguration.md) object.|
|[Delete windows10TeamGeneralConfiguration](../api/windows10TeamGeneralConfiguration_delete.md)|None|Deletes a [windows10TeamGeneralConfiguration](../resources/windows10TeamGeneralConfiguration.md).|
|[Update windows10TeamGeneralConfiguration](../api/windows10TeamGeneralConfiguration_update.md)|[windows10TeamGeneralConfiguration](../resources/windows10TeamGeneralConfiguration.md)|Update the properties of a [windows10TeamGeneralConfiguration](../resources/windows10TeamGeneralConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/windows10TeamGeneralConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/windows10TeamGeneralConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/windows10TeamGeneralConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|azureOperationalInsightsBlockTelemetry|Boolean|Indicates whether or not to Block Azure Operational Insights.|
|azureOperationalInsightsWorkspaceId|String|The Azure Operational Insights workspace id.|
|azureOperationalInsightsWorkspaceKey|String|The Azure Operational Insights Workspace key.|
|maintenanceWindowBlocked|Boolean|Indicates whether or not to Block setting a maintenance window for device updates.|
|maintenanceWindowDurationInHours|Int32|Maintenance window duration for device updates.|
|maintenanceWindowStartTime|TimeOfDay|Maintenance window start time for device updates.|
|miracastChannel|String|The channel. Possible values are: `userDefined`, `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `eleven`, `thirtySix`, `forty`, `fortyFour`, `fortyEight`, `oneHundredFortyNine`, `oneHundredFiftyThree`, `oneHundredFiftySeven`, `oneHundredSixtyOne`, `oneHundredSixtyFive`.|
|miracastBlocked|Boolean|Indicates whether or not to Block wireless projection.|
|miracastRequirePin|Boolean|Indicates whether or not to require a pin for wireless projection.|
|welcomeScreenBlockAutomaticWakeUp|Boolean|Indicates whether or not to Block the welcome screen from waking up automatically when someone enters the room.|
|welcomeScreenBackgroundImageUrl|String|The welcome screen background image URL. The URL must use the HTTPS protocol and return a PNG image.|
|welcomeScreenMeetingInformation|String|The welcome screen meeting information shown. Possible values are: `userDefined`, `showOrganizerAndTimeOnly`, `showOrganizerAndTimeAndSubject`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10TeamGeneralConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows10TeamGeneralConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "azureOperationalInsightsBlockTelemetry": true,
  "azureOperationalInsightsWorkspaceId": "String",
  "azureOperationalInsightsWorkspaceKey": "String",
  "maintenanceWindowBlocked": true,
  "maintenanceWindowDurationInHours": 1024,
  "maintenanceWindowStartTime": "String (time of day)",
  "miracastChannel": "String",
  "miracastBlocked": true,
  "miracastRequirePin": true,
  "welcomeScreenBlockAutomaticWakeUp": true,
  "welcomeScreenBackgroundImageUrl": "String",
  "welcomeScreenMeetingInformation": "String"
}
```

