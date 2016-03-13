# extensionProperty resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get extensionProperty](../api/extensionproperty_get.md) | [extensionProperty](extensionproperty.md) |Read properties and relationships of extensionProperty object.|
|[Update](../api/extensionproperty_update.md) | [extensionProperty](extensionproperty.md)	|Update extensionProperty object. |
|[Delete](../api/extensionproperty_delete.md) | None |Delete extensionProperty object. |
|[Checkmembergroups](../api/extensionproperty_checkmembergroups.md)|string collection||
|[Getmembergroups](../api/extensionproperty_getmembergroups.md)|string collection||
|[Getmemberobjects](../api/extensionproperty_getmemberobjects.md)|string collection||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appDisplayName|string||
|dataType|string||
|id|string| Read-only.|
|isSyncedFromOnPremises|boolean||
|name|string||
|targetObjects|string collection||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.extensionproperty"
}-->

```json
{
  "appDisplayName": "string",
  "dataType": "string",
  "id": "string (identifier)",
  "isSyncedFromOnPremises": true,
  "name": "string",
  "targetObjects": ["string"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "extensionProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->