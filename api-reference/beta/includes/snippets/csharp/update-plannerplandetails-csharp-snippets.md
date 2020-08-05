---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlanDetails = new PlannerPlanDetails
{
	SharedWith = new PlannerUserIds
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"6463a5ce-2119-4198-9f2a-628761df4a62", "true"},
			{"d95e6152-f683-4d78-9ff5-67ad180fea4a", "false"}
		}
	},
	CategoryDescriptions = new PlannerCategoryDescriptions
	{
		Category1 = "Indoors",
		Category3 = null
	}
};

await graphClient.Planner.Plans["xqQg5FS2LkCp935s-FIFm2QAFkHM"].Details
	.Request()
	.Header("If-Match","W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")
	.UpdateAsync(plannerPlanDetails);

```