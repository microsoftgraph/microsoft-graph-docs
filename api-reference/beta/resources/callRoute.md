# CallRoute resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The callRoute type.

## Properties

| Property            | Type                          | Description                                                  |
| :------------------ | :---------------------------- | :----------------------------------------------------------- |
| final               | [identitySet](identitySet.md) | The identity that was resolved to in the call.               |
| original            | [identitySet](identitySet.md) | The identity that was originally used in the call.           |
| routingType         | String                        | Possible values are: `forwarded`, `lookup`, `selfFork`.  |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRoute"
}-->
```json
{
  "final": {"@odata.type": "microsoft.graph.identitySet"},
  "original": {"@odata.type": "microsoft.graph.identitySet"},
  "routingType": "forwarded | lookup | selfFork"
}
```

## Example

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.callRoute"
}-->
```json
{
  "routingType": "lookup",
  "original": {
    "phone": {
      "id": "+14258828080"
    }
  },
  "final": {
    "user": {
      "id": "29362BD4-CD58-4ED0-A206-0E4A33DBB0B6",
      "displayName": "Heidi Steen"
    }
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "callRoute resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
