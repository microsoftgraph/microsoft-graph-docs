# synchronizationSchema resource type

Synchronization schema contains the bulk of a particular synchronization setup. On a high level, it defines what objects will be synchronized and how. Most often you will want to customize some of the  [attribute mappings](synchronization_attributemapping.md) to suit your needs, or add a [scoping filter](synchronization_filter.md) to synchronize only objects which satisfy a certain condition.

## Schema components overview

Top-level components in synchronization schema are "directories", defining directories and their objects, and "synchronizationRules", defining mappings between objects and their attributes

### Directory Definitions ("directories")

[Directory definitions](synchronization_directoryDefinition.md) are part of the [synchronization schema](synchronization_schema.md) and provide synchronization engine information about directories and their objects. It tells synchronization engine, for example, that directory "Azure AD" has objects named "User" and "Group", which attributes are supported for those objects, and what is the type of those attributes. In order for a particular object and attribute to be used in synchronization rules / object mappings, they have to be defined as part of the directory definition.

### Synchronization Rules ("synchronizationRules")

[Synchronization rules](synchronization_rule.md) area part of the [synchronization schema](synchronization_schema.md) and are at the core of the synchronization setup. They give synchronization engine crucial information regarding how the synchronization should be performed. That includes what objects should be synchronized, how objects from source directory should be matched with objects in target directory, and how attributes should be transformed going from source to target directory. 

### Object mappings ("objectMappings")

[Object mappings](synchronization_objectMapping.md) are the main part of the synchronization rule. Each object mapping defines how a given object should be synchronized from source directory to target. In particular, it defines how object in source directory should be matched with an object in target directory, what (if any) scoping filters should be used to decide if we want to provision a given object, and how object attributes should be transformed going from source to target directory.

## Methods

| Method        | Return Type               | Description                  |
|:--------------|:--------------------------|:-----------------------------|
|[Get schema](../api/synchronization_schema_get.md)    |[synchronizationSchema](synchronization_schema.md)   |Read properties and relationships of synchronizationSchema object.|
|[Update schema](../api/synchronization_schema_put.md)    |None   |Update synchronization schema. |
|[Delete schema](../api/synchronization_schema_delete.md)    |None   |Delete customized  schema, effectively resetting the schema to the default configured by application developer. |
|[List filter operators](../api/synchronization_schema_filteroperators_get.md)    |[filterOperatorSchema](../resources/synchronization_filteroperatorschema.md) colection   |List all operators supported in the scoping filters. |
|[List attribute mapping functions](../api/synchronization_schema_functions_get.md)    |[attributeMappingFunctionSchema](../resources/synchronization_attributemappingfunctionschema.md) colection   |List all functions supported in the attribute mapping expressions. |
|[Parse attribute mapping expression](../api/synchronizationschema_parseexpression.md)|[parseExpressionResponse](parseexpressionresponse.md)|Parse given string expression into an [attributeMappingSource|(../resources/synchronization_attributemappingsource.md) object.|


## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|directories            |[directoryDefinition](synchronization_directorydefinition.md) collection   |Describes directories and objects which are part of the synchronization [job](synchronization_job.md) or [template](synchronization_template.md) |
|synchronizationRules   |[synchronizationRule](synchronization_rule.md) collection   |Collection of synchronization rules configured for the [synchronizationJob](synchronization_job.md) or [synchronizationTemplate](synchronization_template.md) |
|version                |String                             |Version of the schema, updated automatically on every schema change|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationSchema"
}-->

```json
{
  "directories": [{"@odata.type": "microsoft.graph.directoryDefinition"}],
  "provisioningTaskIdentifier": "String (identifier)",
  "synchronizationRules": [{"@odata.type": "microsoft.graph.synchronizationRule"}],
  "version": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "synchronizationSchema resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->