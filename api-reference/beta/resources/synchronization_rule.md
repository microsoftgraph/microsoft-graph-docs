# synchronizationRule resource type

Synchronization rules are at the core of the synchronization configuration. They give synchronization engine crucial information regarding how the synchronization should be performed. That includes which objects should be synchronized, in which direction, how objects from source directory should be matched with objects in target directory, and how attributes should be transformed going from source to target.

**Synchronization rule defines synchronization in one direction**, from source directory to target directory. Source and target directories are designated as part of the rule properties.

Synchronization rules are updated as part of [synchronization schema](synchronization_schema.md)

## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|editable       |Boolean    |`true` if synchronization rule can be customized. `false` means this rule is read only and should not be changed.|
|id             |String     |Synchronization rule identifier. Must be one of the identifiers recognized by the synchronization engine. Supported rule identifiers can be seen in the synchronization template returned by the API.|
|metadata       |[stringKeyStringValuePair](synchronization_stringkeystringvaluepair.md) collection |Additional extension properties. Unless instructed explicitly by the support team, metadata values should not be changed.|
|name           |String     |Human-readable name of the synchronization rule. Not nullable.|
|objectMappings |[objectMapping](synchronization_objectmapping.md) collection    |Collection of object mappings supported by the rule. Tells synchronization engine which objects should be synchronized.|
|priority       |Integer    |Priority relative to other rules in the [synchronizationSchema](synchronization_schema.md). Rules with the lowest priority number will be processed first.|
|sourceDirectoryName       |String    |Name of the source directory. Must match one of the directory definitions in [synchronizationSchema](synchronization_schema.md).|
|targetDirectoryName       |String    |Name of the target directory. Must match one of the directory definitions in [synchronizationSchema](synchronization_schema.md).|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationRule"
}-->

```json
{
  "editable": true,
  "id": "String",
  "metadata": [{"@odata.type": "microsoft.graph.stringKeyStringValuePair"}],
  "name": "String",
  "objectMappings": [{"@odata.type": "microsoft.graph.objectMapping"}],
  "priority": 1024,
  "sourceDirectoryName": "String",
  "targetDirectoryName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "synchronizationRule resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->