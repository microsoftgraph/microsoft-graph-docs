---
title: "Add bulkMembers"
description: "Add bulk members to a team."
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Add bulk members

Namespace: microsoft.graph

Add bulk members to the specified [team](../resources/team.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.Read.All, Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.Read.All, Group.ReadWrite.All    |

> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /teams/{id}
```

## Optional query parameters
This method supports the $select and $expand [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [team](../resources/team.md) object in the response body.
## Example
 ```http
        
        PATCH https://graph.microsoft.com/beta/groups/063cf58f-9b21-4814-a076-c1898b7b24a6
    {
       "members@odata.bind":[
        "https://graph.microsoft.com/v1.0/users/f32b83bb-4fc8-4db7-b7f5-76cdbbb8aa1c",
        "https://graph.microsoft.com/v1.0/users/8d64fdb7-c8d7-4ae2-9001-3337a28f9780"
    ],
    "owners@odata.bind":[
        "https://graph.microsoft.com/v1.0/users/f32b83bb-4fc8-4db7-b7f5-76cdbbb8aa1c",
        "https://graph.microsoft.com/v1.0/users/8d64fdb7-c8d7-4ae2-9001-3337a28f9780"
    ]
    }
    ```


