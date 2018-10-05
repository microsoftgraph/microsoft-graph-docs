# androidManagedStoreAppConfigurationSchema resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Schema describing an Android application's custom configurations.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidManagedStoreAppConfigurationSchemas](../api/intune_androidforwork_androidmanagedstoreappconfigurationschema_list.md)|[androidManagedStoreAppConfigurationSchema](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md) collection|List properties and relationships of the [androidManagedStoreAppConfigurationSchema](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md) objects.|
|[Get androidManagedStoreAppConfigurationSchema](../api/intune_androidforwork_androidmanagedstoreappconfigurationschema_get.md)|[androidManagedStoreAppConfigurationSchema](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md)|Read properties and relationships of the [androidManagedStoreAppConfigurationSchema](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md) object.|
|[Create androidManagedStoreAppConfigurationSchema](../api/intune_androidforwork_androidmanagedstoreappconfigurationschema_create.md)|[androidManagedStoreAppConfigurationSchema](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md)|Create a new [androidManagedStoreAppConfigurationSchema](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md) object.|
|[Delete androidManagedStoreAppConfigurationSchema](../api/intune_androidforwork_androidmanagedstoreappconfigurationschema_delete.md)|None|Deletes a [androidManagedStoreAppConfigurationSchema](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md).|
|[Update androidManagedStoreAppConfigurationSchema](../api/intune_androidforwork_androidmanagedstoreappconfigurationschema_update.md)|[androidManagedStoreAppConfigurationSchema](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md)|Update the properties of a [androidManagedStoreAppConfigurationSchema](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschema.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity the Android package name for the application the schema corresponds to|
|exampleJson|Binary|UTF8 encoded byte array containing example JSON string conforming to this schema that demonstrates how to set the configuration for this app|
|schemaItems|[androidManagedStoreAppConfigurationSchemaItem](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschemaitem.md) collection|Collection of items each representing a named configuration option in the schema|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidManagedStoreAppConfigurationSchema"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidManagedStoreAppConfigurationSchema",
  "id": "String (identifier)",
  "exampleJson": "binary",
  "schemaItems": [
    {
      "@odata.type": "microsoft.graph.androidManagedStoreAppConfigurationSchemaItem",
      "schemaItemKey": "String",
      "displayName": "String",
      "description": "String",
      "defaultBoolValue": true,
      "defaultIntValue": 1024,
      "defaultStringValue": "String",
      "defaultStringArrayValue": [
        "String"
      ],
      "dataType": "String",
      "selections": [
        {
          "@odata.type": "microsoft.graph.keyValuePair",
          "name": "String",
          "value": "String"
        }
      ]
    }
  ]
}
```



