---
title: "Update onlineMeeting"
description: "Update the properties of an online meeting."
author: "jsandoval-msft"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Update onlineMeeting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the **startDateTime**, **endDateTime**, **participants**, and **subject** properties of the specified [onlineMeeting](../resources/onlinemeeting.md).

## Permissions

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | OnlineMeetings.ReadWrite                    |
| Delegated (personal Microsoft account) | Not Supported.                              |
| Application                            | OnlineMeetings.ReadWrite.All*                |

> [!IMPORTANT]
> \* Administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user, authorizing the app configured in the policy to update an online meeting on behalf of that user (user ID specified in the request path).

## HTTP request

Request using a delegated token:
<!-- { "blockType": "ignored" } -->
```http
PATCH https://graph.microsoft.com/beta/me/onlineMeetings/{meetingId}
```

Request using an application token:
<!-- { "blockType": "ignored" } -->
```http
PATCH https://graph.microsoft.com/beta/users/{userId}/onlineMeetings/{meetingId}
```

> **Notes:**
>
> - `userId` is the object ID of a user in [Azure user management portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade). For more details, see [application access policy](/graph/cloud-communication-online-meeting-application-access-policy).
> - `meetingId` is the **id** of an [onlineMeeting entity](../resources/onlinemeeting.md).

## Request headers
| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-type  | application/json. Required. |

## Request body
In the request body, supply a JSON representation of the [onlineMeeting](../resources/onlinemeeting.md) object. Only the **startDateTime**, **endDateTime**, **participants**, and **subject** properties can be modified. The **startDateTime** and **endDateTime** must appear in pairs.

## Response
If successful, this method returns a `200 OK` response code and an [onlineMeeting](../resources/onlinemeeting.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "patch_onlinemeeting_request"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/onlineMeetings/{id}
Content-Type: application/json 

{
  "startDateTime": "2020-09-09T14:33:30.8546353-07:00",
  "endDateTime": "2020-09-09T15:03:30.8566356-07:00",
  "subject": "Patch Meeting Subject"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/patch-onlinemeeting-request-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/patch-onlinemeeting-request-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/patch-onlinemeeting-request-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/patch-onlinemeeting-request-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.channel"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "id":"{id}",
   "creationDateTime":"2020-07-03T00:23:39.444642Z",
   "startDateTime":"2020-09-09T21:33:30.8546353Z",
   "endDateTime":"2020-09-09T22:03:30.8566356Z",
   "joinWebUrl":"url",
   "subject":"Patch Meeting Subject",
   "isBroadcast":false,
   "autoAdmittedUsers":"EveryoneInCompany",
   "outerMeetingAutoAdmittedUsers":null,
   "participants":{
      "organizer":{
         "upn":"upn",
         "role": "presenter",
         "identity":{
            "azureApplicationInstance":null,
            "applicationInstance":null,
            "application":null,
            "device":null,
            "user":{
               "id":"8716745d-77a9-4be3-afff-009e4b81658e",
               "displayName":null,
               "tenantId":"0823831b-1f1b-424b-b90a-1caa345a742a",
               "identityProvider":"AAD"
            }
         }
      }
   },
   "audioConferencing":{
      "conferenceId":"id",
      "tollNumber":"number",
      "tollFreeNumber":null,
      "dialinUrl":"url"
   }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2020-7-16 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Patch online meeting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


