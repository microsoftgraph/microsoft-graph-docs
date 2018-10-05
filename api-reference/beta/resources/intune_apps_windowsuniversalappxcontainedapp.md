# windowsUniversalAppXContainedApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A class that represents a contained app of a WindowsUniversalAppX app.

Inherits from [mobileContainedApp](../resources/intune_apps_mobilecontainedapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsUniversalAppXContainedApps](../api/intune_apps_windowsuniversalappxcontainedapp_list.md)|[windowsUniversalAppXContainedApp](../resources/intune_apps_windowsuniversalappxcontainedapp.md) collection|List properties and relationships of the [windowsUniversalAppXContainedApp](../resources/intune_apps_windowsuniversalappxcontainedapp.md) objects.|
|[Get windowsUniversalAppXContainedApp](../api/intune_apps_windowsuniversalappxcontainedapp_get.md)|[windowsUniversalAppXContainedApp](../resources/intune_apps_windowsuniversalappxcontainedapp.md)|Read properties and relationships of the [windowsUniversalAppXContainedApp](../resources/intune_apps_windowsuniversalappxcontainedapp.md) object.|
|[Create windowsUniversalAppXContainedApp](../api/intune_apps_windowsuniversalappxcontainedapp_create.md)|[windowsUniversalAppXContainedApp](../resources/intune_apps_windowsuniversalappxcontainedapp.md)|Create a new [windowsUniversalAppXContainedApp](../resources/intune_apps_windowsuniversalappxcontainedapp.md) object.|
|[Delete windowsUniversalAppXContainedApp](../api/intune_apps_windowsuniversalappxcontainedapp_delete.md)|None|Deletes a [windowsUniversalAppXContainedApp](../resources/intune_apps_windowsuniversalappxcontainedapp.md).|
|[Update windowsUniversalAppXContainedApp](../api/intune_apps_windowsuniversalappxcontainedapp_update.md)|[windowsUniversalAppXContainedApp](../resources/intune_apps_windowsuniversalappxcontainedapp.md)|Update the properties of a [windowsUniversalAppXContainedApp](../resources/intune_apps_windowsuniversalappxcontainedapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [mobileContainedApp](../resources/intune_apps_mobilecontainedapp.md)|
|appUserModelId|String|The app user model ID of the contained app of a WindowsUniversalAppX app.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUniversalAppXContainedApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUniversalAppXContainedApp",
  "id": "String (identifier)",
  "appUserModelId": "String"
}
```



