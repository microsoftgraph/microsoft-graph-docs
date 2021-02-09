---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chat = new Chat
{
	Topic = "Group chat title update"
};

await graphClient.Chats["19:1c5b01696d2e4a179c292bc9cf04e63b@thread.v2"]
	.Request()
	.UpdateAsync(chat);

```