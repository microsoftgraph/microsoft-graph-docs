---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Connections["contosohr"].Items["TSP228082938"]
	.Request()
	.DeleteAsync();

```