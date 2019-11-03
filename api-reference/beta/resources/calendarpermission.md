---
title: "calendarPermission resource type"
description: "The permissions of a user with whom the calendar is shared."
localization_priority: Normal
author: "sochowdh"
ms.prod: "outlook"
doc_type: "resourcePageType"
---

# calendarPermission resource type

The permissions of a user with whom the calendar is shared. 

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get calendarPermission](../api/calendarpermission-get.md) | [calendarPermission](calendarpermission.md) | Read properties and relationships of calendarPermission object. |
| [Update](../api/calendarpermission-update.md) | [calendarPermission](calendarpermission.md) | Update calendarPermission object. |
| [Delete](../api/calendarpermission-delete.md) | None | Delete calendarPermission object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowedRoles|string collection| List of allowed sharing permission levels for the calendar. Possible values are: `none`, `freeBusyRead`, `limitedRead`, `read`, `write`, `delegateWithoutPrivateEventAccess`, `delegateWithPrivateEventAccess`, `custom`.|
|emailAddress|[emailAddress](emailaddress.md)| Represents a sharee who has access to the calendar. For the "My Organization" sharee, the **address** property is null. |
|id|String| The unique identifier of the user (sharee) with whom the calendar has been shared. Read-only.|
|isInsideOrganization|Boolean| True if the user in context (sharee) is inside the same organization as the calendar owner.|
|isRemovable|Boolean| `True` if the user can be removed from the list of sharees for the specified calendar, `false` otherwise. The "My organization" user determines the permissions other people within your organization have to the given calendar. You cannot remove "My organization" as a sharee to a calendar.|
|role|calendarRoleType| Current permission level of the calendar sharee. Possible values are: `none`, `freeBusyRead`, `limitedRead`, `read`, `write`, `delegateWithoutPrivateEventAccess`, `delegateWithPrivateEventAccess`, `custom`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.calendarPermission",
  "keyProperty": "id"
}-->

```json
{
  "allowedRoles": ["string"],
  "emailAddress": {"@odata.type": "microsoft.graph.emailAddress"},
  "id": "String (identifier)",
  "isInsideOrganization": "boolean",
  "isRemovable": "boolean",
  "role": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "calendarPermission resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->