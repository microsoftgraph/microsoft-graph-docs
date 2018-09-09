# Create call

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
Use this API to create a new call.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     |                                             |
| Delegated (personal Microsoft account) |                                             |
| Application                            |                                             |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /app/calls
POST /applications/{id}/calls
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, supply a JSON representation of [call](../resources/call.md) object.

## Response
If successful, this method returns `201, Created` response code and [call](../resources/call.md) object in the response body.

## Example - Create peer to peer VOIP call with service hosted media

##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_call_from_application"
}-->
```http
POST https://graph.microsoft.com/beta/app/calls
Content-Type: application/json
Content-Length: 5265

{
  "callbackUri": "https://bot.contoso.com/api/calls",
  "mediaConfig": {
    "@odata.type": "#microsoft.graph.serviceHostedMediaConfig",
    "preFetchMedia": [
      {
        "url": "https://cdn.contoso.com/beep.wav",
        "resourceId": "1D6DE2D4-CD51-4309-8DAA-70768651088E",
      },
      {
        "url": "https://cdn.contoso.com/cool.wav",
        "resourceId": "1D6DE2D4-CD51-4309-8DAA-70768651088F",
      }
    ]
  },
  "source": {
    "identity": {
      "user": {
        "id": "29362BD4-CD58-4ED0-A206-0E4A33DBB0B6",
        "displayName": "Heidi Steen"
      }
    },
    "languageId": "languageId-value",
    "region": "region-value"
  },
  "subject": "Test Call",
  "targets": [
    {
      "identity": {
        "user": {
          "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698",
          "displayName": "Test User"
        }
      }
    }
  ],
  "tenantId": "tenantId-value"
}
```

In the request body, supply a JSON representation of [call](../resources/call.md) object.

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.call"
} -->
```http
HTTP/1.1 201 Created
Location: /app/calls/57DAB8B1894C409AB240BD8BEAE78896
```
#### Notification - Establishing

``` http
POST https://bot.contoso.com/api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "updated",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
            "resourceData": {
                "@odata.type": "#microsoft.graph.call",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
                "@odata.etag": "W/\"5445\"",
                "callState": "establishing",
                "multiparty": false,
                "direction": "outgoing"
            }
        }
    ]
}
```

#### Notification - Ringing

``` http
POST /api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "updated",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
            "resourceData": {
                "@odata.type": "#microsoft.graph.call",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
                "@odata.etag": "W/\"5445\"",
                "callState": "ringing"
            }
        }
    ]
}
```

#### Notification - Established

``` http
POST https://bot.contoso.com/api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "value": [
        {
            "changeType": "updated",
            "resource": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
            "resourceData": {
                "@odata.type": "#microsoft.graph.call",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896",
                "@odata.etag": "W/\"5445\"",
                "callState": "established",
                "answeredBy" : {
                    "user" : {
                        "displayName": "Test User",
                        "language": "en-US",
                        "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
                    }
                },
                "activeModalities": ["audio", "video"]
            }
        }
    ]
}
```

## Example - Create peer to peer VOIP call with application hosted media

##### Request
Here is an example of the request.

```http
POST https://graph.microsoft.com/beta/app/calls
Content-Type: application/json
Content-Length: 5265

{
  "callbackUri": "https://bot.contoso.com/api/calls",
  "mediaConfig": {
    "@odata.type": "#microsoft.graph.apphostedMediaConfig",
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
  },
  "source": {
    "identity": {
      "user": {
        "id": "29362BD4-CD58-4ED0-A206-0E4A33DBB0B6",
        "displayName": "Heidi Steen"
      }
    },
    "languageId": "languageId-value",
    "region": "region-value"
  },
  "subject": "Test Call",
  "targets": [
    {
      "identity": {
        "user": {
          "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698",
          "displayName": "Test User"
        }
      }
    }
  ],
  "tenantId": "tenantId-value"
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create call",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
