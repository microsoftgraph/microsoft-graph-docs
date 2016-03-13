# worksheetProtection resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get worksheetProtection](../api/worksheetprotection_get.md) | [worksheetProtection](worksheetprotection.md) |Read properties and relationships of worksheetProtection object.|
|[Update](../api/worksheetprotection_update.md) | [worksheetProtection](worksheetprotection.md)	|Update worksheetProtection object. |
|[Delete](../api/worksheetprotection_delete.md) | None |Delete worksheetProtection object. |
|[Protect](../api/worksheetprotection_protect.md)|None||
|[Unprotect](../api/worksheetprotection_unprotect.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|options|[worksheetProtectionOptions](worksheetprotectionoptions.md)||
|protected|boolean||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.worksheetprotection"
}-->

```json
{
  "options": {"@odata.type": "microsoft.graph.worksheetProtectionOptions"},
  "protected": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "worksheetProtection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->