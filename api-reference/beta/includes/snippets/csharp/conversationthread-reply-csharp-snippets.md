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

await graphClient.Groups["{id}"].Threads["{id}"]
	.Reply(post)
	.Request()
	.PostAsync();

```