---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerAssignedToTaskBoardTaskFormat = new PlannerAssignedToTaskBoardTaskFormat
{
	OrderHintsByAssignee = new PlannerOrderHintsByAssignee
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"aaa27244-1db4-476a-a5cb-004607466324", "8566473P 957764Jk!"}
		}
	}
};

await graphClient.Planner.Tasks["{task-id}"].AssignedToTaskBoardFormat
	.Request()
	.Header("If-Match","W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")
	.UpdateAsync(plannerAssignedToTaskBoardTaskFormat);

```