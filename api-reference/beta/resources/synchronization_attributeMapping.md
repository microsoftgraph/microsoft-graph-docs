# attributeMapping resource type

Defines how value for the given target atribute should flow during synchronization.

## Properties

| Property                  | Type                      | Description    |
|:--------------------------|:--------------------------|:---------------|
|defaultValue               | String                    |Default value to be used in case "source" property was evaluated to `null`. Optional.|
|exportMissingReferences    |String                     |If target attribute type is a reference attribute, and referenced object is missing in the target directory, attempt to create such an object. ** *Experimental, not recommended for use.* **|
|flowBehavior               |attributeFlowBehavior      |Defines when this attribute should be exported to target directory. Possible values are: `FlowWhenChanged` and `FlowAlways`. Default is `FlowWhenChanged`. |
|flowType                   |attributeFlowType          |Defines when this attribute should be updated in target directory. Possible values are: `Always` (default), `ObjectAddOnly` (only when new object is created), `MultiValueAddOnly` (only when the change is adding new values to a multi-valued attribute). |
|matchingPriority           |Int32                      |If higher than 0, this attribute will be used to perform inital match of the objects between source and target directories. Synchronization engine will try to find matching object using attribute  with lowest value of matching priority first. If not found, attribute with the next matching priority will be used, and so on until match is found or no more matching attributes are left. Only attributes which are expected to have unique values, such as email, should be used as matching attributes.|
|source                     |[attributeMappingSource](synchronization_attributemappingsource.md)     | Defines how a value should be extracted (or transformed) from the source object. |
|targetAttributeName        |String                     |Name of the attribute on the target object. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attributeMapping"
}-->

```json
{
  "defaultValue": "String",
  "exportMissingReferences": true,
  "flowBehavior": "String",
  "flowType": "String",
  "matchingPriority": 1024,
  "source": {"@odata.type": "microsoft.graph.attributeMappingSource"},
  "targetAttributeName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attributeMapping resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->