---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessage = new ChatMessage
{
	CreatedDateTime = DateTimeOffset.Parse("2019-02-04T19:58:15.511Z"),
	From = new IdentitySet
	{
		User = new Identity
		{
			Id = "id-value",
			DisplayName = "Joh Doe",
			AdditionalData = new Dictionary<string, object>()
			{
				{"userIdentityType", "aadUser"}
			}
		}
	},
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "Hello World"
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages
	.Request()
	.AddAsync(chatMessage);

```