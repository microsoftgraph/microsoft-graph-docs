# classificationJobResponse resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the detail of classification job.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get classificationJobResponse](../api/classificationjobresponse_get.md) | [classificationJobResponse](classificationjobresponse.md) |Read properties and relationships of classificationJobResponse object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|creationDateTime|DateTimeOffset|The creation time of the job. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|endDateTime|DateTimeOffset|The end time of the job. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|error|[caasError](caaserror.md)| The error detial if any.|
|id|String| The id of job. Read-only.|
|startDateTime|DateTimeOffset|The start time of the job. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|status|String|The status of job.|
|tenantId|String|The tenant id of job.|
|type|String|The type of job.|
|result|[detectedSensitiveContentWrapper](detectedsensitivecontentwrapper.md)| The detected sensitive content.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.classificationJobResponse"
}-->

```json
{
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "error": {"@odata.type": "microsoft.graph.caasError"},
  "id": "String (identifier)",
  "startDateTime": "String (timestamp)",
  "status": "String",
  "tenantId": "String",
  "type": "String",
  "result": {"@odata.type": "microsoft.graph.detectedSensitiveContentWrapper"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "classificationJobResponse resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->