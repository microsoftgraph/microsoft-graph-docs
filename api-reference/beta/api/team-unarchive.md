---
title: "Unarchive team"
description: "Restore an archived team. This restores users' ability to send messages and edit the team, abiding by tenant and team settings. Teams are archived using the archive API."
localization_priority: Normal
author: "nkramer"
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Unarchive team

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore an archived [team](../resources/team.md). This restores users' ability to send messages and edit the team, abiding by tenant and team settings. Teams are archived using the [archive](team-archive.md) API.

Unarchiving is an async operation. A team is unarchived once the async operation completes successfully, which may occur subsequent to a response from this API.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.ReadWrite.All    |

> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{id}/unarchive
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response

If unarchiving is started successfully, this method returns a `202 Accepted` response code. The response will also contain a `Location` header, which contains the location of the [teamsAsyncOperation](../resources/teamsasyncoperation.md) that was created to handle unarchiving of the team. Check the status of the unarchiving operation by making a GET request to this location.

## Example
#### Request
The following is an example of a request.
<!-- {
  "blockType": "ignored",
  "name": "unarchive_team"
}-->
```http
POST https://graph.microsoft.com/beta/teams/{id}/unarchive
```

#### Response
The following is an example of a response.
```http
HTTP/1.1 202 Accepted
Location: /teams({id})/operations({opId})
Content-Type: text/plain
Content-Length: 0
```

<!-- uuid: 9a9bb83f-6f35-4426-bb04-73ca43ad6cc8
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Unarchive team",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
