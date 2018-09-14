# call: Record

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Record the call.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged) |
| :-------------- | :------------------------------------------ |
| Application     | Calls.AudioVideo                            |
| Application     | Calls.PSTN                                  |
| Application     | Calls.MeetingJoin                           |

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
POST /app/calls/{id}/record
POST /applications/{id}/calls/{id}/record
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|prompts|[prompt](../resources/prompt.md) collection||
|bargeInAllowed|Boolean||
|initialSilenceTimeoutInSeconds|Int32||
|maxSilenceTimeoutInSeconds|Int32||
|maxRecordDurationInSeconds|Int32||
|playBeep|Boolean||
|streamWhileRecording|Boolean||
|stopTones|String collection||
|recordResourceLocation|String||
|completionReason|String||
|clientContext|String||

## Response

##### Response Headers

| Name               | Type   | Description                         |
| :----------------- | :----- | :---------------------------------- |
| Location           | String | The location of the created object. |

If successful, this method returns `200, OK` response code and [recordOperation](../resources/recordOperation.md) object in the response body.

## Example
Here is an example of how to call this API.

##### Request
Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "call_record"
}-->

``` http
POST https://graph.microsoft.com/beta/app/calls/{id}/record
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "bargeInAllowed": true,
    "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
    "prompts": [
        {
            "@odata.type": "#microsoft.graph.silencePrompt",
            "duration": 5000
        },
        {
            "@odata.type": "#microsoft.graph.mediaPrompt",
            "mediaInfo": {
                "url": "https://cdn.contoso.com/beep.wav",
                "id": "1D6DE2D4-CD51-4309-8DAA-70768651088E",
            },
            "loop": 5
        }
    ],
    "maxRecordDurationInSeconds": 1800,
    "initialSilenceTimeoutInSeconds": 10,
    "maxSilenceTimeoutInSeconds": 2,
    "recordingFormat": "wav",
    "playBeep": true,
    "streamWhileRecording": true,
    "stopTones": [ "#", "11", "*" ],
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.recordOperation"
} -->

``` http
HTTP/1.1 200 OK
Location: /app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/0FE0623FD62842EDB4BD8AC290072CC5
Content-Type: application/json
Content-Length: 428

{
  "clientContext": "clientContext-value",
  "completionReason": "operationCanceled",
  "createdDateTime": "2018-03-19T09:46:02Z",
  "id": "id-value",
  "lastActionDateTime": "2018-03-19T09:46:02Z",
  "status": "Running"
}
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
                "@odata.type" : "#microsoft.graph.recordOperation",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/0FE0623FD62842EDB4BD8AC290072CC5",
                "@odata.etag": "W/\"54451\"",
                "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
                "status": "completed",
                "recordResourceLocation": "file-location-url",
                "length": 900,
                "completionReason": "callTerminated"
            }
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "call: record",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
