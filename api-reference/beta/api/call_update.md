# Update call

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update the properties of call object.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type                        | Permissions (from least to most privileged) |
|:--------------------------------------|:--------------------------------------------|
|Delegated (work or school account)     |                                             |
|Delegated (personal Microsoft account) |                                             |
|Application                            |                                             |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /app/calls/<id>
PATCH /applications/<id>/calls/<id>
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activeModalities| String| Possible values are: `unknown`, `audio`, `video`, `screenSharing`, `videoBasedScreenSharing`, `data`.|
|answeredBy|participantInfo||
|callRoutes|callRoute||
|callbackUri|String||
|chatInfo|chatInfo||
|direction| String| Possible values are: `incoming`, `outgoing`.|
|error|resultInfo||
|mediaConfig|mediaConfig||
|meetingInfo|meetingInfo||
|myParticipantId|String||
|requestedModalities| String| Possible values are: `unknown`, `audio`, `video`, `screenSharing`, `videoBasedScreenSharing`, `data`.|
|source|participantInfo||
|state| String| Possible values are: `incoming`, `establishing`, `ringing`, `established`, `hold`, `transferring`, `transferAccepted`, `redirecting`, `terminating`, `terminated`.|
|subject|String||
|targetDisposition| String| Possible values are: `default`, `simultaneousRing`, `forward`.|
|targets|participantInfo||
|tenantId|String||
|terminationReason|String||
|toneInfo|toneInfo||

## Response
If successful, this method returns a `200 OK` response code and updated [call](../resources/call.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_call"
}-->
```http
PATCH https://graph.microsoft.com/beta/app/calls/<id>
Content-Type: application/json
Content-Length: 2906

{
  "state": "state-value",
  "direction": "direction-value",
  "callRoutes": [
    {
      "routingType": "routingType-value",
      "original": {
        "phone": {
          "id": "+14258828080"
        }
      },
      "final": {
        "user": {
          "id": "29362BD4-CD58-4ED0-A206-0E4A33DBB0B6",
          "displayName": "Heidi Steen"
        }
      }
    }
  ],
  "subject": "subject-value",
  "source": {
    "identity": {
      "user": {
        "id": "29362BD4-CD58-4ED0-A206-0E4A33DBB0B6",
        "displayName": "Heidi Steen"
      }
    },
    "region": "region-value",
    "languageId": "languageId-value"
  }
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.call"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 2906

{
  "state": "state-value",
  "direction": "direction-value",
  "callRoutes": [
    {
      "routingType": "routingType-value",
      "original": {
        "phone": {
          "id": "+14258828080"
        }
      },
      "final": {
        "user": {
          "id": "29362BD4-CD58-4ED0-A206-0E4A33DBB0B6",
          "displayName": "Heidi Steen"
        }
      }
    }
  ],
  "subject": "subject-value",
  "source": {
    "identity": {
      "user": {
        "id": "29362BD4-CD58-4ED0-A206-0E4A33DBB0B6",
        "displayName": "Heidi Steen"
      }
    },
    "region": "region-value",
    "languageId": "languageId-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update call",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->