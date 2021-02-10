---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessage = new ChatMessage
{
	Body = new ItemBody
	{
		Content = "Hello World"
	}
};

await graphClient.Teams["{id}"].Channels["{id}"].Messages
	.Request()
	.AddAsync(chatMessage);

```