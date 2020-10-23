---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachmentItem = new AttachmentItem
{
	AttachmentType = AttachmentType.File,
	Name = "flower",
	Size = 3483322
};

await graphClient.Me.Messages["AAMkADI5MAAIT3drCAAA="].Attachments
	.CreateUploadSession(attachmentItem)
	.Request()
	.PostAsync();

```