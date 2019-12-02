---
title: "mailAssessmentRequest resource type"
description: "A resource type used to create and retrieve mail assessment."
localization_priority: Normal
author: "hafen-ms"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# mailAssessmentRequest resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type used to create and retrieve mail assessment, derived from [threatAssessmentRequest](threatAssessmentRequest.md).

The mail should be received by the user specified in `recipientEmail`.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get mailAssessmentRequest](../api/threatassessmentrequest-get.md) | [mailAssessmentRequest](mailassessmentrequest.md) | Read properties and relationships of mailAssessmentRequest object. |
| [Create mailAssessmentRequest](../api/informationprotection-post-threatassessmentrequests.md) | [mailAssessmentRequest](mailAssessmentRequest.md) | Create a new mail assessment request by posting a **mailAssessmentRequest** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|destinationRoutingReason|[mailDestinationRoutingReason](enums.md#mailDestinationRoutingReason-values)|The reason for mail routed to its destination. Possible values are: `none`, `mailFlowRule`, `safeSender`, `blockedSender`, `advancedSpamFiltering`, `domainAllowList`, `domainBlockList`, `notInAddressBook`, `firstTimeSender`, `autoPurgeToInbox`, `autoPurgeToJunk`, `autoPurgeToDeleted`, `outbound`, `notJunk`, `junk`.|
|messageUri|String|The graph resource URI of the mail message for assessment.|
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
  "@odata.type": "microsoft.graph.mailAssessmentRequest",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "destinationRoutingReason": "String",
  "messageUri": "String",
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
  "description": "mailAssessmentRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->