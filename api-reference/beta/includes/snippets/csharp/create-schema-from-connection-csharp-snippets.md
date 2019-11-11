---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schema = new Schema
{
	BaseType = "microsoft.graph.externalFile"
};

await graphClient.Connections["contosofiles"].Schema
	.Request()
	.AddAsync(schema);

```