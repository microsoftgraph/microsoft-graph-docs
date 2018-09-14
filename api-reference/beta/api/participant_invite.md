# participant: invite

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Invite participants to the active call.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged)                |
| :-------------- | :--------------------------------------------------------- |
| Application     | Calls.AudioVideo (for `meetingInfo=null`)                  |
| Application     | Calls.PSTN (for `meetingInfo=null` and outgoing PSTN call) |
| Application     | Calls.MeetingJoin (for `meetingInfo!=null` )               |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /app/calls/{id}/participants/invite
POST /applications/{id}/calls/{id}/participants/invite
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|participants|[invitationParticipantInfo](../resources/invitationParticipantInfo.md) collection||
|clientContext|String||

## Response
If successful, this method returns `200, OK` response code and [commsOperation](../resources/commsOperation.md) object in the response body.

## Example
Here is an example of how to call this API.

##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "participant_invite"
}-->
```http
POST https://graph.microsoft.com/beta/app/calls/{id}/participants/invite
Content-Type: application/json
Content-Length: 1471

{
  "participants": [
    {
      "identity": {
        "user": {
          "id": "29362BD4-CD58-4ED0-A206-0E4A33DBB0B6",
          "displayName": "Heidi Steen"
        }
      }
    }
  ],
  "clientContext": "clientContext-value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.commsOperation"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 306

{
  "clientContext": "clientContext-value",
  "createdDateTime": "2018-03-19T09:46:02Z",
  "id": "id-value",
  "lastActionDateTime": "2018-03-19T09:46:02Z",
  "status": "Running"
}
```

## Example Invite Participants in Existing P2P meeting

Please see [Inviting Participant in Existing Call](participant_inviteWithReplaces.md) for a complete E2E flow of this scenario.

## Example

##### Request

``` http
POST /app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/invite
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
    "participants" : [{
        "@odata.type": "#microsoft.graph.invitationParticipantInfo",
        "identity" : {
            "@odata.type": "#microsoft.graph.identitySet",
            "user" : {
                "@odata.type": "#microsoft.graph.identity",
                "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
            }
        }
    ]
}
```

##### Response

``` http
HTTP/1.1 202 Accepted
Location: /app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/0FE0623FD62842EDB4BD8AC290072CC5
```

##### Notification - Operation Completed

``` http
POST /callback
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "deleted",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/0FE0623FD62842EDB4BD8AC290072CC5",
            "resourceData": {
                "@odata.type" : "#microsoft.graph.inviteParticipantsOperation",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/0FE0623FD62842EDB4BD8AC290072CC5",
                "@odata.etag": "W/\"51\"",
                "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
                "status": "completed"
            }
        }
    ]
}
```

##### Notification - Roster Updated With Participant Added

``` http
POST /callback
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "updated",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants",
            "resourceData": [
                {
                    "@odata.type": "#microsoft.graph.participant",
                    "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/8A34A46B3D174ADC8DCEDC4E7D572698",
                    "@odata.etag": "W/\"51\"",
                    "info": {
                        "@odata.type": "#microsoft.graph.participantInfo",
                        "identity" : {
                            "@odata.type": "#microsoft.graph.identitySet",
                            "user" : {
                                "@odata.type": "#microsoft.graph.endpointIdentity",
                                "endpointId": "A904FBD5A31041E881E861877A3DE3CD",
                                "region": "westus",
                                "languageId": "en-US",
                                "displayName": "Test User",
                                "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
                            }
                        }
                    },
                    "mediaStreams": [
                        {
                            "mediaType": "audio",
                            "label": "main-audio",
                            "sourceId": 1,
                            "direction": "sendReceive",
                        }
                    ]
                },
                {
                    "@odata.type": "#microsoft.graph.participant",
                    "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/123456W77E24E4D85F80597083CB830",
                    "@odata.etag": "W/\"55\"",
                    "info": {
                        "@odata.type": "#microsoft.graph.participantInfo",
                        "identity" : {
                            "@odata.type": "#microsoft.graph.identitySet",
                            "application" : {
                                "@odata.type": "#microsoft.graph.endpointIdentity",
                                "endpointId": "A904FBD5A31041E881E861877A3DE3CD",
                                "region": "westus",
                                "languageId": "en-US",
                                "displayName": "Test Bot",
                                "id": "1234A46B-3D17-4ADC-8DCE-DC4E7D556789"
                            }
                        }
                    },
                    "mediaStreams": [
                        {
                            "mediaType": "audio",
                            "label": "main-audio",
                            "sourceId": 2,
                            "direction": "sendReceive",
                        }
                    ]
                }
            ]
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "participant: invite",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
