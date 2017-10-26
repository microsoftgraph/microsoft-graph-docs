# office365ActiveUserCounts resource type

## Properties

| Property          | Type   | Description                              |
| :---------------- | :----- | ---------------------------------------- |
| reportRefreshDate | Date   | The latest date of the content.          |
| office365         | Int64  | The number of active users in Office 365. This number includes all the active users in Exchange, OneDrive, SharePoint, Skype For Business, Yammer and Microsoft Teams. The definition of active user is described in the properties below. |
| exchange          | Int64  | The number of active users in Exchange. Any user with email read and send actions are considered as active user. |
| oneDrive          | Int64  | The number of active users in OneDrive. Any user who viewed or edited files, shared files internally or externally, or synced files are considered as active user. |
| sharePoint        | Int64  | The number of active users in SharePoint. Any user who viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages are considered as active user. |
| skypeForBusiness  | Int64  | The number of active users in Skype For Business. Any user who organized conferences, participated conferences or joined peer-to-peer sessions are considered as active user. |
| yammer            | Int64  | The number of active users in Yammer. Any user with message post, read, and like actions are considered as active user. |
| teams             | Int64  | The number of active users in Microsoft Teams. Any user who posted messages in team channels, sent messages in private chat sessions, or participated meetings or calls are considered as active user. |
| reportDate        | Date   | The date that the active user numbers represent for. |
| reportPeriod      | String | The range for report dates in days.      |

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365ActiveUserCounts"
} -->

```http
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
