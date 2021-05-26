---
title: "adminConsentRequestPolicy resource type"
description: "Specifies the policy by which consent requests can be created and managed for the entire tenant."
author: "psignoret"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# adminConsentRequestPolicy resource type

Namespace: microsoft.graph

Specifies the policy by which consent requests are created and managed for the entire tenant. There is a single **adminConsentRequestPolicy** per tenant.

The **adminConsentRequestPolicy** provides additional settings when creating a consent request, to control the feature behavior when starting a consent request.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get adminConsentRequestPolicy](../api/adminconsentrequestpolicy-get.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|Read the properties and relationships of an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.|
|[Update adminConsentRequestPolicy](../api/adminconsentrequestpolicy-update.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|Update the properties of an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Specifies whether the admin consent request feature is enabled or disabled. Required.|
|notifyReviewers|Boolean|Specifies whether reviewers will receive notifications. Required.|
|remindersEnabled|Boolean|Specifies whether reviewers will receive reminder emails. Required.|
|requestDurationInDays|Int32|Specifies the duration the request is active before it automatically expires if no decision is applied.|
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|The list of reviewers for the admin consent. Required.|
|version|Int32|Specifies the version of this policy. When the policy is updated, this version is updated. Read-only.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adminConsentRequestPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminConsentRequestPolicy",
  "isEnabled": "Boolean",
  "version": "Integer",
  "notifyReviewers": "Boolean",
  "remindersEnabled": "Boolean",
  "requestDurationInDays": "Integer",
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ]
}
```

