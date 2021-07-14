---
title: "presence resource type"
description: "Contains information about a user's presence, including their availability and user activity."
author: "mkhribech"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "cloud-communications"
---

# presence resource type

Namespace: microsoft.graph

Contains information about a user's presence, including their availability and user activity.

> **Note:** This resource is currently only supported for Microsoft Teams users.

This resource supports subscribing to [change notifications](/graph/webhooks).

## Methods

| Method                                                            | Return Type                                       | Description                                  |
|:------------------------------------------------------------------|:--------------------------------------------------|:---------------------------------------------|
| [Get presence](../api/presence-get.md)     | [presence](../resources/presence.md)     | Get a user's presence information.
| [Get presence of multiple users](../api/cloudcommunications-getpresencesbyuserid.md)    |  [presence](../resources/presence.md) collection     |  Get the presence information for multiple users.      |


## Properties

| Relationship        | Type                                                 | Description                                                         |
|:--------------------|:-----------------------------------------------------|:--------------------------------------------------------------------|
|id    |  string     | 	The user object id   |
|availability    |  string collection   | 	The base presence information for a user. Possible values are `Available`, `AvailableIdle`,  `Away`, `BeRightBack`, `Busy`, `BusyIdle`, `DoNotDisturb`, `Offline`, `PresenceUnknown`  |
|activity    |  string collection      | 	The supplemental information to a user's availability. Possible values are `Available`, `Away`, `BeRightBack`, `Busy`, `DoNotDisturb`, `InACall`, `InAConferenceCall`, `Inactive`, `InAMeeting`, `Offline`, `OffWork`, `OutOfOffice`, `PresenceUnknown`, `Presenting`, `UrgentInterruptionsOnly`.       |

>**Note:** To learn more about the different presence states, see [User presence in Teams](/microsoftteams/presence-admins). 

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.presence"
}-->
```json
{
   "id":"string",
   "availability":"string",
   "activity":"string"
}
```
