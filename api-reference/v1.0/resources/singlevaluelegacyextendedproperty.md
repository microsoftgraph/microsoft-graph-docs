# singleValueLegacyExtendedProperty resource type

An extended property that contains a single value. 

See [Extended properties overview](../resources/extended-properties-overview.md) for more information about when to use 
open extensions or extended properties, and how to specify extended properties. 


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Post](../api/singlevaluelegacyextendedproperty_post_singlevalueextendedproperties.md) | A supported resource instance: [message](../resources/message.md), [mailFolder](../resources/mailfolder.md), [event](../resources/event.md), [calendar](../resources/calendar.md), [contact](../resources/contact.md), or [contactFolder](../resources/contactfolder.md), but not group [post](../resources/post.md). | Create a **singleValueLegacyExtendedProperty** in a new or existing instance of a supported resource. |
|[Get](../api/singlevaluelegacyextendedproperty_get.md) |One or a collection of supported resource instance ([message](../resources/message.md), [mailFolder](../resources/mailfolder.md), [event](../resources/event.md), [calendar](../resources/calendar.md), [contact](../resources/contact.md), [contactFolder](../resources/contactfolder.md), or group [post](../resources/post.md)), or one such instance expanded with a [singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) object. |Get a resource instance with an extended property using `$expand` or `$filter`.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|The property ID used to identify the property. Read-only.|
|value|string|A property value.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.singleValueLegacyExtendedProperty"
}-->

```json
{
  "id": "string (identifier)",
  "value": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "singleValueLegacyExtendedProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->