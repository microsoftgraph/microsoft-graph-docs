# multiValueLegacyExtendedProperty resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get multiValueLegacyExtendedProperty](../api/multivaluelegacyextendedproperty_get.md) | [multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) |Read properties and relationships of multiValueLegacyExtendedProperty object.|
|[Update](../api/multivaluelegacyextendedproperty_update.md) | [multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md)	|Update multiValueLegacyExtendedProperty object. |
|[Delete](../api/multivaluelegacyextendedproperty_delete.md) | None |Delete multiValueLegacyExtendedProperty object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|propertyId|string| Read-only.|
|value|string collection||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.multivaluelegacyextendedproperty"
}-->

```json
{
  "propertyId": "string (identifier)",
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