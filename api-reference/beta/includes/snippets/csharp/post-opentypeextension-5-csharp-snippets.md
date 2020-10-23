---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversation = new Conversation
{
	Topic = "Does anyone have a second?",
	Threads = (IConversationThreadsCollectionPage)new List<ConversationThread>()
	{
		new ConversationThread
		{
			Posts = (IConversationThreadPostsCollectionPage)new List<Post>()
			{
				new Post
				{
					Body = new ItemBody
					{
						ContentType = BodyType.Html,
						Content = "This is urgent!"
					},
					Extensions = (IPostExtensionsCollectionPage)new List<Extension>()
					{
						new OpenTypeExtension
						{
							ExtensionName = "Com.Contoso.Benefits",
							AdditionalData = new Dictionary<string, object>()
							{
								{"companyName", "Contoso"},
								{"expirationDate", "2016-08-03T11:00:00Z"},
								{"topPicks", "[\"Employees only\",\"Add spouse or guest\",\"Add family\"]"}
							}
						}
					}
				}
			}
		}
	}
};

await graphClient.Groups["37df2ff0-0de0-4c33-8aee-75289364aef6"].Conversations
	.Request()
	.AddAsync(conversation);

```