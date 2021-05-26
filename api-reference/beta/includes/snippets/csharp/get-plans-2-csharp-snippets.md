---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plans = await graphClient.Groups["{group-id}"].Planner.Plans
	.Request()
	.GetAsync();

```