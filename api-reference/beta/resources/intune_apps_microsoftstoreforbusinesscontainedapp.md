# microsoftStoreForBusinessContainedApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A class that represents a contained app of a MicrosoftStoreForBusinessApp.

Inherits from [mobileContainedApp](../resources/intune_apps_mobilecontainedapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List microsoftStoreForBusinessContainedApps](../api/intune_apps_microsoftstoreforbusinesscontainedapp_list.md)|[microsoftStoreForBusinessContainedApp](../resources/intune_apps_microsoftstoreforbusinesscontainedapp.md) collection|List properties and relationships of the [microsoftStoreForBusinessContainedApp](../resources/intune_apps_microsoftstoreforbusinesscontainedapp.md) objects.|
|[Get microsoftStoreForBusinessContainedApp](../api/intune_apps_microsoftstoreforbusinesscontainedapp_get.md)|[microsoftStoreForBusinessContainedApp](../resources/intune_apps_microsoftstoreforbusinesscontainedapp.md)|Read properties and relationships of the [microsoftStoreForBusinessContainedApp](../resources/intune_apps_microsoftstoreforbusinesscontainedapp.md) object.|
|[Create microsoftStoreForBusinessContainedApp](../api/intune_apps_microsoftstoreforbusinesscontainedapp_create.md)|[microsoftStoreForBusinessContainedApp](../resources/intune_apps_microsoftstoreforbusinesscontainedapp.md)|Create a new [microsoftStoreForBusinessContainedApp](../resources/intune_apps_microsoftstoreforbusinesscontainedapp.md) object.|
|[Delete microsoftStoreForBusinessContainedApp](../api/intune_apps_microsoftstoreforbusinesscontainedapp_delete.md)|None|Deletes a [microsoftStoreForBusinessContainedApp](../resources/intune_apps_microsoftstoreforbusinesscontainedapp.md).|
|[Update microsoftStoreForBusinessContainedApp](../api/intune_apps_microsoftstoreforbusinesscontainedapp_update.md)|[microsoftStoreForBusinessContainedApp](../resources/intune_apps_microsoftstoreforbusinesscontainedapp.md)|Update the properties of a [microsoftStoreForBusinessContainedApp](../resources/intune_apps_microsoftstoreforbusinesscontainedapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [mobileContainedApp](../resources/intune_apps_mobilecontainedapp.md)|
|appUserModelId|String|The app user model ID of the contained app of a MicrosoftStoreForBusinessApp.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftStoreForBusinessContainedApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftStoreForBusinessContainedApp",
  "id": "String (identifier)",
  "appUserModelId": "String"
}
```



