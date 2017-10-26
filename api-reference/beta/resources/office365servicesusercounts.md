# office365ServicesUserCounts resource type

## Properties

| Property                 | Type   | Description                              |
| :----------------------- | :----- | ---------------------------------------- |
| reportRefreshDate        | Date   | The latest date of the content.          |
| exchangeActive           | Int64  | The number of Exchange active user. Any user with email read and send actions are considered as active user. |
| exchangeInactive         | Int64  | The number of Exchange inactive user.    |
| oneDriveActive           | Int64  | The number of OneDrive active user. Any user who viewed or edited files, shared files internally or externally, or synced files are considered as active user. |
| oneDriveInactive         | Int64  | The number of OneDrive inactive user.    |
| sharePointActive         | Int64  | The number of SharePoint active user. Any user who viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages are considered as active user. |
| sharePointInactive       | Int64  | The number of SharePoint inactive user.  |
| skypeForBusinessActive   | Int64  | The number of Skype For Business active user. Any user who organized conferences, participated conferences or joined peer-to-peer sessions are considered as active user. |
| skypeForBusinessInactive | Int64  | The number of Skype For Business inactive user. |
| yammerActive             | Int64  | The number of Yammer active user. Any user with message post, read, and like actions are considered as active user. |
| yammerInactive           | Int64  | The number of Yammer inactive user.      |
| teamsActive              | Int64  | The number of Teams active user. Any user who posted messages in team channels, sent messages in private chat sessions, or participated meetings or calls are considered as active user. |
| teamsInactive            | Int64  | The number of Teams inactive user.       |
| reportPeriod             | String | The range for report dates in days.      |

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365ServicesUserCounts"
} -->

```http
{
  "reportRefreshDate": "Date", 
  "exchangeActive": 1024, 
  "exchangeInactive": 1024, 
  "oneDriveActive": 1024, 
  "oneDriveInactive": 1024, 
  "sharePointActive": 1024, 
  "sharePointInactive": 1024, 
  "skypeForBusinessActive": 1024, 
  "skypeForBusinessInactive": 1024, 
  "yammerActive": 1024, 
  "yammerInactive": 1024, 
  "teamsActive": 1024, 
  "teamsInactive": 1024, 
  "reportPeriod": "String"
}
```
