---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schemaExtension = new SchemaExtension
{
	Id = "courses",
	Description = "Graph Learn training courses extensions",
	TargetTypes = new List<String>()
	{
		"Group"
	},
	Owner = "50897f70-a455-4adf-87bc-4cf17091d5ac",
	Properties = new List<ExtensionSchemaProperty>()
	{
		new ExtensionSchemaProperty
		{
			Name = "courseId",
			Type = "Integer"
		},
		new ExtensionSchemaProperty
		{
			Name = "courseName",
			Type = "String"
		},
		new ExtensionSchemaProperty
		{
			Name = "courseType",
			Type = "String"
		}
	}
};

await graphClient.SchemaExtensions
	.Request()
	.AddAsync(schemaExtension);

```