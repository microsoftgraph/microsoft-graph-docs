# Update Audio Routing Group

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Modify sources and receivers of an audio routing group.

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
PATCH /app/calls/{id}/audioRoutingGroups/{id}
PATCH /applications/{id}/calls/{id}/audioRoutingGroups/{id}
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| receivers | String collection |  |
| routingMode | String | Possible values are: `oneToOne`, `multicast`. |
| sources | String collection |  |

## Response
If successful, this method returns a `200 OK` response code and updated [audioRoutingGroup](../resources/audioRoutingGroup.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_audioRoutingGroup"
}-->
```http
PATCH https://graph.microsoft.com/beta/app/calls/{id}/audioRoutingGroups/{id}
Content-Type: application/json
Content-Length: 95

{
  "receivers": [
    ""
  ],
  "routingMode": "oneToOne",
  "sources": [
    ""
  ]
}
```

In the request body, supply a JSON representation of [audioRoutingGroup](../resources/audioRoutingGroup.md) object.

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.audioRoutingGroup"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 116

{
  "id": "id-value",
  "receivers": [
    ""
  ],
  "routingMode": "oneToOne",
  "sources": [
    ""
  ]
}
```

## Example - Remove receiver in a multicast audio routing group

##### Request

``` http
PATCH https://graph.microsoft.com/beta/app/calls/{id}/audioRoutingGroups/multicast
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
    "removeReceivers": ["A239BDED-3A52-4D66-80DF-213EB3BA6695"]
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
                "@odata.type" : "#microsoft.graph.modifyAudioRoutingGroupOperation",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/0FE0623FD62842EDB4BD8AC290072CC5",
                "@odata.etag": "W/\"1\"",
                "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
                "status": "completed"
            }
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update audioRoutingGroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->