---
title: "Update privilegedRoleSettings"
description: "Update the role settings for the given role setting. A privilegedRoleSettings object will be returned."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "governance"
author: "shauliu"
---

# Update privilegedRoleSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the role settings for the given role setting. A [privilegedRoleSettings](../resources/privilegedrolesettings.md) object will be returned.
## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

>**Note:** The requester must have the Privileged Role Administrator role to update role settings. 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureAD, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PUT /privilegedRoles/{id}/settings
```

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body
In the request body, supply a JSON representation of a [privilegedRoleSettings](../resources/privilegedrolesettings.md) object.

The following table lists the properties that you can supply when you update a role setting.

|Property|Type|Description|
|:---------------|:--------|:----------|
|elevationDuration|duration|The duration when the role is activated. Required.|
|id|string|The unique identifier for the role settings. Read-only. Required.|
|isMfaOnElevationConfigurable|boolean|**true** if mfaOnElevation is configurable. **false** if mfaOnElevation is not configurable. Required.|
|lastGlobalAdmin|Boolean|For internal use only.|
|maxElavationDuration|duration|Maximum duration for the activated role. Required.|
|mfaOnElevation|Boolean|**true** if MFA is required to activate the role. **false** if MFA is not required to activate the role. Required.|
|minElevationDuration|duration|Minimum duration for the activated role. Required.|
|notificationToUserOnElevation|Boolean|**true** if send notification to the end user when the role is activated. **false** if do not send notification when the role is activated. Required.|
|ticketingInfoOnElevation|Boolean|**true** if the ticketing information is required when activate the role. **false** if the ticketing information is not required when activate the role. Required.|
|approvalOnElevation|Boolean|**true** if the approval is required when activate the role. **false** if the approval is not required when activate the role. Required.|
|approverIds|string collection|List of Approval IDs, if approval is required for activation.|

## Response

If successful, this method returns a `204 No Content` response code.

Note that the tenant needs to be registered to PIM. Otherwise, the HTTP 403 Forbidden status code will be returned.
## Example
##### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "put_privilegedrolesettings"
}-->
```http
PUT https://graph.microsoft.com/beta/privilegedRoles/{id}/settings
Content-type: application/json

{
    "id": "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
    "elevationDuration": "PT8H",
    "notificationToUserOnElevation": false,
    "ticketingInfoOnElevation": true,
    "mfaOnElevation": false,
    "maxElavationDuration": "PT0S",
    "minElevationDuration": "PT0S",
    "lastGlobalAdmin": false,
    "isMfaOnElevationConfigurable": true,
    "approvalOnElevation": false,
    "approverIds": ["e2b2a2fb-13d7-495c-adc9-941fe966793f", "22770e3f-b9b4-418e-9dea-d0e3d2f275dd"]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/put-privilegedrolesettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/put-privilegedrolesettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/put-privilegedrolesettings-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/put-privilegedrolesettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}-->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update privilegedRoleSettings",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


