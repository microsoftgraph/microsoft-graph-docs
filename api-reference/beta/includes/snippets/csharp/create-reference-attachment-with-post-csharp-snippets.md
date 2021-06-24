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
		Content = "I attached a reference to a file on OneDrive."
	},
	Attachments = new PostAttachmentsCollectionPage()
	{
		new ReferenceAttachment
		{
			Name = "Personal pictures",
			SourceUrl = "https://contoso.com/personal/mario_contoso_net/Documents/Pics",
			ProviderType = ReferenceAttachmentProvider.OneDriveConsumer,
			Permission = ReferenceAttachmentPermission.Edit,
			IsFolder = true
		}
	}
};

await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"]
	.Reply(post)
	.Request()
	.PostAsync();

```