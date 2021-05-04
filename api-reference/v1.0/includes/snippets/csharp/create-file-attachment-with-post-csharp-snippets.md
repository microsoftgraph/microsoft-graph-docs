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
		Content = "Which quarter does that file cover? See my attachment."
	},
	Attachments = new PostAttachmentsCollectionPage()
	{
		new FileAttachment
		{
			Name = "Another file as attachment",
			ContentBytes = Encoding.ASCII.GetBytes("VGhpcyBpcyBhIGZpbGUgdG8gYmUgYXR0YWNoZWQu")
		}
	}
};

await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"]
	.Reply(post)
	.Request()
	.PostAsync();

```