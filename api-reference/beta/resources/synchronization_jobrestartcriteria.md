# synchronizationJobRestartCriteria resource type

Defines the scope of [synchronizationJob: restart](../api/synchronization_job_restart.md) method.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|resetScope|String| Comma-separated combination of following values: `Full`, `QuarantineState`, `Watermark`, `Escrows`, `ConnectorDataStore`. Use `Full` if you want all of the above options combined.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationJobRestartCriteria"
}-->

```json
{
  "resetScope": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "synchronizationJobRestartCriteria resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->