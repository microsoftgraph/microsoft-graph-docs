---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var history = await graphClient.RiskyUsers["{riskyUser-id}"].History
	.Request()
	.GetAsync();

```