# androidManagedStoreAppConfigurationSchemaItem resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Single configuration item inside an Android application's custom configuration schema.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|schemaItemKey|String|Unique key the application uses to identify the item|
|displayName|String|Human readable name|
|description|String|Description of what the item controls within the application|
|defaultBoolValue|Boolean|Default value for boolean type items, if specified by the app developer|
|defaultIntValue|Int32|Default value for integer type items, if specified by the app developer|
|defaultStringValue|String|Default value for string type items, if specified by the app developer|
|defaultStringArrayValue|String collection|Default value for string array type items, if specified by the app developer|
|dataType|[androidManagedStoreAppConfigurationSchemaItemDataType](../resources/intune_androidforwork_androidmanagedstoreappconfigurationschemaitemdatatype.md)|The type of value this item describes. Possible values are: `bool`, `integer`, `string`, `choice`, `multiselect`, `bundle`, `bundleArray`, `hidden`.|
|selections|[keyValuePair](../resources/intune_shared_keyvaluepair.md) collection|List of human readable name/value pairs for the valid values that can be set for this item (Choice and Multiselect items only)|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidManagedStoreAppConfigurationSchemaItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidManagedStoreAppConfigurationSchemaItem",
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
```



