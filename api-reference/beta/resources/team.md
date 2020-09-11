---
title: "team resource type"
description: "A team in Microsoft Teams is a collection of channels. "
author: "clearab"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# team resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A team in Microsoft Teams is a collection of [channel](channel.md) objects. A channel represents a topic, and therefore a logical isolation of discussion, within a team.

Every team is associated with a [group](../resources/group.md). The group has the same ID as the team - for example, `/groups/{id}/team` is the same as `/teams/{id}`. For more information about working with groups and members in teams, see [Use the Microsoft Graph REST API to work with Microsoft Teams](teams-api-overview.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create team](../api/team-post.md) | [teamsAsyncOperation](teamsasyncoperation.md) | Create a team from scratch. |
|[Create team from group](../api/team-put-teams.md) | [team](team.md) | Create a new team, or add a team to an existing group.|
|[Get team](../api/team-get.md) | [team](team.md) | Retrieve the properties and relationships of the specified team.|
|[Update team](../api/team-update.md) | [team](team.md) |Update the properties of the specified team. |
|[Delete team](/graph/api/group-delete?view=graph-rest-1.0) | None |Delete the team and its associated group. |
|[List members](../api/team-list-members.md)|[conversationMember](../resources/conversationmember.md) collection|Get the conversationMembers from the members navigation property.|
|[Add members](../api/team-post-members.md)|[conversationMember](../resources/conversationmember.md)|Add a new member.|
|[Remove members](../api/team-delete-members.md)|None|Delete a [conversationMember](../resources/conversationmember.md) object.|
|[Change member's role](../api/conversationmember-update.md)|[conversationMember](../resources/conversationmember.md)|Change a member to an owner or back to a regular member.|
|[Archive team](../api/team-archive.md) | [teamsAsyncOperation](../resources/teamsasyncoperation.md) |Put the team in a read-only state. |
|[Unarchive team](../api/team-unarchive.md) | [teamsAsyncOperation](../resources/teamsasyncoperation.md) |Restore the team to a read-write state. |
|[Clone team](../api/team-clone.md) | [teamsAsyncOperation](../resources/teamsasyncoperation.md) |Copy the team and its associated group. |
|[List your teams](../api/user-list-joinedteams.md) | [team](team.md) collection | List the teams you are a member of. |
|[List all teams](/graph/teams-list-all-teams) | [group](group.md) collection | List all groups that have teams. |
|[Get team photo](../api/team-get-photo.md) | Binary data | Get the photo (picture) for a team. |

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|displayName|string| The name of the team. |
|description|string| An optional description for the team. |
|classification|string| An optional label. Typically describes the data or business sensitivity of the team. Must match one of a pre-configured set in the tenant's directory. |
|specialization|[teamSpecialization](teamspecialization.md)| Optional. Indicates whether the team is intended for a particular use case.  Each team specialization has access to unique behaviors and experiences targeted to its use case. |
|visibility|[teamVisibilityType](teamvisibilitytype.md)| The visibility of the group and team. Defaults to Public. |
|funSettings|[teamFunSettings](teamfunsettings.md) |Settings to configure use of Giphy, memes, and stickers in the team.|
|guestSettings|[teamGuestSettings](teamguestsettings.md) |Settings to configure whether guests can create, update, or delete channels in the team.|
|internalId | string | A unique ID for the team that has been used in a few places such as the audit log/[Office 365 Management Activity API](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-reference). |
|isArchived|Boolean|Whether this team is in read-only mode. |
|memberSettings|[teamMemberSettings](teammembersettings.md) |Settings to configure whether members can perform certain actions, for example, create channels and add bots, in the team.|
|messagingSettings|[teamMessagingSettings](teammessagingsettings.md) |Settings to configure messaging and mentions in the team.|
|discoverySettings|[teamDiscoverySettings](teamdiscoverysettings.md) |Settings to configure team discoverability by others.|
|webUrl|string (readonly) | A hyperlink that will go to the team in the Microsoft Teams client. This is the URL that you get when you right-click a team in the Microsoft Teams client and select **Get link to team**. This URL should be treated as an opaque blob, and not parsed. |
|classSettings|[teamClassSettings](teamclasssettings.md) |Configure settings of a class. Available only when the team represents a class.|
|isMembershipLimitedToOwners|Boolean|If set to `true`, the team is currently in the owner-only team membership state and not accessible by other team members, such as students.|
|createdDateTime|dateTimeOffset|Read only. Timestamp at which the team was created.|

### Instance attributes

Instance attributes are properties with special behaviors. These properties are temporary and either a) define behavior the service should perform or b) provide short-term property values, like a download URL for an item that expires.

| Property name| Type   | Description
|:-----------------------|:-------|:-------------------------|
|@microsoft.graph.teamCreationMode|string|Indicates the team is in migration state and is currently being used for migration purposes. It accepts one value: `migration`.|

For a POST request example, see [Request(create team in migration state)](https://github.com/MicrosoftDocs/msteams-docs/blob/add-import-messages/msteams-platform/graph-api/import-messages/import-external-messages-to-teams.md#request-create-team-in-migration-state).

## Relationships

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|channels|[channel](channel.md) collection|The collection of channels & messages associated with the team.|
|installedApps|[teamsAppInstallation](teamsappinstallation.md) collection|The apps installed in this team.|
|members|[conversationMember](../resources/conversationmember.md) collection|Members and owners of the team.|
|owners|[user](user.md)| The list of this team's owners. Currently, when creating a team using application permissions, exactly one owner must be specified. When using user delegated permissions, no owner can be specified (the current user is the owner). Owner must be specified as an object ID (GUID), not a UPN. |
|operations|[teamsAsyncOperation](teamsasyncoperation.md) collection| The async operations that ran or are running on this team. | 
|photo|[profilePhoto](../resources/profilephoto.md)|The team photo.|
|[primaryChannel](../api/team-get-primarychannel.md)|[channel](channel.md)| The general channel for the team. | 
|schedule|[schedule](schedule.md)| The schedule of shifts for this team.|
|template|[teamsTemplate](teamstemplate.md)| The template this team was created from. See [available templates](https://docs.microsoft.com/MicrosoftTeams/get-started-with-teams-templates). |

## JSON representation

The following is a JSON representation of the resource.

>**Note:** If the team is of type class, a **classSettings** property is applied on the team.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.team",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "guestSettings": {"@odata.type": "microsoft.graph.teamGuestSettings"},
  "memberSettings": {"@odata.type": "microsoft.graph.teamMemberSettings"},
  "messagingSettings": {"@odata.type": "microsoft.graph.teamMessagingSettings"},
  "funSettings": {"@odata.type": "microsoft.graph.teamFunSettings"},
  "discoverySettings": {"@odata.type": "microsoft.graph.teamDiscoverySettings"},
  "internalId": "string",
  "isArchived": false,
  "webUrl": "string (URL)",
  "displayName": "string",
  "description": "string",
  "classification": "string",
  "specialization": "string",
  "visibility": "string",
  "classSettings": {"@odata.type": "microsoft.graph.teamClassSettings"},
  "isMembershipLimitedToOwners":"boolean",
  "createdDateTime": "string (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "team resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

## See also

- [Creating a group with a team](/graph/teams-create-group-and-team)
- [Use the Microsoft Graph API to work with Microsoft Teams](teams-api-overview.md)
