# call: answer

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Answer an incoming call.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged)                 |
| :-------------- | :-----------------------------------------------------------|
| Application     | Calls.AudioVideo (for `meetingInfo=null`)                   |
| Application     | Calls.PSTN (for `meetingInfo=null` and outgoing PSTN call)  |
| Application     | Calls.MeetingJoin (for `meetingInfo!=null` )                |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /app/calls/{id}/answer
POST /applications/{id}/calls/{id}/answer
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter        | Type                                     |Description                                                                                                                                    |
|:-----------------|:-----------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------|
|callbackUri       |String                                    |The callback or subscription ID on which callbacks will be delivered. (Required)                                                               |
|acceptedModalities|String collection                         |The list of accept modalities. Possible value are: `unknown`, `audio`, `video`, `screenSharing`, `videoBasedScreenSharing`, `data`. (Required) |
|mediaConfig       |[mediaConfig](../resources/mediaConfig.md)|The media configuration. (Required)                                                                                                            |

## Response
If successful, this method returns `200, OK` response code and [commsOperation](../resources/commsOperation.md) object in the response body.

## Example
Here is an example of how to call this API.

##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "call_answer"
}-->
```http
POST https://graph.microsoft.com/beta/app/calls/{id}/answer

Content-Type: application/json
Content-Length: 324

{
  "callbackUri": "callbackUri-value",
  "acceptedModalities": [
    "unknown"
  ],
  "mediaConfig": {
    "@odata.type": "microsoft.graph.appHostedMediaConfig",
    "blob": "",
    "removeFromDefaultAudioGroup": true
  }
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

{
  "clientContext": "clientContext-value",
  "createdDateTime": "2018-03-19T09:46:02Z",
  "id": "id-value",
  "lastActionDateTime": "2018-03-19T09:46:02Z",
  "status": "Running"
}
```

## Example - Answer VOIP call with service hosted media

##### Notification - Incoming

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
                "callRoutes": [{
                    "@odata.type": "#microsoft.graph.callRoute",
                    "routingType": "lookup",
                    "original": {
                      "phone": {
                        "id": "+14258828080"
                      }
                    },
                    "final": {
                        "@odata.type": "#microsoft.graph.identitySet",
                        "application" : {
                            "@odata.type": "#microsoft.graph.identity",
                            "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
                        }
                    },
                }],
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

##### Request

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

##### Response

```http
HTTP/1.1 200 OK

{
  "clientContext": "clientContext-value",
  "createdDateTime": "2018-03-19T09:46:02Z",
  "id": "id-value",
  "lastActionDateTime": "2018-03-19T09:46:02Z",
  "status": "Running"
}
```

##### Notification - Establishing

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

##### Notification - Established

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

## Example - Answer VOIP call with application hosted media

##### Notification - Incoming

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

##### Request

``` http
POST /app/calls/57DAB8B1894C409AB240BD8BEAE78896/answer
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "acceptModalities": [ "audio", "video" ],
    "mediaConfig": {
        "@odata.type": "#microsoft.graph.applicationMediaConfig",
        "blob": {
            "mpUri": "net.tcp://app.contoso.com:20100/MediaProcessor",
            "audioRenderContexts": [
                "27e887f5-17a6-4e5e-8a5a-e3663a65155d"
            ],
            "videoRenderContexts": [
                "7e77a835-69a8-4dc7-a0f7-4c9d562c888a"
            ],
            "audioSourceContexts": [
                null
            ],
            "videoSourceContexts": [
                "7b5fc89d-6c22-45a3-821c-362e102384af"
            ],
            "supportedAudioFormat": "Pcm16K",
            "mpMediaSessionId": "857c11de-7a41-403d-8044-0f4fa589efaf",
            "regionAffinity": null,
            "skypeMediaBotsVersion": "1.5.0.1177",
            "mediaStackVersion": "6.0.8980.141",
            "mpVersion": "7.0.697.0"
        }
    }
}
```

##### Response

```http
HTTP/1.1 200 OK

{
  "createdDateTime": "2018-03-19T09:46:02Z",
  "id": "id-value",
  "lastActionDateTime": "2018-03-19T09:46:02Z",
  "status": "Running"
}
```

##### Notification - Establishing

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

##### Notification - Established

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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "call: answer",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
