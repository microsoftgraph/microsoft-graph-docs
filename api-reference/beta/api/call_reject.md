# call: reject

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Reject an incoming call.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged)                |
| :-------------- | :--------------------------------------------------------- |
| Application     | Calls.AudioVideo (for `meetingInfo=null`)                  |
| Application     | Calls.PSTN (for `meetingInfo=null` and outgoing PSTN call) |
| Application     | Calls.MeetingJoin (for `meetingInfo!=null` )               |

## HTTP request
<!-- { "blockType": "ignored" } -->

``` http
POST /app/calls/{id}/reject
POST /applications/{id}/calls/{id}/reject
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|reason|String||

## Response

If successful, this method returns `200, OK` response code and [commsOperation](../resources/commsOperation.md) object in the response body.

##### Response Headers

No headers

##### Response Body

```http
HTTP/1.1 200 OK

{
  "createdDateTime": "2018-03-19T09:46:02Z",
  "id": "id-value",
  "lastActionDateTime": "2018-03-19T09:46:02Z",
  "status": "Completed"
}
```

## Example
Here is an example of how to call this API.

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
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "call_reject"
}-->

``` http
POST https://graph.microsoft.com/beta/app/calls/{id}/reject
Authorization: Bearer <TOKEN>
Content-Type: application/json
Content-Length: 24

{
  "reason": "none"
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
  "status": "Completed"
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
  "description": "call: reject",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
