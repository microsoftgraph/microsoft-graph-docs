---
title: "channel: getAllMessages"
description: "Retrieve all messages across channels in a team."
author: "RamjotSingh"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# channel: getAllMessages

Namespace: microsoft.graph

Retrieve [messages](../resources/chatmessage.md) across all [channels](../resources/channel.md) in a [team](../resources/team.md), including text, audio, and video conversations.

To learn more about using the Microsoft Teams export APIs to export content, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).

## Permissions

The following permissions are required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported |
|Delegated (personal Microsoft account) | Not supported |
|Application | ChannelMessage.Read.All |

> [!NOTE]
> Before calling this API with application permissions, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
GET /teams/{team-id}/channels/getAllMessages
```

## Optional query parameters

You can use the [$top](/graph/query-parameters#top-parameter) query parameter to control the number of items per response.
Additionally, [$filter](/graph/query-parameters#filter-parameter) is supported with **dateTime** range query on **lastModifiedDateTime**. The other [OData query parameters](/graph/query-parameters) are not currently supported.

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and also returns all the messages in all the public and private channels.

## Example

### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "channel_getallchannelmessages_1"
}-->
``` http
GET https://graph.microsoft.com/v1.0/teams/01fe12e0-e720-44fd-8854-28c66d1bee40/channels/getAllMessages?$filter=lastModifiedDateTime+gt+2019-11-01T00:00:00Z+and lastModifiedDateTime+lt+2021-11-01T00:00:00Z
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage",
  "isCollection": true,
} -->
``` http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(chatMessage)",
    "@odata.count": 2,
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/teams('01fe12e0-e720-44fd-8854-28c66d1bee40')/channels/getallMessages?$skiptoken=U2tpcFZhbHVlPTAjUHJpdmF0ZUNoYW5uZWxJZD0xOTpmYWU5YTJmZjk1ZGE0ZTEwOWE1YTg3ZTM5Y2FkOGYyYkB0aHJlYWQudGFjdjIjVXNlcklkPTBkN2M2M2QzLTEzMDYtNGVlYy04ZjIxLTU4OGE3MGZiNmVmMSNNYWlsYm94Rm9sZGVyPU1haWxGb2xkZXJzL1RlYW1DaGF0&$filter=lastModifiedDateTime+gt+2019-11-01T00%3a00%3a00Z+and+lastModifiedDateTime+lt+2021-11-01T00%3a00%3a00Z",
    "value": [
        {
            "@odata.type": "#microsoft.graph.chatMessage",
            "id": "1622071758431",
            "replyToId": "1622071642456",
            "etag": "1622071758431",
            "messageType": "message",
            "createdDateTime": "2021-05-26T23:29:18.431Z",
            "lastModifiedDateTime": "2021-05-26T23:29:18.431Z",
            "lastEditedDateTime": null,
            "deletedDateTime": null,
            "subject": null,
            "summary": null,
            "chatId": null,
            "importance": "normal",
            "locale": "en-us",
            "webUrl": "https://teams.microsoft.com/l/message/19%3Afae9a2ff95da4e109a5a87e39cad8f2b%40thread.tacv2/1622071758431?groupId=01fe12e0-e720-44fd-8854-28c66d1bee40&tenantId=9854dc85-3fb3-4f8e-a055-9cdc5523024d&createdTime=1622071758431&parentMessageId=1622071642456",
            "policyViolation": null,
            "eventDetail": null,
            "from": {
                "application": null,
                "device": null,
                "user": {
                    "id": "0b4f1cf6-54c8-4820-bbb7-2a1f4257ade5",
                    "displayName": "user1 a",
                    "userIdentityType": "aadUser"
                }
            },
            "body": {
                "contentType": "html",
                "content": "<div>\n<div itemprop=\"copy-paste-block\">reply 9&nbsp;to new conv</div>\n</div>"
            },
            "channelIdentity": {
                "teamId": "01fe12e0-e720-44fd-8854-28c66d1bee40",
                "channelId": "19:fae9a2ff95da4e109a5a87e39cad8f2b@thread.tacv2"
            },
            "attachments": [],
            "mentions": [],
            "reactions": []
        },
        {
            "@odata.type": "#microsoft.graph.chatMessage",
            "id": "1622071764529",
            "replyToId": "1622071642456",
            "etag": "1622071764529",
            "messageType": "message",
            "createdDateTime": "2021-05-26T23:29:24.529Z",
            "lastModifiedDateTime": "2021-05-26T23:29:24.529Z",
            "lastEditedDateTime": null,
            "deletedDateTime": null,
            "subject": null,
            "summary": null,
            "chatId": null,
            "importance": "normal",
            "locale": "en-us",
            "webUrl": "https://teams.microsoft.com/l/message/19%3Afae9a2ff95da4e109a5a87e39cad8f2b%40thread.tacv2/1622071764529?groupId=01fe12e0-e720-44fd-8854-28c66d1bee40&tenantId=9854dc85-3fb3-4f8e-a055-9cdc5523024d&createdTime=1622071764529&parentMessageId=1622071642456",
            "policyViolation": null,
            "eventDetail": null,
            "from": {
                "application": null,
                "device": null,
                "user": {
                    "id": "0b4f1cf6-54c8-4820-bbb7-2a1f4257ade5",
                    "displayName": "user1 a",
                    "userIdentityType": "aadUser"
                }
            },
            "body": {
                "contentType": "html",
                "content": "<div>\n<div itemprop=\"copy-paste-block\">reply 10 to new conv</div>\n</div>"
            },
            "channelIdentity": {
                "teamId": "01fe12e0-e720-44fd-8854-28c66d1bee40",
                "channelId": "19:fae9a2ff95da4e109a5a87e39cad8f2b@thread.tacv2"
            },
            "attachments": [],
            "mentions": [],
            "reactions": []
        }
    ]
}
```
