---
title: "multiValueLegacyExtendedProperty resource type"
description: "An extended property that contains a collection of values."
localization_priority: Normal
author: "svpsiva"
ms.prod: ""
doc_type: resourcePageType
---

# multiValueLegacyExtendedProperty resource type

Namespace: microsoft.graph

An extended property that contains a collection of values.

See [Extended properties overview](../resources/extended-properties-overview.md) for more information about when to use
open extensions or extended properties, and how to specify extended properties.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Post](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | A supported resource instance: [message](../resources/message.md), [mailFolder](../resources/mailfolder.md), [event](../resources/event.md), [calendar](../resources/calendar.md), [contact](../resources/contact.md), or [contactFolder](../resources/contactfolder.md). Note that group [post](../resources/post.md) is not supported. | Create a **multiValueLegacyExtendedProperty** in a new or existing instance of a supported resource. |
|[Get](../api/multivaluelegacyextendedproperty-get.md) |A supported resource instance ([message](../resources/message.md), [mailFolder](../resources/mailfolder.md), [event](../resources/event.md), [calendar](../resources/calendar.md), [contact](../resources/contact.md), [contactFolder](../resources/contactfolder.md), or group [post](../resources/post.md)) expanded with a [multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) object. |Get a resource instance with an extended property using `$expand`.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|The property identifier. Read-only.|
|value|string collection|A collection of property values.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.multiValueLegacyExtendedProperty"
}-->

```json
{
  "id": "string (identifier)",
  "value": ["string"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "multiValueLegacyExtendedProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

