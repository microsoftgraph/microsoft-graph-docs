# Video Subscription

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Subscribe to video of a participant in a call.

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
POST /app/calls/{id}/participants/{id}/subscribeVideo
POST /applications/{id}/calls/{id}/participants/{id}/subscribeVideo
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|videoResolution|String||
|modality|String||
|socketId|Int64||
|clientContext|String||

## Response
If successful, this method returns `200, OK` response code and [commsOperation](../resources/commsOperation.md) object in the response body.

## Example
Here is an example of how to call this API.

##### Request
Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "participant_subscribeVideo"
}-->
```http
POST https://graph.microsoft.com/beta/app/calls/{id}/participants/{id}/subscribeVideo
Content-Type: application/json
Content-Length: 123

{
  "videoResolution": "sd360p",
  "modality": "unknown",
  "socketId": 99,
  "clientContext": "clientContext-value"
}
```


##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.commsOperation",
  "truncated": true
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
  "status": "completed"
}
```

## Example - Subscribe video of a participant

##### Request

```http
POST /app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/0698446E77E24E4D85F80597083CB830/subscribeVideo
Authorization: Bearer <TOKEN>
Content-Type: application/json
```

<!-- {
  "blockType": "ignored",
  "name": "participant_subscribeVideo"
}-->
```json
{
  "clientContext": "d45324c1-fcb5-430a-902c-f20af696537c",
  "videoResolution": "hd720p",
  "modality": "video",
  "socketId": 1
}
```

##### Response

```http
HTTP/1.1 200 OK
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsOperation",
  "truncated": true
}-->
```json
{
  "id": "17e3b46c-f61d-4f4d-9635-c626ef18e6ad",
  "status": "completed",
  "createdDateTime": "2018-09-06T15:58:41Z",
  "lastActionDateTime": "2018-09-06T15:58:41Z",
  "clientContext": "d45324c1-fcb5-430a-902c-f20af696537c"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "participant: subscribeVideo",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
