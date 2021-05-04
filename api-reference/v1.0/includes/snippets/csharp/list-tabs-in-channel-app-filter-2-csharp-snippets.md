---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tabs = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Tabs
	.Request()
	.Filter("teamsApp/id eq 'com.microsoft.teamspace.tab.planner'")
	.Expand("teamsApp")
	.GetAsync();

```