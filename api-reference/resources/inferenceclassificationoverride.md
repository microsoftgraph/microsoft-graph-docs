# inferenceClassificationOverride resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get inferenceClassificationOverride](../api/inferenceclassificationoverride_get.md) | [inferenceClassificationOverride](inferenceclassificationoverride.md) |Read properties and relationships of inferenceClassificationOverride object.|
|[Update](../api/inferenceclassificationoverride_update.md) | [inferenceClassificationOverride](inferenceclassificationoverride.md)	|Update inferenceClassificationOverride object. |
|[Delete](../api/inferenceclassificationoverride_delete.md) | None |Delete inferenceClassificationOverride object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|classifyAs|string| Possible values are: `focused`, `other`.|
|id|string| Read-only.|
|senderEmailAddress|[emailAddress](emailaddress.md)||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.inferenceclassificationoverride"
}-->

```json
{
  "classifyAs": "string",
  "id": "string (identifier)",
  "senderEmailAddress": {"@odata.type": "microsoft.graph.emailAddress"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "inferenceClassificationOverride resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->