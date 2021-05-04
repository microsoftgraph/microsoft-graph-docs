---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plans = await graphClient.Planner.Rosters["{plannerRoster-id}"].Plans
	.Request()
	.GetAsync();

```