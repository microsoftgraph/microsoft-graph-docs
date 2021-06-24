---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerUser = new PlannerUser
{
	FavoritePlanReferences = new PlannerFavoritePlanReferenceCollection
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"jd8S5gOaFk2S8aWCIAJz42QAAxtD", "{\"@odata.type\":\"#microsoft.graph.plannerFavoritePlanReference\",\"orderHint\":\" !\",\"planTitle\":\"Next Release Discussion\"}"},
			{"7oTB5aMIAE2rVo-1N-L7RmQAGX2q", "null"}
		}
	},
	RecentPlanReferences = new PlannerRecentPlanReferenceCollection
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"jd8S5gOaFk2S8aWCIAJz42QAAxtD", "{\"@odata.type\":\"#microsoft.graph.plannerRecentPlanReference\",\"lastAccessedDateTime\":\"2018-01-02T22:49:46.155Z\",\"planTitle\":\"Next Release Discussion\"}"}
		}
	}
};

await graphClient.Me.Planner
	.Request()
	.Header("Prefer","return=representation")
	.Header("If-Match","W/\"JzEtVXNlckRldGFpbHMgQEBAQEBAQEBAQEBAQEBIWCc=\"")
	.UpdateAsync(plannerUser);

```