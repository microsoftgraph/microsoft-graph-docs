---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tabs = await graphClient.Teams["6903fa93-605b-43ef-920e-77c4729f8258"].Channels["19:33b76eea88574bd1969dca37e2b7a819@thread.skype"].Tabs
	.Request()
	.Expand("teamsApp")
	.GetAsync();

```