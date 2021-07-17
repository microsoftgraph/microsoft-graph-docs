---
title: "Create calendarPermission"
description: "Create the calendarpermission object."
localization_priority: Normal
author: "sochowdh"
ms.prod: "outlook"
doc_type: "apiPageType"
---

# Create calendarPermission

Namespace: microsoft.graph

Create a calendarPermission resource (../resources/calendarpermission.md) to specify the identity and role of the user with whom the specified calendar is being shared or delegated.

## Permissions

Depending on the type of calendar that the event is in and the permission type (delegated or application) requested, one of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Calendar | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| user calendar | Calendars.Read, Calendars.ReadWrite | Calendars.Read, Calendars.ReadWrite | Calendars.Read, Calendars.ReadWrite |
| group calendar | Group.Read.All, Group.ReadWrite.All | Not supported. | Not supported. |

## HTTP request

Create the specified permissions of a user's primary calendar:
<!-- { "blockType": "ignored" } -->
```http
POST /users/{id}/calendar/calendarPermissions
```

Create the specified permissions of a group calendar:
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/calendar/calendarPermissions
```

Create the specified permissions of the user calendar that contains the identified event:
<!-- { "blockType": "ignored" } -->
```http
POST /users/{id}/events/{id}/calendar/calendarPermissions
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply a JSON representation of [calendarPermission](../resources/calendarpermission.md) object.

## Response

If successful, this method returns a `200 OK` response code and a calendarPermission object[calendarPermission](../resources/calendarpermission.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- { 
  "blockType": "request",
  "name": "create_calendarpermission"
}-->

# [HTTP]

POST https://graph.microsoft.com/beta/users/{id}/calendar/calendarPermissions

Content-type: application/json
{
  "emailAddress": {
    "name": "Samantha Booth",
    "address":"samanthab@adatum.onmicrosoft.com"
  },
  "isRemovable": true,
  "isInsideOrganization": true,
  "role": "write",
  "allowedRoles": [
    "none",
    "freeBusyRead",
    "limitedRead",
    "read",
    "write"
  ],
  "id": "RGVmYXVsdA=="
}
    
  },
  "isRemovable": true,
  "isInsideOrganization": true,
  "role": "write",
  "allowedRoles": [
    "none",
    "freeBusyRead",
    "limitedRead",
    "read",
    "write"
  ]
}


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendarPermission"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "emailAddress": {
    "name": "Samantha Booth",
  },
  "isRemovable": true,
  "isInsideOrganization": true,
  "role": "write",
  "allowedRoles": [
    "none",
    "freeBusyRead",
    "limitedRead",
    "read",
    "write"
  ],
  "id": "RGVmYXVsdA=="
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed99
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create calendarPermission",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""