# office365ActiveUserCounts resource type

## Properties

| Property          | Type   | Description                              |
| :---------------- | :----- | ---------------------------------------- |
| reportRefreshDate | Date   | The latest date of the content.          |
| office365         | Int64  | The number of active users in Office 365. This number includes all the active users in Exchange, OneDrive, SharePoint, Skype For Business, Yammer, and Microsoft Teams. You can find the definition of active user for each product in the respective property description. |
| exchange          | Int64  | The number of active users in Exchange. Any user who can read and send email is considered an active user. |
| oneDrive          | Int64  | The number of active users in OneDrive. Any user who viewed or edited files, shared files internally or externally, or synced files is considered an active user. |
| sharePoint        | Int64  | The number of active users in SharePoint. Any user who viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages is considered an active user. |
| skypeForBusiness  | Int64  | The number of active users in Skype For Business. Any user who organized or participated in conferences, or joined peer-to-peer sessions is considered an active user. |
| yammer            | Int64  | The number of active users in Yammer. Any user who can post, read, or like messages is considered an active user. |
| teams             | Int64  | The number of active users in Microsoft Teams. Any user who posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls is considered an active user. |
| reportDate        | Date   | The date on which a number of users were active. |
| reportPeriod      | String | The number of days the report covers.    |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365ActiveUserCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "office365": 1024, 
  "exchange": 1024, 
  "oneDrive": 1024, 
  "sharePoint": 1024, 
  "skypeForBusiness": 1024, 
  "yammer": 1024, 
  "teams": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```
