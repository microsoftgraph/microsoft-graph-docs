# synchronizationSchedule resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Defines the schedule used to run a [synchronizationJob](synchronization_synchronizationjob.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|expiration|DateTimeOffset|Date and time when this job will expire. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|interval|Duration|The interval between synchronization iterations.|
|state|String| Possible values are: `Active`, `Disabled`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationSchedule"
}-->

```json
{
  "expiration": "String (timestamp)",
  "interval": "String (duration)",
  "state": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "synchronizationSchedule resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->