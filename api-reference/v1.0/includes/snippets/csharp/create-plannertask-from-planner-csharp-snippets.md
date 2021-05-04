---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerTask = new PlannerTask
{
	PlanId = "xqQg5FS2LkCp935s-FIFm2QAFkHM",
	BucketId = "hsOf2dhOJkqyYYZEtdzDe2QAIUCR",
	Title = "Update client list",
	Assignments = new PlannerAssignments
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"fbab97d0-4932-4511-b675-204639209557", "{\"@odata.type\":\"#microsoft.graph.plannerAssignment\",\"orderHint\":\" !\"}"}
		}
	}
};

await graphClient.Planner.Tasks
	.Request()
	.AddAsync(plannerTask);

```