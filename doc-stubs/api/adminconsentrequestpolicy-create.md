---
title: "Create adminConsentRequestPolicy"
description: "Create a new adminConsentRequestPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create adminConsentRequestPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.adminConsentRequestPolicy not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.

The following table shows the properties that are required when you create the [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|isEnabled|Boolean|**TODO: Add Description**|
|version|Int32|**TODO: Add Description**|
|notifyReviewers|Boolean|**TODO: Add Description**|
|remindersEnabled|Boolean|**TODO: Add Description**|
|requestDurationInDays|Int32|**TODO: Add Description**|
|reviewers|[accessReviewScope](../resources/accessreviewscope.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_adminconsentrequestpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.adminConsentRequestPolicy not found
Content-Type: application/json
Content-length: 321

{
  "@odata.type": "#microsoft.graph.adminConsentRequestPolicy",
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


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.adminConsentRequestPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.adminConsentRequestPolicy",
  "id": "5e46c72b-c72b-5e46-2bc7-465e2bc7465e",
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

