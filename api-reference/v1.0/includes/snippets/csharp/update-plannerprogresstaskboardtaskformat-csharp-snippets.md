---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerProgressTaskBoardTaskFormat = new PlannerProgressTaskBoardTaskFormat
{
	OrderHint = "A6673H Ejkl!"
};

await graphClient.Planner.Tasks["{plannerTask-id}"].ProgressTaskBoardFormat
	.Request()
	.Header("Prefer","return=representation")
	.Header("If-Match","W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")
	.UpdateAsync(plannerProgressTaskBoardTaskFormat);

```