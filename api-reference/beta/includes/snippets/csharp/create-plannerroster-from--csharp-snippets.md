---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerRoster = new PlannerRoster
{
};

await graphClient.Planner.Rosters
	.Request()
	.AddAsync(plannerRoster);

```