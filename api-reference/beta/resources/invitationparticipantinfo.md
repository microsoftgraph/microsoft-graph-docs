---
title: "invitationParticipantInfo resource type"
description: "The **InvitationParticipant** is used to represent a set of identities associated with a conversation invitation, and provides additional invitation parameters."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# invitationParticipantInfo resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **InvitationParticipant** is used to represent a set of identities associated with a conversation invitation, and provides additional invitation parameters.

## Properties

| Property                           | Type                          | Description                                                                          |
| :--------------------------------- | :---------------------------- | :----------------------------------------------------------------------------------- |
| endpointType                       | String                        | Possible values are: `default`, `voicemail`. |
| identity                           | [identitySet](identityset.md) | The [identitySet](identityset.md) associated with this invitation.                   |
| languageId                         | String                        | The language culture string.                                                                                     |
| region                             | String                        | Region of the participant.                                                           |
| replacesCallId                     | String                        | Optional. The call which the target idenity is currently a part of. This call will be dropped once the participant is added. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.invitationParticipantInfo"
}-->
```json
{
  "endpointType": "default | voicemail",
  "identity": {"@odata.type": "#microsoft.graph.identitySet"},
  "languageId": "String",
  "region": "String",
  "replacesCallId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "invitationParticipantInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
