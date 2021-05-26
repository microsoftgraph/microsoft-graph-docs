---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessage = await graphClient.Chats["{chat-id}"].Messages["{chatMessage-id}"]
	.Request()
	.GetAsync();

```