# resourceVisualization resource type

Complex type containing properties of [Used](insights_used.md) items.

## JSON representation

Here is a JSON representation of the resource

```json
{
  "lastAccessedDateTime": "DateTimeOffset",
  "lastAccessedModifiedTime": "DateTimeOffset"
}
```

## Properties

| Property      		| Type          | Description  |
| ------------- 		|---------------| -------------|
| lastAccessedDateTime      			| DateTimeOffset		| The date and time the resource was last accessed. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`. Read-only.       	   		   |
| lastAccessedModifiedTime    			| DateTimeOffset		| The date and time the resource was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`. Read-only.       |