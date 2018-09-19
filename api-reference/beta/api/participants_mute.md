# Mute Participants

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Mute the selected group of participants in the call. If selected group is empty, it mutes all participants in a call.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged) |
| :-------------- | :------------------------------------------ |
| Application     | Calls.MeetingJoin                           |

## HTTP request

``` http
POST /app/calls/{id}/participants/mute
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

[commsOperation](../resources/commsOperation.md) object.

## Response

 If successful, this method returns a 202 Accepted response code.

##### Response Headers

| Name               | Type   | Description                         |
| :----------------- | :----- | :---------------------------------- |
| Location           | String | The location of the created object. |

##### Response Body

Does not return any body.

## Example - Mute a subset of participants

##### Request

``` http
POST /app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/mute
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
    "participants": ["0698446E77E24E4D85F80597083CB830", "0FE0623FD62842EDB4BD8AC290072CC5"]
}
```

##### Response

``` http
HTTP/1.1 200 OK
Location: /app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/1GF1734GE73953FEC5CE9BD301183DD6
Content-Type: application/json
Content-Length: 306

{
  "clientContext": "clientContext-value",
  "createdDateTime": "2018-03-19T09:46:02Z",
  "id": "id-value",
  "lastActionDateTime": "2018-03-19T09:46:02Z",
  "status": "Completed"
}
```

##### Notification - Operation Completed

``` http
POST https://bot.contoso.com/api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "deleted",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/1GF1734GE73953FEC5CE9BD301183DD6",
            "resourceData": {
                "@odata.type": "#microsoft.graph.participantsOperation",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/1GF1734GE73953FEC5CE9BD301183DD6",
                "@odata.etag": "W/\"1\"",
                "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
                "status": "completed"
            }
        }
    ]
}
```

##### Notification - Roster Updated With the Subset of the Participants Muted

``` http
POST https://bot.contoso.com/api/calls
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
                    "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/0698446E77E24E4D85F80597083CB830",
                    "@odata.etag": "W/\"51\"",
                    "info": {
                        "@odata.type": "#microsoft.graph.participantInfo",
                        "identity" : {
                            "user" : {
                                "region": "westus",
                                "languageId": "en-US",
                                "displayName": "Test User1",
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
                    ],
                    "isMuted": true
                },
                {
                    "@odata.type": "#microsoft.graph.participant",
                    "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/0FE0623FD62842EDB4BD8AC290072CC5",
                    "@odata.etag": "W/\"51\"",
                    "info": {
                        "@odata.type": "#microsoft.graph.participantInfo",
                        "identity" : {
                            "user" : {
                                "region": "westus",
                                "languageId": "en-US",
                                "displayName": "Test User2",
                                "id": "1D6DE2D4-CD51-4309-8DAA-70768651088E"
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
                    ],
                    "isMuted": true
                },
                {
                    "@odata.type": "#microsoft.graph.participant",
                    "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/123456W77E24E4D85F80597083CB830",
                    "@odata.etag": "W/\"55\"",
                    "info": {
                        "@odata.type": "#microsoft.graph.participantInfo",
                        "identity" : {
                            "application" : {
                                "region": "westus",
                                "languageId": "en-US",
                                "displayName": "Test Bot",
                                "id": "1234A46B-3D17-4ADC-8DCE-DC4E7D556789",
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

## Example - Mute All participants

##### Request

``` http
POST /app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/mute
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "clientContext": "A904FBD5A31041E881E861877A3DE3CD"
}

```

##### Response

``` http
HTTP/1.1 200 OK
Location: /app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/1GF1734GE73953FEC5CE9BD301183DD6
Content-Type: application/json
Content-Length: 306

{
  "clientContext": "clientContext-value",
  "createdDateTime": "2018-03-19T09:46:02Z",
  "id": "id-value",
  "lastActionDateTime": "2018-03-19T09:46:02Z",
  "status": "Completed"
}
```

##### Notification - Operation Completed

``` http
POST https://bot.contoso.com/api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "deleted",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/1GF1734GE73953FEC5CE9BD301183DD6",
            "resourceData": {
                "@odata.type": "#microsoft.graph.participantsOperation",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/1GF1734GE73953FEC5CE9BD301183DD6",
                "@odata.etag": "W/\"1\"",
                "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
                "status": "completed"
            }
        }
    ]
}
```

##### Notification - Roster Updated With All Participants Muted

``` http
POST https://bot.contoso.com/api/calls
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
                    "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/0698446E77E24E4D85F80597083CB830",
                    "@odata.etag": "W/\"51\"",
                    "info": {
                        "@odata.type": "#microsoft.graph.participantInfo",
                        "identity" : {
                            "user" : {
                                "region": "westus",
                                "languageId": "en-US",
                                "displayName": "Test User1",
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
                    ],
                    "isMuted": true
                },
                {
                    "@odata.type": "#microsoft.graph.participant",
                    "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/0FE0623FD62842EDB4BD8AC290072CC5",
                    "@odata.etag": "W/\"51\"",
                    "info": {
                        "@odata.type": "#microsoft.graph.participantInfo",
                        "identity" : {
                            "user" : {
                                "region": "westus",
                                "languageId": "en-US",
                                "displayName": "Test User2",
                                "id": "1D6DE2D4-CD51-4309-8DAA-70768651088E"
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
                    "isMuted": true
                },
                {
                    "@odata.type": "#microsoft.graph.participant",
                    "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/123456W77E24E4D85F80597083CB830",
                    "@odata.etag": "W/\"55\"",
                    "info": {
                        "@odata.type": "#microsoft.graph.participantInfo",
                        "identity" : {
                            "application" : {
                                "region": "westus",
                                "languageId": "en-US",
                                "displayName": "Test Bot",
                                "id": "1234A46B-3D17-4ADC-8DCE-DC4E7D556789",
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
                    ],
                    "isMuted": true
                }
            ]
        }
    ]
}
```