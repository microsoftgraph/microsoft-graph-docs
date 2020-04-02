---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlan = new PlannerPlan
{
	Owner = "ebf3b108-5234-4e22-b93d-656d7dae5874",
	Title = "title-value"
};

await graphClient.Planner.Plans
	.Request()
	.AddAsync(plannerPlan);

```