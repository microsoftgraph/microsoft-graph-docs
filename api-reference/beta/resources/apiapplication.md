---
title: "api resource type"
description: "Specifies settings for a Web API application."
localization_priority: Normal
---

# api resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies settings for a Web API application.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|requestedAccessTokenVersion|Int32| Specifies the accepted access token version for the current API resource. Possible values are 1 or 2.  |
|oauth2PermissionScopes|[permissionScope](permissionscope.md) collection| The collection of OAuth 2.0 permission scopes that the web API (resource) application exposes to client applications. These permission scopes may be granted to client applications during consent. |

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.apiApplication"
}-->

```json
{
  "requestedAccessTokenVersion": 1,
  "oauth2PermissionScopes": [{"@odata.type": "microsoft.graph.permissionScope"}]
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "api resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
