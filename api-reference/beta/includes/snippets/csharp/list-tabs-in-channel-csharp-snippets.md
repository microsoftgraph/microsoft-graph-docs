---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tabs = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Tabs
	.Request()
	.Expand("teamsApp")
	.GetAsync();

```