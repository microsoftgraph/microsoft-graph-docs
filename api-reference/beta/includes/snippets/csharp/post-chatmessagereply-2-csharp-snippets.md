---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessage = new ChatMessage
{
	CreatedDateTime = DateTimeOffset.Parse("2019-02-04T19:58:15.511Z"),
	From = new ChatMessageFromIdentitySet
	{
		User = new Identity
		{
			Id = "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
			DisplayName = "John Doe"
		}
	},
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