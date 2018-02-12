# office365GroupsActivityFileCounts resource type

## Properties

| Property          | Type   | Description                              |
| :---------------- | :----- | ---------------------------------------- |
| reportRefreshDate | Date   | The latest date of the content.          |
| total             | Int64  | The total number of files in the group's SharePoint document library. |
| active            | Int64  | The number of files that were viewed, edited, shared, or synced in the group's SharePoint document library. |
| reportDate        | Date   | The date on which a number of files were active in the group's SharePoint site. |
| reportPeriod      | String | The number of days the report covers.    |

## JSON representation

The following is a JSON representation of the resource.

<!-- {

  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityFileCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "total": 1024, 
  "active": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```
