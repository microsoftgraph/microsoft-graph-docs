# macOSGeneralDeviceConfiguration resource type

This topic provides descriptions of the declared methods, properties and relationships exposed by the macOSGeneralDeviceConfiguration resource.

Inherits from [deviceConfiguration](../resources/deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSGeneralDeviceConfigurations](../api/macOSGeneralDeviceConfiguration_list.md)|[macOSGeneralDeviceConfiguration](../resources/macOSGeneralDeviceConfiguration.md) collection|List properties and relationships of the [macOSGeneralDeviceConfiguration](../resources/macOSGeneralDeviceConfiguration.md) objects.|
|[Get macOSGeneralDeviceConfiguration](../api/macOSGeneralDeviceConfiguration_get.md)|[macOSGeneralDeviceConfiguration](../resources/macOSGeneralDeviceConfiguration.md)|Read properties and relationships of the [macOSGeneralDeviceConfiguration](../resources/macOSGeneralDeviceConfiguration.md) object.|
|[Create macOSGeneralDeviceConfiguration](../api/macOSGeneralDeviceConfiguration_create.md)|[macOSGeneralDeviceConfiguration](../resources/macOSGeneralDeviceConfiguration.md)|Create a new [macOSGeneralDeviceConfiguration](../resources/macOSGeneralDeviceConfiguration.md) object.|
|[Delete macOSGeneralDeviceConfiguration](../api/macOSGeneralDeviceConfiguration_delete.md)|None|Deletes a [macOSGeneralDeviceConfiguration](../resources/macOSGeneralDeviceConfiguration.md).|
|[Update macOSGeneralDeviceConfiguration](../api/macOSGeneralDeviceConfiguration_update.md)|[macOSGeneralDeviceConfiguration](../resources/macOSGeneralDeviceConfiguration.md)|Update the properties of a [macOSGeneralDeviceConfiguration](../resources/macOSGeneralDeviceConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/macOSGeneralDeviceConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/macOSGeneralDeviceConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/macOSGeneralDeviceConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|compliantAppsList|[appListItem](../resources/appListItem.md) collection|List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType).|
|compliantAppListType|String|List that is in the CompliantAppsList. Possible values are: `none`, `appsInListCompliant`, `appsNotInListCompliant`.|
|emailInDomainSuffixes|String collection|Any email address that does not have a suffix that matches any item listed here will be considered out-of-domain.|
|passwordBlockSimple|Boolean|Block simple passwords.|
|passwordExpirationDays|Int32|Number of days before the password expires.|
|passwordMinimumCharacterSetCount|Int32|Number of character sets a password must contain.|
|passwordMinimumLength|Int32|Minimum length of passwords.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity required before a password is required.|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|Minutes of inactivity required before the screen times out.|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block.|
|passwordRequiredType|String|Type of password that is required. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordRequired|Boolean|Whether or not to require a password.|

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
  "@odata.type": "microsoft.graph.macOSGeneralDeviceConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.macOSGeneralDeviceConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "compliantAppsList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "compliantAppListType": "String",
  "emailInDomainSuffixes": [
    "String"
  ],
  "passwordBlockSimple": true,
  "passwordExpirationDays": 1024,
  "passwordMinimumCharacterSetCount": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinutesOfInactivityBeforeLock": 1024,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 1024,
  "passwordPreviousPasswordBlockCount": 1024,
  "passwordRequiredType": "String",
  "passwordRequired": true
}
```

