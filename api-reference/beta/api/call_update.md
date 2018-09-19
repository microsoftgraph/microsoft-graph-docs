# Update call

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update the properties of call object.

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
PATCH /app/calls/{id}
PATCH /applications/{id}/calls/{id}
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property            | Type                                                                                                   | Description                                                                                                                                                                                         |
| :------------------ | :------------------------------------------------------------------------------------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| activeModalities    | String Collection                                                                                      | The list of active modalities. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`. Read-only. Server generated.                                               |
| answeredBy          | [participantInfo](../resources/participantInfo.md)                                                     | The participant that answered the call. Read-only. Server generated.                                                                                                                                |
| callRoutes          | [callRoute](../resources/callRoute.md) collection                                                      | The routing information on how the call was retargeted. Read-only. Server generated.                                                                                                                |
| callbackUri         | String                                                                                                 | The callback or subscription ID on which callbacks will be delivered.                                                                                                                               |
| chatInfo            | [chatInfo](../resources/chatInfo.md)                                                                   | The chat information.                                                                                                                                                                               |
| direction           | String                                                                                                 | The direction of the call. The possible value are `incoming` or `outgoing`. Read-only. Server generated.                                                                                          |
| id                  | String                                                                                                 | Read-only. Server generated.                                                                                                                                                                        |
| mediaConfig         | [appHostedMediaConfig](../resources/appHostedMediaConfig.md) or [serviceHostedMediaConfig](../resources/serviceHostedMediaConfig.md) | The media configuration.                                                                                                                                              |
| meetingCapability   | [meetingCapability](../resources/meetingCapability.md)                                                 |                                                                                                                                                                                                     |
| meetingInfo         | [organizerMeetingInfo](../resources/organizerMeetingInfo.md) or [tokenMeetingInfo](../resources/tokenMeetingInfo.md) | The meeting information.                                                                                                                                                              |
| myParticipantId     | String                                                                                                 | Read-only. Server generated.                                                                                                                                                                        |
| requestedModalities | String collection                                                                                      | The list of requested modalities. | Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`.                                                                       |
| resultInfo          | [resultInfo](../resources/resultInfo.md)                                                               | The result information. For example can hold termination reason. Read-only. Server generated.                                                                                                       |
| ringingTimeoutInSeconds | Int32                                                                                              |                                                                                                                                                                                                     |
| routingPolicies     | String collection                                                                                      | Possible values are: `none`, `noMissedCall`, `disableForwardingExceptPhone`, `disableForwarding`.                                                                                             |
| source              | [participantInfo](../resources/participantInfo.md)                                                     | The originator of the call.                                                                                                                                                                         |
| state               | String                                                                                                 | The call state. Possible values are: `incoming`, `establishing`, `ringing`, `established`, `hold`, `redirecting`, `terminating`, `terminated`. Read-only. Server generated.                 |
| subject             | String                                                                                                 | The subject of the conversation.                                                                                                                                                                    |
| targets             | [participantInfo](../resources/participantInfo.md) collection                                          | The targets of the call.                                                                                                                                                                            |
| tenantId            | String                                                                                                 |                                                                                                                                                                                                     |
| terminationReason   | String                                                                                                 | Read-only. Server generated.                                                                                                                                                                        |
| toneInfo            | [toneInfo](../resources/toneInfo.md)                                                                   | Read-only. Server generated.                                                                                                                                                                        |

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
PATCH https://graph.microsoft.com/beta/app/calls/{id}
Content-Type: application/json
Content-Length: 2800

{
  "activeModalities": [
    "unknown"
  ],
  "answeredBy": {
    "identity": {
      "user": {
        "id": "550fae72-d251-43ec-868c-373732c2704f",
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
        "displayName": "Heidi Steen"
      }
    },
    "languageId": "languageId-value",
    "region": "region-value"
  },
  "callRoutes": [
    {
      "original": {
        "phone": {
          "id": "+14258828080"
        }
      },
      "final": {
        "user": {
          "id": "550fae72-d251-43ec-868c-373732c2704f",
          "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
          "displayName": "Heidi Steen"
        }
      },
      "routingType": "forwarded"
    }
  ],
  "callbackUri": "callbackUri-value",
  "chatInfo": {
    "threadId": "19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype",
    "messageId": "0",
    "replyChainMessageId": "0"
  },
  "direction": "incoming",
  "mediaConfig": {
    "@odata.type": "#microsoft.graph.appHostedMediaConfig",
    "blob": "<media config blob>"
  },
  "meetingCapability": {
    "allowAnonymousUsersToDialOut": true,
    "autoAdmittedUsers": "everyoneInCompany"
  },
  "meetingInfo": {
    "@odata.type": "#microsoft.graph.organizerMeetingInfo",
    "organizer": {
      "user": {
        "id": "550fae72-d251-43ec-868c-373732c2704f",
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
        "displayName": "Heidi Steen"
      }
    },
    "allowConversationWithoutHost": true
  },
  "myParticipantId": "myParticipantId-value",
  "requestedModalities": [
    "unknown"
  ],
  "ringingTimeoutInSeconds": 99,
  "routingPolicies": [
    "none"
  ],
  "source": {
    "identity": {
      "user": {
        "id": "550fae72-d251-43ec-868c-373732c2704f",
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
        "displayName": "Heidi Steen"
      }
    },
    "languageId": "languageId-value",
    "region": "region-value"
  },
  "state": "incoming",
  "subject": "subject-value",
  "targets": [
    {
      "identity": {
        "user": {
          "id": "550fae72-d251-43ec-868c-373732c2704f",
          "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
          "displayName": "Heidi Steen"
        }
      },
      "languageId": "languageId-value",
      "region": "region-value"
    }
  ],
  "tenantId": "tenantId-value",
  "terminationReason": "terminationReason-value",
  "toneInfo": {
    "sequenceId": 99,
    "tone": "tone0"
  }
}
```

In the request body, supply a JSON representation of [call](../resources/call.md) object.

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
Content-Length: 2821

{
  "activeModalities": [
    "unknown"
  ],
  "answeredBy": {
    "identity": {
      "user": {
        "id": "550fae72-d251-43ec-868c-373732c2704f",
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
        "displayName": "Heidi Steen"
      }
    },
    "languageId": "languageId-value",
    "region": "region-value"
  },
  "callRoutes": [
    {
      "original": {
        "phone": {
          "id": "+14258828080"
        }
      },
      "final": {
        "user": {
          "id": "550fae72-d251-43ec-868c-373732c2704f",
          "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
          "displayName": "Heidi Steen"
        }
      },
      "routingType": "forwarded"
    }
  ],
  "callbackUri": "callbackUri-value",
  "chatInfo": {
    "threadId": "19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype",
    "messageId": "0",
    "replyChainMessageId": "0"
  },
  "direction": "incoming",
  "id": "id-value",
  "mediaConfig": {
    "@odata.type": "#microsoft.graph.appHostedMediaConfig",
    "blob": "<media config blob>"
  },
  "meetingCapability": {
    "allowAnonymousUsersToDialOut": true,
    "autoAdmittedUsers": "everyoneInCompany"
  },
  "meetingInfo": {
    "@odata.type": "#microsoft.graph.organizerMeetingInfo",
    "organizer": {
      "user": {
        "id": "550fae72-d251-43ec-868c-373732c2704f",
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
        "displayName": "Heidi Steen"
      }
    },
    "allowConversationWithoutHost": true
  },
  "myParticipantId": "myParticipantId-value",
  "requestedModalities": [
    "unknown"
  ],
  "resultInfo": {
    "code": "code-value",
    "message": "message-value",
    "subCode": "subCode-value"
  },
  "ringingTimeoutInSeconds": 99,
  "routingPolicies": [
    "none"
  ],
  "source": {
    "identity": {
      "user": {
        "id": "550fae72-d251-43ec-868c-373732c2704f",
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
        "displayName": "Heidi Steen"
      }
    },
    "languageId": "languageId-value",
    "region": "region-value"
  },
  "state": "incoming",
  "subject": "subject-value",
  "targets": [
    {
      "identity": {
        "user": {
          "id": "550fae72-d251-43ec-868c-373732c2704f",
          "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
          "displayName": "Heidi Steen"
        }
      },
      "languageId": "languageId-value",
      "region": "region-value"
    }
  ],
  "tenantId": "tenantId-value",
  "terminationReason": "terminationReason-value",
  "toneInfo": {
    "sequenceId": 99,
    "tone": "tone0"
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