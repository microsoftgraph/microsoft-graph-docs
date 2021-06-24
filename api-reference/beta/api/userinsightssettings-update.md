---
title: "Update userInsightsSettings"
description: "Update the properties of a userInsightsSettings object."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: "apiPageType"
---

# Update userInsightsSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the privacy settings for [itemInsights](../resources/iteminsights.md) and [meeting hours insights](https://support.microsoft.com/en-us/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1) of a user.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.ReadWrite |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |


## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/settings/itemInsights
PATCH /users/{userId}/settings/itemInsights
```

>**Note:** Requests with a `userId` or `userPrincipalName` are only accessible by the user or by a user with the User.ReadWrite.All permissions. To learn more, see [Permissions](/graph/permissions-reference).

## Request headers

| Header       | Value|
|:-----------|:------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.  |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|isEnabled|Boolean| `true` if user's **itemInsights** and meeting hours insights are enabled; `false` if user's **itemInsights** and meeting hours insights are disabled. Default is `true`. Optional.|

## Response

If successful, this method returns a `200 OK` response code and [userInsightsSettings](../resources/userinsightssettings.md) object in the response body.

## Example 

### Request

The following is an example request on how user updates "**isEnabled**" privacy setting in order to disable his item insights and meeting hours insights.

<!-- {
  "blockType": "request",
  "name": "update_userInsightsSettings"
}-->

```http
PATCH https://graph.microsoft.com/beta/users/{userId}/settings/itemInsights
Content-type: application/json

{
  "isEnabled": "false"
}
```


### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userInsightsSettings",
  "name": "update_userInsightsSettings"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "isEnabled": false,
}
```
