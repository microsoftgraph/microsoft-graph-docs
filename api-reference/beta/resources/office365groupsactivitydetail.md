# office365GroupsActivityDetail resource type

## Properties

| Property                          | Type    | Description                              |
| :-------------------------------- | :------ | ---------------------------------------- |
| reportRefreshDate                 | Date    | The latest date of the content.          |
| groupDisplayName                  | String  | The display name of the group.           |
| isDeleted                         | Boolean | Whether this user has been deleted or soft deleted. |
| ownerPrincipalName                | String  | The group owner principal name.          |
| lastActivityDate                  | Date    | The last activity date for the following scenarios:  group mailbox received email; user viewed, edited, shared, or synced files in SharePoint document library; user viewed SharePoint pages; user posted, read, or liked messages in Yammer groups. |
| groupType                         | String  | The group type. Possible values are: **Public** or **Private**. |
| memberCount                       | Int64   | The group member count.                  |
| externalMemberCount               | Int64   | The group external member count.         |
| exchangeReceivedEmailCount        | Int64   | The number of email that the group mailbox received. |
| sharePointActiveFileCount         | Int64   | The number of active files in SharePoint Group site. |
| yammerPostedMessageCount          | Int64   | The number of messages posted to Yammer groups. |
| yammerReadMessageCount            | Int64   | The number of messages read in Yammer groups. |
| yammerLikedMessageCount           | Int64   | The number of messages liked in Yammer groups. |
| exchangeMailboxTotalItemCount     | Int64   | The number of items in the group mailbox. |
| exchangeMailboxStorageUsedInBytes | Int64   | The storage used of the group mailbox.   |
| sharePointTotalFileCount          | Int64   | The total number of files in SharePoint Group site. |
| sharePointSiteStorageUsedInBytes  | Int64   | The storage used by SharePoint Group site. |
| reportPeriod                      | String  | The number of days the report covers.    |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityDetail"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "groupDisplayName": "String", 
  "isDeleted": true, 
  "ownerPrincipalName": "String", 
  "lastActivityDate": "Date", 
  "groupType": "String", 
  "memberCount": 1024, 
  "externalMemberCount": 1024, 
  "exchangeReceivedEmailCount": 1024, 
  "sharePointActiveFileCount": 1024, 
  "yammerPostedMessageCount": 1024, 
  "yammerReadMessageCount": 1024, 
  "yammerLikedMessageCount": 1024, 
  "exchangeMailboxTotalItemCount": 1024, 
  "exchangeMailboxStorageUsedInBytes": 1024, 
  "sharePointTotalFileCount": 1024, 
  "sharePointSiteStorageUsedInBytes": 1024, 
  "reportPeriod": "String"
}
```
