# windowsPrivacyDataAccessControlItem resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Specify access control level per privacy data category
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsPrivacyDataAccessControlItems](../api/intune_deviceconfig_windowsprivacydataaccesscontrolitem_list.md)|[windowsPrivacyDataAccessControlItem](../resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem.md) collection|List properties and relationships of the [windowsPrivacyDataAccessControlItem](../resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem.md) objects.|
|[Get windowsPrivacyDataAccessControlItem](../api/intune_deviceconfig_windowsprivacydataaccesscontrolitem_get.md)|[windowsPrivacyDataAccessControlItem](../resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem.md)|Read properties and relationships of the [windowsPrivacyDataAccessControlItem](../resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem.md) object.|
|[Create windowsPrivacyDataAccessControlItem](../api/intune_deviceconfig_windowsprivacydataaccesscontrolitem_create.md)|[windowsPrivacyDataAccessControlItem](../resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem.md)|Create a new [windowsPrivacyDataAccessControlItem](../resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem.md) object.|
|[Delete windowsPrivacyDataAccessControlItem](../api/intune_deviceconfig_windowsprivacydataaccesscontrolitem_delete.md)|None|Deletes a [windowsPrivacyDataAccessControlItem](../resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem.md).|
|[Update windowsPrivacyDataAccessControlItem](../api/intune_deviceconfig_windowsprivacydataaccesscontrolitem_update.md)|[windowsPrivacyDataAccessControlItem](../resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem.md)|Update the properties of a [windowsPrivacyDataAccessControlItem](../resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of WindowsPrivacyDataAccessControlItem.|
|accessLevel|[windowsPrivacyDataAccessLevel](../resources/intune_deviceconfig_windowsprivacydataaccesslevel.md)|This indicates an access level for the privacy data category to which the specified application will be given to. Possible values are: `notConfigured`, `forceAllow`, `forceDeny`, `userInControl`.|
|dataCategory|[windowsPrivacyDataCategory](../resources/intune_deviceconfig_windowsprivacydatacategory.md)|This indicates a privacy data category to which the specific access control will apply. Possible values are: `notConfigured`, `accountInfo`, `appsRunInBackground`, `calendar`, `callHistory`, `camera`, `contacts`, `diagnosticsInfo`, `email`, `location`, `messaging`, `microphone`, `motion`, `notifications`, `phone`, `radios`, `tasks`, `syncWithDevices`, `trustedDevices`.|
|appPackageFamilyName|String|The Package Family Name of a Windows app. When set, the access level applies to the specified application.|
|appDisplayName|String|The Package Family Name of a Windows app. When set, the access level applies to the specified application.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsPrivacyDataAccessControlItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsPrivacyDataAccessControlItem",
  "id": "String (identifier)",
  "accessLevel": "String",
  "dataCategory": "String",
  "appPackageFamilyName": "String",
  "appDisplayName": "String"
}
```



