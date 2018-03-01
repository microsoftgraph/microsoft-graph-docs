# usageDetails resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Complex type containing properties of [Used](insights_used.md) items. Information on when the resource was last accessed (viewed) and modified (edited) by the user.

## JSON representation

Here is a JSON representation of the resource

```json
{
  "lastAccessedDateTime": "DateTimeOffset",
  "lastModifiedDateTime": "DateTimeOffset"
}
```

## Properties

| Property      		| Type          | Description  |
| ------------- 		|---------------| -------------|
| lastAccessedDateTime      			| DateTimeOffset		| The date and time the resource was last accessed by the user. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`. Read-only.       	   		   |
| lastModifiedDateTime    			| DateTimeOffset		| The date and time the resource was last modified by the user. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`. Read-only.       |