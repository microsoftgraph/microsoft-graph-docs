# SharePointIds resource type

The **SharePointIds** resource groups the various identifiers for an item stored in a SharePoint site or OneDrive for Business into a single structure.

**Note:** items returned from OneDrive personal will not include a **SharePointIds** facet.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.sharepointIds"
}-->
```json
{
    "listId": "string",
    "listItemId": "string",
    "listItemUniqueId": "string",
    "siteId": "string",
    "webId": "string"
}
```

### Properties

| Property          | Type    | Description                                                          |
|:------------------|:--------|:---------------------------------------------------------------------|
| listId            | string  | The unique identifier for the item's list in SharePoint.                          |
| listItemId        | string  | An integer identifier for the item within the containing list.                    |
| listItemUniqueId  | string  | The unique identifier for the item within OneDrive for Busienss or a SharePoint site. |
| siteId            | string  | The unique identifier for the item's site collection. |
| webId             | string  | The unique identifier for the item's site.                          |

## Remarks 

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).



<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sharepointIds resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
