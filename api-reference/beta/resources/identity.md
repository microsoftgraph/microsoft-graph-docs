# Identity resource type

The `identity` resource represents an identity of an _actor_.
For example, an actor can be a user, device, or application.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.identity"
}-->

```json
{
  "displayName": "string",
  "id": "string"
}
```

## Properties

| Property    | Type   | Description                                                                                                                                                                                                                                                                                                           |
|:------------|:-------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| displayName | String | The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using [find changes](../api/item_delta.md) |
| id          | String | Unique identifier for the identity.                                                                                                                                                                                                                                                                                   |

## Remarks

In some circumstances, the unique identifier for the actor may not be available.
In this case, the **displayName** property for the identity will be returned, but the **id** property will be missing from the resource.

When `identity` is used within a [scopedRoleMembership](scopedRoleMembership.md), the following applies:

- Additional properties, not defined in the schema, may also be returned. For example, if the identity represents a user, then the user's **userPrincipalName** will also be returned.

The `identity` resource will return the latest uptodate information

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "identity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
