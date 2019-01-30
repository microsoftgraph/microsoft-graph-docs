---
title: "List Policies assigned to Application or Service Principal"
description: "Retrieve the policy objects assigned to an application or service principal."
localization_priority: Normal
---

# List Policies assigned to Application or Service Principal

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [policy](../resources/policy.md) objects assigned to an application or service principal.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /applications/{id}/policies
```

> Note: The "id" in the request is the "id" property of the application or service principal, not the "appid" property.

## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `200 OK` response code and [policy](../resources/policy.md) objects in the response body. If unsuccessful, a `4xx` error will be returned with specific details.

## Example
The following example retrieves the policies assigned to an application.

##### Request
Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/applications/{id}/policies
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Cache-Control: private
Content-Type: application/json

{
	"value":[
		{
			"@odata.type":"#microsoft.graph.policy",
			"id":"id-value",
			"alternativeIdentifier":null,
			"definition":["policy-definition"],
			"displayName":"name-value",
			"isOrganizationDefault": true | false,
			"keyCredentials":[key-credentials],
			"type":"type-value"
		}
	]
}
```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/api/policy-list-assigned.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
