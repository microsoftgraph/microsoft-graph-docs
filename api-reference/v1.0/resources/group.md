# group resource type

Represents an Azure Active Directory group, which can be an Office 365 group, dynamic group, or security group.
Inherits from [directoryObject](directoryobject.md).


## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create group](../api/group_post_groups.md) | [group](group.md) |Create a new group. It can be an Office 365 group, dynamic group or security group.|
|[Get group](../api/group_get.md) | [group](group.md) |Read properties of a group object.|
|[List groups](../api/group_list.md) |[group](group.md) collection |List group objects and their properties.|
|[Update group](../api/group_update.md) | [group](group.md) |Update the properties of a group object. |
|[Delete group](../api/group_delete.md) | None |Delete group object. |
|[Add member](../api/group_post_members.md) |None| Add a user or group to this group by posting to the **members** navigation property (supported for security groups and mail-enabled security groups only).|
|[List members](../api/group_list_members.md) |[directoryObject](directoryobject.md) collection| Get the users and groups that are direct members of this group from the **members** navigation property.|
|[Remove member](../api/group_delete_members.md) | None |Remove a member from an Office 365 group, a security group or a mail-enabled security group through the **members** navigation property. You can remove users or other groups. |
|[List memberOf](../api/group_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get the groups that this group is a direct member of, from the **memberOf** navigation property.|
|[Add owner](../api/group_post_owners.md) |[None| Add a new owner for the group by posting to the **owners** navigation property (supported for security groups and mail-enabled security groups only).|
|[List owners](../api/group_list_owners.md) |[directoryObject](directoryobject.md) collection| Get the owners of the group from the **owners** navigation property.|
|[Remove owner](../api/group_delete_owners.md) | None |Remove an owner from an Office 365 group, a security group or a mail-enabled security group through the **owners** navigation property.|
|[checkMemberGroups](../api/group_checkmembergroups.md)|String collection|Check this group for membership in a list of groups. The function is transitive.|
|[getMemberGroups](../api/group_getmembergroups.md)|String collection|Return all the groups that the group is a member of. The function is transitive.|
|[getMemberObjects](../api/group_getmemberobjects.md)|String collection|Return all of the groups that the group is a member of. The function is transitive. |
|[Create event](../api/group_post_events.md) |[Event](event.md)| Create a new Event by posting to the events collection.|
|[List events](../api/group_list_events.md) |[Event](event.md) collection| Get a Event object collection.|
|[List calendarView](../api/group_list_calendarview.md) |[Event](event.md) collection| Get a collection of events in a specified time window.|
|[Create conversation](../api/group_post_conversations.md) |[Conversation](conversation.md)| Create a new Conversation by posting to the conversations collection.|
|[List conversations](../api/group_list_conversations.md) |[Conversation](conversation.md) collection| Get a Conversation object collection.|
|[List threads](../api/group_list_threads.md) |[ConversationThread](conversationthread.md) collection| Get all the threads of a group.|
|[List acceptedSenders](../api/group_list_acceptedsenders.md) |[directoryObject](directoryobject.md) collection| Get a list of users or groups that are in the acceptedSenders list for this group.|
|[Add acceptedSender](../api/group_post_acceptedsenders.md) |[directoryObject](directoryobject.md)| Add a User or Group to the acceptSenders collection.|
|[Remove acceptedSender](../api/group_delete_acceptedsenders.md) |[directoryObject](directoryobject.md)| Remove a User or Group from the acceptedSenders collection.|
|[Add rejectedSender](../api/group_post_rejectedsenders.md) |[directoryObject](directoryobject.md)| Add a new User or Group to the rejectedSenders collection.|
|[List rejectedSenders](../api/group_list_rejectedsenders.md) |[directoryObject](directoryobject.md) collection| Get a list of users or groups that are in the rejectedSenders list for this group.|
|[Remove rejectedSender](../api/group_delete_rejectedsenders.md) |[directoryObject](directoryobject.md)| Remove new new User or Group from the rejectedSenders collection.|
|[addFavorite](../api/group_addfavorite.md)|None|Add the group to the list of the current user's favorite groups. Supported for only Office 365 groups.|
|[removeFavorite](../api/group_removefavorite.md)|None|Remove the group from the list of the current user's favorite groups. Supported for only Office 365 groups.|
|[subscribeByMail](../api/group_subscribebymail.md)|None|Set the isSubscribedByMail property to **true**. Enabling the current user to receive email conversations. Supported for only Office 365 groups.|
|[unsubscribeByMail](../api/group_unsubscribebymail.md)|None|Set the isSubscribedByMail property to **false**. Disabling the current user from receive email conversations. Supported for only Office 365 groups.|
|[resetUnseenCount](../api/group_resetunseencount.md)|None|Reset the unseenCount to 0 of all the posts that the current user has not seen since their last visit. Supported for only Office 365 groups.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowExternalSenders|Boolean|Default is **false**. Indicates if people external to the organization can send messages to the group.|
|autoSubscribeNewMembers|Boolean|Default is **false**. Indicates if new members added to the group will be auto-subscribed to receive email notifications. You can set this property in a PATCH request for the group; do not set it in the initial POST request that creates the group.|
|description|String|An optional description for the group. |
|displayName|String|The display name for the group. This property is required when a group is created and it cannot be cleared during updates. Supports $filter and $orderby.|
|groupTypes|String collection| Specifies the type of group to create. Possible values are **Unified** to create an Office 365 group, or **DynamicMembership** for dynamic groups.  For all other group types, like security-enabled groups and email-enabled security groups, do not set this property. Supports $filter.|
|id|String|The unique identifier for the group. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.|
|isSubscribedByMail|Boolean|Default value is **true**. Indicates whether the current user is subscribed to receive email conversations.|
|mail|String|The SMTP address for the group, for example, "serviceadmins@contoso.onmicrosoft.com". Read-only. Supports $filter.|
|mailEnabled|Boolean|Specifies whether the group is mail-enabled. If the **securityEnabled** property is also **true**, the group is a mail-enabled security group; otherwise, the group is a Microsoft Exchange distribution group.|
|mailNickname|String|The mail alias for the group. This property must be specified when a group is created. Supports $filter.|
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the group was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only. Supports $filter.|
|onPremisesSecurityIdentifier|String|Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud. Read-only. |
|onPremisesSyncEnabled|Boolean|**true** if this group is synced from an on-premises directory; **false** if this group was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). Read-only. Supports $filter.|
|proxyAddresses|String collection| The **any** operator is required for filter expressions on multi-valued properties. Read-only. Not nullable. Supports $filter. |
|securityEnabled|Boolean|Specifies whether the group is a security group. If the **mailEnabled** property is also true, the group is a mail-enabled security group; otherwise it is a security group. Must be **false** for Office 365 groups. Supports $filter.|
|unseenCount|Int32|Count of posts that the current  user has not seen since his last visit.|
|visibility|String| Specifies the visibility of an Office 365 group. Possible values are: **Private**, **Public**, or empty (which is interpreted as **Public**).|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|acceptedSenders|[directoryObject](directoryobject.md) collection|The list of users or groups that are allowed to create post's or calendar events in this group. If this list is non-empty then only users or groups listed here are allowed to post.|
|calendar|[calendar](calendar.md)|The group's calendar. Read-only.|
|calendarView|[event](event.md) collection|The calendar view for the calendar. Read-only.|
|conversations|[conversation](conversation.md) collection|The group's conversations.|
|createdOnBehalfOf|[directoryObject](directoryobject.md)| The user (or application) that created the group. NOTE: This is not set if the user is an administrator. Read-only.|
|drive|[drive](drive.md)|The group's drive. Read-only.|
|events|[event](event.md) collection|The group's calendar events.|
|memberOf|[directoryObject](directoryobject.md) collection|Groups that this group is a member of. HTTP Methods: GET (supported for all groups). Read-only. Nullable.|
|members|[directoryObject](directoryobject.md) collection| Users and groups that are members of this group. HTTP Methods: GET (supported for all groups), POST (supported for Office 365 groups, security groups and mail-enabled security groups), DELETE (supported for Office 365 groups and security groups) Nullable.|
|onenote|[OneNote](onenote.md)| Read-only.|
|owners|[directoryObject](directoryobject.md) collection|The owners of the group. The owners are a set of non-admin users who are allowed to modify this object. Limited to 10 owners. HTTP Methods: GET (supported for all groups), POST (supported for Office 365 groups, security groups and mail-enabled security groups), DELETE (supported for Office 365 groups and security groups). Nullable.|
|photo|[profilePhoto](profilephoto.md)| The group's profile photo |
|rejectedSenders|[directoryObject](directoryobject.md) collection|The list of users or groups that are not allowed to create posts or calendar events in this group. Nullable|
|threads|[conversationThread](conversationthread.md) collection| The group's conversation threads. Nullable.|


## JSON representation

Here is a JSON representation of the resource

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
    "memberOf",
    "members",
    "onenote",
    "owners",
    "photo",
    "rejectedSenders",
    "threads"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.group"
}-->

```json
{
  "allowExternalSenders": false,
  "autoSubscribeNewMembers": true,
  "description": "string",
  "displayName": "string",
  "groupTypes": ["string"],
  "id": "string (identifier)",
  "isSubscribedByMail": true,
  "mail": "string",
  "mailEnabled": true,
  "mailNickname": "string",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSecurityIdentifier": "string",
  "onPremisesSyncEnabled": true,
  "proxyAddresses": ["string"],
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
  "threads": [ { "@odata.type": "microsoft.graph.conversationThread" }]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
