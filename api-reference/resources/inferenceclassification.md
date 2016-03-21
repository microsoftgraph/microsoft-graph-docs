# inferenceClassification resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "overrides"
  ],
  "@odata.type": "microsoft.graph.inferenceclassification"
}-->

```json
{
  "id": "string (identifier)"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|overrides|[InferenceClassificationOverride](inferenceclassificationoverride.md) collection| Read-only. Nullable.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get inferenceClassification](../api/inferenceclassification_get.md) | [inferenceClassification](inferenceclassification.md) |Read properties and relationships of inferenceClassification object.|
|[Create InferenceClassificationOverride](../api/inferenceclassification_post_overrides.md) |[InferenceClassificationOverride](inferenceclassificationoverride.md)| Create a new InferenceClassificationOverride by posting to the overrides collection.|
|[List overrides](../api/inferenceclassification_list_overrides.md) |[InferenceClassificationOverride](inferenceclassificationoverride.md) collection| Get a InferenceClassificationOverride object collection.|
|[Delete](../api/inferenceclassification_delete.md) | None |Delete inferenceClassification object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "inferenceClassification resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->