---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var rosterPlans = await graphClient.Users["{user-id}"].Planner.RosterPlans
	.Request()
	.GetAsync();

```