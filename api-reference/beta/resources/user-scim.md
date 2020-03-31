---
title: "user resource type"
description: "Represents an Azure AD user account. Inherits from directoryObject."
author: "ArvindHarinder1"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD user account. Inherits from [directoryObject](directoryobject.md).

For performance reasons, the [create](../api/user-post-users.md), [get](../api/user-get.md), and [list](../api/user-list.md) operations return only a subset of more commonly used properties by default. These default properties are noted in the [Properties](#properties) section. To get any of the properties that are not returned by default, specify them in a `$select` OData query option.

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/user-delta.md) function.

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
| [List users](../api/user-list-scim.md) | [user](user-scim.md) collection | Get a list of user objects. |
| [Create user](../api/user-post-users-scim.md) | [user](user-scim.md) | Create a new user object. |
| [Get user](../api/user-get-scim.md) | [user](user-scim.md) | Read properties and relationships of user object. |

## Properties

| Property       | Type    | Description |
|:---------------|:--------|:------------|
| userName | String | userName typically mapped to UPN |
| department | String | department of user found in the enterprise user schema|


## JSON representation

Here is a JSON representation of the resource

```json

{
     "schemas": ["urn:ietf:params:scim:schemas:core:2.0:User",
     "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"],
     "userName":"bjensen",
     "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User": {
     "department": "123456"
   }
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "user resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
