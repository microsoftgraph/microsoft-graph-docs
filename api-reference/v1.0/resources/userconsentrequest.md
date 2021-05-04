---
title: "userConsentRequest resource type"
description: "A request created by a user to use an app that requires access to organizational data the user is unauthorized to grant consent to themselves."
author: "psignoret"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# userConsentRequest resource type

Namespace: microsoft.graph

A [userConsentRequest](../resources/userconsentrequest.md) is created by a user when they are requesting access to an application which requires an admin authorization to access. 

## Methods

Method|Return type|Description|
|:---|:---|:---|
|[List userConsentRequests](../api/userconsentrequest-list.md)|[userConsentRequest](../resources/userconsentrequest.md) collection|Retrieve a collection of [userConsentRequest](userconsentrequest.md) objects for an [appConsentRequest](appconsentrequest.md).|
|[Get userConsentRequest](../api/userconsentrequest-get.md)|[userConsentRequest](../resources/userconsentrequest.md)|Read the properties and relationships of a [userConsentRequest](../resources/userconsentrequest.md) object.|
|[filterByCurrentUser](../api/userconsentrequest-filterByCurrentUser.md)|[userConsentRequest](../resources/userconsentrequest.md) collection|Read the properties of [userConsentRequest](../resources/userconsentrequest.md) objects for an [appConsentRequest](appconsentrequest.md) for which the current user is the reviewer.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|approvalId|String|The id of the approval. This value is equal to the value of the `id`.|
|completedDateTime|DateTimeOffset|The date and time when the **status** of the request was marked as `Completed`. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the request.|
|createdDateTime|DateTimeOffset|The date and time when the request was created. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq` only) and `$orderby`.|
|customData|String|Free text field to define any custom data for the user consent request. Not used.|
|id|String|Identifier of the request. |
|reason|String|The user's justification for requiring access to the app. Supports `$filter` (`eq` only) and `$orderby`.  |
|status|String|The status of the user's app consent request. Possible values are: `Initializing`, `InProgress`, and `Completed`. Supports `$filter` (`eq` only) and `$orderby`. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|approval|[approval](../resources/approval.md)|Approval decisions associated with a request.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userConsentRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userConsentRequest",
  "id": "String (identifier)",
  "status": "String",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "approvalId": "String",
  "customData": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "reason": "String"
}
```
