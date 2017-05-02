# Shared resource type

The **Shared** resource indicates a DriveItem has been shared with others.
The resource includes information about how the item is shared.

If a [**Driveitem**](driveitem.md) has a non-null **shared** facet, the item has been shared.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.shared",
  "optionalProperties": [ "sharedBy", "sharedDateTime" ]
}-->

```json
{
  "owner": {"@odata.type": "microsoft.graph.identitySet"},
  "scope": "public | organization | users",
  "sharedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "sharedDateTime": "datetime"
}
```

## Properties

| Property       | Type                          | Description                                                                                        |
| :------------- | :---------------------------- | :------------------------------------------------------------------------------------------------- |
| owner          | [IdentitySet](identityset.md) | The identity of the owner of the shared item. Read-only.                                           |
| scope          | String                        | Indicates the scope of how the item is shared: `anonymous`, `organization`, or `users`. Read-only. |
| sharedBy       | [identitySet](identityset.md) | The identity of the user who shared the item. Read-only.                                           |
| sharedDateTime | DateTimeOffset                | The UTC date and time when the item was shared. Read-only.                                         |

## Scope values

| Value        | Description                                                                           |
|:-------------|:--------------------------------------------------------------------------------------|
| public       | The item is shared by using a link that works for anyone with the link.               |
| organization | The item is shared by using a link that works for anyone in the owner's organization. |
| users        | The item is shared with specific users only.                                          |

## Remarks

For more information about the facets on a **driveItem**, see [**driveItem**](driveitem.md).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "shared resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
