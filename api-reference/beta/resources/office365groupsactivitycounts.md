# office365GroupsActivityCounts resource type

## Properties

| Property               | Type   | Description                              |
| :--------------------- | :----- | ---------------------------------------- |
| reportRefreshDate      | Date   | The latest date of the content.          |
| exchangeEmailsReceived | Int64  | The number of emails received by Group mailboxes. |
| yammerMessagesPosted   | Int64  | The number of messages posted to Yammer groups. |
| yammerMessagesRead     | Int64  | The number of messages read in Yammer groups. |
| yammerMessagesLiked    | Int64  | The number of messages liked in Yammer groups. |
| reportDate             | Date   | The date on which a number of emails were sent to a group mailbox or a number of messages were posted, read, or liked in a Yammer group |
| reportPeriod           | String | The number of days the report covers.    |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "exchangeEmailsReceived": 1024, 
  "yammerMessagesPosted": 1024, 
  "yammerMessagesRead": 1024, 
  "yammerMessagesLiked": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```
