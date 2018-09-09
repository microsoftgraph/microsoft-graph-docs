# Update participant

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
Update the properties of participant object.

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
PATCH /app/calls/{id}/participants/{id}
PATCH /app/chats/{id}/participants/{id}
PATCH /app/onlineMeetings/{id}/participants/{id}
PATCH /applications/{id}/calls/{id}/participants/{id}
PATCH /applications/{id}/chats/{id}/participants/{id}
PATCH /applications/{id}/onlineMeetings/{id}/participants/{id}
```


## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| info | [participantInfo](../resources/participantInfo.md) |  |
| isMuted | Boolean |  |
| isTyping | Boolean |  |
| mediaStreams | [mediaStream](../resources/mediaStream.md) collection |  |
| metadata | String |  |

## Response
If successful, this method returns a `200 OK` response code and updated [participant](../resources/participant.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_participant"
}-->
```http
PATCH https://graph.microsoft.com/beta/app/calls/{id}/participants/{id}
Content-Type: application/json
Content-Length: 1536

{
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
```

In the request body, supply a JSON representation of [participant](../resources/participant.md) object.

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.participant"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1557

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
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update participant",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
