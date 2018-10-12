# windowsAssignedAccessProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Assigned Access profile for Windows.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsAssignedAccessProfiles](../api/intune_deviceconfig_windowsassignedaccessprofile_list.md)|[windowsAssignedAccessProfile](../resources/intune_deviceconfig_windowsassignedaccessprofile.md) collection|List properties and relationships of the [windowsAssignedAccessProfile](../resources/intune_deviceconfig_windowsassignedaccessprofile.md) objects.|
|[Get windowsAssignedAccessProfile](../api/intune_deviceconfig_windowsassignedaccessprofile_get.md)|[windowsAssignedAccessProfile](../resources/intune_deviceconfig_windowsassignedaccessprofile.md)|Read properties and relationships of the [windowsAssignedAccessProfile](../resources/intune_deviceconfig_windowsassignedaccessprofile.md) object.|
|[Create windowsAssignedAccessProfile](../api/intune_deviceconfig_windowsassignedaccessprofile_create.md)|[windowsAssignedAccessProfile](../resources/intune_deviceconfig_windowsassignedaccessprofile.md)|Create a new [windowsAssignedAccessProfile](../resources/intune_deviceconfig_windowsassignedaccessprofile.md) object.|
|[Delete windowsAssignedAccessProfile](../api/intune_deviceconfig_windowsassignedaccessprofile_delete.md)|None|Deletes a [windowsAssignedAccessProfile](../resources/intune_deviceconfig_windowsassignedaccessprofile.md).|
|[Update windowsAssignedAccessProfile](../api/intune_deviceconfig_windowsassignedaccessprofile_update.md)|[windowsAssignedAccessProfile](../resources/intune_deviceconfig_windowsassignedaccessprofile.md)|Update the properties of a [windowsAssignedAccessProfile](../resources/intune_deviceconfig_windowsassignedaccessprofile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|profileName|String|This is a friendly name used to identify a group of applications, the layout of these apps on the start menu and the users to whom this kiosk configuration is assigned.|
|showTaskBar|Boolean|This setting allows the admin to specify whether the Task Bar is shown or not.|
|appUserModelIds|String collection|These are the only Windows Store Apps that will be available to launch from the Start menu.|
|desktopAppPaths|String collection|These are the paths of the Desktop Apps that will be available on the Start menu and the only apps the user will be able to launch.|
|userAccounts|String collection|The user accounts that will be locked to this kiosk configuration.|
|startMenuLayoutXml|Binary|Allows admins to override the default Start layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in Binary format.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsAssignedAccessProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsAssignedAccessProfile",
  "id": "String (identifier)",
  "profileName": "String",
  "showTaskBar": true,
  "appUserModelIds": [
    "String"
  ],
  "desktopAppPaths": [
    "String"
  ],
  "userAccounts": [
    "String"
  ],
  "startMenuLayoutXml": "binary"
}
```



