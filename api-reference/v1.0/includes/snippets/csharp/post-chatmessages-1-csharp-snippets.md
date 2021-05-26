---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessage = new ChatMessage
{
	Body = new ItemBody
	{
		Content = "Hello world"
	}
};

await graphClient.Chats["{chat-id}"].Messages
	.Request()
	.AddAsync(chatMessage);

```