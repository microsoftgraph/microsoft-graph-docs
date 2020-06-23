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
	Attachments = (IPostAttachmentsCollectionPage)new List<Attachment>()
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

await graphClient.Groups["1848753d-185d-4c08-a4e4-6ee40521d115"].Threads["AAQkADJUdfolA=="]
	.Reply(post)
	.Request()
	.PostAsync();

```