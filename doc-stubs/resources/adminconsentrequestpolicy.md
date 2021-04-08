---
title: "adminConsentRequestPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# adminConsentRequestPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List adminConsentRequestPolicies](../api/adminconsentrequestpolicy-list.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) collection|Get a list of the [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) objects and their properties.|
|[Create adminConsentRequestPolicy](../api/adminconsentrequestpolicy-create.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|Create a new [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.|
|[Get adminConsentRequestPolicy](../api/adminconsentrequestpolicy-get.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|Read the properties and relationships of an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.|
|[Update adminConsentRequestPolicy](../api/adminconsentrequestpolicy-update.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|Update the properties of an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.|
|[Delete adminConsentRequestPolicy](../api/adminconsentrequestpolicy-delete.md)|None|Deletes an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|isEnabled|Boolean|**TODO: Add Description**|
|notifyReviewers|Boolean|**TODO: Add Description**|
|remindersEnabled|Boolean|**TODO: Add Description**|
|requestDurationInDays|Int32|**TODO: Add Description**|
|reviewers|[accessReviewScope](../resources/accessreviewscope.md) collection|**TODO: Add Description**|
|version|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adminConsentRequestPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminConsentRequestPolicy",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "version": "Integer",
  "notifyReviewers": "Boolean",
  "remindersEnabled": "Boolean",
  "requestDurationInDays": "Integer",
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ]
}
```

