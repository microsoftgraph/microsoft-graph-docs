---
title: "calendarPermission resource type"
description: "The permissions of a user with whom the calendar is shared."
localization_priority: Normal
author: "sochowdh"
ms.prod: "outlook"
doc_type: "resourcePageType"
---

# calendarPermission resource type

Namespace: microsoft.graph

The permissions of a user with whom the calendar has been shared or delegated in an Outlook client.

Get, update, and delete of calendar permissions is supported on behalf of only the calendar owner.

Getting the calendar permissions of a calendar on behalf of a sharee or delegate returns an empty calendar permissions collection.

Once a sharee or delegate has been set up for a calendar, you can [update](../api/calendarpermission-update.md) only the **role** property to change the permissions of a sharee or delegate. You cannot **update** the **allowedRoles**, **emailAddress**, **isInsideOrganization**, or **isRemovable** property. To change these properties, you should [delete](../api/calendarpermission-delete.md) the corresponding **calendarPermission** object and create another sharee or delegate in an Outlook client.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get calendarPermission](../api/calendarpermission-get.md) | [calendarPermission](calendarpermission.md) | Read properties and relationships of calendarPermission object. |
| [Update](../api/calendarpermission-update.md) | [calendarPermission](calendarpermission.md) | Update calendarPermission object. |
| [Delete](../api/calendarpermission-delete.md) | None | Delete calendarPermission object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowedRoles|[calendarRoleType](#calendarroletype-values) collection| List of allowed sharing or delegating permission levels for the calendar. Possible values are: `none`, `freeBusyRead`, `limitedRead`, `read`, `write`, `delegateWithoutPrivateEventAccess`, `delegateWithPrivateEventAccess`, `custom`.|
|emailAddress|[emailAddress](emailaddress.md)| Represents a sharee or delegate who has access to the calendar. For the "My Organization" sharee, the **address** property is null. Read-only. |
|id|String| The unique identifier of the user (sharee or delegate) with whom the calendar has been shared. Read-only.|
|isInsideOrganization|Boolean| True if the user in context (sharee or delegate) is inside the same organization as the calendar owner.|
|isRemovable|Boolean| `True` if the user can be removed from the list of sharees or delegates for the specified calendar, `false` otherwise. The "My organization" user determines the permissions other people within your organization have to the given calendar. You cannot remove "My organization" as a sharee to a calendar.|
|role|[calendarRoleType](#calendarroletype-values)| Current permission level of the calendar sharee or delegate. |

### calendarRoleType values

| Values        | Description |
|:--------------|:------------|
| none | Calendar is not shared with the user. |
| freeBusyRead | User is a sharee who can view free/busy status of the owner on the calendar. |
| limitedRead | User is a sharee who can view free/busy status, and titles and locations of the events on the calendar. |
| read | User is a sharee who can view all the details of the events on the calendar, except for the owner's private events. |
| write | User is a sharee who can view all the details (except for private events) and edit events on the calendar. |
| delegateWithoutPrivateEventAccess | User is a delegate who has write access but cannot view information of the owner's private events on the calendar. |
| delegateWithPrivateEventAccess | User is a delegate who has write access and can view information of the owner's private events on the calendar. |
| custom | User has custom permissions to the calendar. |


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

