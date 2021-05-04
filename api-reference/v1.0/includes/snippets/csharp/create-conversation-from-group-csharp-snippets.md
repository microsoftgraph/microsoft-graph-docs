---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversation = new Conversation
{
	Topic = "New locations for this quarter",
	Threads = new ConversationThreadsCollectionPage()
	{
		new ConversationThread
		{
			Posts = new ConversationThreadPostsCollectionPage()
			{
				new Post
				{
					Body = new ItemBody
					{
						ContentType = BodyType.Html,
						Content = "What do we know so far?"
					},
					NewParticipants = new List<Recipient>()
					{
						new Recipient
						{
							EmailAddress = new EmailAddress
							{
								Name = "Adele Vance",
								Address = "AdeleV@contoso.onmicrosoft.com"
							}
						}
					}
				}
			}
		}
	}
};

await graphClient.Groups["{group-id}"].Conversations
	.Request()
	.AddAsync(conversation);

```