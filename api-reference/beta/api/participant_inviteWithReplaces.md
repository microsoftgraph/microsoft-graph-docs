# Example Invite Participants in Existing P2P meeting

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

This example shows a complete E2E flow for [Invite Participants](../api/participant_invite.md) in an existing P2P meeting.

## Answer Incoming VOIP call with service hosted media

### Notification - Incoming

``` http
POST /callback
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "created",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
            "resourceData": {
                "@odata.type" : "#microsoft.graph.call",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
                "@odata.etag": "W/\"5445\"",
                "callState": "incoming",
                "direction": "incoming",
                "source": {
                    "@odata.type": "#microsoft.graph.participantInfo",
                    "identity" : {
                        "@odata.type": "#microsoft.graph.identitySet",
                        "user" : {
                            "@odata.type": "#microsoft.graph.endpointIdentity",
                            "displayName": "Test User",
                            "language": "en-US",
                            "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
                        }
                    }
                },
                "targets" : [{
                    "@odata.type": "#microsoft.graph.participantInfo",
                    "identity" : {
                        "@odata.type": "#microsoft.graph.identitySet",
                        "application" : {
                            "@odata.type": "#microsoft.graph.endpointIdentity",
                            "displayName": "Test BOT",
                            "language": "en-US",
                            "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
                        }
                    }
                }],
                "requestedModalities": [ "audio", "video" ]
            }
        }
    ]
}
```

## Request

``` http
POST /app/calls/57DAB8B1894C409AB240BD8BEAE78896/answer
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "callback": "https://contoso.com/callback",
    "acceptModalities": [ "audio", "video" ],
    "mediaConfig": {
        "@odata.type": "#microsoft.graph.serviceMediaConfig",
        "preFetchMedia": [
            {
                "url": "https://cdn.contoso.com/beep.wav",
                "id": "1D6DE2D4-CD51-4309-8DAA-70768651088E",
            },
            {
                "url": "https://cdn.contoso.com/cool.wav",
                "id": "1D6DE2D4-CD51-4309-8DAA-70768651088F",
            }
        ]
    }
}
```

## Response

``` http
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

### Notification - Establishing

``` http
POST /callback
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "updated",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
            "resourceData": {
                "@odata.type" : "#microsoft.graph.call",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
                "@odata.etag": "W/\"5445\"",
                "callState": "establishing",
            }
        }
    ]
}
```

### Notification - Established

``` http
POST /callback
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "updated",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
            "resourceData": {
                "@odata.type" : "#microsoft.graph.call",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
                "@odata.etag": "W/\"5445\"",
                "callState": "established",
                "activeModalities": ["audio", "video"],
                "requestedModalities": []
            }
        }
    ]
}
```

## Join Channel Meeting without media

> **IMPORTANT**: If the bot instance is joining only for the purpose of facilitating the transfer, it should avoid media negotiations.  Therefore, it is best to add it without any `requestedModalities` or `mediaConfig`.

## Request

``` http
POST /app/calls
Content-Type: application/json

{
    "subject": "Test Call",
    "callback": "https://cdn.contoso.com/callback",
    "source" : {
        "@odata.type": "#microsoft.graph.participantInfo",
        "identity" : {
            "@odata.type": "#microsoft.graph.identitySet",
            "application" : {
                "@odata.type": "#microsoft.graph.identity",
                "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
            }
        }
    },
    "targetDisposition": "default",
    "requestedModalities": [],
    "chatInfo": {
        "threadId": "90ED37DC-D8E3-4E11-9DE3-30A955DDA06F",
        "messageId": "1507228578052",
        "replyChainMessageId": "1507228578052"
    },
    "meetingInfo": {
        "@odata.type": "#microsoft.graph.organizerMeetingInfo",
        "organizer": {
            "@odata.type": "#microsoft.graph.identitySet",
            "user": {
                "@odata.type": "#microsoft.graph.identity",
                "id": "90ED37DC-D8E3-4E11-9DE3-30A955DDA06F",
                "tenantId": "49BFC225-8482-4AB8-94E7-76B48FDB9849",
            }
        }
    }
}
```

## Response

``` http
HTTP/1.1 201 Created
Location: /app/calls/90ED37DCD8E34E119DE330A955DDA06F
```

### Notification - Establishing

``` http
POST /callback
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "updated",
            "resource": "/app/calls/90ED37DCD8E34E119DE330A955DDA06F",
            "resourceData": {
                "@odata.type" : "#microsoft.graph.call",
                "@odata.id": "/app/calls/90ED37DCD8E34E119DE330A955DDA06F",
                "@odata.etag": "W/\"5445\"",
                "callState": "establishing",
                "direction": "outgoing"
            }
        }
    ]
}
```

### Notification - Established

``` http
POST /callback
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "updated",
            "resource": "/app/calls/90ED37DCD8E34E119DE330A955DDA06F",
            "resourceData": {
                "@odata.type" : "#microsoft.graph.call",
                "@odata.id": "/app/calls/90ED37DCD8E34E119DE330A955DDA06F",
                "@odata.etag": "W/\"5445\"",
                "callState": "established",
                "activeModalities": []
            }
        }
    ]
}
```

## Invite Participant from Intial Incoming Call

``` http
POST /app/calls/90ED37DCD8E34E119DE330A955DDA06F/participants/invite
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "participants" : [{
        "@odata.type": "#microsoft.graph.invitationParticipantInfo",
        "identity" : {
            "@odata.type": "#microsoft.graph.identitySet",
            "user" : {
                "@odata.type": "#microsoft.graph.identity",
                "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
            }
        },
        "replacesCallId": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896"
    }],
}
```

## Response

``` http
HTTP/1.1 200 OK
Location: /app/calls/90ED37DCD8E34E119DE330A955DDA06F/operations/0FE0623FD62842EDB4BD8AC290072CC5
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

### Notification - Operation Completed

``` http
POST /callback
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "deleted",
            "resource": "/app/calls/90ED37DCD8E34E119DE330A955DDA06F/operations/0FE0623FD62842EDB4BD8AC290072CC5",
            "resourceData": {
                "@odata.type" : "#microsoft.graph.inviteParticipantsOperation",
                "@odata.id": "/app/calls/90ED37DCD8E34E119DE330A955DDA06F/operations/0FE0623FD62842EDB4BD8AC290072CC5",
                "@odata.etag": "W/\"51\"",
                "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
                "status": "completed"
            }
        }
    ]
}
```

### Notification - Roster Updated With Participant Added

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

##### Notification - Terminated the original P2P call

``` http
POST /callback
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "updated",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
            "resourceData": {
                "@odata.type" : "#microsoft.graph.call",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
                "@odata.etag": "W/\"5445\"",
                "callState": "terminated",
                "terminationReason": "AppInitiated"
            }
        }
    ]
}
```

### Notification - Deleted the original P2P call

``` http
POST /callback
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "deleted",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
            "resourceData": {
                "@odata.type" : "#microsoft.graph.call",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
                "@odata.etag": "W/\"5445\""
            }
        }
    ]
}
```