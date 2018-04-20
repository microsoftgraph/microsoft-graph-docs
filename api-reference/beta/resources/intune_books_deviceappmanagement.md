# deviceAppManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device app management functionality.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceAppManagement](../api/intune_books_deviceappmanagement_get.md)|[deviceAppManagement](../resources/intune_books_deviceappmanagement.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune_books_deviceappmanagement.md) object.|
|[Update deviceAppManagement](../api/intune_books_deviceappmanagement_update.md)|[deviceAppManagement](../resources/intune_books_deviceappmanagement.md)|Update the properties of a [deviceAppManagement](../resources/intune_books_deviceappmanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managedEBooks|[managedEBook](../resources/intune_books_managedebook.md) collection|The Managed eBook.|
|managedEBookCategories|[managedEBookCategory](../resources/intune_books_managedebookcategory.md) collection|The mobile eBook categories.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "String (identifier)"
}
```



