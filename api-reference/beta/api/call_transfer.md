# call: transfer

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Transfer an active call.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged)         |
| :-------------- | :-------------------------------------------------- |
| Application     | Calls.AudioVideo (for transfer to VOIP participant) |
| Application     | Calls.PSTN (for transfer to PSTN participant)       |

## HTTP request
<!-- { "blockType": "ignored" } -->
``` http
POST /app/calls/{id}/transfer
POST /applications/{id}/calls/{id}/transfer
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|target|[invitationParticipantInfo](../resources/invitationParticipantInfo.md)||

## Response
If successful, this method returns `200, OK` response code and [commsOperation](../resources/commsOperation.md) object in the response body.

## Example - Attended transfer

##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "call_transfer"
}-->

``` http
POST /app/calls/57DAB8B1894C409AB240BD8BEAE78896/transfer
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "target": {
        "@odata.type": "#microsoft.graph.invitationParticipantInfo",
        "identity" : {
            "@odata.type": "#microsoft.graph.identitySet",
            "user" : {
                "@odata.type": "#microsoft.graph.identity",
                "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
            }
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

##### Notification - Transferring

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
                "callState": "transferring"
            }
        }
    ]
}
```

##### Notification - Transfer Accepted

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
                "callState": "transfer-accepted"
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
                "terminationReason": "AppTransferred"
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
                "@odata.etag": "W/\"5445\"",
                "callState": "terminated",
                "terminationReason": "AppInitiated"
            }
        }
    ]
}
```

## Example - Consultative transfer

##### Request

``` http
POST /app/calls/57DAB8B1894C409AB240BD8BEAE78896/transfer
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
    "operationContext": "transfer operation context",
    "target": {
        "@odata.type": "#microsoft.graph.invitationParticipantInfo",
        "identity" : {
            "@odata.type": "#microsoft.graph.identitySet",
            "user" : {
                "@odata.type": "#microsoft.graph.identity",
                "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
            }
        },
        "replacesCallId": "e5d39592-99bd-4db8-bca8-30fb894ec51d"
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

##### Notification - Transferring

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
                "callState": "transferring"
            }
        }
    ]
}
```

##### Notification - Transfer Accepted

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
                "callState": "transfer-accepted"
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
                "terminationReason": "AppTransferred"
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
  "description": "call: transfer",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
