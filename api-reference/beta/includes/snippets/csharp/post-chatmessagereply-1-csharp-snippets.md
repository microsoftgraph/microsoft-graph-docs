---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessage = new ChatMessage
{
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "Hello World"
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages["{chatMessage-id}"].Replies
	.Request()
	.AddAsync(chatMessage);

```