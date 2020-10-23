---
title: "threatAssessmentRequest resource type"
description: "An abstract resouce type used to represent a threat assessment request item."
localization_priority: Normal
author: "hafen-ms"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# threatAssessmentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract resouce type used to represent a threat assessment request item.

A threat assessment request can be one of the following types:

* Mail ([mailAssessmentRequest](mailAssessmentRequest.md) resource)
* Email file ([emailFileAssessmentRequest](emailFileAssessmentRequest.md) resource)
* File ([fileAssessmentRequest](fileAssessmentRequest.md) resource)
* URL ([urlAssessmentRequest](urlAssessmentRequest.md) resource)

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List threatAssessmentRequest](../api/informationprotection-list-threatassessmentrequests.md) | [threatAssessmentRequest](threatassessmentrequest.md) collection | List all threat assessment requests under tenant. |
| [Create threatAssessmentRequest](../api/informationprotection-post-threatassessmentrequests.md) | [threatAssessmentRequest](threatassessmentrequest.md) | Create a new threat assessment request by posting a derived resource type: [mailAssessmentRequest](../resources/mailAssessmentRequest.md), [emailFileAssessmentRequest](../resources/emailFileAssessmentRequest.md), [fileAssessmentRequest](../resources/fileAssessmentRequest.md), [urlAssessmentRequest](../resources/urlAssessmentRequest.md). |
| [Get threatAssessmentRequest](../api/threatassessmentrequest-get.md) | [threatAssessmentRequest](threatassessmentrequest.md) | Retrieve the properties and relationships of a specified **threatAssessmentRequest** resource. |

## Properties

| Property     | Type        | Description |
| :-------------|:------------|:------------|
|category|[threatCategory](enums.md#threatcategory-values)|The threat category. Possible values are: `spam`, `phishing`, `malware`.|
|contentType|[threatAssessmentContentType](enums.md#threatassessmentcontenttype-values)|The content type of threat assessment. Possible values are: `mail`, `url`, `file`.|
|createdBy|[identitySet](identityset.md)|The threat assessment request creator.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|expectedAssessment|[threatExpectedAssessment](enums.md#threatexpectedassessment-values)|The expected assessment from submitter. Possible values are: `block`, `unblock`.|
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
  "@odata.type": "microsoft.graph.threatAssessmentRequest",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
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
  "description": "threatAssessmentRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


