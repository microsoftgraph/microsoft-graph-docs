---
title: "membershipRuleProcessingStatus resource type"
description: "Represents the current status of dynamic group processing."
localization_priority: Normal
author: "yyuank"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# membershipRuleProcessingStatus resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current status of dynamic group processing.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| status | [membershipRuleProcessingStatusDetails](#membershipruleprocessingstatusdetails-values) | Current status of a dynamic group processing. Possible values are: `NotStarted`, `Running`, `Succeeded`, `Failed`, and `UnknownFutureValue`.  <br><br> Required. Read-only.|
| lastMembershipUpdated | edm.DateTime | Most recent date and time when membership of a dynamic group was updated. <br><br> Optional. Read-only.|
| errorMessage | String | Detailed error message if dynamic group processing ran into an error. <br><br> Optional. Read-only.|

### membershipRuleProcessingStatusDetails values

| Member | Description |
|:-------- |:----------- |
| NotStarted | Group has been created or updated, and awaiting processing.|
| Running | Processing has started.|
| Succeeded | Processing has completed. Incremental object changes are processed perpetually. |
| Failed | Processing ran into an error. See **errorMessage** for details. |
| UnknownFutureValue | Supports future values. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.membershipRuleProcessingStatus",
  "baseType": null
}-->

```json
{
  "status": "string",
  "lastMembershipUpdated": "DateTime",
  "errorMessage": "string"
}
```
