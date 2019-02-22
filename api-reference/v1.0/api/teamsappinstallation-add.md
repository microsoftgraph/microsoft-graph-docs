---
title: "Add app to team"
description: "Installs an app to the specified team."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Add app to team



Installs an [app](../resources/teamsapp.md) to the specified [team](../resources/team.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{id}/installedApps
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|teamsApp| [teamsApp](../resources/teamsapp.md) |The app to add.|


## Response

If successful, this method returns a `200 OK` response code.

## Example
#### Request
The following is an example of the request.
<!-- {
  "blockType": "ignored",
  "name": "get_team"
}-->
```http
POST /teams/{id}/installedApps
{
   "teamsApp@odata.bind":"https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"
}
```
#### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.team"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: xxx

{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get team",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

## See also

