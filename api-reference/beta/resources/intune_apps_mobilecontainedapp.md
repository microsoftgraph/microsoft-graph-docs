# mobileContainedApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

An abstract class that represents a contained app in a mobileApp acting as a package.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileContainedApps](../api/intune_apps_mobilecontainedapp_list.md)|[mobileContainedApp](../resources/intune_apps_mobilecontainedapp.md) collection|List properties and relationships of the [mobileContainedApp](../resources/intune_apps_mobilecontainedapp.md) objects.|
|[Get mobileContainedApp](../api/intune_apps_mobilecontainedapp_get.md)|[mobileContainedApp](../resources/intune_apps_mobilecontainedapp.md)|Read properties and relationships of the [mobileContainedApp](../resources/intune_apps_mobilecontainedapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileContainedApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileContainedApp",
  "id": "String (identifier)"
}
```



