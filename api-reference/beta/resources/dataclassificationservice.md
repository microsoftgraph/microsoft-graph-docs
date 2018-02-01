# dataClassificationService resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The entry point for Data Classification Service resources.

All calls to the Data Classification Service through the Microsoft Graph API use this service root URL:

```
https://graph.microsoft.com/{version}/dataClassification/
```


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Classify File](../api/dataclassificationservice_post_classifyfile.md) |Empty body with Location HTTP header.| Classify a file.|
|[Classify Text](../api/dataclassificationservice_post_classifytext.md) |Empty body with Location HTTP header.| Classify a text string.|
|[List jobs](../api/dataclassificationservice_list_jobs.md) |[jobResponseBase](jobresponsebase.md) collection| Get a jobResponseBase object collection.|
|[List sensitiveTypes](../api/dataclassificationservice_list_sensitivetypes.md) |[sensitiveType](sensitivetype.md) collection| Get a sensitiveType object collection.|


## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|classifyFile|[fileClassificationRequest](fileclassificationrequest.md) collection| Read-only. Nullable.|
|classifyText|[textClassificationRequest](textclassificationrequest.md) collection| Read-only. Nullable.|
|jobs|[jobResponseBase](jobresponsebase.md) collection| Read-only. Nullable.|
|sensitiveTypes|[sensitiveType](sensitivetype.md) collection| Read-only. Nullable.|


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "dataClassificationService resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->