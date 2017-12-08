# synchronizationRule resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Defines how the synchronization should be performed for the synchronization engine, including which objects to synchronize and in which direction, how objects from the source directory should be matched with objects in the target directory, and how attributes should be transformed when they're synchronized from the source to the target directory.

>**Note:** Synchronization rules define synchronization in one direction - from the source directory to the target directory. The source and target directories are defined as part of the rule properties.

Synchronization rules are updated as part of the [synchronization schema](synchronization_synchronizationschema.md).

## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|editable       |Boolean    |`true` if the synchronization rule can be customized; `false` if this rule is read-only and should not be changed.|
|id             |String     |Synchronization rule identifier. Must be one of the identifiers recognized by the synchronization engine. Supported rule identifiers can be found in the synchronization template returned by the API.|
|metadata       |[stringKeyStringValuePair](synchronization_stringkeystringvaluepair.md) collection |Additional extension properties. Unless instructed explicitly by the support team, metadata values should not be changed.|
|name           |String     |Human-readable name of the synchronization rule. Not nullable.|
|objectMappings |[objectMapping](synchronization_objectmapping.md) collection    |Collection of object mappings supported by the rule. Tells the synchronization engine which objects should be synchronized.|
|priority       |Integer    |Priority relative to other rules in the [synchronizationSchema](synchronization_synchronizationschema.md). Rules with the lowest priority number will be processed first.|
|sourceDirectoryName       |String    |Name of the source directory. Must match one of the directory definitions in [synchronizationSchema](synchronization_synchronizationschema.md).|
|targetDirectoryName       |String    |Name of the target directory. Must match one of the directory definitions in [synchronizationSchema](synchronization_synchronizationschema.md).|

## JSON representation

The following is a JSON representation of the resource.

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