---
title: "Get activityStatistics"
description: "Retrieve the properties of an activityStatistics object for a user."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "apiPageType"
---

# Get activityStatistics

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of an [activityStatistics](../resources/activitystatistics.md) object for a user.

You can get the properties of a type of [activityStatistics](../resources/activitystatistics.md) for the specified user and date range. You can specify the type of statistics and date range by using the supported format of the [activity id property](../resources/activitystatistics.md#activity-id-property) for `id` in the query.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Analytics.Read |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" }  -->

```http
GET https://graph.microsoft.com/beta/me/analytics/activitystatistics/{id}

GET https://graph.microsoft.com/beta/users/{id|userPrincipalName}/analytics/activitystatistics/{id}

```

## Optional query parameters

This method does not support optional query parameters to customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested type of activity statistics, which is one of the following resources derived from [activityStatistics](../resources/activitystatistics.md):{[Call](../resources/callactivitystatistics.md), [Chat](../resources/chatactivitystatistics.md), [Email](../resources/emailactivitystatistics.md), [Focus](../resources/focusactivitystatistics.md), and [Meeting](../resources/meetingactivitystatistics.md)}.

## Example

#### Request

The following example requests statistics of the type emailActivityStatistics of the signed-in user, for the date range between 2019-06-16 and 2019-06-17. For more information about the general id property format, see [activity id property](../resources/activitystatistics.md#activity-id-property).


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_activitystatistics"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/analytics/activitystatistics/email_2019-06-16_2019-06-17

```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-activitystatistics-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-activitystatistics-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-activitystatistics-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response that gets activity statistics of a signed-in user for a specific activity and day.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.activityStatistics"
} -->

```http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#activitystatistics/$entity",
    "@odata.type": "#microsoft.graph.emailActivityStatistics",
    "activity": "Email",
    "startDate": "2019-06-16",
    "endDate": "2019-06-17",
    "id": "email_2019-06-16_2019-06-17",
    "timeZoneUsed": "Pacific Standard Time",
    "duration": "PT0S",
    "afterHours": "PT0S",
    "readEmail": "PT0S",
    "sentEmail": "PT0S"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get activityStatistics",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
