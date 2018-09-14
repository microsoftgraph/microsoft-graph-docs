# Get Participant

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get participant.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged) |
| :-------------- | :------------------------------------------ |
| Application     | Calls.MeetingJoin                           |

## HTTP request
<!-- { "blockType": "ignored" } -->

``` http
GET /app/calls/{id}/participants/{id}
GET /applications/{id}/calls/{id}/participants/{id}
```

## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

 If successful, this method returns a 200 OK response code.

##### Response Headers

No Headers

##### Response Body
If successful, this method returns a `200 OK` response code and [participant](../resources/participant.md) object in the response body.

## Example

##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_participant"
}-->

``` http
GET /app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants/0698446E77E24E4D85F80597083CB830
Authorization: Bearer <TOKEN>
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.participant"
} -->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
    "info": {
        "identity" : {
            "user" : {
                "displayName": "Test User",
                "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
            }
        }
    },
    "mediaStreams": [
        {
            "mediaType": "audio",
            "label": "main-audio",
            "sourceId": "1",
            "direction": "sendReceive",
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get participant",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->