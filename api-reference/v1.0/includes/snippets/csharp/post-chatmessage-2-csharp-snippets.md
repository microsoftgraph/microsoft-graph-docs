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
		Content = "Hello World <at id=\"0\">Jane Smith</at>"
	},
	Mentions = new List<ChatMessageMention>()
	{
		new ChatMessageMention
		{
			Id = 0,
			MentionText = "Jane Smith",
			Mentioned = new ChatMessageMentionedIdentitySet
			{
				User = new Identity
				{
					DisplayName = "Jane Smith",
					Id = "ef1c916a-3135-4417-ba27-8eb7bd084193",
					UserIdentityType = TeamworkUserIdentityType.AadUser
				}
			}
		}
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages
	.Request()
	.AddAsync(chatMessage);

```