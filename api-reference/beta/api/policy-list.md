---
title: "List Policies"
description: "Get all policy objects in the directory."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "microsoft-identity-platform"
author: "davidmu1"
---

# List Policies

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all [policy](../resources/policy.md) objects in the directory.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Policy.Read.All, Directory.Read.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Policy.Read.All, Directory.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /policies
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `200 OK` response code and [policy](../resources/policy.md) objects in the response body. If unsuccessful...

## Example
The following example retrieves all policies.

##### Request
Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/policies
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-type: application/json
{
	"value":[
		{
			"id":"id-value",
			"alternativeIdentifier":null,
			"definition":["policy-definition"],
			"displayName":"name-value",
			"isOrganizationDefault":boolean-value,
			"keyCredentials":[key-credentials],
			"type":"type-value"
		}
	]
}
```
