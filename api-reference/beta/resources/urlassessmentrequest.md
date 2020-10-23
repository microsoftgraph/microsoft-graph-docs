---
title: "urlAssessmentRequest resource type"
description: "Used to create and retrieve a URL threat assessment."
localization_priority: Normal
author: "hafen-ms"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# urlAssessmentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to create and retrieve a URL threat assessment, derived from [threatAssessmentRequest](threatAssessmentRequest.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create threatAssessmentRequest](../api/informationprotection-post-threatassessmentrequests.md) | [urlAssessmentRequest](urlAssessmentRequest.md) | Create a new URL assessment request by posting an **urlAssessmentRequest** object. |
| [Get threatAssessmentRequest](../api/threatassessmentrequest-get.md) | [urlAssessmentRequest](urlassessmentrequest.md) | Read the properties and relationships of a **urlAssessmentRequest** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|url|String|The URL string.|
|category|[threatCategory](enums.md#threatcategory-values)|The threat category. Possible values are: `spam`, `phishing`, `malware`.|
|contentType|[threatAssessmentContentType](enums.md#threatassessmentcontenttype-values)|The content type of the threat assessment. Possible values are: `mail`, `url`, `file`.|
|createdBy|[identitySet](identityset.md)|The threat assessment request creator.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|expectedAssessment|[threatExpectedAssessment](enums.md#threatexpectedassessment-values)|The expected assessment from the ubmitter. Possible values are: `block`, `unblock`.|
|id|String|The threat assessment request ID is a globally unique identifier (GUID).|
|requestSource|[threatAssessmentRequestSource](enums.md#threatassessmentrequestsource-values)|The source of the threat assessment request. Possible values are: `user`, `administrator`.|
|status|[threatAssessmentStatus](enums.md#threatassessmentstatus-values)|The assessment process status. Possible values are: `pending`, `completed`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|results|[threatAssessmentResult](threatassessmentresult.md) collection|A collection of threat assessment results. Read-only. By default, a `GET /threatAssessmentRequests/{id}` does not return this property unless you apply `$expand` on it.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.urlAssessmentRequest",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "url": "String",
  "category": "String",
  "contentType": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "expectedAssessment": "String",
  "id": "String (identifier)",
  "requestSource": "String",
  "status": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "urlAssessmentRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


