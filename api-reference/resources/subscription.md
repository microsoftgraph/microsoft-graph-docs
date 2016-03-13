# subscription resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get subscription](../api/subscription_get.md) | [subscription](subscription.md) |Read properties and relationships of subscription object.|
|[Update](../api/subscription_update.md) | [subscription](subscription.md)	|Update subscription object. |
|[Delete](../api/subscription_delete.md) | None |Delete subscription object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|changeType|string||
|clientState|string||
|expirationDateTime|[dateTimeOffset](datetimeoffset.md)||
|id|string| Read-only.|
|notificationUrl|string||
|resource|string||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.subscription"
}-->

```json
{
  "changeType": "string",
  "clientState": "string",
  "expirationDateTime": "String (timestamp)",
  "id": "string (identifier)",
  "notificationUrl": "string",
  "resource": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "subscription resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->