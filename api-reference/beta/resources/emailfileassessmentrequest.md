---
title: "emailFileAssessmentRequest resource type"
description: "A resource type used to create and retrieve email file assessment."
localization_priority: Normal
author: "hafen-ms"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# emailFileAssessmentRequest resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type used to create and retrieve email file assessment, derived from [threatAssessmentRequest](threatAssessmentRequest.md).

The email file can be a `.eml` type file.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get emailFileAssessmentRequest](../api/threatassessmentrequest-get.md) | [emailFileAssessmentRequest](emailfileassessmentrequest.md) | Read properties and relationships of emailFileAssessmentRequest object. |
| [Create emailFileAssessmentRequest](../api/informationprotection-post-threatassessmentrequests.md) | [emailFileAssessmentRequest](emailFileAssessmentRequest.md) | Create a new email file assessment request by posting an **emailFileAssessmentRequest** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|contentData|String|Base64 encoded `.eml` email file content. The file content cannot fetch back as we won't store it.|
|destinationRoutingReason|[mailDestinationRoutingReason](enums.md#mailDestinationRoutingReason-values)|The reason for mail routed to its destination. Possible values are: `none`, `mailFlowRule`, `safeSender`, `blockedSender`, `advancedSpamFiltering`, `domainAllowList`, `domainBlockList`, `notInAddressBook`, `firstTimeSender`, `autoPurgeToInbox`, `autoPurgeToJunk`, `autoPurgeToDeleted`, `outbound`, `notJunk`, `junk`.|
|recipientEmail|String|The mail recipient whose policies are used to assess the mail.|
|category|[threatCategory](enums.md#threatCategory-values)|The threat category. Possible values are: `spam`, `phishing`, `malware`.|
|contentType|[threatAssessmentContentType](enums.md#threatAssessmentContentType-values)|The content type of threat assessment. Possible values are: `mail`, `url`, `file`.|
|createdBy|[identitySet](identityset.md)|The threat assessment request creator.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|expectedAssessment|[threatExpectedAssessment](enums.md#threatExpectedAssessment-values)|The expected assessment from submitter. Possible values are: `block`, `unblock`.|
|id|String|The threat assessment request ID is a globally unique identifier (GUID).|
|requestSource|[threatAssessmentRequestSource](enums.md#threatAssessmentRequestSource-values)|The source of threat assessment request. Possible values are: `user`, `administrator`.|
|status|[threatAssessmentStatus](enums.md#threatAssessmentStatus-values)|The assessment process status. Possible values are: `pending`, `completed`.|

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
  "@odata.type": "microsoft.graph.emailFileAssessmentRequest",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "contentData": "String",
  "destinationRoutingReason": "String",
  "recipientEmail": "String",
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
  "description": "emailFileAssessmentRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->