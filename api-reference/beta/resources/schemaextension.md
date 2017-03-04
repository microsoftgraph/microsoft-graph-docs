# schemaExtension resource type (schema extensions)

Schema extensions allow you to define a schema you can use to extend a resource type. Schema extension definitions let you add strongly-typed custom data to a resource. The custom data appears as a complex type on the extended resource. 

The [schema extension example](../../../concepts/extensibility_schema_groups.md) shows how you to use schema extensions to add custom data to a group.

Schema extensions are supported for the following resource types:

 - a [message](message.md) and [event](event.md) 
 - an **event** or [post](post.md) for an Office 365 group
 - a [device](device.md)
 - a [group](group.md)
 - a [user](user.md)

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create](../api/schemaextension_post_schemaextensions.md) | [schemaExtension](schemaextension.md) |Create a schema extension definition.|
|[List](../api/schemaextension_list.md) | [schemaExtension](schemaextension.md) |List the avaialbe schemaExtension defintions and their properties.|
|[Get](../api/schemaextension_get.md) | [schemaExtension](schemaextension.md) |Read the properties of a specific schemaExtension definition.|
|[Update](../api/schemaextension_update.md) | [schemaExtension](schemaextension.md)	|Update a schemaExtension definition. |
|[Delete](../api/schemaextension_delete.md) | None |Delete a schemaExtension definition. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|String|Description for the schema extension.|
|id|String|The unique identifier for the schema extension definition. The value must be a concatenation of one of your verified domains (e.g. contoso.com) and a name for the schema extension - e.g. *contoso_mySchema*. |
|owner|String|The appId of the application that created the schema extension. Read-only.|
|properties|[ExtensionSchemaProperty](extensionschemaproperty.md) collection|The collection of property names and types that make up the schema extension definition.|
|status|String|The lifecycle state of the schema extension. Possible states are *InDevelopment*, *Available*, and *Deprecated*. Automatically set to *InDevelopment* on creation. [Schema extensions](../../../concepts/extensibility_overview.md#schema-extensions-(preview)) provides more information on the possible state transitions and behaviors.|
|targetTypes|String collection|Set of Microsoft Graph types (that can support extensions) that the schema extension can be applied to. Select from *user, device, event, group, message, post*.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.schemaExtension"
}-->

```json
{
  "description": "String",
  "id": "String (identifier)",
  "owner": "String",
  "properties": [{"@odata.type": "microsoft.graph.ExtensionSchemaProperty"}],
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