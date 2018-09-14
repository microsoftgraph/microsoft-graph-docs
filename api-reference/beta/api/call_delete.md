# Delete Call

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Delete or Hang-up an active call.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged)                  |
| :-------------- | :----------------------------------------------------------- |
| Application     | Calls.AudioVideo (for `meetingInfo=null`)                    |
| Application     | Calls.PSTN (for `meetingInfo=null` and outgoing PSTN call)   |
| Application     | Calls.MeetingJoin (for `meetingInfo!=null` )                 |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /app/calls/{id}
DELETE /applications/{id}/calls/{id}
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_call"
}-->
```http
DELETE https://graph.microsoft.com/beta/app/calls/{id}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

##### Notification - Terminating

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
                "callState": "terminating"
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
                "terminationReason": "AppInitiated"
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
  "description": "Delete call",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
