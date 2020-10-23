---
title: "directoryDefinition resource type"
description: "Provides the synchronization engine information about a directory and its objects."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# directoryDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the synchronization engine information about a directory and its objects. This resource tells the synchronization engine, for example, that the directory has objects named **user** and **group**, which attributes are supported for those objects, and the types for those attributes. In order for the object and attribute to participate in [synchronization rules](synchronization-synchronizationrule.md) and [object mappings](synchronization-objectmapping.md), they must be defined as part of the directory definition.

In general, the default [synchronization schema](synchronization-synchronizationschema.md) provided as part of the [synchronization template](synchronization-synchronizationtemplate.md) will define most commonly used objects and attributes for that directory. However, if the directory supports the addition of custom attributes, you might want to expand the default definition with your own custom objects or attributes. For more information, see [Configure synchronization with custom attributes](synchronization-configure-with-custom-target-attributes.md) and [Configure synchronization with directory extension attributes](synchronization-configure-with-directory-extension-attributes.md).

Directory definitions are updated as part of the [synchronization schema](synchronization-synchronizationschema.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Discover directoryDefinition](../api/directorydefinition-discover.md) | [directoryDefinition](synchronization-directorydefinition.md) |Discover the schema and supported properties of the directory.|

## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|id           |String     |Directory identifier. Not nullable.|
|metadata       |metadataEntry collection    |Additional extension properties. Unless mentioned explicitly, metadata values should not be changed.|
|name           |String     |Name of the directory. Must be unique within the [synchronization schema](synchronization-synchronizationschema.md). Not nullable.|
|objects        |[objectDefinition](synchronization-objectdefinition.md) collection    |Collection of objects supported by the directory.|
|version|String|Read only value that indicates version discovered. Null if discovery has not yet occurred.|
|discoveryDateTime|DateTimeOffset| Represents the discovery date and time using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|discoverabilities|string| Read only value indicating what type of discovery the app supports. Possible values are: `AttributeDataTypes`, `AttributeNames`, `AttributeReadOnly`, `None`, `ReferenceAttributes`, `UnknownFutureValue`.| 

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directoryDefinition"
}-->

```json
{
  "discoverabilities": "String",
  "discoveryDateTime": "DateTimeOffset",
  "id": "String",
  "metadata": [{"@odata.type": "microsoft.graph.stringKeyStringValuePair"}],
  "name": "String",
  "objects": [{"@odata.type": "microsoft.graph.objectDefinition"}],
  "version": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "directoryDefinition resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


