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
	},
	ReceivedDateTime = DateTimeOffset.Parse("datetime-value"),
	HasAttachments = true,
	From = new Recipient
	{
		EmailAddress = new EmailAddress
		{
			Name = "name-value",
			Address = "address-value"
		}
	},
	Sender = new Recipient
	{
		EmailAddress = new EmailAddress
		{
			Name = "name-value",
			Address = "address-value"
		}
	},
	ConversationThreadId = "conversationThreadId-value",
	NewParticipants = new List<Recipient>()
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Name = "name-value",
				Address = "address-value"
			}
		}
	},
	ConversationId = "conversationId-value",
	CreatedDateTime = DateTimeOffset.Parse("datetime-value"),
	LastModifiedDateTime = DateTimeOffset.Parse("datetime-value"),
	ChangeKey = "changeKey-value",
	Categories = new List<String>()
	{
		"categories-value"
	},
	Id = "id-value",
	InReplyTo = new Post
	{
	},
	Attachments = new List<Attachment>()
	{
		new Attachment
		{
			LastModifiedDateTime = DateTimeOffset.Parse("datetime-value"),
			Name = "name-value",
			ContentType = "contentType-value",
			Size = 99,
			IsInline = true,
			Id = "id-value"
		}
	}
};

await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"]
	.Reply(post)
	.Request()
	.PostAsync();

```