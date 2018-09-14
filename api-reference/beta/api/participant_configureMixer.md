# Configure Audio Mixer

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Configure how audio is mixed for different participants in a multiparty conversation.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged) |
| :-------------- | :------------------------------------------ |
| Application     | Calls.MeetingJoin                           |

## HTTP request
<!-- { "blockType": "ignored" } -->

``` http
POST /app/calls/{id}/participants/configureMixer
POST /applications/{id}/calls/{id}/participants/configureMixer
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|clientContext|String||
|participantMixerLevels|[participantMixerLevel](../resources/participantMixerLevel.md) collection||

## Response

If successful, this method returns `200, OK` response code and [commsOperation](../resources/commsOperation.md) object in the response body.

##### Response Headers

| Name               | Type   | Description                           |
| :----------------- | :----- | :------------------------------------ |
| Location           | String | The location of the operation object. |

## Example
Here is an example of how to call this API.

##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "participant_configureMixer"
}-->

``` http
POST /app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/configureMixer
Authorization: Bearer <TOKEN>
Content-Type: application/json

{
    "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
    "participantMixerLevels": [
        {
            "@odata.type": "#microsoft.graph.participantMixerLevel",
            "participant": "123456W77E24E4D85F80597083CB830",
            "ducking":
            {
                "@odata.type": "#microsoft.graph.audioDuckingParameters",
                "rampActive": 50,
                "rampInactive": 50,
                "lowerLevel": 10,
                "upperLevel": 50
            },
            "exclusive": true,
            "sourceLevels": [
                {
                    "@odata.type": "#microsoft.graph.audioSourceLevel",
                    "participant": "8A34A46B3D174ADC8DCEDC4E7D572698",
                    "level": 50
                }
            ]
        }
    ]
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.commsOperation"
} -->

``` http
HTTP/1.1 200 OK
Location: /app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/0FE0623FD62842EDB4BD8AC290072CC5
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
                "@odata.type" : "#microsoft.graph.configureMixerOperation",
                "@odata.id": "/app/calls/57DAB8B1894C409AB240BD8BEAE78896/operations/0FE0623FD62842EDB4BD8AC290072CC5",
                "@odata.etag": "W/\"1\"",
                "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
                "status": "Completed"
            }
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "participant: configureMixer",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
