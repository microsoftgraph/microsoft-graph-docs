---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tabs = await graphClient.Chats["19:d65713bc498c4a428c71ef9353e6ce20@thread.v2"].Tabs
	.Request()
	.Filter("teamsApp/id eq 'com.microsoft.teamspace.tab.web'")
	.Expand("teamsApp")
	.GetAsync();

```