# workbookSessionInfo resource type

Provides information about workbook session.


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.workbookSessionInfo"
}-->

```json
{
  "id": "string",
  "persistChanges": true
}
```

## Properties

| Property | Type  | Description                               |
|:---------|:------|:------------------------------------------|
| id  | string | Id of the workbook session. |
| persistChanges | string |  `true` for persistent session. `false` for non-persistent session (view mode) |

