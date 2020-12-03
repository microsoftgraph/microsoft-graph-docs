---
title: "synchronizationSchema resource type"
description: "Defines what objects will be synchronized and how they will be synchronized."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# synchronizationSchema resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines what objects will be synchronized and how they will be synchronized. The synchronization schema contains most of the setup information for a particular synchronization job. Typically, you will customize some of the [attribute mappings](synchronization-attributemapping.md), or add a [scoping filter](synchronization-filter.md) to synchronize only objects that satisfy a certain condition.

The following sections describe the high-level components of the synchronization schema.

## Directory definitions

[Directory definitions](synchronization-directorydefinition.md) provide the synchronization engine information about directories and their objects. For example, the directory definition tells the synchronization engine that an Azure AD directory has objects named **user** and **group**, which attributes are supported for those objects, and the types for those attributes. In order for a particular object and attribute to be used in synchronization rules/object mappings, they have to be defined as part of the directory definition.

## Synchronization rules

[Synchronization rules](synchronization-synchronizationrule.md) are the core of the synchronization setup. They define for the synchronization engine how the synchronization should be performed, including what objects should be synchronized, how objects from the source directory should be matched with objects in the target directory, and how attributes should be transformed when they're synchronized from the source to the target directory.

## Object mappings

[Object mappings](synchronization-objectmapping.md) are the main part of the synchronization rule. Each object mapping defines how a given object should be synchronized from the source to the target directory. In particular, the mapping defines how an object in the source directory should be matched with an object in the target directory, what (if any) scoping filters should be used to decide whether to provision an object, and how object attributes should be transformed when they're synchronized from the source to the target directory.

## Methods

| Method                                                                                                | Return Type                                                                                                 | Description                                                                                                                |
|:------------------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------|
| [Get schema](../api/synchronization-synchronizationschema-get.md)                                     | [synchronizationSchema](synchronization-synchronizationschema.md)                                           | Read properties and relationships of the **synchronizationSchema** object.                                                 |
| [Update schema](../api/synchronization-synchronizationschema-update.md)                               | None                                                                                                        | Update the synchronization schema.                                                                                         |
| [Delete schema](../api/synchronization-synchronizationschema-delete.md)                               | None                                                                                                        | Delete the customized schema, resetting the schema to the default configuration.                                           |
| [List filter operators](../api/synchronization-synchronizationschema-filteroperators.md)              | [filterOperatorSchema](../resources/synchronization-filteroperatorschema.md) collection                      | List all operators supported in the scoping filters.                                                                       |
| [List attribute mapping functions](../api/synchronization-synchronizationschema-functions.md)         | [attributeMappingFunctionSchema](../resources/synchronization-attributemappingfunctionschema.md) collection | List all functions supported in the attribute mapping expressions.                                                         |
| [Parse attribute mapping expression](../api/synchronization-synchronizationschema-parseexpression.md) | [parseExpressionResponse](synchronization-parseexpressionresponse.md)                                       | Parse a string expression into an [attributeMappingSource](../resources/synchronization-attributemappingsource.md) object. |


## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|id|String|Unique identifier for the schema.|
|synchronizationRules   |[synchronizationRule](synchronization-synchronizationrule.md) collection   |A collection of synchronization rules configured for the [synchronizationJob](synchronization-synchronizationjob.md) or [synchronizationTemplate](synchronization-synchronizationtemplate.md). |
|version                |String                             |The version of the schema, updated automatically with every schema change.|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|directories|[directoryDefinition](../resources/synchronization-directorydefinition.md) collection|Contains the collection of directories and all of their objects.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.synchronizationSchema",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.synchronizationSchema",
  "id": "String (identifier)",
  "synchronizationRules": [
    {
      "@odata.type": "microsoft.graph.synchronizationRule"
    }
  ],
  "version": "String"
}
```


