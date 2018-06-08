# onenoteEntityHierarchyModel resource

This is a base type for OneNote entities.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "abstract": true,
  "baseType": "microsoft.graph.onenoteEntitySchemaObjectModel",
  "optionalProperties": [
    "self"
  ],
  "@odata.type": "microsoft.graph.onenoteEntityHierarchyModel"
}-->

```json
{
  "displayName": "string",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)"
}

```
## Properties
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|The name of the notebook.|
|createdBy|[identitySet](identityset.md)|Identity of the user, device, and application which created the item. Read-only.|
|lastModifiedBy|[identitySet](identityset.md)|Identity of the user, device, and application which created the item. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the notebook was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|

<!-- uuid: 8b1af557-1a7c-4432-86eb-94989c2d4b54
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "page resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->