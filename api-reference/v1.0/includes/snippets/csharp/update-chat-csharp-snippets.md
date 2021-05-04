---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chat = new Chat
{
	Topic = "Group chat title update"
};

await graphClient.Chats["{chat-id}"]
	.Request()
	.UpdateAsync(chat);

```