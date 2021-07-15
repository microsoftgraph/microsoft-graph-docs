---
title: "group resource type"
description: "Represents an Azure Active Directory (Azure AD) group, which can be a Microsoft 365 group, a team in Microsoft Teams, or a security group."
localization_priority: Priority
author: "Jordanndahl"
ms.prod: "groups"
doc_type: resourcePageType
---

# group resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure Active Directory (Azure AD) group, which can be a Microsoft 365 group, a team in Microsoft Teams, or a security group.
Inherits from [directoryObject](directoryobject.md).

For performance reasons, the [create](../api/group-post-groups.md), [get](../api/group-get.md), and [list](../api/group-list.md) operations return only a subset of more commonly used properties by default. These _default_ properties are noted in the [Properties](#properties) section. To get any of the properties that are not returned by default, specify them in a `$select` OData query option.

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/user-delta.md) function.

> **Microsoft Teams and Microsoft 365 groups support group collaboration**. You can use most of the Microsoft 365 groups API with Microsoft Teams. To create a [team](team.md), first  [create group](../api/group-post-groups.md) and then [add a team to it](../api/team-put-teams.md). For details, see the [Microsoft Teams overview](teams-api-overview.md).

## Methods

| Method | Return Type | Description |
|:------ |:----------- |:----------- |
| **Group management** |||
| [Create group](../api/group-post-groups.md) | [group](group.md) | Create a new group as specified. It can be a Microsoft 365 group, dynamic group, security group, or team. |
| [Get group](../api/group-get.md) | [group](group.md) | Read properties and relationships of group object. |
| [Update group](../api/group-update.md) | None | Update the properties of a group object. |
| [Delete group](../api/group-delete.md) | None | Delete group object. |
| [List groups](../api/group-list.md) | [group](group.md) | Read properties and relationships of all group objects. |
| [delta](../api/group-delta.md) | group collection | Get incremental changes for groups. |
| [Add member](../api/group-post-members.md) | [directoryObject](directoryobject.md) | Add a user or group to this group by posting to the **members** navigation property (supported for security groups and mail-enabled security groups only). |
| [Add owner](../api/group-post-owners.md) | [directoryObject](directoryobject.md) | Add a new owner for the group by posting to the **owners** navigation property (supported for security groups and mail-enabled security groups only). |
| [Create setting](../api/directorysetting-post-settings.md) | [directorySetting](directorysetting.md) | Create a setting object based on a directorySettingTemplate. The POST request must provide settingValues for all the settings defined in the template. Only groups specific templates may be used for this operation. |
| [Delete setting](../api/directorysetting-delete.md) | None | Delete a setting object. |
| [Get endpoint](../api/endpoint-get.md) | [endpoint](endpoint.md) | Read properties and relationships of an endpoint object. |
| [Get setting](../api/directorysetting-get.md) | [directorySetting](directorysetting.md) | Read properties of a specific setting object. |
| [List endpoints](../api/group-list-endpoints.md) | [endpoint](endpoint.md) collection | Get an endpoint object collection. |
| [List members](../api/group-list-members.md) | [directoryObject](directoryobject.md) collection | Get the users and groups that are direct members of this group from the **members** navigation property. |
| [List memberOf](../api/group-list-memberof.md) | [directoryObject](directoryobject.md) collection | Get the groups and administrative units that this group is a direct member of from the memberOf navigation property. |
| [List groupLifecyclePolicies](../api/group-list-grouplifecyclepolicies.md) | [groupLifecyclePolicy](grouplifecyclepolicy.md) collection | List group lifecycle policies. |
| [List owners](../api/group-list-owners.md) | [directoryObject](directoryobject.md) collection | Get the owners of the group from the **owners** navigation property. |
| [List settings](../api/directorysetting-list.md) | [directorySetting](directorysetting.md) collection | List properties of all setting objects. |
| [List transitive members](../api/group-list-transitivemembers.md) | [directoryObject](directoryobject.md) collection | Get the users, groups, devices, and service principals that are members, including nested members of this group. |
| [List transitive memberOf](../api/group-list-transitivememberof.md) | [directoryObject](directoryobject.md) collection | List the groups and administrative units that this group is a member of. This operation is transitive and includes the groups that this group is a nested member of. |
| [Remove owner](../api/group-delete-owners.md) | None | Remove an owner from a Microsoft 365 group, a security group or a mail-enabled security group through the **owners** navigation property. |
| [Remove member](../api/group-delete-members.md) | None | Remove a member from a Microsoft 365 group, a security group or a mail-enabled security group through the **members** navigation property. You can remove users or other groups. |
| [Update setting](../api/directorysetting-update.md) | [directorySetting](directorysetting.md) | Update a setting object. |
| [assignLicense](../api/group-assignlicense.md) | [group](group.md) | Add or remove subscriptions for the group. You can also enable and disable specific plans associated with a subscription. |
| [checkMemberGroups](../api/group-checkmembergroups.md) | String collection | Check for membership in a list of groups. The function is transitive. |
| [checkMemberObjects](../api/group-checkmemberobjects.md) | String collection | Check for membership in a list of group, directory role, or administrative unit objects. The function is transitive. |
| [evaluateDynamicMembership](../api/group-evaluatedynamicmembership.md) | [evaluateDynamicMembershipResult](evaluatedynamicmembershipresult.md) | Evaluate whether a user or device is or would be a member of a dynamic group. |
| [getMemberGroups](../api/group-getmembergroups.md) | String collection | Return all the groups that the group is a member of. The function is transitive. |
| [getMemberObjects](../api/group-getmemberobjects.md) | String collection | Return all of the groups and administrative units that the group is a member of. The function is transitive. |
| [validateProperties](../api/group-validateproperties.md) | JSON | Validate a Microsoft 365 group's display name or mail nickname complies with naming policies. |
| **App role assignments** |||
| [List appRoleAssignments](../api/group-list-approleassignments.md) | [appRoleAssignment](approleassignment.md) collection | Get the apps and app roles which this group has been assigned. |
| [Add appRoleAssignment](../api/group-post-approleassignments.md) | [appRoleAssignment](approleassignment.md) | Assign an app role to this group. |
| [Remove appRoleAssignment](../api/group-delete-approleassignments.md) | None. | Remove an app role assignment from this group. |
| **Calendar** |||
| [Create event](../api/group-post-events.md) | [event](event.md) | Create a new event by posting to the events collection. |
| [Get event](../api/group-get-event.md) | [event](event.md) | Read properties of an event object. |
| [List events](../api/group-list-events.md) | [event](event.md) collection | Get an event object collection. |
| [Update event](../api/group-update-event.md) | None | Update the properties of an event object. |
| [Delete event](../api/group-delete-event.md) | None | Delete event object. |
| [List calendarView](../api/group-list-calendarview.md) | [event](event.md) collection | Get a collection of events in a specified time window. |
| **Conversations** |||
| [Create conversation](../api/group-post-conversations.md) | [conversation](conversation.md) | Create a new conversation by posting to the conversations collection. |
| [Get conversation](../api/group-get-conversation.md) | [conversation](conversation.md) | Read properties of a conversation object. |
| [List conversations](../api/group-list-conversations.md) | [conversation](conversation.md) collection | Get a conversation object collection. |
| [Delete conversation](../api/group-delete-conversation.md) | None | Delete conversation object. |
| [Create thread](../api/group-post-threads.md) | [conversationThread](conversationthread.md) | Create a new conversation thread. |
| [Get thread](../api/group-get-thread.md) | [conversationThread](conversationthread.md) | Read properties of a thread object. |
| [List threads](../api/group-list-threads.md) | [conversationThread](conversationthread.md) collection | Get all the threads of a group. |
| [Update thread](../api/group-update-thread.md) | None | Update properties of a thread object. |
| [Delete thread](../api/group-delete-thread.md) | None | Delete thread object |
| [List acceptedSenders](../api/group-list-acceptedsenders.md) | [directoryObject](directoryobject.md) collection | Get a list of users or groups that are in the accepted-senders list for this group. |
| [Add acceptedSender](../api/group-post-acceptedsenders.md) | [directoryObject](directoryobject.md) | Add a User or Group to the acceptSenders collection. |
| [Remove acceptedSender](../api/group-delete-acceptedsenders.md) | [directoryObject](directoryobject.md) | Remove a User or Group from the acceptedSenders collection. |
| [List rejectedSenders](../api/group-list-rejectedsenders.md) | [directoryObject](directoryobject.md) collection | Get a list of users or groups that are in the rejected-senders list for this group. |
| [Add rejectedSender](../api/group-post-rejectedsenders.md) | [directoryObject](directoryobject.md) | Add a new User or Group to the rejectedSenders collection. |
| [Remove rejectedSender](../api/group-delete-rejectedsenders.md) | [directoryObject](directoryobject.md) | Remove new User or Group from the rejectedSenders collection. |
| **Open extensions** |||
| [Create open extension](../api/opentypeextension-post-opentypeextension.md) | [openTypeExtension](opentypeextension.md) | Create an open extension and add custom properties to a new or existing resource. |
| [Get open extension](../api/opentypeextension-get.md) | [openTypeExtension](opentypeextension.md) collection | Get an open extension identified by the extension name. |
| **Schema extensions** |||
| [Add schema extension values](/graph/extensibility-schema-groups) | None | Create a schema extension definition and then use it to add custom typed data to a resource. |
| **Other group resources** |||
| [List photos](../api/group-list-photos.md) | [profilePhoto](photo.md) collection | Get a collection of profile photos for the group. |
| [List plannerPlans](../api/plannergroup-list-plans.md) | [plannerPlan](plannerplan.md) collection | Get Planner plans owned by the group. |
| [List permissionGrants](../api/group-list-permissiongrants.md) | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection | List permissions that have been granted to apps to access the group. |
| **User settings** |||
| [addFavorite](../api/group-addfavorite.md) | None | Add the group to the list of the signed-in user's favorite groups. Supported for only Microsoft 365 groups. |
| [removeFavorite](../api/group-removefavorite.md) | None | Remove the group from the list of the signed-in user's favorite groups. Supported for Microsoft 365 groups only. |
| [List memberOf](../api/group-list-memberof.md) | [directoryObject](directoryobject.md) collection | Get the groups and administrative units that this user is a direct member of, from the **memberOf** navigation property. |
| [List joinedTeams](../api/user-list-joinedteams.md) | [group](group.md) collection | Get the Microsoft Teams that the user is a direct member of. |
| [subscribeByMail](../api/group-subscribebymail.md) | None | Set the isSubscribedByMail property to `true`. Enabling the signed-in user to receive email conversations. Supported for Microsoft 365 groups only. |
| [unsubscribeByMail](../api/group-unsubscribebymail.md) | None | Set the isSubscribedByMail property to `false`. Disabling the signed-in user from receive email conversations. Supported for Microsoft 365 groups only. |
| [resetUnseenCount](../api/group-resetunseencount.md) | None | Reset the unseenCount to 0 of all the posts that the signed-in user has not seen since their last visit. Supported for Microsoft 365 groups only. |

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowExternalSenders|Boolean| Indicates if people external to the organization can send messages to the group. Default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
|assignedLabels|[assignedLabel](assignedlabel.md) collection|The list of sensitivity label pairs (label ID, label name) associated with a Microsoft 365 group. <br><br>Returned only on `$select`.|
|assignedLicenses|[assignedLicense](assignedlicense.md) collection|The licenses that are assigned to the group. <br><br>Returned only on `$select`. Supports `$filter` (`eq`). Read-only.|
|autoSubscribeNewMembers|Boolean|Indicates if new members added to the group will be auto-subscribed to receive email notifications. You can set this property in a PATCH request for the group; do not set it in the initial POST request that creates the group. Default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`).|
|classification|String|Describes a classification for the group (such as low, medium or high business impact). Valid values for this property are defined by creating a ClassificationList [setting](directorysetting.md) value, based on the [template definition](directorysettingtemplate.md).<br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `startsWith`).|
|createdByAppId|String|App ID of the app used to create the group. Can be null for some groups. <br><br>Returned by default. Read-only. Supports `$filter` (`eq`, `ne`, `NOT`, `in`, `startsWith`).|
|createdDateTime|DateTimeOffset| Timestamp of when the group was created. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`). Read-only. |
|deletedDateTime|DateTimeOffset| For some Azure Active Directory objects (user, group, application), if the object is deleted, it is first logically deleted, and this property is updated with the date and time when the object was deleted. Otherwise this property is null. If the object is restored, this property is updated to null. |
|description|String|An optional description for the group. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `startsWith`) and `$search`.|
|displayName|String|The display name for the group. This property is required when a group is created and cannot be cleared during updates. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`), `$search`, and `$orderBy`.|
|expirationDateTime|DateTimeOffset| Timestamp of when the group is set to expire. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`). Read-only. |
|groupTypes|String collection| Specifies the group type and its membership.  <br><br>If the collection contains `Unified`, the group is a Microsoft 365 group; otherwise, it's either a security group or distribution group. For details, see [groups overview](groups-overview.md).<br><br>If the collection includes `DynamicMembership`, the group has dynamic membership; otherwise, membership is static.  <br><br>Returned by default. Supports `$filter` (`eq`, `NOT`).|
|hasMembersWithLicenseErrors|Boolean| Indicates whether there are members in this group that have license errors from its group-based license assignment. <br><br>This property is never returned on a GET operation. You can use it as a $filter argument to get groups that have members with license errors (that is, filter for this property being `true`).  <br><br>Supports `$filter` (`eq`).|
|hideFromAddressLists |Boolean |`true` if the group is not displayed in certain parts of the Outlook user interface: in the **Address Book**, in address lists for selecting message recipients, and in the **Browse Groups** dialog for searching groups; false otherwise. Default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`).|
|hideFromOutlookClients |Boolean |`true` if the group is not displayed in Outlook clients, such as Outlook for Windows and Outlook on the web, false otherwise. Default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`).|
|id|String|The unique identifier for the group. <br><br>Returned by default. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only. <br><br>Supports `$filter` (`eq`, `ne`, `NOT`, `in`).|
|isAssignableToRole|Boolean|Indicates whether this group can be assigned to an Azure Active Directory role.<br><br>This property can only be set while creating the group and is immutable. If set to `true`, the **securityEnabled** property must also be set to `true` and the group cannot be a dynamic group (that is, **groupTypes** cannot contain `DynamicMembership`). Only callers in Global administrator and Privileged role administrator roles can set this property. The caller must also be assigned the *Directory.AccessAsUser.All* permission to set this property. For more, see [Using a group to manage Azure AD role assignments](https://go.microsoft.com/fwlink/?linkid=2103037)<br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`).|
|infoCatalogs|String collection|Identifies the info segments assigned to the group. Returned by default. Supports `$filter` (`eq`, `NOT`, `ge`, `le`, `startsWith`).|
|isSubscribedByMail|Boolean|Indicates whether the signed-in user is subscribed to receive email conversations. Default value is `true`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
|licenseProcessingState|String|Indicates status of the group license assignment to all members of the group. Possible values: `QueuedForProcessing`, `ProcessingInProgress`, and `ProcessingComplete`. <br><br>Returned only on `$select`. Read-only. |
|mail|String|The SMTP address for the group, for example, "serviceadmins@contoso.onmicrosoft.com". <br><br>Returned by default. Read-only. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`).|
|mailEnabled|Boolean|Specifies whether the group is mail-enabled. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`).|
|mailNickname|String|The mail alias for the group, unique in the organization. This property must be specified when a group is created. These characters cannot be used in the mailNickName: `@()\[]";:.<>,SPACE`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`).|
|membershipRule|String|The rule that determines members for this group if the group is a dynamic group (groupTypes contains `DynamicMembership`). For more information about the syntax of the membership rule, see [Membership Rules syntax](https://azure.microsoft.com/documentation/articles/active-directory-accessmanagement-groups-with-advanced-rules/). <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `startsWith`). |
|membershipRuleProcessingState|String|Indicates whether the dynamic membership processing is on or paused. Possible values are `On` or `Paused`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `in`). |
|membershipRuleProcessingStatus|[membershipRuleProcessingStatus](membershipruleprocessingstatus.md) |Describes the processing status for rules-based dynamic groups. The property is `null` for non-rule based dynamic groups or if the dynamic group processing has been paused. <br><br>Returned only on `$select`. Read-only. |
|onPremisesDomainName|String|Contains the on-premises **domain FQDN**, also called **dnsDomainName** synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.<br><br>Returned by default. Read-only. |
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the group was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Read-only. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`).|
|onPremisesNetBiosName|String|Contains the on-premises **netBios name** synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.<br><br>Returned by default. Read-only. |
|onPremisesProvisioningErrors|[onPremisesProvisioningError](onpremisesprovisioningerror.md) collection| Errors when using Microsoft synchronization product during provisioning. <br><br>Returned by default. Supports `$filter` (`eq`, `NOT`). |
|onPremisesSamAccountName|String|Contains the on-premises **SAM account name** synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.<br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`). Read-only. |
|onPremisesSecurityIdentifier|String|Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud. <br><br>Returned by default. Supports `$filter` on `null` values. Read-only. |
|onPremisesSyncEnabled|Boolean|`true` if this group is synced from an on-premises directory; `false` if this group was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). <br><br>Returned by default. Read-only. Supports `$filter` (`eq`, `ne`, `NOT`, `in`). |
|preferredDataLocation|String|The preferred data location for the group. For more information, see  [OneDrive Online Multi-Geo](/sharepoint/dev/solution-guidance/multigeo-introduction). <br><br>Returned by default.|
|preferredLanguage|String|The preferred language for a Microsoft 365 group. Should follow ISO 639-1 Code; for example "en-US". <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`). |
|proxyAddresses|String collection| Email addresses for the group that direct to the same group mailbox. For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]`. The **any** operator is required for filter expressions on multi-valued properties. <br><br>Returned by default. Read-only. Not nullable. Supports `$filter` (`eq`, `NOT`, `ge`, `le`, `startsWith`). |
|renewedDateTime|DateTimeOffset| Timestamp of when the group was last renewed. This cannot be modified directly and is only updated via the [renew service action](../api/grouplifecyclepolicy-renewgroup.md). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`). Read-only.|
|resourceBehaviorOptions|String collection|Specifies the group behaviors that can be set for a Microsoft 365 group during creation. This can be set only as part of creation (POST). Possible values are `AllowOnlyMembersToPost`, `HideGroupInOutlook`, `SubscribeNewGroupMembers`, `WelcomeEmailDisabled`. For more information, see [Set Microsoft 365 group behaviors and provisioning options](/graph/group-set-options).|
|resourceProvisioningOptions|String collection|Specifies the group resources that are provisioned as part of Microsoft 365 group creation, that are not normally part of default group creation. Possible value is `Team`. For more information, see [Set Microsoft 365 group behaviors and provisioning options](/graph/group-set-options).|
|securityEnabled|Boolean|Specifies whether the group is a security group. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `NOT`, `in`).|
|securityIdentifier|String|Security identifier of the group, used in Windows scenarios. <br><br>Returned by default.|
|theme|String|Specifies a Microsoft 365 group's color theme. Possible values are `Teal`, `Purple`, `Green`, `Blue`, `Pink`, `Orange` or `Red`. <br><br>Returned by default. |
|unseenConversationsCount|Int32|Count of conversations that have been delivered one or more new posts since the signed-in user's last visit to the group. This property is the same as **unseenCount**. <br><br>Returned only on `$select`.|
|unseenCount|Int32|Count of conversations that have received new posts since the signed-in user last visited the group. This property is the same as **unseenConversationsCount**.<br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
|unseenMessagesCount|Int32|Count of new posts that have been delivered to the group's conversations since the signed-in user's last visit to the group. <br><br>Returned only on `$select`.|
|visibility|String| Specifies the group join policy and group content visibility for groups. Possible values are: `Private`, `Public`, or `Hiddenmembership`. `Hiddenmembership` can be set only for Microsoft 365 groups, when the groups are created. It can't be updated later. Other values of visibility can be updated after group creation.<br> If visibility value is not specified during group creation on Microsoft Graph, a security group is created as `Private` by default and Microsoft 365 group is `Public`. See [group visibility options](#group-visibility-options) to learn more. <br><br>Returned by default.|

### Group visibility options

|Value|Description|
|:----|-----------|
| Public | Anyone can join the group without needing owner permission.<br>Anyone can view the contents of the group.|
| Private | Owner permission is needed to join the group.<br>Non-members cannot view the contents of the group.|
| Hiddenmembership | Owner permission is needed to join the group.<br>Non-members cannot view the contents of the group.<br>Non-members cannot see the members of the group.<br>Administrators (global, company, user, and helpdesk) can view the membership of the group.<br>The group appears in the global address book (GAL).|


## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|acceptedSenders|[directoryObject](directoryobject.md) collection|The list of users or groups that are allowed to create post's or calendar events in this group. If this list is non-empty then only users or groups listed here are allowed to post.|
|appRoleAssignments|[appRoleAssignment](approleassignment.md) collection|Represents the app roles a group has been granted for an application. Supports `$expand`. |
|calendar|[calendar](calendar.md)|The group's calendar. Read-only.|
|calendarView|[event](event.md) collection|The calendar view for the calendar. Read-only.|
|conversations|[conversation](conversation.md) collection|The group's conversations.|
|createdOnBehalfOf|[directoryObject](directoryobject.md)| The user (or application) that created the group. **Note:** This is not set if the user is an administrator. Read-only.|
|drive|[drive](drive.md)|The group's default drive. Read-only.|
|drives|[drive](drive.md) collection|The group's drives. Read-only.|
|endpoints|[Endpoint](endpoint.md) collection| Endpoints for the group. Read-only. Nullable.|
|events|[event](event.md) collection|The group's events.|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the group. Read-only. Nullable.|
|groupLifecyclePolicies|[groupLifecyclePolicy](grouplifecyclepolicy.md) collection|The collection of lifecycle policies for this group. Read-only. Nullable.|
|memberOf|[directoryObject](directoryobject.md) collection|Groups and administrative units that this group is a member of. HTTP Methods: GET (supported for all groups). Read-only. Nullable. Supports `$expand`.|
|members|[directoryObject](directoryobject.md) collection| Users, contacts, and groups that are members of this group. HTTP Methods: GET (supported for all groups), POST (supported for security groups and mail-enabled security groups), DELETE (supported only for security groups) Read-only. Nullable. Supports `$expand`.|
|membersWithLicenseErrors|[user](user.md) collection|A list of group members with license errors from this group-based license assignment. Read-only.|
|onenote|[onenote](onenote.md)| Read-only.|
|owners|[directoryObject](directoryobject.md) collection|The owners of the group. The owners are a set of non-admin users who are allowed to modify this object. HTTP Methods: GET (supported for all groups), POST (supported for security groups and mail-enabled security groups), DELETE (supported only for security groups) Read-only. Nullable. Supports `$expand`.|
|permissionGrants|[resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md)|The permissions that have been granted for a group to a specific application. Supports `$expand`.|
|photo|[profilePhoto](profilephoto.md)| The group's profile photo. |
|photos|[profilePhoto](profilephoto.md) collection| The profile photos owned by the group. Read-only. Nullable.|
|planner|[plannerGroup](plannergroup.md)| Selective Planner services available to the group. Read-only. Nullable. |
|rejectedSenders|[directoryObject](directoryobject.md) collection|The list of users or groups that are not allowed to create posts or calendar events in this group. Nullable|
|settings|[directorySetting](directorysetting.md) collection| Settings that can govern this group's behavior, like whether members can invite guest users to the group. Nullable.|
|sites|[site](site.md) collection|The list of SharePoint sites in this group. Access the default site with /sites/root.|
|threads|[conversationThread](conversationthread.md) collection| The group's conversation threads. Nullable.|

## JSON representation
The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "acceptedSenders",
    "calendar",
    "calendarView",
    "conversations",
    "createdOnBehalfOf",
    "drive",
    "drives",
    "endpoints",
    "events",
    "extensions",
    "groupLifecyclePolicies",
    "memberOf",
    "members",
    "membersWithLicenseErrors",
    "onenote",
    "owners",
    "photo",
    "photos",
    "planner",
    "rejectedSenders",
    "settings",
    "sites",
    "threads",
    "allowExternalSenders",
    "assignedLicenses",
    "autoSubscribeNewMembers",
    "hasMembersWithLicenseErrors",
    "isAssignableToRole",
    "isSubscribedByMail",
    "licenseProcessingState",
    "unseenConversationsCount",
    "unseenCount",
    "unseenMessagesCount"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.group"
}-->

```json
{
  "accessType": "string",
  "assignedLabels": [{"@odata.type": "microsoft.graph.assignedLabel"}],
  "assignedLicenses": [{"@odata.type": "microsoft.graph.assignedLicense"}],
  "allowExternalSenders": false,
  "autoSubscribeNewMembers": true,
  "createdByAppId": "String",
  "createdDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "description": "string",
  "displayName": "string",
  "expirationDateTime": "String (timestamp)",
  "groupTypes": ["string"],
  "hideFromAddressLists": false,
  "hideFromOutlookClients": false,
  "id": "string (identifier)",
  "isFavorite": true,
  "isAssignableRole": false,
  "isSubscribedByMail": true,
  "licenseProcessingState": "string",
  "mail": "string",
  "mailEnabled": true,
  "mailNickname": "string",
  "onPremisesDomainName": "string",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesNetBiosName": "string",
  "onPremisesProvisioningErrors": [{"@odata.type": "microsoft.graph.onPremisesProvisioningError"}],
  "onPremisesSamAccountName": "string",
  "onPremisesSecurityIdentifier": "string",
  "onPremisesSyncEnabled": true,
  "preferredDataLocation": "string",
  "proxyAddresses": ["string"],
  "renewedDateTime": "String (timestamp)",
  "resourceBehaviorOptions": ["String"],
  "resourceProvisioningOptions": ["String"],
  "securityEnabled": true,
  "securityIdentifier": "string",
  "unseenConversationsCount": 1024,
  "unseenCount": 1024,
  "unseenMessagesCount": 1024,
  "visibility": "string",
  "acceptedSenders": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "calendar": {"@odata.type": "microsoft.graph.calendar"},
  "calendarView": [{"@odata.type": "microsoft.graph.event"}],
  "conversations": [{"@odata.type": "microsoft.graph.conversation"}],
  "createdOnBehalfOf": {"@odata.type": "microsoft.graph.directoryObject"},
  "drive": {"@odata.type": "microsoft.graph.drive"},
  "events": [{"@odata.type": "microsoft.graph.event"}],
  "memberOf": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "members": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "membersWithLicenseErrors": [{"@odata.type": "microsoft.graph.user"}],
  "owners": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "photo": {"@odata.type": "microsoft.graph.profilePhoto"},
  "rejectedSenders": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "sites": [{"@odata.type": "microsoft.graph.site"}],
  "threads": [{"@odata.type": "microsoft.graph.conversationThread"}],
  "classification": "string",
  "hasMembersWithLicenseErrors": true,
  "membershipRule": "string",
  "membershipRuleProcessingState": "string",
  "membershipRuleProcessingStatus":{"@odata.type": "microsoft.graph.membershipRuleProcessingStatus"},
  "preferredLanguage": "string",
  "theme": "string"
}
```

## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "group resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

