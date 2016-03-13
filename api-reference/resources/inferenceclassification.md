# inferenceClassification resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get inferenceClassification](../api/inferenceclassification_get.md) | [inferenceClassification](inferenceclassification.md) |Read properties and relationships of inferenceClassification object.|
|[Create inferenceClassificationOverride](../api/inferenceclassification_post_overrides.md) |[inferenceClassificationOverride](inferenceclassificationoverride.md)| Create a new inferenceClassificationOverride by posting to the overrides collection.|
|[List overrides](../api/inferenceclassification_list_overrides.md) |[inferenceClassificationOverride](inferenceclassificationoverride.md) collection| Get a inferenceClassificationOverride object collection.|
|[Delete](../api/inferenceclassification_delete.md) | None |Delete inferenceClassification object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string| Read-only.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|overrides|[inferenceClassificationOverride](inferenceclassificationoverride.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.inferenceclassification"
}-->

```json
{
  "id": "string (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "inferenceClassification resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->