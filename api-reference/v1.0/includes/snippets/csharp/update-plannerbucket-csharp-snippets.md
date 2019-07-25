---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerBucket = new PlannerBucket
{
	Name = "Development"
};

await graphClient.Planner.Buckets["{bucket-id}"]
	.Request()
	.Header("If-Match","W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")
	.UpdateAsync(plannerBucket);

```