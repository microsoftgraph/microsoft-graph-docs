# synchronizationTemplate resource type

Synchronization template provides pre-configured synchronization settings for a particular application. These settings will be used by default for any [synchronization job](synchronization_job.md) based on the template.  Template is controlled by the developer of the application, although anyone can retrieve the template to see the default settings, most importantly [synchronization schema](synchronization_schema.md).

Application developer may provide multiple templates for a given application, and designate a default one. If multiple templates are available for the application you are interested in, seek application-specific guidance on which one better suits your case.

## Methods

| Method        | Return Type               | Description                  |
|:--------------|:--------------------------|:-----------------------------|
|[List](../api/synchronization_templates_get.md)    |[synchronizationTemplate](synchronization_template.md) collection  |List templates available for a given application or application instance (service principal).|
|[Get](../api/synchronization_template_get.md)      |[synchronizationTemplate](synchronization_template.md)   |Read properties and relationships of synchronizationTemplate object.|
<!-- 
|[Create](../api/synchronization_templates_post.md) |[synchronizationTemplate](synchronization_template.md)   |Create new template for a given application.|
|[Update](../api/synchronization_template_put.md)   |[synchronizationTemplate](synchronization_template.md)   |Update template.| 
-->

## Properties

| Property      | Type                      | Description                  |
|:--------------|:--------------------------|:-----------------------------|
|id             |String                     |Unique template identifier.|
|applicationId  |String                     |Identifier of the application this template belongs to.|
|default        |Boolean                    |`true` if this template is recommended as default one for the application.|
|description    |String                     |Description of the template.|
|discoverable   |String                     |`true` if this template should appear in the collection of templates available for the application instance (service principal).|
|factoryTag     |String                     |One of the well-known factory tags supported by the synchronization engine. Factory tag tells synchronization engine which implementation should be used when processing jobs based on this template.|
|metadata       |metadataEntry collection   |Additional extension properties. Unless mentioned explicitly, metadata values should not be changed.|

## Relationships
| Relationship      | Type	    |Description|
|:------------------|:----------|:----------|
|schema             |[synchronizationSchema](synchronization_schema.md)     |Default synchronization schema for the jobs based on this template.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationTemplate"
}-->

```json
{
  "applicationId": "String (identifier)",
  "default": true,
  "description": "String",
  "discoverable": true,
  "factoryTag": "String",
  "id": "String (identifier)",
  "metadata": [{"@odata.type": "microsoft.graph.metadataEntry"}],
  "schema": {"@odata.type": "microsoft.graph.synchronizationSchema"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "synchronizationTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->