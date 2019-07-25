---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlan = new PlannerPlan
{
	Title = "title-value"
};

await graphClient.Planner.Plans["{plan-id}"]
	.Request()
	.Header("If-Match","W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")
	.UpdateAsync(plannerPlan);

```