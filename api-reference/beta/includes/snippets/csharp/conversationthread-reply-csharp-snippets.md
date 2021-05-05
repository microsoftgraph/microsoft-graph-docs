---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var post = new Post
{
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "content-value"
	}
};

await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"]
	.Reply(post)
	.Request()
	.PostAsync();

```