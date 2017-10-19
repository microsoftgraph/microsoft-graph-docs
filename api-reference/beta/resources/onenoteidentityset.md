# oneNoteIdentitySet resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

**Support coming soon**

The OneNoteIdentitySet type is a keyed collection of [OneNoteIdentity](onenoteidentity.md) objects.
 It is used to represent a set of identities associated with various events for a _Notebook_, _Section_ or _Page_, such as
 _created by_ or _last modified by_. 
 
Currently it contains a single key, _**user**_.  In future, keys such as the device or application to change the item may be added.

In future, this type will be merged with [IdentitySet](identityset.md)

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onenoteidentityset"
}-->

```json
{
  "user": {"@odata.type": "microsoft.graph.oneNoteIdentity"}
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|user|[oneNoteIdentity](onenoteidentity.md)|A OneNoteIdentity resource that represents a user.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "oneNoteIdentitySet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
