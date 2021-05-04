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

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages
	.Request()
	.AddAsync(chatMessage);

```