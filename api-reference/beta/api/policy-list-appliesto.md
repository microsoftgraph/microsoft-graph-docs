---
title: "List Applications and Service Principals with specific Policy assigned"
description: "Retrieve the application and service principal objects with the specified policy assigned."
localization_priority: Normal
doc_type: apiPageType
---

# List Applications and Service Principals with specific Policy assigned

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [application](../resources/application.md) and [service principal](../resources/serviceprincipal.md) objects with the specified policy assigned.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request
```http
GET /policies/{id}/appliesTo
```

## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `200 OK` response code and [application](../resources/application.md) and [service principal](../resources/serviceprincipal.md) objects in the response body. If unsuccessful, a `4xx` error will be returned with specific details.

## Example
The following example retrieves the applications and service principals with a specific policy assigned.

##### Request
Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/policies/{id}/appliesTo
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
	"value":[
		{
			"@odata.type"="#microsoft.graph.application",
			"appId":"appId-value",
			"displayName":"displayName-value",
			"errorUrl":"errorUrl-value",
			"groupMembershipClaims":"groupMembershipClaims-value",
			"homepage":"homepage-value",
			"id":"id-value",
			"keyCredentials":[key-credentials],
			"logoutUrl":"logoutUrl-value",
			"replyUrls":["replyUrls-value"]
		}
	]
}
```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/api/policy-list-appliesto.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
