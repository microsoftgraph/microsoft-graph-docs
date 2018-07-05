# Get channel messages

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the list of root [messages](../resouces/chatmmessage.md) in a [channel](../resources/channel.md) of a team.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)|Group.Read.All,Group.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Group.Read.All, Group.ReadWrite.All|

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /teams/{id}/channels/{id}/messages
```
## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [chatmessage](../resources/channel.md) objects in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_channel"
}-->
```http
GET https://graph.microsoft.com/beta/teams/{id}/channels/{id}/messages
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.channel"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 201

HTTP/1.1 200 OK
Content-type: application/json
{
  "value": [
    {
        "id": "id-value",
        "replyToId": "id-value",
        "from" : {
            "user": { 
            "id":  "id-value",
            "displayName": "John Doe"
            }  
        }
        "etag": "id-value",
        "messageType": "message",
        "createdDateTime": "datetime-value",
        "lastModifiedDateTime": "datetime-value",
        "body": {
            "content": "Hello World",
            "contentType": "Text"
        },
        "attachments": [
        {
          "id": "string (identifier)",
          "contentType": "string",
          "contentUrl": "string",
          "content": {
            "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
            "type": "AdaptiveCard",
            "version": "1.0",
            "speak": "The forecast for Seattle January 20 is mostly clear with a High of 51 degrees and Low of 40 degrees",
            "body": [
              {
                "type": "TextBlock",
                "text": "Seattle, WA",
                "size": "large",
                "isSubtle": true
              },
              {
                "type": "TextBlock",
                "text": "September 18, 7:30 AM",
                "spacing": "none"
              },
              {
                "type": "ColumnSet",
                "columns": [
                  {
                    "type": "Column",
                    "width": "auto",
                    "items": [
                      {
                        "type": "Image",
                        "url": "http://messagecardplayground.azurewebsites.net/assets/Mostly%20Cloudy-Square.png",
                        "size": "small"
                      }
                    ]
                  },
                  {
                    "type": "Column",
                    "width": "auto",
                    "items": [
                      {
                        "type": "TextBlock",
                        "text": "42",
                        "size": "extraLarge",
                        "spacing": "none"
                      }
                    ]
                  },
                  {
                    "type": "Column",
                    "width": "stretch",
                    "items": [
                      {
                        "type": "TextBlock",
                        "text": "°F",
                        "weight": "bolder",
                        "spacing": "small"
                      }
                    ]
                  },
                  {
                    "type": "Column",
                    "width": "stretch",
                    "items": [
                      {
                        "type": "TextBlock",
                        "text": "Hi 51",
                        "horizontalAlignment": "left"
                      },
                      {
                        "type": "TextBlock",
                        "text": "Lo 40",
                        "horizontalAlignment": "left",
                        "spacing": "none"
                      }
                    ]
                  }
                ]
            }
          ]
        },
        "name": "string",
        "thumbnailUrl": "string"
      }
    ],
        "mentions": [
            {
                "type": "user",
                "id": "id-value ",
                "mentionText": "Test User",
            }
        ],
        "importance": "normal",
        "reactions": [
            {
                "type": "like",
                "user": [
                { 
                    "id":  "id-value",
                    "displayName": "John Doe"
                }
                ],
                "createdDateTime": "date-value"
            }
        ]
        "locale": "en-us"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get channel",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->