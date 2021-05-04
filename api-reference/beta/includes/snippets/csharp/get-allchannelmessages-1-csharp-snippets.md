---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getAllMessages = await graphClient.Teams["{team-id}"].Channels
	.GetAllMessages()
	.Request()
	.GetAsync();

```