---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerBucketTaskBoardTaskFormat = new PlannerBucketTaskBoardTaskFormat
{
	OrderHint = "A6673H Ejkl!"
};

await graphClient.Planner.Tasks["{plannerTask-id}"].BucketTaskBoardFormat
	.Request()
	.Header("Prefer","return=representation")
	.Header("If-Match","W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")
	.UpdateAsync(plannerBucketTaskBoardTaskFormat);

```