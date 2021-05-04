---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tabs = await graphClient.Chats["{chat-id}"].Tabs
	.Request()
	.Filter("teamsApp/id eq 'com.microsoft.teamspace.tab.web'")
	.Expand("teamsApp")
	.GetAsync();

```