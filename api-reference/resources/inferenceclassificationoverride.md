# inferenceClassificationOverride resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.inferenceclassificationoverride"
}-->

```json
{
  "classifyAs": "String",
  "id": "string (identifier)",
  "senderEmailAddress": {"@odata.type": "microsoft.graph.emailAddress"}
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|classifyAs|String| Possible values are: `Focused`, `Other`.|
|id|String| Read-only.|
|senderEmailAddress|[EmailAddress](emailaddress.md)||

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get inferenceClassificationOverride](../api/inferenceclassificationoverride_get.md) | [inferenceClassificationOverride](inferenceclassificationoverride.md) |Read properties and relationships of inferenceClassificationOverride object.|
|[Update](../api/inferenceclassificationoverride_update.md) | [inferenceClassificationOverride](inferenceclassificationoverride.md)	|Update inferenceClassificationOverride object. |
|[Delete](../api/inferenceclassificationoverride_delete.md) | None |Delete inferenceClassificationOverride object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "inferenceClassificationOverride resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->