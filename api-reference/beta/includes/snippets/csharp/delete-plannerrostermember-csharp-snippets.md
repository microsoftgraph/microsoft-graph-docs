---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Planner.Rosters["{plannerRoster-id}"].Members["{plannerRosterMember-id}"]
	.Request()
	.DeleteAsync();

```