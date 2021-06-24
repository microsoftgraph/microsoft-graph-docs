---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyUser = await graphClient.RiskyUsers["{riskyUser-id}"]
	.Request()
	.GetAsync();

```