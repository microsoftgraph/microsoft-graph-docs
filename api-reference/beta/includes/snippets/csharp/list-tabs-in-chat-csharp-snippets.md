---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tabs = await graphClient.Chats["{chat-id}"].Tabs
	.Request()
	.Expand("teamsApp")
	.GetAsync();

```