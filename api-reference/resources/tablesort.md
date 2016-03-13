# tableSort resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get tableSort](../api/tablesort_get.md) | [tableSort](tablesort.md) |Read properties and relationships of tableSort object.|
|[Update](../api/tablesort_update.md) | [tableSort](tablesort.md)	|Update tableSort object. |
|[Delete](../api/tablesort_delete.md) | None |Delete tableSort object. |
|[Apply](../api/tablesort_apply.md)|None||
|[Clear](../api/tablesort_clear.md)|None||
|[Reapply](../api/tablesort_reapply.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|fields|[sortField](sortfield.md) collection||
|matchCase|boolean||
|method|string||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tablesort"
}-->

```json
{
  "fields": [{"@odata.type": "microsoft.graph.sortField"}],
  "matchCase": true,
  "method": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "tableSort resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->