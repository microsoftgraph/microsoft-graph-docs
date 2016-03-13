# group resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get group](../api/group_get.md) | [group](group.md) |Read properties and relationships of group object.|
|[Create acceptedSender](../api/group_post_acceptedsenders.md) |[directoryObject](directoryobject.md)| Create a new acceptedSender by posting to the acceptedSenders collection.|
|[List acceptedSenders](../api/group_list_acceptedsenders.md) |[directoryObject](directoryobject.md) collection| Get a acceptedSender object collection.|
|[Create event](../api/group_post_calendarview.md) |[event](event.md)| Create a new event by posting to the calendarView collection.|
|[List calendarView](../api/group_list_calendarview.md) |[event](event.md) collection| Get a event object collection.|
|[Create conversation](../api/group_post_conversations.md) |[conversation](conversation.md)| Create a new conversation by posting to the conversations collection.|
|[List conversations](../api/group_list_conversations.md) |[conversation](conversation.md) collection| Get a conversation object collection.|
|[Create event](../api/group_post_events.md) |[event](event.md)| Create a new event by posting to the events collection.|
|[List events](../api/group_list_events.md) |[event](event.md) collection| Get a event object collection.|
|[Create memberOf](../api/group_post_memberof.md) |[directoryObject](directoryobject.md)| Create a new memberOf by posting to the memberOf collection.|
|[List memberOf](../api/group_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get a memberOf object collection.|
|[Create member](../api/group_post_members.md) |[directoryObject](directoryobject.md)| Create a new member by posting to the members collection.|
|[List members](../api/group_list_members.md) |[directoryObject](directoryobject.md) collection| Get a member object collection.|
|[Create owner](../api/group_post_owners.md) |[directoryObject](directoryobject.md)| Create a new owner by posting to the owners collection.|
|[List owners](../api/group_list_owners.md) |[directoryObject](directoryobject.md) collection| Get a owner object collection.|
|[Create profilePhoto](../api/group_post_photos.md) |[profilePhoto](profilephoto.md)| Create a new profilePhoto by posting to the photos collection.|
|[List photos](../api/group_list_photos.md) |[profilePhoto](profilephoto.md) collection| Get a profilePhoto object collection.|
|[Create plan](../api/group_post_plans.md) |[plan](plan.md)| Create a new plan by posting to the plans collection.|
|[List plans](../api/group_list_plans.md) |[plan](plan.md) collection| Get a plan object collection.|
|[Create rejectedSender](../api/group_post_rejectedsenders.md) |[directoryObject](directoryobject.md)| Create a new rejectedSender by posting to the rejectedSenders collection.|
|[List rejectedSenders](../api/group_list_rejectedsenders.md) |[directoryObject](directoryobject.md) collection| Get a rejectedSender object collection.|
|[Create directorySetting](../api/group_post_settings.md) |[directorySetting](directorysetting.md)| Create a new directorySetting by posting to the settings collection.|
|[List settings](../api/group_list_settings.md) |[directorySetting](directorysetting.md) collection| Get a directorySetting object collection.|
|[Create thread](../api/group_post_threads.md) |[conversationThread](conversationthread.md)| Create a new thread by posting to the threads collection.|
|[List threads](../api/group_list_threads.md) |[conversationThread](conversationthread.md) collection| Get a thread object collection.|
|[Update](../api/group_update.md) | [group](group.md)	|Update group object. |
|[Delete](../api/group_delete.md) | None |Delete group object. |
|[Addfavorite](../api/group_addfavorite.md)|None||
|[Checkmembergroups](../api/group_checkmembergroups.md)|string collection||
|[Getmembergroups](../api/group_getmembergroups.md)|string collection||
|[Getmemberobjects](../api/group_getmemberobjects.md)|string collection||
|[Removefavorite](../api/group_removefavorite.md)|None||
|[Resetunseencount](../api/group_resetunseencount.md)|None||
|[Subscribebymail](../api/group_subscribebymail.md)|None||
|[Unsubscribebymail](../api/group_unsubscribebymail.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accessType|string| Possible values are: `none`, `private`, `secret`, `public`.|
|allowExternalSenders|boolean||
|autoSubscribeNewMembers|boolean||
|description|string||
|displayName|string||
|groupTypes|string collection||
|id|string| Read-only.|
|isFavorite|boolean||
|isSubscribedByMail|boolean||
|mail|string||
|mailEnabled|boolean||
|mailNickname|string||
|onPremisesLastSyncDateTime|[dateTimeOffset](datetimeoffset.md)||
|onPremisesSecurityIdentifier|string||
|onPremisesSyncEnabled|boolean||
|proxyAddresses|string collection||
|securityEnabled|boolean||
|unseenCount|int32||
|visibility|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|acceptedSenders|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|calendar|[calendar](calendar.md)| Read-only. Nullable.|
|calendarView|[event](event.md) collection| Read-only. Nullable.|
|conversations|[conversation](conversation.md) collection| Read-only. Nullable.|
|createdOnBehalfOf|[directoryObject](directoryobject.md)| Read-only. Nullable.|
|drive|[drive](drive.md)| Read-only. Nullable.|
|events|[event](event.md) collection| Read-only. Nullable.|
|memberOf|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|members|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|notes|[notes](notes.md)| Read-only. Nullable.|
|owners|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|photo|[profilePhoto](profilephoto.md)| Read-only. Nullable.|
|photos|[profilePhoto](profilephoto.md) collection| Read-only. Nullable.|
|plans|[plan](plan.md) collection| Read-only. Nullable.|
|rejectedSenders|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|settings|[directorySetting](directorysetting.md) collection| Read-only. Nullable.|
|threads|[conversationThread](conversationthread.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.group"
}-->

```json
{
  "accessType": "string",
  "allowExternalSenders": true,
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
  "visibility": "string"
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