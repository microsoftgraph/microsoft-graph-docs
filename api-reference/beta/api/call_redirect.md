# call: redirect

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Redirect an incoming call.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged)         |
| :-------------- | :-------------------------------------------------- |
| Application     | Calls.AudioVideo (for redirect to VOIP participant) |
| Application     | Calls.PSTN (for redirect to PSTN participant)       |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /app/calls/{id}/redirect
POST /applications/{id}/calls/{id}/redirect
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|targets|[identitySet](../resources/identitySet.md) collection||
|targetDisposition|String||
|timeout|Int32||
|maskCallee|Boolean||
|maskCaller|Boolean||

## Response
If successful, this method returns `200, OK` response code and [commsOperation](../resources/commsOperation.md) object in the response body.

## Example
Here is an example of how to call this API.

##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "call_redirect"
}-->
```http
POST https://graph.microsoft.com/beta/app/calls/{id}/redirect

Content-Type: application/json
Content-Length: 683

{
  "targets": [
    {
      "user": {
        "id": "29362BD4-CD58-4ED0-A206-0E4A33DBB0B6",
        "displayName": "Heidi Steen"
      }
    }
  ],
  "targetDisposition": "default",
  "timeout": 99,
  "maskCallee": true,
  "maskCaller": true
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

## Example - Forward a call

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
                "correlationId": "2F3556DB-B502-4A69-8C0E-38AF3A6A9D94",
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
POST https://graph.microsoft.com/beta/app/calls/57DAB8B1894C409AB240BD8BEAE78896/redirect
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "targets" : [
        {
            "@odata.type": "#microsoft.graph.identitySet",
            "user" : {
                "@odata.type": "#microsoft.graph.identity",
                "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572699"
            }
        }
    ],
    "targetDisposition": "forward",
    "timeout": "60",
    "maskCallee": false,
    "maskCaller": false
}
```

```http
HTTP/1.1 200 OK

{
  "createdDateTime": "2018-03-19T09:46:02Z",
  "id": "id-value",
  "lastActionDateTime": "2018-03-19T09:46:02Z",
  "status": "Running"
}
```

##### Notification - Redirecting

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
                "callState": "redirecting"
            }
        }
    ]
}
```

##### Notification - Terminated

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
                "answeredBy" : {
                    "@odata.type": "#microsoft.graph.identitySet",
                    "user" : {
                        "@odata.type": "#microsoft.graph.endpointIdentity",
                        "displayName": "Test User 2",
                        "language": "en-US",
                        "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572699"
                    }
                },
                "terminationReason": "AppRedirected"
            }
        }
    ]
}
```

##### Notification - Deleted

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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "call: redirect",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
