---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schemaExtension = new SchemaExtension
{
	Properties = new List<ExtensionSchemaProperty>()
	{
		new ExtensionSchemaProperty
		{
			Name = "new-name-value",
			Type = "new-type-value"
		},
		new ExtensionSchemaProperty
		{
			Name = "additional-name-value",
			Type = "additional-type-value"
		}
	}
};

await graphClient.SchemaExtensions["{id}"]
	.Request()
	.UpdateAsync(schemaExtension);

```