---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlanDetails = await graphClient.Planner.Plans["{plannerPlan-id}"].Details
	.Request()
	.GetAsync();

```