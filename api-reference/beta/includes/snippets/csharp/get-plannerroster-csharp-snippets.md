---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerRoster = await graphClient.Planner.Rosters["6519868f-868f-6519-8f86-19658f861965"]
	.Request()
	.GetAsync();

```