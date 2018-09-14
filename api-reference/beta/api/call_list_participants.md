# List Participants

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get participants in the call.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged) |
| :-------------- | :------------------------------------------ |
| Application     | Calls.MeetingJoin                           |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /app/calls/{id}/participants
GET /applications/{id}/calls/{id}/participants
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
If successful, this method returns a `200 OK` response code and collection of [participant](../resources/participant.md) objects in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_participants"
}-->
```http
GET https://graph.microsoft.com/beta/app/calls/{id}/participants
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.participant",
  "isCollection": true 
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1838

{
  "value": [
    {
      "id": "id-value",
      "info": {
        "identity": {
          "user": {
            "id": "29362BD4-CD58-4ED0-A206-0E4A33DBB0B6",
            "displayName": "Heidi Steen"
          }
        },
        "languageId": "languageId-value",
        "region": "region-value"
      },
      "isMuted": true,
      "isTyping": true,
      "mediaStreams": [
        {
          "direction": "inactive",
          "label": "label-value",
          "mediaType": "unknown",
          "serverMuted": true,
          "sourceId": "sourceId-value"
        }
      ],
      "metadata": "metadata-value"
    }
  ]
}
```

## Example

##### Request

``` http
GET /app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants
Authorization: Bearer <TOKEN>
```

##### Response

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type" : "#microsoft.graph.participant",
            "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
            "info": {
                "@odata.type": "#microsoft.graph.participantInfo",
                "identity" : {
                    "@odata.type": "#microsoft.graph.identitySet",
                    "user" : {
                        "@odata.type": "#microsoft.graph.endpointIdentity",
                        "endpointId": "A904FBD5A31041E881E861877A3DE3CD",
                        "region": "westus",
                        "languageId": "en-US",
                        "displayName": "Test User",
                        "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
                    }
                }
            },
            "mediaStreams": [
                {
                    "mediaType": "audio",
                    "label": "main-audio",
                    "sourceId": 1,
                    "direction": "sendReceive",
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.participant",
            "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
            "info": {
                "@odata.type": "#microsoft.graph.participantInfo",
                "identity" : {
                    "@odata.type": "#microsoft.graph.identitySet",
                    "phone": {
                        "@odata.type": "#microsoft.graph.endpointIdentity",
                        "endpointId": "A904FBD5A31041E881E861877A3DE3CD",
                        "languageId": "en-US",
                        "displayName": "+12345678890",
                        "id": "+12345678890"
                    }
                }
            },
            "mediaStreams": [
                {
                    "mediaType": "audio",
                    "label": "main-audio",
                    "sourceId": 2,
                    "direction": "sendReceive",
                }
            ],
            "isMuted": true,
        },
        {
            "@odata.type": "#microsoft.graph.participant",
            "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
            "@odata.type": "#microsoft.graph.participantInfo",
            "identity" : {
                "info": {
                    "@odata.type": "#microsoft.graph.identitySet",
                    "application" : {
                        "@odata.type": "#microsoft.graph.endpointIdentity",
                        "endpointId": "A904FBD5A31041E881E861877A3DE3CD",
                        "languageId": "en-US",
                        "displayName": "Test BOT",
                        "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
                    }
                }
            },
            "mediaStreams": [
                {
                    "mediaType": "audio",
                    "label": "main-audio",
                    "sourceId": 3,
                    "direction": "sendReceive",
                }
            ],
            "isMuted": true
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List participants",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
