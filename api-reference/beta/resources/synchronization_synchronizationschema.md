# synchronizationSchema resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Defines what objects will be synchronized and how they will be synchronized. The synchronization schema contains most of the setup information for a particular synchronization job. Typically, you will customize some of the [attribute mappings](synchronization_attributemapping.md), or add a [scoping filter](synchronization_filter.md) to synchronize only objects that satisfy a certain condition.

The following sections describe the high-level components of the synchronization schema.

## Directory definitions

[Directory definitions](synchronization_directorydefinition.md) provide the synchronization engine information about directories and their objects. For example, the directory definition tells the synchronization engine that an Azure AD directory has objects named **user** and **group**, which attributes are supported for those objects, and the types for those attributes. In order for a particular object and attribute to be used in synchronization rules/object mappings, they have to be defined as part of the directory definition.

## Synchronization rules

[Synchronization rules](synchronization_synchronizationrule.md) are the core of the synchronization setup. They define for the synchronization engine how the synchronization should be performed, including what objects should be synchronized, how objects from the source directory should be matched with objects in the target directory, and how attributes should be transformed when they're synchronized from the source to the target directory. 

## Object mappings

[Object mappings](synchronization_objectmapping.md) are the main part of the synchronization rule. Each object mapping defines how a given object should be synchronized from the source to the target directory. In particular, the mapping defines how an object in the source directory should be matched with an object in the target directory, what (if any) scoping filters should be used to decide whether to provision an object, and how object attributes should be transformed when they're synchronized from the source to the target directory.

## Methods

| Method        | Return Type               | Description                  |
|:--------------|:--------------------------|:-----------------------------|
|[Get schema](../api/synchronization_synchronizationschema_get.md)    |[synchronizationSchema](synchronization_synchronizationschema.md)   |Read properties and relationships of the **synchronizationSchema** object.|
|[Update schema](../api/synchronization_synchronizationschema_update.md)    |None   |Update the synchronization schema. |
|[Delete schema](../api/synchronization_synchronizationschema_delete.md)    |None   |Delete the customized schema, resetting the schema to the default configuration. |
|[List filter operators](../api/synchronization_synchronizationschema_filteroperators.md)    |[filterOperatorSchema](../resources/synchronization_filteroperatorschema.md) colection   |List all operators supported in the scoping filters. |
|[List attribute mapping functions](../api/synchronization_synchronizationschema_functions.md)    |[attributeMappingFunctionSchema](../resources/synchronization_attributemappingfunctionschema.md) collection   |List all functions supported in the attribute mapping expressions. |
|[Parse attribute mapping expression](../api/synchronization_synchronizationschema_parseexpression.md)|[parseExpressionResponse](synchronization_parseexpressionresponse.md)|Parse a string expression into an [attributeMappingSource|(../resources/synchronization_attributemappingsource.md) object.|


## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|directories            |[directoryDefinition](synchronization_directorydefinition.md) collection   |Describes directories and objects that are part of the [synchronizationJob](synchronization_synchronizationjob.md) or [synchronizationTemplate](synchronization_synchronizationtemplate.md). |
|synchronizationRules   |[synchronizationRule](synchronization_synchronizationrule.md) collection   |A collection of synchronization rules configured for the [synchronizationJob](synchronization_synchronizationjob.md) or [synchronizationTemplate](synchronization_synchronizationtemplate.md), |
|version                |String                             |The version of the schema, updated automatically with every schema change.|


## JSON representation

The following is a JSON representation of the resource.

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