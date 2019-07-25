---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationThread = new ConversationThread
{
	Topic = "New Conversation Thread Topic",
	Posts = new List<Post>()
	{
		new Post
		{
			Body = new ItemBody
			{
				ContentType = BodyType.Html,
				Content = "this is body content"
			},
			NewParticipants = new List<Recipient>()
			{
				new Recipient
				{
					EmailAddress = new EmailAddress
					{
						Name = "Alex Darrow",
						Address = "alexd@contoso.com"
					}
				}
			}
		}
	}
};

await graphClient.Groups["{id}"].Threads
	.Request()
	.AddAsync(conversationThread);

```