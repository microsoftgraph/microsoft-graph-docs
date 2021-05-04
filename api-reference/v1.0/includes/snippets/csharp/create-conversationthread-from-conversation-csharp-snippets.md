---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationThread = new ConversationThread
{
	Topic = "topic-value",
	Posts = new ConversationThreadPostsCollectionPage()
	{
		new Post
		{
			Body = new ItemBody
			{
				ContentType = BodyType.Html,
				Content = "this is body content"
			}
		}
	}
};

await graphClient.Groups["{group-id}"].Conversations["{conversation-id}"].Threads
	.Request()
	.AddAsync(conversationThread);

```