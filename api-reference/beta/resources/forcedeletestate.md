# forceDeleteState resource type

Represents the status of the [forceDelete](../api/domain_forcedelete.md) action.


### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|lastActionDateTime|DateTimeOffset| Timestamp for when last activity occurred. It is updated when the operation is scheduled, the async task starts, and when the operation completes.|
|status|String| Current status of the operation. *Scheduled*: Operation has been scheduled but has not started.</br>*InProgress*: Task has started and is in progress.</br>*Failed*|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.forceDeleteState"
}-->

```json
{
  "LastActionDateTime": "String (timestamp)",
  "Status": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "forceDeleteState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->