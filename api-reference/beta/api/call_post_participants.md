# Create participant

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
Use this API to create a new participant.

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
POST /app/calls/{id}/participants
POST /applications/{id}/calls/{id}/participants
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, supply a JSON representation of [participant](../resources/participant.md) object.

## Response
If successful, this method returns `201, Created` response code and [participant](../resources/participant.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_participant_from_call"
}-->
```http
POST https://graph.microsoft.com/beta/app/calls/{id}/participants
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
HTTP/1.1 201 Created
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
  "description": "Create participant",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
