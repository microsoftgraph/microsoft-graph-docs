---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerTask = new PlannerTask
{
	Assignments = new PlannerAssignments
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"fbab97d0-4932-4511-b675-204639209557", "{\"@odata.type\":\"#microsoft.graph.plannerAssignment\",\"orderHint\":\"N9917 U2883!\"}"}
		}
	},
	AppliedCategories = new PlannerAppliedCategories
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"category3", "true"},
			{"category4", "false"}
		}
	}
};

await graphClient.Planner.Tasks["01gzSlKkIUSUl6DF_EilrmQAKDhh"]
	.Request()
	.Header("If-Match","W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")
	.UpdateAsync(plannerTask);

```