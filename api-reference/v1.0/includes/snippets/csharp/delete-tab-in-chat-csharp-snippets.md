---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Chats["{chat-id}"].Tabs["{teamsTab-id}"]
	.Request()
	.DeleteAsync();

```