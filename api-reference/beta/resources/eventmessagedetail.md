---
title: "eventMessageDetail resource type"
description: "Represents the base type for event message detail."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# eventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This abstract type represents details of a system event message.

System messages are messages generated for events such as members added to a channel, members added to a chat, and team description updated.

List of events supported

| Event | Description |
| :---- | :---------- |
| [callEndedEventMessageDetail](../resources/callStartedEventMessageDetail.md) | A call has ended. |
| [callRecordingEventMessageDetail](../resources/callRecordingEventMessageDetail.md) | Call recording is available. |
| [callStartedEventMessageDetail](../resources/callStartedEventMessageDetail.md) | A call has started. |
| [callTranscriptEventMessageDetail](../resources/callTranscriptEventMessageDetail.md) | Call transcript is available. |
| [channelAddedEventMessageDetail](../resources/channelAddedEventMessageDetail.md) | A channel has been added. |
| [channelDeletedEventMessageDetail](../resources/channelDeletedEventMessageDetail.md) | A channel has been deleted. |
| [channelDescriptionUpdatedEventMessageDetail](../resources/channelDescriptionUpdatedEventMessageDetail.md) | Channel's description has been updated. |
| [channelRenamedEventMessageDetail](../resources/channelRenamedEventMessageDetail.md) | A channel has been renamed. |
| [channelSetAsFavoriteByDefaultEventMessageDetail](../resources/channelSetAsFavoriteByDefaultEventMessageDetail.md) | A channel has been set as favorite by default. |
| [channelUnsetAsFavoriteByDefaultEventMessageDetail](../resources/channelUnsetAsFavoriteByDefaultEventMessageDetail.md) | A channel has been unset as favorite by default. |
| [chatRenamedEventMessageDetail](../resources/chatRenamedEventMessageDetail.md) | A chat has been renamed. |
| [conversationMemberRoleUpdatedEventMessageDetail](../resources/conversationMemberRoleUpdatedEventMessageDetail.md) | Role has been updated for a member. |
| [meetingPolicyUpdatedEventMessageDetail](../resources/meetingPolicyUpdatedEventMessageDetail.md) | Meeting policy has been updated. |
| [membersAddedEventMessageDetail](../resources/membersAddedEventMessageDetail.md) | Members have been added. |
| [membersDeletedEventMessageDetail](../resources/membersDeletedEventMessageDetail.md) | Members have been removed. |
| [membersJoinedEventMessageDetail](../resources/membersJoinedEventMessageDetail.md) | Members have joined. |
| [membersLeftEventMessageDetail](../resources/membersLeftEventMessageDetail.md) | Members have left. |
| [tabUpdatedEventMessageDetail](../resources/tabUpdatedEventMessageDetail.md) | A tab has been updated. |
| [teamArchivedEventMessageDetail](../resources/teamArchivedEventMessageDetail.md) | A team has been archived. |
| [teamCreatedEventMessageDetail](../resources/teamCreatedEventMessageDetail.md) | A team has been created. |
| [teamDescriptionUpdatedEventMessageDetail](../resources/teamDescriptionUpdatedEventMessageDetail.md) | Team's description has been updated. |
| [teamJoiningDisabledEventMessageDetail](../resources/teamJoiningDisabledEventMessageDetail.md) | Team joining has been disabled. |
| [teamJoiningEnabledEventMessageDetail](../resources/teamJoiningEnabledEventMessageDetail.md) | Team joining has been enabled. |
| [teamRenamedEventMessageDetail](../resources/teamRenamedEventMessageDetail.md) | A team has been renamed. |
| [teamsAppInstalledEventMessageDetail](../resources/teamsAppInstalledEventMessageDetail.md) | Teams app has been installed. |
| [teamsAppRemovedEventMessageDetail](../resources/teamsAppRemovedEventMessageDetail.md) | Teams app has been removed. |
| [teamsAppUpgradedEventMessageDetail](../resources/teamsAppUpgradedEventMessageDetail.md) | Teams app has been upgraded. |
| [teamUnarchivedEventMessageDetail](../resources/teamUnarchivedEventMessageDetail.md) | A team has been unarchived. |

## Properties
None.



## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.eventMessageDetail"
}
```

