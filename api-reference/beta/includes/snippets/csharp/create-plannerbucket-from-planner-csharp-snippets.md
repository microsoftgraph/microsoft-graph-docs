---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerBucket = new PlannerBucket
{
	Name = "Advertising",
	PlanId = "xqQg5FS2LkCp935s-FIFm2QAFkHM",
	OrderHint = " !"
};

await graphClient.Planner.Buckets
	.Request()
	.AddAsync(plannerBucket);

```