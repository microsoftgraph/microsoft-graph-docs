---
title: "schemaExtension resource type (schema extensions)"
description: "Schema extensions allow you to define a schema to extend and add strongly-typed custom data to a resource type. The custom data appears as a complex type on the extended resource. "
localization_priority: Priority
author: "dkershaw10"
ms.prod: "extensions"
doc_type: resourcePageType
---

# schemaExtension resource type (schema extensions)

Namespace: microsoft.graph

Schema extensions allow you to define a schema to extend and add strongly-typed custom data to a resource type. The custom data appears as a complex type on the extended resource. 

Schema extensions are supported by the following resource types:

- [contact](contact.md)
- [device](device.md)
- [event](event.md) on a user or Microsoft 365 group calendar
- [post](post.md) of a Microsoft 365 group
- [group](group.md)
- [message](message.md) 
- [organization](organization.md)
- [user](user.md)

See the [schema extension example](/graph/extensibility-schema-groups) to learn how to add custom data to groups.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create](../api/schemaextension-post-schemaextensions.md) | schemaExtension |Create a schema extension definition.|
|[List](../api/schemaextension-list.md) | schemaExtension |List the available schemaExtension definitions and their properties.|
|[Get](../api/schemaextension-get.md) | schemaExtension |Read the properties of a specific schemaExtension definition.|
|[Update](../api/schemaextension-update.md) | schemaExtension	|Update a schemaExtension definition. |
|[Delete](../api/schemaextension-delete.md) | None |Delete a schemaExtension definition. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|String|Description for the schema extension.|
|id|String|The unique identifier for the schema extension definition. <br>You can assign a value in one of two ways: <ul><li>Concatenate the name of one of your verified domains with a name for the schema extension to form a unique string in this format, \{_&#65279;domainName_\}\_\{_&#65279;schemaName_\}. As an example, `contoso_mySchema`. </li><li>Provide a schema name, and let Microsoft Graph use that schema name to complete the **id** assignment in this format: ext\{_&#65279;8-random-alphanumeric-chars_\}\_\{_&#65279;schema-name_\}. An example would be `extkvbmkofy_mySchema`.</li></ul>This property cannot be changed after creation. |
|owner|String|The `appId` of the application that is the owner of the schema extension. This property can be supplied on creation, to set the owner.  If not supplied, then the calling application's `appId` will be set as the owner. In either case, the signed-in user must be the owner of the application. Once set, this property is read-only and cannot be changed.| 
|properties|[extensionSchemaProperty](extensionschemaproperty.md) collection|The collection of property names and types that make up the schema extension definition.|
|status|String|The lifecycle state of the schema extension. Possible states are **InDevelopment**, **Available**, and **Deprecated**. Automatically set to **InDevelopment** on creation. [Schema extensions](/graph/extensibility-overview#schema-extensions) provides more information on the possible state transitions and behaviors.|
|targetTypes|String collection|Set of Microsoft Graph types (that can support extensions) that the schema extension can be applied to. Select from **contact**, **device**, **event**, **group**, **message**, **organization**, **post**, or **user**.|

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.schemaExtension"
}-->

```json
{
  "description": "String",
  "id": "String (identifier)",
  "owner": "String",
  "properties": [{"@odata.type": "microsoft.graph.extensionSchemaProperty"}],
  "status": "String",
  "targetTypes": ["String"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "schemaExtension resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

