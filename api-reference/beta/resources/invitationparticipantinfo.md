---
title: "invitationParticipantInfo resource type"
description: "The **InvitationParticipant** is used to represent a set of identities associated with a conversation invitation, and provides additional invitation parameters."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# invitationParticipantInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource is used to represent a set of identities associated with a conversation invitation, and provides additional invitation parameters.

## Properties

| Property                           | Type                          | Description                                                                          |
| :--------------------------------- | :---------------------------- | :----------------------------------------------------------------------------------- |
| endpointType                       | String                        | The type of endpoint. Possible values are: `default`, `voicemail`. |
| identity                           | [identitySet](identityset.md) | The [identitySet](identityset.md) associated with this invitation.                   |
| replacesCallId                     | String                        | Optional. The call which the target idenity is currently a part of. This call will be dropped once the participant is added. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "endpointType",
    "replacesCallId"
  ],
  "@odata.type": "microsoft.graph.invitationParticipantInfo"
}-->
```json
{
  "endpointType": "default | voicemail",
  "identity": {"@odata.type": "#microsoft.graph.identitySet"},
  "replacesCallId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "invitationParticipantInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
