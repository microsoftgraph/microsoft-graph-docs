# deviceAppManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device app management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceAppManagement](../api/intune_books_deviceappmanagement_get.md)|[deviceAppManagement](../resources/intune_books_deviceappmanagement.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune_books_deviceappmanagement.md) object.|
|[Update deviceAppManagement](../api/intune_books_deviceappmanagement_update.md)|[deviceAppManagement](../resources/intune_books_deviceappmanagement.md)|Update the properties of a [deviceAppManagement](../resources/intune_books_deviceappmanagement.md) object.|
|[List managedEBooks](../api/intune_books_managedebook_list.md)|[managedEBook](../resources/intune_books_managedebook.md) collection|List properties and relationships of the [managedEBook](../resources/intune_books_managedebook.md) objects.|
|[Create managedEBook](../api/intune_books_managedebook_create.md)|[managedEBook](../resources/intune_books_managedebook.md)|Create a new [managedEBook](../resources/intune_books_managedebook.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|managedEBooks|[managedEBook](../resources/intune_books_managedebook.md) collection|The Managed eBook.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "String (identifier)"
}
```



