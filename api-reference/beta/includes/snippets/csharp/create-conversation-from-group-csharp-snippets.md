---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversation = new Conversation
{
	Topic = "New head count",
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
						Content = "The confirmation will come by the end of the week."
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