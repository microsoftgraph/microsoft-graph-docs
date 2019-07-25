---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerBucket = new PlannerBucket
{
	Name = "Development"
};

await graphClient.Planner.Buckets["hsOf2dhOJkqyYYZEtdzDe2QAIUCR"]
	.Request()
	.Header("If-Match","W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")
	.UpdateAsync(plannerBucket);

```