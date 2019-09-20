---
title: "Update a conditionalAccessPolicy"
description: "Update properties in a conditionalAccessPolicy object."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update a conditionalAccessPolicy

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update properties in a [conditionalAccessPolicy](../resources/ConditionalAccessPolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type | Permissions (from least to most privileged) |
|:-------------- |:-------------------------------------- |
| Delegated (work or school account) | Directory.AccessAsUser.All |
| Delegated (personal Microsoft account) | Not supported. |
| Delegated (work or school account) | Policy.ReadWrite.ConditionalAccess |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /conditionalaccess/policies/{id}
```

## Request headers

| Header | Value |
|:------ |:----- |
| Authorization  | Bearer {token}. Required. |
| Content-Type  | application/json |

## Request body

In the request body, provide a JSON object with the parameters that need to be updated. The following table shows the properties that can be updated.

| Property | Type | Description |
|:-------- |:---- |:----------- |
| `includeApplications` | String collection | Application IDs in scope of policy unless explicitly excluded. |
| `excludeApplications` | String collection | Application IDs excluded from scope of policy. |
| `includeUserActions` | String collection | User actions in scope of the policy, e.g. 'urn:user:registersecurityinfo'. |
| `includeUsers` | String collection | User IDs in scope of policy unless explicitly excluded, or `ALL` or `GUEST`. |
| `excludeUsers` | String collection | User IDs excluded from scope of policy and/or `GUEST`. |
| `includeGroups` | String collection | Group IDs in scope of policy unless explicitly excluded, or `ALL`. |
| `excludeGroups` | String collection | Group IDs excluded from scope of policy. |
| `includeRoles` | String collection | Role IDs in scope of policy unless explicitly excluded, or `ALL`. |
| `excludeRoles` | String collection | Role IDs excluded from scope of policy. |

## Response

If successful, this method returns a `204 No Content` response code. The policy details are validated before being stored. If it does not pass validation, a `400 Bad Request` response code is returned.

## Example

The following example updates the definition of a conditionalAccessPolicy object.

### Request

The following is an example of the request.

```http
PATCH https://graph.microsoft.com/beta/conditionalaccess/policies/{id}
Content-Type: application/json

{
  "displayName": "Sample - UpdateTest1",
  "conditions": {
    "applications": {
      "includeApplications": [
        "00000002-0000-0ff1-ce00-000000000000"
      ],
      "excludeApplications": [],
      "includeAuthenticationContext": []
    },
    "users": {
      "includeUsers": [],
      "excludeUsers": [
        "Guests"
      ],
      "includeGroups": [
        "796f8da4-21f2-4148-a34b-9735811d5852",
        "5fad529d-b4a2-4d4d-89c5-e72be11a8ab5"
      ],
      "excludeGroups": [
        "46756a9c-01c0-4526-96e1-5f343c240567"
      ],
      "includeRoles": [
        "cf1c38e5-3621-4004-a7cb-879624dced7c"
      ],
      "excludeRoles": []
    }
  }
}

```

### Response

The following is an example of the response. 

> **Note:** The response object shown here may be truncated for brevity. All of the properties are returned from an actual call.

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update a conditionalAccessPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->