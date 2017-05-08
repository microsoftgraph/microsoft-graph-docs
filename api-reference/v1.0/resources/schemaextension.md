# schemaExtension resource type (schema extensions)

Schema extensions allow you to define a schema to extend and add strongly-typed custom data to a resource type. The custom data appears as a complex type on the extended resource. 

Schema extensions are supported by the following resource types:

 - [contact](contact.md)
 - [device](device.md)
 - [event](event.md) 
 - **event** or [post](post.md) of an Office 365 group
 - [group](group.md)
 - [message](message.md) 
 - [organization](organization.md)
 - [user](user.md)

See the [schema extension example](../../../concepts/extensibility_schema_groups.md) to learn how to add custom data to groups.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create](../api/schemaextension_post_schemaextensions.md) | schemaExtension |Create a schema extension definition.|
|[List](../api/schemaextension_list.md) | schemaExtension |List the available schemaExtension definitions and their properties.|
|[Get](../api/schemaextension_get.md) | schemaExtension |Read the properties of a specific schemaExtension definition.|
|[Update](../api/schemaextension_update.md) | schemaExtension	|Update a schemaExtension definition. |
|[Delete](../api/schemaextension_delete.md) | None |Delete a schemaExtension definition. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|String|Description for the schema extension.|
|id|String|The unique identifier for the schema extension definition. The value must be a concatenation of one of your verified domains (e.g. contoso.com) and a name for the schema extension - e.g. *contoso_mySchema*. |
|owner|String|The appId of the application that created the schema extension. Read-only.|
|properties|[extensionSchemaProperty](extensionschemaproperty.md) collection|The collection of property names and types that make up the schema extension definition.|
|status|String|The lifecycle state of the schema extension. Possible states are **InDevelopment**, **Available**, and **Deprecated**. Automatically set to **InDevelopment** on creation. [Schema extensions](../../../concepts/extensibility_overview.md#schema-extensions) provides more information on the possible state transitions and behaviors.|
|targetTypes|String collection|Set of Microsoft Graph types (that can support extensions) that the schema extension can be applied to. Select from **contact**, **device**, **event**, **group**, **message**, **organization**, **post**, or **user**.|

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