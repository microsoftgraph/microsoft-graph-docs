# checklistItem resource type

The ChecklistItem resource represents an item in the checklist of a task. The checklist on a task is represented by the [checklistItemCollection](checklistitemcollection.md).

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.checklistitem"
}-->

```json
{
  "isChecked": true,
  "lastModifiedBy": "string",
  "lastModifiedDateTime": "String (timestamp)",
  "orderHint": "string",
  "title": "string"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|isChecked|Boolean| Value is `true` if the item is checked and `false` otherwise. |
|lastModifiedBy|String| Read-only. User id by which this is last modified. |
|lastModifiedDateTime|DateTimeOffset| Read-only. Date and time at which this is last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|orderHint|String| Used to set the relative order of items in the checklist. Consider three items in the order of: `'O'`, `'P'`, `'Q'`. To move `'P'` to the top of the checklist, set its `'orderHint'` to smaller than that of `'O'`. The comparison is an ordinal string comparison. |
|title|String| Title of the item. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "checklistItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->