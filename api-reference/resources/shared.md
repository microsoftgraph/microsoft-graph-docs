# shared resource type

Indicates that an item has been shared with others. Includes information about
how the item is shared.

### Properties
| Property       | Type                          | Description                                                                             |
|:---------------|:------------------------------|:----------------------------------------------------------------------------------------|
| owner          | [IdentitySet](identitySet.md) | The identity of the owner of the shared item..                                          |
| scope          | String                        | Indicates the scope of how the item is shared: `anonymous`, `organization`, or `users`. |

### Scope values
| Value        | Description                                                                           |
|:-------------|:--------------------------------------------------------------------------------------|
| public       | The item is shared by using a link that works for anyone with the link.               |
| organization | The item is shared by using a link that works for anyone in the owner's organization. |
| users        | The item is shared with specific users only.                                          |



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.shared"
}-->

```json
{
  "owner": {"@odata.type": "microsoft.graph.identitySet"},
  "scope": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "shared resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->