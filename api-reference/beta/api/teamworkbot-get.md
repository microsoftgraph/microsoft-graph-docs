---
title: "Get teamworkBot"
description: "Read the properties and relationships of a teamworkBot object."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get teamworkBot

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the bot associated with a specific [definition](../resources/teamsappdefinition.md) of the  [TeamsApp](../resources/teamsapp.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| AppCatalog.Read.All, AppCatalog.ReadWrite.All, AppCatalog.Submit |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /appCatalogs/teamsApps/{app-id}/appDefinitions/{app-definition-id}/bot
```

## Optional query parameters
This method supports the `$select` [OData query parameters](/graph/query-parameter) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamworkBot](../resources/teamworkbot.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_teamworkbot"
}
-->
``` http
GET https://graph.microsoft.com/beta/appCatalogs/teamsApps/e4c5c249-bb4b-419e-b7c5-b1d98559368b/appDefinitions/ZTRjNWMyNDktYmI0Yi00MTllLWI3YzUtYjFkOTg1NTkzNjhiIyMyLjAuMSMjUHVibGlzaGVk/bot
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-teamworkbot-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-teamworkbot-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-teamworkbot-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-teamworkbot-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkBot"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamworkBot",
  "id": "1f81bb29-bb29-1f81-29bb-811f29bb811f"
}
```
## See also

- To get bots installed in a team, see example 2 in [List apps in team](team-list-installedapps.md).
- To get bots installed in a chat, see example 2 in [List apps in chat](chat-list-installedapps.md).
- To get bots installed in the personal scope of a user, see example 2 in [List apps installed for user](userteamwork-list-installedapps.md).


