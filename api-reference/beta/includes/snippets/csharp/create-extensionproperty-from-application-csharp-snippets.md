---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extensionProperty = new ExtensionProperty
{
	Name = "extensionName",
	DataType = "string",
	TargetObjects = new List<String>()
	{
		"Application"
	}
};

await graphClient.Applications["{id}"].ExtensionProperties
	.Request()
	.AddAsync(extensionProperty);

```