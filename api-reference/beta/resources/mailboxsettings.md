---
title: "mailboxSettings resource type"
description: "Settings for the primary mailbox of the signed-in user."
localization_priority: Normal
author: "svpsiva"
ms.prod: "outlook"
doc_type: resourcePageType
---

# mailboxSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings for the primary mailbox of a [user](user.md).

You can [get](../api/user-get-mailboxsettings.md) or [update](../api/user-update-mailboxsettings.md) a user's mailbox settings by querying the user's **mailboxSettings** property.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|archiveFolder|string|Folder ID of an archive folder for the user. Read only.|
|automaticRepliesSetting|[automaticRepliesSetting](automaticrepliessetting.md)|Configuration settings to automatically notify the sender of an incoming email with a message from the signed-in user.|
|dateFormat|string|The date format for the user's mailbox.|
|delegateMeetingMessageDeliveryOptions|delegateMeetingMessageDeliveryOptions| If the user has a calendar delegate, this specifies whether the delegate, mailbox owner, or both receive meeting messages and meeting responses. Possible values are: `sendToDelegateAndInformationToPrincipal`, `sendToDelegateAndPrincipal`, `sendToDelegateOnly`. The default is `sendToDelegateOnly`.|
|language|[localeInfo](localeinfo.md)|The locale information for the user, including the preferred language and country/region.|
|timeFormat|string|The time format for the user's mailbox.|
|timeZone|string|The default time zone for the user's mailbox.|
|workingHours|[workingHours](workinghours.md)|The days of the week and hours in a specific time zone that the user works.|
|userPurpose|[userPurpose](userpurpose.md)|The purpose of the mailbox. Used to differentiate a mailbox for a single user from a shared mailbox and equipment mailbox in Exchange Online. Read only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "archiveFolder"
  ],
  "@odata.type": "microsoft.graph.mailboxSettings"
}-->

```json
{
  "archiveFolder": "string",
  "automaticRepliesSetting": {"@odata.type": "microsoft.graph.automaticRepliesSetting"},
  "dateFormat": "string",
  "delegateMeetingMessageDeliveryOptions": "String",
  "language": {"@odata.type": "microsoft.graph.localeInfo"},
  "timeFormat": "string",
  "timeZone": "string",
  "workingHours": {"@odata.type": "microsoft.graph.workingHours"},
  "userPurpose": {"@odata.type": "microsoft.graph.userPurpose"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "mailboxSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


