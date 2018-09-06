# group resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Azure Active Directory (Azure AD) group, which can be an Office 365 group, a team in Microsoft Teams, a dynamic group, or a security group.
Inherits from [directoryObject](directoryobject.md).

This resource supports:

- Adding your own data to custom properties using [extensions](../../../concepts/extensibility_overview.md).
- Using [delta query](../../../concepts/delta_query_overview.md) to track incremental additions, deletions, and updates, by providing a [delta](../api/user_delta.md) function.

> **Microsoft Teams and Office 365 groups support group collaboration**. You can use most of the Office 365 groups API with Microsoft Teams. To create a [team](team.md), first  [create group](../api/group_post_groups.md) and then [add a team to it](../api/team_put_teams.md). For details, see the [Microsoft Teams overview](teams_api_overview.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|**Group management**| | |
|[Create group](../api/group_post_groups.md) | [group](group.md) |Create a new group as specified. It can be an Office 365 group, dynamic group, security group, or team.|
|[Get group](../api/group_get.md) | [group](group.md) |Read properties and relationships of group object.|
|[Update group](../api/group_update.md) | None |Update the properties of a group object. |
|[Delete group](../api/group_delete.md) | None |Delete group object. |
|[delta](../api/group_delta.md)|group collection| Get incremental changes for groups. |
|[List groupLifecyclePolicies](../api/group_list_grouplifecyclepolicies.md) |[groupLifecyclePolicy](grouplifecyclepolicy.md) collection| List group lifecycle policies. |
|[List owners](../api/group_list_owners.md) |[directoryObject](directoryobject.md) collection| Get the owners of the group from the **owners** navigation property.|
|[Add owner](../api/group_post_owners.md) |[directoryObject](directoryobject.md)| Add a new owner for the group by posting to the **owners** navigation property (supported for security groups and mail-enabled security groups only).|
|[Remove owner](../api/group_delete_owners.md) | None |Remove an owner from an Office 365 group, a security group or a mail-enabled security group through the **owners** navigation property.|
|[List members](../api/group_list_members.md) |[directoryObject](directoryobject.md) collection| Get the users and groups that are direct members of this group from the **members** navigation property.|
|[Add member](../api/group_post_members.md) |[directoryObject](directoryobject.md)| Add a user or group to this group by posting to the **members** navigation property (supported for security groups and mail-enabled security groups only).|
|[Remove member](../api/group_delete_members.md) | None |Remove a member from an Office 365 group, a security group or a mail-enabled security group through the **members** navigation property. You can remove users or other groups. |
|[checkMemberGroups](../api/group_checkmembergroups.md)|String collection|Check for membership in a list of groups. The function is transitive.|
|[getMemberGroups](../api/group_getmembergroups.md)|String collection|Return all the groups that the group is a member of. The function is transitive.|
|[getMemberObjects](../api/group_getmemberobjects.md)|String collection|Return all of the groups and administrative units that the group is a member of. The function is transitive. |
|[Create setting](../api/directorysetting_post_settings.md) | [directorySetting](directorysetting.md) |Create a setting object based on a directorySettingTemplate. The POST request must provide settingValues for all the settings defined in the template. Only groups specific templates may be used for this operation.|
|[Get setting](../api/directorysetting_get.md) | [directorySetting](directorysetting.md) |Read properties of a specific setting object.|
|[List settings](../api/directorysetting_list.md) | [directorySetting](directorysetting.md) collection |List properties of all setting objects.|
|[Update setting](../api/directorysetting_update.md) | [directorySetting](directorysetting.md)	|Update a setting object. |
|[Delete setting](../api/directorysetting_delete.md) | None |Delete a setting object. |
|[List endpoints](../api/group_list_endpoints.md) |[endpoint](endpoint.md) collection| Get an endpoint object collection. |
|[Get endpoint](../api/endpoint_get.md) | [endpoint](endpoint.md) | Read properties and relationships of an endpoint object. |
|[delta](../api/group_delta.md)|group collection| Get incremental changes for groups. |
|[validateProperties](../api/group_validateproperties.md)|JSON| Validate an Office 365 group's display name or mail nickname complies with naming policies. | 
|**Calendar**| | |
|[Create event](../api/group_post_events.md) |[event](event.md)| Create a new event by posting to the events collection.|
|[Get event](../api/group_get_event.md) |[event](event.md)|Read properties of an event object.|
|[List events](../api/group_list_events.md) |[event](event.md) collection| Get an event object collection.|
|[Update event](../api/group_update_event.md) |None|Update the properties of an event object.|
|[Delete event](../api/group_delete_event.md) |None|Delete event object.|
|[List calendarView](../api/group_list_calendarview.md) |[event](event.md) collection| Get a collection of events in a specified time window.|
|**Chat channels**| | |
|[Create channel](../api/group_post_channels.md) |[channel](channel.md)| Create a new channel by posting to the channels collection.|
|[List channel](../api/group_list_channels.md) |[channel](channel.md) collection| Get a channel object collection.|
|**Conversations**| | |
|[Create conversation](../api/group_post_conversations.md) |[conversation](conversation.md)| Create a new conversation by posting to the conversations collection.|
|[Get conversation](../api/group_get_conversation.md) |[conversation](conversation.md)| Read properties of a conversation object.|
|[List conversations](../api/group_list_conversations.md) |[conversation](conversation.md) collection| Get a conversation object collection.|
|[Delete conversation](../api/group_delete_conversation.md) |None|Delete conversation object.|
|[Get thread](../api/group_get_thread.md) |[conversationThread](conversationthread.md)| Read properties of a thread object.|
|[List threads](../api/group_list_threads.md) |[conversationThread](conversationthread.md) collection| Get all the threads of a group.|
|[Update thread](../api/group_update_thread.md) |None| Update properties of a thread object.|
|[Delete thread](../api/group_delete_thread.md) |None| Delete thread object
|[List acceptedSenders](../api/group_list_acceptedsenders.md) |[directoryObject](directoryobject.md) collection| Get a list of users or groups that are in the acceptedSenders list for this group.|
|[Add acceptedSender](../api/group_post_acceptedsenders.md) |[directoryObject](directoryobject.md)| Add a User or Group to the acceptSenders collection.|
|[Remove acceptedSender](../api/group_delete_acceptedsenders.md) |[directoryObject](directoryobject.md)| Remove a User or Group from the acceptedSenders collection.|
|[List rejectedSenders](../api/group_list_rejectedsenders.md) |[directoryObject](directoryobject.md) collection| Get a list of users or groups that are in the rejectedSenders list for this group.|
|[Add rejectedSender](../api/group_post_rejectedsenders.md) |[directoryObject](directoryobject.md)| Add a new User or Group to the rejectedSenders collection.|
|[Remove rejectedSender](../api/group_delete_rejectedsenders.md) |[directoryObject](directoryobject.md)| Remove new new User or Group from the rejectedSenders collection.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension_post_opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension_get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](../../../concepts/extensibility_schema_groups.md) || Create a schema extension definition and then use it to add custom typed data to a resource.|
|**Other group resources**| | |
|[List photos](../api/group_list_photos.md) |[profilePhoto](photo.md) collection| Get a collection of profile photos for the group.|
|[List plannerPlans](../api/plannergroup_list_plans.md) |[plannerPlan](plannerPlan.md) collection| Get Planner plans owned by the group.|
|**User settings**| | |
|[addFavorite](../api/group_addfavorite.md)|None|Add the group to the list of the current user's favorite groups. Supported for only Office 365 groups.|
|[removeFavorite](../api/group_removefavorite.md)|None|Remove the group from the list of the current user's favorite groups. Supported for Office 365 Groups only.|
|[List memberOf](../api/group_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get the groups and administative units that this user is a direct member of, from the **memberOf** navigation property.|
|[List joinedTeams](../api/user_list_joinedteams.md) |[group](group.md) collection| Get the Microsoft Teams that the user is a direct member of.|
|[subscribeByMail](../api/group_subscribebymail.md)|None|Set the isSubscribedByMail property to **true**. Enabling the current user to receive email conversations. Supported for Office 365 Groups only.|
|[unsubscribeByMail](../api/group_unsubscribebymail.md)|None|Set the isSubscribedByMail property to **false**. Disabling the current user from receive email conversations. Supported for Office 365 Groups only.|
|[resetUnseenCount](../api/group_resetunseencount.md)|None|Reset the unseenCount to 0 of all the posts that the current user has not seen since their last visit. Supported for Office 365 Groups only.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowExternalSenders|Boolean|Default is **false**. Indicates if people external to the organization can send messages to the group.|
|autoSubscribeNewMembers|Boolean|Default is **false**. Indicates if new members added to the group will be auto-subscribed to receive email notifications. You can set this property in a PATCH request for the group; do not set it in the initial POST request that creates the group.|
|classification|String|Describes a classification for the group (such as low, medium or high business impact). Valid values for this property are defined by creating a ClassificationList [setting](directorySetting.md) value, based on the [template definition](directorySettingTemplate.md).|
|createdDateTime|DateTimeOffset| Timestamp of when the group was created. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only. |
|description|String|An optional description for the group.|
|displayName|String|The display name for the group. This property is required when a group is created and it cannot be cleared during updates. Supports $filter and $orderby.|
|groupTypes|String collection| Specifies the type of group to create. Possible values are **Unified** to create an Office 365 group, or **DynamicMembership** for dynamic groups.  For all other group types, like security-enabled groups and email-enabled security groups, do not set this property.|
|id|String|The unique identifier for the group. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.|
|isSubscribedByMail|Boolean|Default value is **true**. Indicates whether the current user is subscribed to receive email conversations.|
|mail|String|The SMTP address for the group, for example, "serviceadmins@contoso.onmicrosoft.com". Read-only. Supports $filter.|
|mailEnabled|Boolean|Specifies whether the group is mail-enabled. If the **securityEnabled** property is also **true**, the group is a mail-enabled security group; otherwise, the group is a Microsoft Exchange distribution group.|
|mailNickname|String|The mail alias for the group, unique in the organization. This property must be specified when a group is created. Supports $filter.|
|membershipRule|String|The rule that determines members for this group if the group is a dynamic group (groupTypes contains "**DynamicMembership**"). For more information about the syntax of the membership rule, please refer to [Membership Rules syntax](https://azure.microsoft.com/en-us/documentation/articles/active-directory-accessmanagement-groups-with-advanced-rules/)|
|membershipRuleProcessingState|String|Indicates whether the dynamic membership processing is on or paused. Possible values are "On" or "Paused"|
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the object was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only. Supports $filter.|
|onPremisesProvisioningErrors|[onPremisesProvisioningError](onpremisesprovisioningerror.md) collection| Errors when using Microsoft synchronization product during provisioning. |
|onPremisesSecurityIdentifier|String|Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud. Read-only. |
|onPremisesSyncEnabled|Boolean|**true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). Read-only. Supports $filter.|
|preferredDataLocation|String|The preferred data location for the user. For more information see: [OneDrive for Business Multi-Geo tenant configuration](https://docs.microsoft.com/office365/enterprise/multi-geo-tenant-configuration)  and [Multi-Geo Capabilities in Exchange Online](https://docs.microsoft.com/office365/enterprise/multi-geo-capabilities-in-exchange-online).|
|preferredLanguage|String|The preferred language for an Office 365 group. Should follow ISO 639-1 Code; for example "en-US".|
|proxyAddresses|String collection| For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]` The **any** operator is required for filter expressions on multi-valued properties. Read-only. Not nullable. Supports $filter. |
|renewedDateTime|DateTimeOffset| Timestamp of when the group was last renewed. This cannot be modified directly and is only updated via the [renew service action](../api/grouplifecyclepolicy_renewgroup.md). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|securityEnabled|Boolean|Specifies whether the group is a security group. If the **mailEnabled** property is also true, the group is a mail-enabled security group; otherwise it is a security group. Must be **false** for Office 365 groups. Supports $filter.|
|theme|String|Specifies an Office 365 group's color theme. Possible values are **Teal**, **Purple**, **Green**, **Blue**, **Pink**, **Orange** or **Red**.|
|unseenCount|Int32|Count of posts that the current  user has not seen since his last visit.|
|visibility|String| Specifies the visibility of an Office 365 group. Possible values are: **Private**, **Public**, **HiddenMembership**, or empty (which is interpreted as **Public**).|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|acceptedSenders|[directoryObject](directoryobject.md) collection|The list of users or groups that are allowed to create post's or calendar events in this group. If this list is non-empty then only users or groups listed here are allowed to post.|
|calendar|[calendar](calendar.md)|The group's calendar. Read-only.|
|calendarView|[event](event.md) collection|The calendar view for the calendar. Read-only.|
|conversations|[conversation](conversation.md) collection|The group's conversations.|
|createdOnBehalfOf|[directoryObject](directoryobject.md)| Read-only.|
|drive|[drive](drive.md)|The group's drive. Read-only.|
|endpoints|[Endpoint](endpoint.md) collection| Endpoints for the group. Read-only. Nullable.|
|events|[event](event.md) collection|The group's events.|
|extensions|[Extension](extension.md) collection|The collection of open extensions defined for the group. Nullable.|
|memberOf|[directoryObject](directoryobject.md) collection|Groups and administrative units that this group is a member of. HTTP Methods: GET (supported for all groups). Read-only. Nullable.|
|members|[directoryObject](directoryobject.md) collection| Users, contacts, and groups that are members of this group. HTTP Methods: GET (supported for all groups), POST (supported for security groups and mail-enabled security groups), DELETE (supported only for security groups) Read-only. Nullable.|
|onenote|[OneNote](onenote.md)| Read-only.|
|owners|[directoryObject](directoryobject.md) collection|The owners of the group. The owners are a set of non-admin users who are allowed to modify this object. HTTP Methods: GET (supported for all groups), POST (supported for security groups and mail-enabled security groups), DELETE (supported only for security groups) Read-only. Nullable.|
|photo|[profilePhoto](profilephoto.md)| The group's profile photo. |
|photos|[profilePhoto](profilephoto.md) collection| The profile photos owned by the group. Read-only. Nullable.|
|planner|[plannerGroup](plannerGroup.md)| Selective Planner services available to the group. Read-only. Nullable. |
|rejectedSenders|[directoryObject](directoryobject.md) collection|The list of users or groups that are not allowed to create posts or calendar events in this group. Nullable|
|settings|[directorySetting](directorySetting.md) collection| Settings that can govern this group's behavior, like whether members can invite guest users to the group. Nullable.|
|sites|[site](site.md) collection|The list of SharePoint sites in this group. Access the default site with /sites/root.|
|threads|[conversationThread](conversationthread.md) collection| The group's conversation threads. Nullable.|

## JSON representation
The following is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "acceptedSenders",
    "appRoleAssignments",
    "calendar",
    "calendarView",
    "conversations",
    "createdOnBehalfOf",
    "drive",
    "events",
    "extensions",
    "memberOf",
    "members",
    "onenote",
    "owners",
    "photo",
    "photos",    
    "rejectedSenders",
    "threads"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.group"
}-->

```json
{
  "accessType": "string",
  "allowExternalSenders": false,
  "autoSubscribeNewMembers": true,
  "createdDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "description": "string",
  "displayName": "string",
  "groupTypes": ["string"],
  "id": "string (identifier)",
  "isFavorite": true,  
  "isSubscribedByMail": true,
  "mail": "string",
  "mailEnabled": true,
  "mailNickname": "string",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesProvisioningErrors": [{"@odata.type": "microsoft.graph.onPremisesProvisioningError"}],
  "onPremisesSecurityIdentifier": "string",
  "onPremisesSyncEnabled": true,
  "preferredDataLocation": ["string"],
  "proxyAddresses": ["string"],
  "renewedDateTime": "String (timestamp)",
  "securityEnabled": true,
  "unseenCount": 1024,
  "visibility": "string",
  "acceptedSenders": [ { "@odata.type": "microsoft.graph.directoryObject"} ],
  "calendar": { "@odata.type": "microsoft.graph.calendar" },
  "calendarView": [{ "@odata.type": "microsoft.graph.event" }],
  "conversations": [ { "@odata.type": "microsoft.graph.conversation" }],
  "createdOnBehalfOf": { "@odata.type": "microsoft.graph.directoryObject" },
  "drive": { "@odata.type": "microsoft.graph.drive" },
  "events": [ { "@odata.type": "microsoft.graph.event" }],
  "memberOf": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "members": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "owners": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "photo": { "@odata.type": "microsoft.graph.profilePhoto" },
  "rejectedSenders": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "sites": [ { "@odata.type": "microsoft.graph.site" } ],
  "threads": [ { "@odata.type": "microsoft.graph.conversationThread" }]
}

```

## See also

- [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md)
- [Add custom data to users using open extensions](../../../concepts/extensibility_open_users.md)
- [Add custom data to groups using schema extensions](../../../concepts/extensibility_schema_groups.md)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
