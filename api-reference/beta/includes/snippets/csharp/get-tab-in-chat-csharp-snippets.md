---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsTab = await graphClient.Chats["{chat-id}"].Tabs["{teamsTab-id}"]
	.Request()
	.Expand("teamsApp")
	.GetAsync();

```