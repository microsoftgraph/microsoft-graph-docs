---
title: "Assign Policy"
description: "Assigns a policy to an application or service principal."
localization_priority: Normal
doc_type: apiPageType
ms.prod: ""
author: ""
---

# Assign Policy

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assigns a [policy](../resources/policy.md) to an application or service principal.

>Note: Currently, policy assignment only applies to Token lifetime Policy. This type of policy is described in [policy](../resources/policy.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request

```http
POST /applications/{id}/policies/$ref
POST /serviceprincipals/{id}/policies/$ref
```

> Note: The "id" in the request is the "id" property of the application or service principal, not the "appid" property.

## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type | application/json  | Nature of the data in the body of an entity. Required. |

## Request body
In the request body, provide a JSON representation of the policy object to be added.

## Response

If successful, this method returns `204 No Content` response code. If unsuccessful, a `4xx` error will be returned with specific details.

## Example
The following example assigns a policy to an application.

##### Request
Here is an example of the request.

```http
POST /applications/{id}/policies/$ref
Content-type: application/json
{
    "@odata.id":"https://graph.microsoft.com/beta/policies/{policyid}"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 204 No Content
```
