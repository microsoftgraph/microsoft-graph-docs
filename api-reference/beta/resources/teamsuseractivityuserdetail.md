# teamsUserActivityUserDetail resource type

## Properties

| Property                | Type              |
| :---------------------- | :---------------- |
| reportRefreshDate       | Date              |
| userPrincipalName       | String            |
| lastActivityDate        | Date              |
| isDeleted               | Boolean           |
| deletedDate             | Date              |
| assignedProducts        | String collection |
| teamChatMessageCount    | Int64             |
| privateChatMessageCount | Int64             |
| callCount               | Int64             |
| meetingCount            | Int64             |
| hasOtherAction          | Boolean           |
| reportPeriod            | String            |

## JSON representation

The following is a JSON representaion of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsUserActivityUserDetail"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "lastActivityDate": "Date", 
  "isDeleted": true, 
  "deletedDate": "Date", 
  "assignedProducts": ["String"],
  "teamChatMessageCount": 1024, 
  "privateChatMessageCount": 1024, 
  "callCount": 1024, 
  "meetingCount": 1024, 
  "hasOtherAction": true, 
  "reportPeriod": "String"
}
```
