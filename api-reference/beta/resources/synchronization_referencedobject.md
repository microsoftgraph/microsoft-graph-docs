# referencedObject resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Describes a reference to another object defined in the same [directory definition](synchronization_directorydefinition.md).

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:--------------------------|:---------------|
|referencedObjectName        |String                     |Name of the referenced object. Must match one of the objects in the [directory definition](synchronization_directorydefinition.md).|
|referencedProperty          |String                     |**Currently not supported**. Name of the property in the referenced object, the value for which is used as the reference.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.referencedObject"
}-->

```json
{
  "referencedObjectName": "String",
  "referencedProperty": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "referencedObject resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
            