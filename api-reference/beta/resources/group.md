# group resource type

Represents an Azure Active Directory group, which can be an Office 365 group, dynamic group, or security group.
Inherits from [directoryObject](directoryobject.md).

This resource lets you add your own data to custom properties using [extensions](../../../concepts/extensibility_overview.md).

## Delta query support

This resource supports [delta query](../../../concepts/delta_query_overview.md) to track incremental additions, deletions, and updates, by providing a [delta](../api/group_delta.md) function.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create group](../api/group_post_groups.md) | [group](group.md) |Create a new group as specified. It can be an Office 365 group, dynamic group or security group.|
|[Get group](../api/group_get.md) | [group](group.md) |Read properties and relationships of group object.|
|[Update group](../api/group_update.md) | [group](group.md) |Update the properties of a group object. |
|[Delete group](../api/group_delete.md) | None |Delete group object. |
|[List owners](../api/group_list_owners.md) |[directoryObject](directoryobject.md) collection| Get the owners of the group from the **owners** navigation property.|
|[Add owner](../api/group_post_owners.md) |[directoryObject](directoryobject.md)| Add a new owner for the group by posting to the **owners** navigation property (supported for security groups and mail-enabled security groups only).|
|[List members](../api/group_list_members.md) |[directoryObject](directoryobject.md) collection| Get the users and groups that are direct members of this group from the **members** navigation property.|
|[Add member](../api/group_post_members.md) |[directoryObject](directoryobject.md)| Add a user or group to this group by posting to the **members** navigation property (supported for security groups and mail-enabled security groups only).|
|[Remove member](../api/group_delete_members.md) | None |Remove a member from an Office 365 group, a security group or a mail-enabled security group through the **members** navigation property. You can remove users or other groups. |
|[List memberOf](../api/group_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get the groups and administative units that this group is a direct member of, from the **memberOf** navigation property.|
|[checkMemberGroups](../api/group_checkmembergroups.md)|String collection|Check for membership in a list of groups. The function is transitive.|
|[getMemberGroups](../api/group_getmembergroups.md)|String collection|Return all the groups that the group is a member of. The function is transitive.|
|[getMemberObjects](../api/group_getmemberobjects.md)|String collection|Return all of the groups and administrative units that the group is a member of. The function is transitive. |
|[List events](../api/group_list_events.md) |[Event](event.md) collection| Get a Event object collection.|
|[Create event](../api/group_post_events.md) |[Event](event.md)| Create a new Event by posting to the events collection.|
|[List calendarView](../api/group_list_calendarview.md) |[Event](event.md) collection| Get a collection of events in a specified time window.|
|[List conversations](../api/group_list_conversations.md) |[Conversation](conversation.md) collection| Get a Conversation object collection.|
|[Create conversation](../api/group_post_conversations.md) |[Conversation](conversation.md)| Create a new Conversation by posting to the conversations collection.|
|[List threads](../api/group_list_threads.md) |[ConversationThread](conversationthread.md) collection| Get all the threads of a group.|
|[List acceptedSenders](../api/group_list_acceptedsenders.md) |[directoryObject](directoryobject.md) collection| Get a list of users or groups that are in the acceptedSenders list for this group.|
|[Add acceptedSender](../api/group_post_acceptedsenders.md) |[directoryObject](directoryobject.md)| Add a User or Group to the acceptSenders collection.|
|[Remove acceptedSender](../api/group_delete_acceptedsenders.md) |[directoryObject](directoryobject.md)| Remove a User or Group from the acceptedSenders collection.|
|[List rejectedSenders](../api/group_list_rejectedsenders.md) |[directoryObject](directoryobject.md) collection| Get a list of users or groups that are in the rejectedSenders list for this group.|
|[Add rejectedSender](../api/group_post_rejectedsenders.md) |[directoryObject](directoryobject.md)| Add a new User or Group to the rejectedSenders collection.|
|[List plans](../api/group_list_plans.md) |[plan](plan.md) collection| Get a plan object collection.|
|[Remove rejectedSender](../api/group_delete_rejectedsenders.md) |[directoryObject](directoryobject.md)| Remove new new User or Group from the rejectedSenders collection.|
|[addFavorite](../api/group_addfavorite.md)|None|Add the group to the list of the current user's favorite groups. Supported for only Office 365 groups.|
|[removeFavorite](../api/group_removefavorite.md)|None|Remove the group from the list of the current user's favorite groups. Supported for only Office 365 groups.|
|[subscribeByMail](../api/group_subscribebymail.md)|None|Set the isSubscribedByMail property to **true**. Enabling the current user to receive email conversations. Supported for only Office 365 groups.|
|[unsubscribeByMail](../api/group_unsubscribebymail.md)|None|Set the isSubscribedByMail property to **false**. Disabling the current user from receive email conversations. Supported for only Office 365 groups.|
|[resetUnseenCount](../api/group_resetunseencount.md)|None|Reset the unseenCount to 0 of all the posts that the current user has not seen since their last visit. Supported for only Office 365 groups.|
|[List photos](../api/group_list_photos.md) |[Photo](photo.md) collection| Get a photo object collection.|
|[Create setting](../api/directorysetting_post_settings.md) | [directorySetting](directorysetting.md) |Create a setting object based on a directorySettingTemplate. The POST request must provide settingValues for all the settings defined in the template. Only groups specific templates may be used for this operation.|
|[Get setting](../api/directorysetting_get.md) | [directorySetting](directorysetting.md) |Read properties of a specific setting object.|
|[List settings](../api/directorysetting_list.md) | [directorySetting](directorysetting.md) collection |List properties of all setting objects.|
|[Update setting](../api/directorysetting_update.md) | [directorySetting](directorysetting.md)	|Update a setting object. |
|[Delete setting](../api/directorysetting_delete.md) | None |Delete a setting object. |
|[List endpoints](../api/group_list_endpoints.md) |[Endpoint](endpoint.md) collection| Get an endpoint object collection. |
|[Get endpoint](../api/endpoint_get.md) | [Endpoint](endpoint.md) | Read properties and relationships of an endpoint object. |
|[delta](../api/group_delta.md)|group collection| Get incremental changes for groups. |
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension_post_opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension_get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](../../../concepts/extensibility_schema_groups.md) || Create a schema extension definition and then use it to add custom typed data to a resource.|

## Properties

| Property   | Type	|Description|
|:---------------|:--------|:----------|
|allowExternalSenders|Boolean|Default is **false**. Indicates if people external to the organization can send messages to the group.|
|autoSubscribeNewMembers|Boolean|Default is **false**. Indicates if new members added to the group will be auto-subscribed to receive email notifications. You can set this property in a PATCH request for the group; do not set it in the initial POST request that creates the group.|
|classification|String|Describes a classification for the group (such as low, medium or high business impact). Valid values for this property are defined by creating a ClassificationList [setting](directorySetting.md) value, based on the [template definition](directorySettingTemplate.md).|
|description|String|An optional description for the group.|
|displayName|String|The display name for the group. This property is required when a group is created and it cannot be cleared during updates. Supports $filter and $orderby.|
|groupTypes|String collection| Specifies the type of group to create. Possible values are **Unified** to create an Office 365 group, or **DynamicMembership** for dynamic groups.  For all other group types, like security-enabled groups and email-enabled security groups, do not set this property.|
|id|String|The unique identifier for the group. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.|
|isSubscribedByMail|Boolean|Default value is **true**. Indicates whether the current user is subscribed to receive email conversations.|
|mail|String|The SMTP address for the group, for example, "serviceadmins@contoso.onmicrosoft.com". Read-only. Supports $filter.|
|mailEnabled|Boolean|Specifies whether the group is mail-enabled. If the **securityEnabled** property is also **true**, the group is a mail-enabled security group; otherwise, the group is a Microsoft Exchange distribution group.|
|mailNickname|String|The mail alias for the group. This property must be specified when a group is created. Supports $filter.|
|membershipRule|String|The rule that determines members for this group if the group is a dynamic group (groupTypes contains "**DynamicMembership**"). For more information about the syntax of the membership rule, please refer to [Membership Rules syntax](https://azure.microsoft.com/en-us/documentation/articles/active-directory-accessmanagement-groups-with-advanced-rules/)|
|membershipRuleProcessingState|String|Indicates whether the dynamic membership processing is on or paused. Possible values are "On" or "Paused"|
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the object was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only. Supports $filter.|
|onPremisesSecurityIdentifier|String|Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud. Read-only. |
|onPremisesSyncEnabled|Boolean|**true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). Read-only. Supports $filter.|
|preferredLanguage|String|The preferred language for an Office 365 group. Should follow ISO 639-1 Code; for example "en-US".|
|proxyAddresses|String collection| The **any** operator is required for filter expressions on multi-valued properties. Read-only. Not nullable. Supports $filter. |
|resourceBehaviorOptions|String collection|Specifies the group behaviors, such as allowing only members to post conversations, that can be set for an Office 365 group. This can be set as part of creation (POST) or as part of an update (PATCH). Possible values are **allowOnlyMembersToPost**, **calendarMemberReadOnly**, **connectorsEnabled**, **reportToOriginator**, **subscriptionEnabled**, **subscribeMembersToCalendarEvents**, **subscribeNewGroupMembers**, **warmupEmailEnabled**, **welcomeEmailEnabled**. Nullable.|
|resourceProvisioningOptions|String collection|Specifies the group resources to be provisioned as part of Office 365 group creation. Can only be set on POST. Possible values are **drive** to provision a group drive on first use, **conversationFeeds** to provision the use of Yammer for conversations (overrides the default use of Outlook conversations).|
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
|photo|[profilePhoto](profilephoto.md)| The group's profile photo |
|photos|[Photo](photo.md) collection| Read-only. Nullable.|
|plans|[plan](plan.md) collection| Read-only. Nullable. Plans owned by the group. A group can own no more than one plan. |
|rejectedSenders|[directoryObject](directoryobject.md) collection|The list of users or groups that are not allowed to create posts or calendar events in this group. Nullable|
|settings|[directorySetting](directorySetting.md) collection| Settings that can govern this group's behavior, like whether members can invite guest users to the group. Nullable.|
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

## See also

- [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md)
- [Add custom data to users using open extensions (preview)](../../../concepts/extensibility_open_users.md)
- [Add custom data to groups using schema extensions (preview)](../../../concepts/extensibility_schema_groups.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
