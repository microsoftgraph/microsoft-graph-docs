# subscribedSku resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get subscribedSku](../api/subscribedsku_get.md) | [subscribedSku](subscribedsku.md) |Read properties and relationships of subscribedSku object.|
|[Update](../api/subscribedsku_update.md) | [subscribedSku](subscribedsku.md)	|Update subscribedSku object. |
|[Delete](../api/subscribedsku_delete.md) | None |Delete subscribedSku object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appliesTo|string||
|capabilityStatus|string||
|consumedUnits|int32||
|id|string| Read-only.|
|prepaidUnits|[licenseUnitsDetail](licenseunitsdetail.md)||
|servicePlans|[servicePlanInfo](serviceplaninfo.md) collection||
|skuId|guid||
|skuPartNumber|string||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.subscribedsku"
}-->

```json
{
  "appliesTo": "string",
  "capabilityStatus": "string",
  "consumedUnits": 1024,
  "id": "string (identifier)",
  "prepaidUnits": {"@odata.type": "microsoft.graph.licenseUnitsDetail"},
  "servicePlans": [{"@odata.type": "microsoft.graph.servicePlanInfo"}],
  "skuId": "guid",
  "skuPartNumber": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "subscribedSku resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->