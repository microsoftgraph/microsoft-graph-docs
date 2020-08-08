---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printTaskDefinition = await graphClient.Print.TaskDefinitions["fab143fd-ee61-4358-8558-2c7dee953982"]
	.Request()
	.GetAsync();

```