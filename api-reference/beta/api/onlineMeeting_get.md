# Get onlineMeeting

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of onlineMeeting object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type                        | Permissions (from least to most privileged)           |
|:---------------------------------------|:------------------------------------------------------|
| Application                            | OnlineMeetings.Read.All, OnlineMeetings.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->

``` http
GET /app/onlineMeetings/{id}
GET /applications/{id}/onlineMeetings/{id}
```

## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [onlineMeeting](../resources/onlineMeeting.md) object in the response body.

## Example

##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_onlineMeeting"
}-->

``` http
GET https://graph.microsoft.com/beta/app/onlineMeetings/013448345
Authorization: Bearer <TOKEN>
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onlineMeeting"
} -->

``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1499

{
  "accessLevel": "sameEnterprise",
  "audioConferencing": {
    "tollNumber": "12525634478",
    "tollFreeNumber": "18666390588",
    "participantPasscode": "2425999",
    "leaderPasscode": null,
    "dialinUrl": "https://dialin.teams.microsoft.com/22f12fa0-499f-435b-bc69-b8de580ba330?id=2425999"
  },
  "canceledTime": "0001-01-01T00:00:00Z",
  "chatInfo": {
    "threadId": "19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype",
    "messageId": "0",
    "replyChainMessageId": null
  },
  "creationTime": "2018-05-30T00:12:19.0726086Z",
  "endTime": "2018-05-30T01:00:00Z",
  "entryExitAnnouncement": false,
  "expirationTime": "2019-01-16T17:03:39.0579549Z",
  "id": "013448345",
  "isCanceled": false,
  "joinUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz%40thread.skype/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%22550fae72-d251-43ec-868c-373732c2704f%22%7d",
  "meetingType": "calendar",
  "organizer": {
    "user": {
      "id": "550fae72-d251-43ec-868c-373732c2704f",
      "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
    }
  },
  "participants": [
    {
      "user": {
        "id": "550fae72-d251-43ec-868c-373732c2704f",
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
      }
    }
  ],
  "phoneUserAdmission": true,
  "startTime": "2018-05-30T00:30:00Z",
  "subject": "Quarterly sales numbers"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get onlineMeeting",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
