---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plans = await graphClient.Groups["ebf3b108-5234-4e22-b93d-656d7dae5874"].Planner.Plans
	.Request()
	.GetAsync();

```