# attributeMappingSource resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Defines how a value should be extracted (or transformed) from the source object. For example, it can be a simple value taken from a given attribute on the source object, or it can be a more complex expression of string concatenation/extraction/replacement based on several source attributes. 

## Properties

| Property              | Type                      | Description               |
|:----------------------|:--------------------------|:--------------------------|
|expression             |String                     |Equivalent expression representation of this **attributeMappingSource** object.|
|name                   |String                     |Name parameter of the mapping source. Depending on the **type** property value, this can be the name of the function, the name of the source attribute, or a constant value to be used. |
|parameters             |[stringKeyAttributeMappingSourceValuePair](synchronization_stringkeyattributemappingsourcevaluepair.md) collection | If this object represents a function, lists function parameters. Parameters consist of **attributeMappingSource** objects themselves, allowing for complex expressions. If **type** is not `Function`, this property will be null/empty array. |
|type                   | String                    |The type of this attribute mapping source. Possible values are: `Attribute`, `Constant`, `Function`. Default is `Attribute`.| 

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attributeMappingSource"
}-->

```json
{
  "expression": "String",
  "name": "String",
  "parameters": [{"@odata.type": "microsoft.graph.stringKeyAttributeMappingSourceValuePair"}],
  "type": "String"
}
```

## JSON Examples

Simple attribute to attribute mapping

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attributeMappingSource"
}-->

```json
{
    "expression": "[mail]",
    "name": "mail",
    "type": "Attribute"
}
```

Expression extracting first 8 characters from the source attribute

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attributeMappingSource"
}-->

```json
 {
    "expression": "Mid([userPrincipalName], 1, 8)",
    "name": "Mid",
    "parameters": [
        {
            "key": "source",
            "value": {
                "expression": "[userPrincipalName]",
                "name": "userPrincipalName",
                "parameters": [],
                "type": "Attribute"
            }
        },
        {
            "key": "start",
            "value": {
                "expression": "\"1\"",
                "name": "1",
                "parameters": [],
                "type": "Constant"
            }
        },
        {
            "key": "length",
            "value": {
                "expression": "\"8\"",
                "name": "8",
                "parameters": [],
                "type": "Constant"
            }
        }
    ],
    "type": "Function"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attributeMappingSource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
