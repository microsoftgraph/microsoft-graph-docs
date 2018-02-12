# mailboxUsageStorage resource type

## Properties

| Property           | Type   |
| :----------------- | :----- |
| reportRefreshDate  | Date   |
| storageUsedInBytes | Int64  |
| reportDate         | Date   |
| reportPeriod       | String |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mailboxUsageStorage"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "storageUsedInBytes": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```
