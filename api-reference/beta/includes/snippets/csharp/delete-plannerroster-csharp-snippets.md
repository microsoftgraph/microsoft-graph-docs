---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Planner.Rosters["5ba84f7a-aa11-4a51-a298-9f2c7ec6bb38"]
	.Request()
	.DeleteAsync();

```