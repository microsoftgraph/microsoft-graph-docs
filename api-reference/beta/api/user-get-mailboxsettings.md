---
title: "Get user mailbox settings"
description: "Get the user's mailboxSettings. This includes settings for automatic replies (notify people automatically upon "
localization_priority: Normal
author: "svpsiva"
ms.prod: "outlook"
doc_type: apiPageType
---

# Get user mailbox settings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the user's [mailboxSettings](../resources/mailboxsettings.md). You can view all mailbox settings, or get specific settings.

Users can set the following settings for their mailboxes through an Outlook client:

- [automatic replies](../resources/automaticrepliessetting.md) (notify people automatically upon 
receipt of their email)
- date format
- delegateMeetingMessageDeliveryOptions
- [locale](../resources/localeinfo.md) (language and country/region)
- time format
- time zone
- [working hours](../resources/workinghours.md)
- [user purpose](../resources/userpurpose.md)

Users can set their preferred date and time formats using Outlook on the web. Users can choose one of the supported [short date](/dotnet/standard/base-types/standard-date-and-time-format-strings#ShortDate) or [short time](/dotnet/standard/base-types/standard-date-and-time-format-strings#ShortTime) formats. This `GET` operation returns the format the user has chosen.

Users can set the time zone they prefer on any Outlook client, by choosing from the [supported time zones](outlookuser-supportedtimezones.md) that their administrator has set up for their mailbox server. The administrator can set up time zones in the Windows time zone format or  [Internet Assigned Numbers Authority (IANA) time zone](https://www.iana.org/time-zones) (also known as Olson time zone) format. The Windows format is the default. 

This `GET` operation returns the user's preferred time zone in the format that the administrator has set up. If you want that time zone to be in a specific format (Windows or IANA), you can first [update the preferred time zone in that format as a mailbox setting](user-update-mailboxsettings.md). Subsequently you will be able to get the time zone in that format. Alternatively, you can manage the format conversion separately in your app. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | MailboxSettings.Read, MailboxSettings.ReadWrite    |
|Delegated (personal Microsoft account) | MailboxSettings.Read, MailboxSettings.ReadWrite    |
|Application | MailboxSettings.Read, MailboxSettings.ReadWrite |

## HTTP request
To get all the mailbox settings for a user:
<!-- { "blockType": "ignored" } -->
```http
GET /me/mailboxSettings
GET /users/{id|userPrincipalName}/mailboxSettings
```

To get specific settings - only the automatic replies settings, date format, locale, time format, time zone, working hours, or user purpose:
<!-- { "blockType": "ignored" } -->
```http
GET /me/mailboxSettings/automaticRepliesSetting
GET /users/{id|userPrincipalName}/mailboxSettings/automaticRepliesSetting

GET /me/mailboxSettings/dateFormat
GET /users/{id|userPrincipalName}/mailboxSettings/dateFormat

GET /me/mailboxSettings/delegateMeetingMessageDeliveryOptions
GET /users/{id|userPrincipalName}/mailboxSettings/delegateMeetingMessageDeliveryOptions

GET /me/mailboxSettings/language
GET /users/{id|userPrincipalName}/mailboxSettings/language

GET /me/mailboxSettings/timeFormat
GET /users/{id|userPrincipalName}/mailboxSettings/timeFormat

GET /me/mailboxSettings/timeZone
GET /users/{id|userPrincipalName}/mailboxSettings/timeZone

GET /me/mailboxSettings/workingHours
GET /users/{id|userPrincipalName}/mailboxSettings/workingHours

GET /me/mailboxSettings/userPurpose
GET /users/{id|userPrincipalName}/mailboxSettings/userPurpose
```
## Optional query parameters
This method supports some of the [OData Query Parameters](/graph/query-parameters) to help customize the response.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and one of the following requested objects in the response body:

- [mailboxSettings](../resources/mailboxsettings.md) object
- [automaticRepliesSetting](../resources/automaticrepliessetting.md) object
- string (for **dateFormat**)
- string (for **delegateMeetingMessageDeliveryOptions**)
- [localeInfo](../resources/localeinfo.md) object
- string (for **timeFormat**)
- string (for **timeZone**)
- [workingHours](../resources/workinghours.md)
- [userPurpose](../resources/userpurpose.md)

## Examples

### Example 1
#### Request 
The first example gets all the mailbox settings of the signed-in user's mailbox, which include settings for automatic replies, date format, 
locale (language and country/region), time format, time zone, working hours, and user purpose.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_mailboxsettings_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/mailboxSettings
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-mailboxsettings-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-mailboxsettings-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-mailboxsettings-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-mailboxsettings-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The response includes all the mailbox settings of the signed-in user. 
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxSettings"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Me/mailboxSettings",
    "automaticRepliesSetting": {
        "status": "Scheduled",
        "externalAudience": "All",
        "scheduledStartDateTime": {
            "dateTime": "2016-03-14T07:00:00.0000000",
            "timeZone": "UTC"
        },
        "scheduledEndDateTime": {
            "dateTime": "2016-03-28T07:00:00.0000000",
            "timeZone": "UTC"
        },
        "internalReplyMessage": "<html>\n<body>\n<p>I'm at our company's worldwide reunion and will respond to your message as soon as I return.<br>\n</p></body>\n</html>\n",
        "externalReplyMessage": "<html>\n<body>\n<p>I'm at the Contoso worldwide reunion and will respond to your message as soon as I return.<br>\n</p></body>\n</html>\n"
    },
    "timeZone":"UTC",
    "language":{
      "locale":"en-US",
      "displayName":"English (United States)"
    },
    "workingHours":{
        "daysOfWeek":[
            "monday",
            "tuesday",
            "wednesday",
            "thursday",
            "friday"
        ],
        "startTime":"08:00:00.0000000",
        "endTime":"17:00:00.0000000",
        "timeZone":{
            "name":"Pacific Standard Time"
        }
    },
    "userPurpose": {
        "value": "user"
    },
    "dateFormat": "MM/dd/yyyy",
    "timeFormat": "hh:mm tt",
    "delegateMeetingMessageDeliveryOptions": "sendToDelegateOnly"
}
```

### Example 2
#### Request
The second example gets specifically the automatic replies settings of the signed-in user's mailbox.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_mailboxsettings_2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/mailboxSettings/automaticRepliesSetting
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-mailboxsettings-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-mailboxsettings-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-mailboxsettings-2-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-mailboxsettings-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The response includes only the automatic replies settings. 
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.automaticRepliesSetting"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Me/mailboxSettings/automaticRepliesSetting",
    "status": "alwaysEnabled",
    "externalAudience": "None",
    "scheduledStartDateTime": {
        "dateTime": "2016-03-19T02:00:00.0000000",
        "timeZone": "UTC"
    },
    "scheduledEndDateTime": {
        "dateTime": "2016-03-20T02:00:00.0000000",
        "timeZone": "UTC"
    },
    "internalReplyMessage": "<html>\n<body>\n<p>I'm at our company's worldwide reunion and will respond to your message as soon as I return.<br>\n</p></body>\n</html>\n",
    "externalReplyMessage": "<html>\n<body>\n<p>I'm at the Contoso worldwide reunion and will respond to your message as soon as I return.<br>\n</p></body>\n</html>\n"
}
```

### Example 3
#### Request
The third example gets specifically the working hour settings of the signed-in user's mailbox.
<!-- {
  "blockType": "ignored",
  "name": "get_mailboxsettings_3"
}-->
```http
GET https://graph.microsoft.com/beta/me/mailboxSettings/workingHours
```
#### Response
The response includes only the working hours settings. Notice that the user's work hours are in a [custom time zone](../resources/customtimezone.md). 
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "ignored",
  "name": "get_mailboxsettings_3",
  "truncated": true,
  "@odata.type": "microsoft.graph.workingHours"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#users('94447c6e-ea4c-494c-a9ed-d905e366c5cb')/mailboxSettings/workingHours",
    "daysOfWeek":[
        "monday",
        "tuesday",
        "wednesday",
        "thursday",
        "friday",
        "saturday"
    ],
    "startTime":"09:00:00.0000000",
    "endTime":"18:30:00.0000000",
    "timeZone":{
        "@odata.type":"#microsoft.graph.customTimeZone",
        "bias":-200,
        "name":"Customized Time Zone",
        "standardOffset":{
            "time":"02:00:00.0000000",
            "dayOccurrence":4,
            "dayOfWeek":"sunday",
            "month":5,
            "year":0
        },
        "daylightOffset":{
            "daylightBias":-100,
            "time":"02:00:00.0000000",
            "dayOccurrence":2,
            "dayOfWeek":"sunday",
            "month":10,
            "year":0
        }
    }
}
```

### Example 4
#### Request
The fourth example gets specifically the [user purpose](../resources/userpurpose.md) settings of the signed-in user's mailbox.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_mailboxsettings_4"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/mailboxSettings/userPurpose
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-mailboxsettings-4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-mailboxsettings-4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-mailboxsettings-4-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-mailboxsettings-4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The response includes only the [user purpose](../resources/userpurpose.md) settings.

<!-- {
  "blockType": "response",
  "name": "get_mailboxsettings_4",
  "truncated": true,
  "@odata.type": "microsoft.graph.userPurpose"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('622eaaff-0683-4862-9de4-f2ec83c2bd98')/mailboxSettings/userPurpose",
    "value": "user"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get mailbox settings",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
